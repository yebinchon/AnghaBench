; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_object.c_vm_object_collapse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_object.c_vm_object_collapse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, i32, i64, i64, i64, i32, i32, %struct.TYPE_18__*, i32, i32, i32* }

@TRUE = common dso_local global i64 0, align 8
@OBJT_DEFAULT = common dso_local global i64 0, align 8
@OBJT_SWAP = common dso_local global i64 0, align 8
@OBJ_DEAD = common dso_local global i32 0, align 4
@OBJ_NOSPLIT = common dso_local global i32 0, align 4
@OBSC_COLLAPSE_WAIT = common dso_local global i32 0, align 4
@shadow_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"backing_object %p was somehow re-referenced during collapse!\00", align 1
@OBJT_DEAD = common dso_local global i64 0, align 8
@object_collapses = common dso_local global i32 0, align 4
@object_bypasses = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_object_collapse(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %5 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %6 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_18__* %5)
  br label %7

7:                                                ; preds = %243, %1
  %8 = load i64, i64* @TRUE, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %244

10:                                               ; preds = %7
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  store %struct.TYPE_18__* %13, %struct.TYPE_18__** %3, align 8
  %14 = icmp eq %struct.TYPE_18__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %244

16:                                               ; preds = %10
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %18 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_18__* %17)
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 11
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %68, label %23

23:                                               ; preds = %16
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @OBJT_DEFAULT, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @OBJT_SWAP, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %68, label %35

35:                                               ; preds = %29, %23
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @OBJ_DEAD, align 4
  %40 = load i32, i32* @OBJ_NOSPLIT, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %68, label %44

44:                                               ; preds = %35
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 11
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %68, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @OBJT_DEFAULT, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @OBJT_SWAP, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %68, label %61

61:                                               ; preds = %55, %49
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @OBJ_DEAD, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61, %55, %44, %35, %29, %16
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %70 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_18__* %69)
  br label %244

71:                                               ; preds = %61
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 10
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @REFCOUNT_COUNT(i32 %74)
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 10
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @REFCOUNT_COUNT(i32 %80)
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %77, %71
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %85 = call i32 @vm_object_qcollapse(%struct.TYPE_18__* %84)
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %87 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_18__* %86)
  br label %244

88:                                               ; preds = %77
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %182

93:                                               ; preds = %88
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %95 = call i32 @vm_object_pip_add(%struct.TYPE_18__* %94, i32 1)
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %97 = call i32 @vm_object_pip_add(%struct.TYPE_18__* %96, i32 1)
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %99 = load i32, i32* @OBSC_COLLAPSE_WAIT, align 4
  %100 = call i32 @vm_object_collapse_scan(%struct.TYPE_18__* %98, i32 %99)
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @OBJT_SWAP, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %93
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @OFF_TO_IDX(i64 %111)
  %113 = load i64, i64* @TRUE, align 8
  %114 = call i32 @swap_pager_copy(%struct.TYPE_18__* %107, %struct.TYPE_18__* %108, i32 %112, i64 %113)
  br label %115

115:                                              ; preds = %106, %93
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %117 = load i32, i32* @shadow_list, align 4
  %118 = call i32 @LIST_REMOVE(%struct.TYPE_18__* %116, i32 %117)
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %120, align 8
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 8
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %124, align 8
  %126 = icmp ne %struct.TYPE_18__* %125, null
  br i1 %126, label %127, label %146

127:                                              ; preds = %115
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 8
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %129, align 8
  %131 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_18__* %130)
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %133 = load i32, i32* @shadow_list, align 4
  %134 = call i32 @LIST_REMOVE(%struct.TYPE_18__* %132, i32 %133)
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 8
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 7
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %140 = load i32, i32* @shadow_list, align 4
  %141 = call i32 @LIST_INSERT_HEAD(i32* %138, %struct.TYPE_18__* %139, i32 %140)
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 8
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %143, align 8
  %145 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_18__* %144)
  br label %146

