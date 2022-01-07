; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_object.c_vm_object_collapse_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_object.c_vm_object_collapse_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64, i64, i32, i32, %struct.TYPE_29__* }
%struct.TYPE_28__ = type { i64, %struct.TYPE_29__* }

@OBSC_COLLAPSE_WAIT = common dso_local global i32 0, align 4
@OBJ_DEAD = common dso_local global i32 0, align 4
@listq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"vm_object_collapse_scan: object mismatch\00", align 1
@OBJT_SWAP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"freeing mapped page %p\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"unbusy invalid page %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_29__*, i32)* @vm_object_collapse_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_object_collapse_scan(%struct.TYPE_29__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %12 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_29__* %11)
  %13 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %16 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_29__* %15)
  %17 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  store %struct.TYPE_29__* %19, %struct.TYPE_29__** %5, align 8
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @OFF_TO_IDX(i32 %22)
  store i64 %23, i64* %9, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @OBSC_COLLAPSE_WAIT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %30 = load i32, i32* @OBJ_DEAD, align 4
  %31 = call i32 @vm_object_set_flag(%struct.TYPE_29__* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %2
  %33 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %33, i32 0, i32 2
  %35 = call %struct.TYPE_28__* @TAILQ_FIRST(i32* %34)
  store %struct.TYPE_28__* %35, %struct.TYPE_28__** %7, align 8
  br label %36

36:                                               ; preds = %217, %32
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %38 = icmp ne %struct.TYPE_28__* %37, null
  br i1 %38, label %39, label %219

39:                                               ; preds = %36
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %41 = load i32, i32* @listq, align 4
  %42 = call %struct.TYPE_28__* @TAILQ_NEXT(%struct.TYPE_28__* %40, i32 %41)
  store %struct.TYPE_28__* %42, %struct.TYPE_28__** %6, align 8
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = sub nsw i64 %45, %46
  store i64 %47, i64* %10, align 8
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %49 = call i64 @vm_page_tryxbusy(%struct.TYPE_28__* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %39
  %52 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call %struct.TYPE_28__* @vm_object_collapse_scan_wait(%struct.TYPE_29__* %52, %struct.TYPE_28__* %53, %struct.TYPE_28__* %54, i32 %55)
  store %struct.TYPE_28__* %56, %struct.TYPE_28__** %6, align 8
  br label %217

57:                                               ; preds = %39
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** %59, align 8
  %61 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %62 = icmp eq %struct.TYPE_29__* %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @KASSERT(i32 %63, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %9, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %57
  %71 = load i64, i64* %10, align 8
  %72 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sge i64 %71, %74
  br i1 %75, label %76, label %107

76:                                               ; preds = %70, %57
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @OBJT_SWAP, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @swap_pager_freespace(%struct.TYPE_29__* %83, i64 %86, i32 1)
  br label %88

88:                                               ; preds = %82, %76
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %90 = call i32 @pmap_page_is_mapped(%struct.TYPE_28__* %89)
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %95 = bitcast %struct.TYPE_28__* %94 to i8*
  %96 = call i32 @KASSERT(i32 %93, i8* %95)
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %98 = call i64 @vm_page_remove(%struct.TYPE_28__* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %88
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %102 = call i32 @vm_page_free(%struct.TYPE_28__* %101)
  br label %106

103:                                              ; preds = %88
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %105 = call i32 @vm_page_xunbusy(%struct.TYPE_28__* %104)
  br label %106

106:                                              ; preds = %103, %100
  br label %217

107:                                              ; preds = %70
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %109 = load i64, i64* %10, align 8
  %110 = call %struct.TYPE_28__* @vm_page_lookup(%struct.TYPE_29__* %108, i64 %109)
  store %struct.TYPE_28__* %110, %struct.TYPE_28__** %8, align 8
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %112 = icmp ne %struct.TYPE_28__* %111, null
  br i1 %112, label %113, label %125

113:                                              ; preds = %107
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %115 = call i64 @vm_page_tryxbusy(%struct.TYPE_28__* %114)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %119 = call i32 @vm_page_xunbusy(%struct.TYPE_28__* %118)
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %123 = load i32, i32* %4, align 4
  %124 = call %struct.TYPE_28__* @vm_object_collapse_scan_wait(%struct.TYPE_29__* %120, %struct.TYPE_28__* %121, %struct.TYPE_28__* %122, i32 %123)
  store %struct.TYPE_28__* %124, %struct.TYPE_28__** %6, align 8
  br label %217

125:                                              ; preds = %113, %107
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %127 = icmp eq %struct.TYPE_28__* %126, null
  br i1 %127, label %133, label %128

128:                                              ; preds = %125
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %130 = call i32 @vm_page_none_valid(%struct.TYPE_28__* %129)
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  br label %133

133:                                              ; preds = %128, %125
  %134 = phi i1 [ true, %125 ], [ %132, %128 ]
  %135 = zext i1 %134 to i32
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %137 = bitcast %struct.TYPE_28__* %136 to i8*
  %138 = call i32 @KASSERT(i32 %135, i8* %137)
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %140 = icmp ne %struct.TYPE_28__* %139, null
  br i1 %140, label %146, label %141

141:                                              ; preds = %133
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %143 = load i64, i64* %10, align 8
  %144 = call i64 @vm_pager_has_page(%struct.TYPE_29__* %142, i64 %143, i32* null, i32* null)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %183

146:                                              ; preds = %141, %133
  %147 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @OBJT_SWAP, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %146
  %153 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %154 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @swap_pager_freespace(%struct.TYPE_29__* %153, i64 %156, i32 1)
  br label %158

158:                                              ; preds = %152, %146
  %159 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %160 = call i32 @pmap_page_is_mapped(%struct.TYPE_28__* %159)
  %161 = icmp ne i32 %160, 0
  %162 = xor i1 %161, true
  %163 = zext i1 %162 to i32
  %164 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %165 = bitcast %struct.TYPE_28__* %164 to i8*
  %166 = call i32 @KASSERT(i32 %163, i8* %165)
  %167 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %168 = call i64 @vm_page_remove(%struct.TYPE_28__* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %158
  %171 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %172 = call i32 @vm_page_free(%struct.TYPE_28__* %171)
  br label %176

173:                                              ; preds = %158
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %175 = call i32 @vm_page_xunbusy(%struct.TYPE_28__* %174)
  br label %176

176:                                              ; preds = %173, %170
  %177 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %178 = icmp ne %struct.TYPE_28__* %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %181 = call i32 @vm_page_xunbusy(%struct.TYPE_28__* %180)
  br label %182

182:                                              ; preds = %179, %176
  br label %217

183:                                              ; preds = %141
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %185 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %186 = load i64, i64* %10, align 8
  %187 = call i64 @vm_page_rename(%struct.TYPE_28__* %184, %struct.TYPE_29__* %185, i64 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %202

189:                                              ; preds = %183
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %191 = call i32 @vm_page_xunbusy(%struct.TYPE_28__* %190)
  %192 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %193 = icmp ne %struct.TYPE_28__* %192, null
  br i1 %193, label %194, label %197

194:                                              ; preds = %189
  %195 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %196 = call i32 @vm_page_xunbusy(%struct.TYPE_28__* %195)
  br label %197

197:                                              ; preds = %194, %189
  %198 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %199 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %200 = load i32, i32* %4, align 4
  %201 = call %struct.TYPE_28__* @vm_object_collapse_scan_wait(%struct.TYPE_29__* %198, %struct.TYPE_28__* null, %struct.TYPE_28__* %199, i32 %200)
  store %struct.TYPE_28__* %201, %struct.TYPE_28__** %6, align 8
  br label %217

202:                                              ; preds = %183
  %203 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @OBJT_SWAP, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %214

208:                                              ; preds = %202
  %209 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %210 = load i64, i64* %10, align 8
  %211 = load i64, i64* %9, align 8
  %212 = add nsw i64 %210, %211
  %213 = call i32 @swap_pager_freespace(%struct.TYPE_29__* %209, i64 %212, i32 1)
  br label %214

214:                                              ; preds = %208, %202
  %215 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %216 = call i32 @vm_page_xunbusy(%struct.TYPE_28__* %215)
  br label %217

217:                                              ; preds = %214, %197, %182, %117, %106, %51
  %218 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  store %struct.TYPE_28__* %218, %struct.TYPE_28__** %7, align 8
  br label %36

219:                                              ; preds = %36
  ret i32 1
}

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_29__*) #1

declare dso_local i64 @OFF_TO_IDX(i32) #1

declare dso_local i32 @vm_object_set_flag(%struct.TYPE_29__*, i32) #1

declare dso_local %struct.TYPE_28__* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.TYPE_28__* @TAILQ_NEXT(%struct.TYPE_28__*, i32) #1

declare dso_local i64 @vm_page_tryxbusy(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_28__* @vm_object_collapse_scan_wait(%struct.TYPE_29__*, %struct.TYPE_28__*, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @swap_pager_freespace(%struct.TYPE_29__*, i64, i32) #1

declare dso_local i32 @pmap_page_is_mapped(%struct.TYPE_28__*) #1

declare dso_local i64 @vm_page_remove(%struct.TYPE_28__*) #1

declare dso_local i32 @vm_page_free(%struct.TYPE_28__*) #1

declare dso_local i32 @vm_page_xunbusy(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_28__* @vm_page_lookup(%struct.TYPE_29__*, i64) #1

declare dso_local i32 @vm_page_none_valid(%struct.TYPE_28__*) #1

declare dso_local i64 @vm_pager_has_page(%struct.TYPE_29__*, i64, i32*, i32*) #1

declare dso_local i64 @vm_page_rename(%struct.TYPE_28__*, %struct.TYPE_29__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
