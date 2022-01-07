; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_object.c_vm_object_madvise.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_object.c_vm_object_madvise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_23__ = type { i64, i32, i32 }

@listq = common dso_local global i32 0, align 4
@PG_FICTITIOUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"vm_object_madvise: page %p is fictitious\00", align 1
@VPO_UNMANAGED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"vm_object_madvise: page %p is not managed\00", align 1
@MADV_WILLNEED = common dso_local global i32 0, align 4
@PGA_REFERENCED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"madvpo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_object_madvise(%struct.TYPE_24__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %15 = icmp eq %struct.TYPE_24__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %210

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %177, %17
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %20 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_24__* %19)
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @vm_object_advice_applies(%struct.TYPE_24__* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %27 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_24__* %26)
  br label %210

28:                                               ; preds = %18
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call %struct.TYPE_23__* @vm_page_find_least(%struct.TYPE_24__* %29, i64 %30)
  store %struct.TYPE_23__* %31, %struct.TYPE_23__** %12, align 8
  br label %32

32:                                               ; preds = %204, %28
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %207

36:                                               ; preds = %32
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_24__* %37, %struct.TYPE_24__** %11, align 8
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %39 = icmp eq %struct.TYPE_23__* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %123

46:                                               ; preds = %40, %36
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %48, align 8
  %50 = icmp eq %struct.TYPE_24__* %49, null
  br i1 %50, label %51, label %81

51:                                               ; preds = %46
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %53 = icmp ne %struct.TYPE_23__* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  br label %66

64:                                               ; preds = %54, %51
  %65 = load i64, i64* %7, align 8
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi i64 [ %63, %60 ], [ %65, %64 ]
  store i64 %67, i64* %9, align 8
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %6, align 8
  %73 = sub nsw i64 %71, %72
  %74 = trunc i64 %73 to i32
  %75 = call i32 @vm_object_madvise_freespace(%struct.TYPE_24__* %68, i32 %69, i64 %70, i32 %74)
  %76 = load i64, i64* %9, align 8
  store i64 %76, i64* %6, align 8
  %77 = load i64, i64* %7, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  br label %207

80:                                               ; preds = %66
  br label %124

81:                                               ; preds = %46
  %82 = load i64, i64* %6, align 8
  store i64 %82, i64* %9, align 8
  br label %83

83:                                               ; preds = %117, %81
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @vm_object_madvise_freespace(%struct.TYPE_24__* %84, i32 %85, i64 %86, i32 1)
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %89, align 8
  store %struct.TYPE_24__* %90, %struct.TYPE_24__** %10, align 8
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %92 = icmp eq %struct.TYPE_24__* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  br label %196

94:                                               ; preds = %83
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %96 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_24__* %95)
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @OFF_TO_IDX(i32 %99)
  %101 = load i64, i64* %9, align 8
  %102 = add nsw i64 %101, %100
  store i64 %102, i64* %9, align 8
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %105 = icmp ne %struct.TYPE_24__* %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %94
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %108 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_24__* %107)
  br label %109