146:                                              ; preds = %127, %115
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 8
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %148, align 8
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 8
  store %struct.TYPE_18__* %149, %struct.TYPE_18__** %151, align 8
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 5
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %157, %154
  store i64 %158, i64* %156, align 8
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %161, 1
  %163 = zext i1 %162 to i32
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %165 = bitcast %struct.TYPE_18__* %164 to i8*
  %166 = call i32 @KASSERT(i32 %163, i8* %165)
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %168 = call i32 @vm_object_pip_wakeup(%struct.TYPE_18__* %167)
  %169 = load i64, i64* @OBJT_DEAD, align 8
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 0
  store i64 %169, i64* %171, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 2
  store i32 0, i32* %173, align 4
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %175 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_18__* %174)
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %177 = call i32 @vm_object_destroy(%struct.TYPE_18__* %176)
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %179 = call i32 @vm_object_pip_wakeup(%struct.TYPE_18__* %178)
  %180 = load i32, i32* @object_collapses, align 4
  %181 = call i32 @counter_u64_add(i32 %180, i32 1)
  br label %243

182:                                              ; preds = %88
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 4
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %185, %188
  br i1 %189, label %190, label %197

190:                                              ; preds = %182
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %192 = call i32 @vm_object_scan_all_shadowed(%struct.TYPE_18__* %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %190
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %196 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_18__* %195)
  br label %244

197:                                              ; preds = %190, %182
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %199 = load i32, i32* @shadow_list, align 4
  %200 = call i32 @LIST_REMOVE(%struct.TYPE_18__* %198, i32 %199)
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 8
  %204 = add nsw i32 %203, -1
  store i32 %204, i32* %202, align 8
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 8
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %206, align 8
  store %struct.TYPE_18__* %207, %struct.TYPE_18__** %4, align 8
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 8
  store %struct.TYPE_18__* %208, %struct.TYPE_18__** %210, align 8
  %211 = icmp ne %struct.TYPE_18__* %208, null
  br i1 %211, label %212, label %235

212:                                              ; preds = %197
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %214 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_18__* %213)
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 7
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %218 = load i32, i32* @shadow_list, align 4
  %219 = call i32 @LIST_INSERT_HEAD(i32* %216, %struct.TYPE_18__* %217, i32 %218)
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 6
  %222 = load i32, i32* %221, align 8
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %221, align 8
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %225 = call i32 @vm_object_reference_locked(%struct.TYPE_18__* %224)
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %227 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_18__* %226)
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 5
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 5
  %233 = load i64, i64* %232, align 8
  %234 = add nsw i64 %233, %230
  store i64 %234, i64* %232, align 8
  br label %235

235:                                              ; preds = %212, %197
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 2
  %238 = call i32 @refcount_release(i32* %237)
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %240 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_18__* %239)
  %241 = load i32, i32* @object_bypasses, align 4
  %242 = call i32 @counter_u64_add(i32 %241, i32 1)
  br label %243

243:                                              ; preds = %235, %146
  br label %7

244:                                              ; preds = %194, %83, %68, %15, %7
  ret void
}

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_18__*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_18__*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_18__*) #1

declare dso_local i64 @REFCOUNT_COUNT(i32) #1

declare dso_local i32 @vm_object_qcollapse(%struct.TYPE_18__*) #1

declare dso_local i32 @vm_object_pip_add(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @vm_object_collapse_scan(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @swap_pager_copy(%struct.TYPE_18__*, %struct.TYPE_18__*, i32, i64) #1

declare dso_local i32 @OFF_TO_IDX(i64) #1

declare dso_local i32 @LIST_REMOVE(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_object_pip_wakeup(%struct.TYPE_18__*) #1

declare dso_local i32 @vm_object_destroy(%struct.TYPE_18__*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @vm_object_scan_all_shadowed(%struct.TYPE_18__*) #1

declare dso_local i32 @vm_object_reference_locked(%struct.TYPE_18__*) #1

declare dso_local i32 @refcount_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
