; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"vm_pageout_flush: partially invalid page %p index %d/%d\00", align 1
@PGA_WRITEABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"vm_pageout_flush: writeable page %p\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"vm_pageout_flush: page %p is not write protected\00", align 1
@OBJT_SWAP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_pageout_flush(%struct.TYPE_20__** %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_20__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_20__** %0, %struct.TYPE_20__*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %20, i64 0
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  store %struct.TYPE_21__* %24, %struct.TYPE_21__** %13, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %14, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %30 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_21__* %29)
  store i32 0, i32* %17, align 4
  br label %31

31:                                               ; preds = %76, %6
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %79

35:                                               ; preds = %31
  %36 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %7, align 8
  %37 = load i32, i32* %17, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %36, i64 %38
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  %41 = call i32 @vm_page_all_valid(%struct.TYPE_20__* %40)
  %42 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %7, align 8
  %43 = load i32, i32* %17, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %42, i64 %44
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %45, align 8
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @KASSERT(i32 %41, i8* %50)
  %52 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %7, align 8
  %53 = load i32, i32* %17, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %52, i64 %54
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @PGA_WRITEABLE, align 4
  %60 = and i32 %58, %59
  %61 = icmp eq i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %7, align 8
  %64 = load i32, i32* %17, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %63, i64 %65
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %66, align 8
  %68 = bitcast %struct.TYPE_20__* %67 to i8*
  %69 = call i32 @KASSERT(i32 %62, i8* %68)
  %70 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %7, align 8
  %71 = load i32, i32* %17, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %70, i64 %72
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %73, align 8
  %75 = call i32 @vm_page_busy_downgrade(%struct.TYPE_20__* %74)
  br label %76

76:                                               ; preds = %35
  %77 = load i32, i32* %17, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %17, align 4
  br label %31

79:                                               ; preds = %31
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @vm_object_pip_add(%struct.TYPE_21__* %80, i32 %81)
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %84 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %7, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @vm_pager_put_pages(%struct.TYPE_21__* %83, %struct.TYPE_20__** %84, i32 %85, i32 %86, i32* %28)
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %10, align 4
  %90 = sub nsw i32 %88, %89
  store i32 %90, i32* %18, align 4
  %91 = load i32*, i32** %12, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %79
  %94 = load i32, i32* @FALSE, align 4
  %95 = load i32*, i32** %12, align 8
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %93, %79
  store i32 0, i32* %17, align 4
  br label %97

97:                                               ; preds = %224, %96
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %227

101:                                              ; preds = %97
  %102 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %7, align 8
  %103 = load i32, i32* %17, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %102, i64 %104
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %105, align 8
  store %struct.TYPE_20__* %106, %struct.TYPE_20__** %19, align 8
  %107 = load i32, i32* %17, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %28, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 128
  br i1 %111, label %117, label %112

112:                                              ; preds = %101
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %114 = call i32 @pmap_page_is_write_mapped(%struct.TYPE_20__* %113)
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  br label %117

117:                                              ; preds = %112, %101
  %118 = phi i1 [ true, %101 ], [ %116, %112 ]
  %119 = zext i1 %118 to i32
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %121 = bitcast %struct.TYPE_20__* %120 to i8*
  %122 = call i32 @KASSERT(i32 %119, i8* %121)
  %123 = load i32, i32* %17, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %28, i64 %124
  %126 = load i32, i32* %125, align 4
  switch i32 %126, label %212 [
    i32 129, label %127
    i32 128, label %139
    i32 132, label %142
    i32 131, label %156
    i32 130, label %156
    i32 133, label %197
  ]