109:                                              ; preds = %106, %94
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  store %struct.TYPE_24__* %110, %struct.TYPE_24__** %11, align 8
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @vm_object_advice_applies(%struct.TYPE_24__* %111, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  br label %196

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %116
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %119 = load i64, i64* %9, align 8
  %120 = call %struct.TYPE_23__* @vm_page_lookup(%struct.TYPE_24__* %118, i64 %119)
  store %struct.TYPE_23__* %120, %struct.TYPE_23__** %13, align 8
  %121 = icmp eq %struct.TYPE_23__* %120, null
  br i1 %121, label %83, label %122

122:                                              ; preds = %117
  br label %129

123:                                              ; preds = %40
  br label %124

124:                                              ; preds = %123, %80
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  store %struct.TYPE_23__* %125, %struct.TYPE_23__** %13, align 8
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %127 = load i32, i32* @listq, align 4
  %128 = call %struct.TYPE_23__* @TAILQ_NEXT(%struct.TYPE_23__* %126, i32 %127)
  store %struct.TYPE_23__* %128, %struct.TYPE_23__** %12, align 8
  br label %129

129:                                              ; preds = %124, %122
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %131 = call i32 @vm_page_all_valid(%struct.TYPE_23__* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %135 = call i64 @vm_page_wired(%struct.TYPE_23__* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %133, %129
  br label %196

138:                                              ; preds = %133
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @PG_FICTITIOUS, align 4
  %143 = and i32 %141, %142
  %144 = icmp eq i32 %143, 0
  %145 = zext i1 %144 to i32
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %147 = bitcast %struct.TYPE_23__* %146 to i8*
  %148 = call i32 @KASSERT(i32 %145, i8* %147)
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @VPO_UNMANAGED, align 4
  %153 = and i32 %151, %152
  %154 = icmp eq i32 %153, 0
  %155 = zext i1 %154 to i32
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %157 = bitcast %struct.TYPE_23__* %156 to i8*
  %158 = call i32 @KASSERT(i32 %155, i8* %157)
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %160 = call i64 @vm_page_tryxbusy(%struct.TYPE_23__* %159)
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %180

162:                                              ; preds = %138
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %165 = icmp ne %struct.TYPE_24__* %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %162
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %168 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_24__* %167)
  br label %169

169:                                              ; preds = %166, %162
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* @MADV_WILLNEED, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %169
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %175 = load i32, i32* @PGA_REFERENCED, align 4
  %176 = call i32 @vm_page_aflag_set(%struct.TYPE_23__* %174, i32 %175)
  br label %177

177:                                              ; preds = %173, %169
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %179 = call i32 @vm_page_busy_sleep(%struct.TYPE_23__* %178, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 0)
  br label %18

180:                                              ; preds = %138
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %182 = call i32 @vm_page_lock(%struct.TYPE_23__* %181)
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %184 = load i32, i32* %8, align 4
  %185 = call i32 @vm_page_advise(%struct.TYPE_23__* %183, i32 %184)
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %187 = call i32 @vm_page_unlock(%struct.TYPE_23__* %186)
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %189 = call i32 @vm_page_xunbusy(%struct.TYPE_23__* %188)
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %191 = load i32, i32* %8, align 4
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @vm_object_madvise_freespace(%struct.TYPE_24__* %190, i32 %191, i64 %194, i32 1)
  br label %196

196:                                              ; preds = %180, %137, %115, %93
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %199 = icmp ne %struct.TYPE_24__* %197, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %196
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %202 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_24__* %201)
  br label %203

203:                                              ; preds = %200, %196
  br label %204

204:                                              ; preds = %203
  %205 = load i64, i64* %6, align 8
  %206 = add nsw i64 %205, 1
  store i64 %206, i64* %6, align 8
  br label %32

207:                                              ; preds = %79, %32
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %209 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_24__* %208)
  br label %210

210:                                              ; preds = %207, %25, %16
  ret void
}

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_24__*) #1

declare dso_local i32 @vm_object_advice_applies(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_23__* @vm_page_find_least(%struct.TYPE_24__*, i64) #1

declare dso_local i32 @vm_object_madvise_freespace(%struct.TYPE_24__*, i32, i64, i32) #1

declare dso_local i64 @OFF_TO_IDX(i32) #1

declare dso_local %struct.TYPE_23__* @vm_page_lookup(%struct.TYPE_24__*, i64) #1

declare dso_local %struct.TYPE_23__* @TAILQ_NEXT(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @vm_page_all_valid(%struct.TYPE_23__*) #1

declare dso_local i64 @vm_page_wired(%struct.TYPE_23__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @vm_page_tryxbusy(%struct.TYPE_23__*) #1

declare dso_local i32 @vm_page_aflag_set(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @vm_page_busy_sleep(%struct.TYPE_23__*, i8*, i32) #1

declare dso_local i32 @vm_page_lock(%struct.TYPE_23__*) #1

declare dso_local i32 @vm_page_advise(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @vm_page_unlock(%struct.TYPE_23__*) #1

declare dso_local i32 @vm_page_xunbusy(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