127:                                              ; preds = %117
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %129 = call i32 @vm_page_lock(%struct.TYPE_20__* %128)
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %131 = call i32 @vm_page_in_laundry(%struct.TYPE_20__* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %135 = call i32 @vm_page_deactivate_noreuse(%struct.TYPE_20__* %134)
  br label %136

136:                                              ; preds = %133, %127
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %138 = call i32 @vm_page_unlock(%struct.TYPE_20__* %137)
  br label %139

139:                                              ; preds = %117, %136
  %140 = load i32, i32* %16, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %16, align 4
  br label %212

142:                                              ; preds = %117
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %144 = call i32 @vm_page_undirty(%struct.TYPE_20__* %143)
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %146 = call i32 @vm_page_lock(%struct.TYPE_20__* %145)
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %148 = call i32 @vm_page_in_laundry(%struct.TYPE_20__* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %142
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %152 = call i32 @vm_page_deactivate_noreuse(%struct.TYPE_20__* %151)
  br label %153

153:                                              ; preds = %150, %142
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %155 = call i32 @vm_page_unlock(%struct.TYPE_20__* %154)
  br label %212

156:                                              ; preds = %117, %117
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %158 = call i32 @vm_page_lock(%struct.TYPE_20__* %157)
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @OBJT_SWAP, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %175

164:                                              ; preds = %156
  %165 = load i32, i32* %17, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %28, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %168, 130
  br i1 %169, label %170, label %175

170:                                              ; preds = %164
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %172 = call i32 @vm_page_unswappable(%struct.TYPE_20__* %171)
  %173 = load i32, i32* %16, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %16, align 4
  br label %178

175:                                              ; preds = %164, %156
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %177 = call i32 @vm_page_activate(%struct.TYPE_20__* %176)
  br label %178

178:                                              ; preds = %175, %170
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %180 = call i32 @vm_page_unlock(%struct.TYPE_20__* %179)
  %181 = load i32*, i32** %12, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %183, label %196

183:                                              ; preds = %178
  %184 = load i32, i32* %17, align 4
  %185 = load i32, i32* %10, align 4
  %186 = icmp sge i32 %184, %185
  br i1 %186, label %187, label %196

187:                                              ; preds = %183
  %188 = load i32, i32* %17, align 4
  %189 = load i32, i32* %10, align 4
  %190 = sub nsw i32 %188, %189
  %191 = load i32, i32* %18, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %187
  %194 = load i32, i32* @TRUE, align 4
  %195 = load i32*, i32** %12, align 8
  store i32 %194, i32* %195, align 4
  br label %196

196:                                              ; preds = %193, %187, %183, %178
  br label %212

197:                                              ; preds = %117
  %198 = load i32, i32* %17, align 4
  %199 = load i32, i32* %10, align 4
  %200 = icmp sge i32 %198, %199
  br i1 %200, label %201, label %211

201:                                              ; preds = %197
  %202 = load i32, i32* %17, align 4
  %203 = load i32, i32* %10, align 4
  %204 = sub nsw i32 %202, %203
  %205 = load i32, i32* %18, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %201
  %208 = load i32, i32* %17, align 4
  %209 = load i32, i32* %10, align 4
  %210 = sub nsw i32 %208, %209
  store i32 %210, i32* %18, align 4
  br label %211

211:                                              ; preds = %207, %201, %197
  br label %212

212:                                              ; preds = %117, %211, %196, %153, %139
  %213 = load i32, i32* %17, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %28, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = icmp ne i32 %216, 128
  br i1 %217, label %218, label %223

218:                                              ; preds = %212
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %220 = call i32 @vm_object_pip_wakeup(%struct.TYPE_21__* %219)
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %222 = call i32 @vm_page_sunbusy(%struct.TYPE_20__* %221)
  br label %223

223:                                              ; preds = %218, %212
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %17, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %17, align 4
  br label %97

227:                                              ; preds = %97
  %228 = load i32*, i32** %11, align 8
  %229 = icmp ne i32* %228, null
  br i1 %229, label %230, label %233

230:                                              ; preds = %227
  %231 = load i32, i32* %18, align 4
  %232 = load i32*, i32** %11, align 8
  store i32 %231, i32* %232, align 4
  br label %233

233:                                              ; preds = %230, %227
  %234 = load i32, i32* %16, align 4
  %235 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %235)
  ret i32 %234
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_21__*) #2

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i32 @vm_page_all_valid(%struct.TYPE_20__*) #2

declare dso_local i32 @vm_page_busy_downgrade(%struct.TYPE_20__*) #2

declare dso_local i32 @vm_object_pip_add(%struct.TYPE_21__*, i32) #2

declare dso_local i32 @vm_pager_put_pages(%struct.TYPE_21__*, %struct.TYPE_20__**, i32, i32, i32*) #2

declare dso_local i32 @pmap_page_is_write_mapped(%struct.TYPE_20__*) #2

declare dso_local i32 @vm_page_lock(%struct.TYPE_20__*) #2

declare dso_local i32 @vm_page_in_laundry(%struct.TYPE_20__*) #2

declare dso_local i32 @vm_page_deactivate_noreuse(%struct.TYPE_20__*) #2

declare dso_local i32 @vm_page_unlock(%struct.TYPE_20__*) #2

declare dso_local i32 @vm_page_undirty(%struct.TYPE_20__*) #2

declare dso_local i32 @vm_page_unswappable(%struct.TYPE_20__*) #2

declare dso_local i32 @vm_page_activate(%struct.TYPE_20__*) #2

declare dso_local i32 @vm_object_pip_wakeup(%struct.TYPE_21__*) #2

declare dso_local i32 @vm_page_sunbusy(%struct.TYPE_20__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
