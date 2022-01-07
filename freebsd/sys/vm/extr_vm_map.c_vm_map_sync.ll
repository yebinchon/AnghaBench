; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64, i64, i32, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }

@KERN_INVALID_ADDRESS = common dso_local global i32 0, align 4
@MAP_ENTRY_USER_WIRED = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@MAP_ENTRY_IS_SUB_MAP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map_sync(%struct.TYPE_13__* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_13__*, align 8
  %20 = alloca %struct.TYPE_14__*, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %23 = call i32 @vm_map_lock_read(%struct.TYPE_13__* %22)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @VM_MAP_RANGE_CHECK(%struct.TYPE_13__* %24, i64 %25, i64 %26)
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @vm_map_lookup_entry(%struct.TYPE_13__* %28, i64 %29, %struct.TYPE_14__** %13)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %5
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %34 = call i32 @vm_map_unlock_read(%struct.TYPE_13__* %33)
  %35 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %35, i32* %6, align 4
  br label %234

36:                                               ; preds = %5
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %8, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %9, align 8
  br label %47

47:                                               ; preds = %40, %36
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %49, %struct.TYPE_14__** %12, align 8
  br label %50

50:                                               ; preds = %90, %48
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %93

56:                                               ; preds = %50
  %57 = load i64, i64* %11, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @MAP_ENTRY_USER_WIRED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %68 = call i32 @vm_map_unlock_read(%struct.TYPE_13__* %67)
  %69 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %69, i32* %6, align 4
  br label %234

70:                                               ; preds = %59, %56
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %71, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %70
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %81 = call %struct.TYPE_14__* @vm_map_entry_succ(%struct.TYPE_14__* %80)
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %79, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %76
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %87 = call i32 @vm_map_unlock_read(%struct.TYPE_13__* %86)
  %88 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %88, i32* %6, align 4
  br label %234

89:                                               ; preds = %76, %70
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %92 = call %struct.TYPE_14__* @vm_map_entry_succ(%struct.TYPE_14__* %91)
  store %struct.TYPE_14__* %92, %struct.TYPE_14__** %12, align 8
  br label %50

93:                                               ; preds = %50
  %94 = load i64, i64* %11, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* %9, align 8
  %102 = call i32 @pmap_remove(i32 %99, i64 %100, i64 %101)
  br label %103

103:                                              ; preds = %96, %93
  %104 = load i64, i64* @FALSE, align 8
  store i64 %104, i64* %18, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %105, %struct.TYPE_14__** %12, align 8
  br label %106

106:                                              ; preds = %222, %103
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %9, align 8
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %112, label %223

112:                                              ; preds = %106
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %8, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %116, %119
  %121 = add nsw i64 %115, %120
  store i64 %121, i64* %16, align 8
  %122 = load i64, i64* %9, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp sle i64 %122, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %112
  %128 = load i64, i64* %9, align 8
  br label %133

129:                                              ; preds = %112
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  br label %133

133:                                              ; preds = %129, %127
  %134 = phi i64 [ %128, %127 ], [ %132, %129 ]
  %135 = load i64, i64* %8, align 8
  %136 = sub nsw i64 %134, %135
  store i64 %136, i64* %14, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @MAP_ENTRY_IS_SUB_MAP, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %179

143:                                              ; preds = %133
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %146, align 8
  store %struct.TYPE_13__* %147, %struct.TYPE_13__** %19, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %149 = call i32 @vm_map_lock_read(%struct.TYPE_13__* %148)
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %151 = load i64, i64* %16, align 8
  %152 = call i32 @vm_map_lookup_entry(%struct.TYPE_13__* %150, i64 %151, %struct.TYPE_14__** %20)
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* %16, align 8
  %157 = sub nsw i64 %155, %156
  store i64 %157, i64* %21, align 8
  %158 = load i64, i64* %21, align 8
  %159 = load i64, i64* %14, align 8
  %160 = icmp slt i64 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %143
  %162 = load i64, i64* %21, align 8
  store i64 %162, i64* %14, align 8
  br label %163

163:                                              ; preds = %161, %143
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  store i32 %167, i32* %15, align 4
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* %16, align 8
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = sub nsw i64 %171, %174
  %176 = add nsw i64 %170, %175
  store i64 %176, i64* %16, align 8
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %178 = call i32 @vm_map_unlock_read(%struct.TYPE_13__* %177)
  br label %184

179:                                              ; preds = %133
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  store i32 %183, i32* %15, align 4
  br label %184

184:                                              ; preds = %179, %163
  %185 = load i32, i32* %15, align 4
  %186 = call i32 @vm_object_reference(i32 %185)
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %17, align 4
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %191 = call i32 @vm_map_unlock_read(%struct.TYPE_13__* %190)
  %192 = load i32, i32* %15, align 4
  %193 = load i64, i64* %16, align 8
  %194 = load i64, i64* %14, align 8
  %195 = load i64, i64* %10, align 8
  %196 = load i64, i64* %11, align 8
  %197 = call i32 @vm_object_sync(i32 %192, i64 %193, i64 %194, i64 %195, i64 %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %184
  %200 = load i64, i64* @TRUE, align 8
  store i64 %200, i64* %18, align 8
  br label %201

201:                                              ; preds = %199, %184
  %202 = load i64, i64* %14, align 8
  %203 = load i64, i64* %8, align 8
  %204 = add nsw i64 %203, %202
  store i64 %204, i64* %8, align 8
  %205 = load i32, i32* %15, align 4
  %206 = call i32 @vm_object_deallocate(i32 %205)
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %208 = call i32 @vm_map_lock_read(%struct.TYPE_13__* %207)
  %209 = load i32, i32* %17, align 4
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = icmp eq i32 %209, %212
  br i1 %213, label %219, label %214

214:                                              ; preds = %201
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %216 = load i64, i64* %8, align 8
  %217 = call i32 @vm_map_lookup_entry(%struct.TYPE_13__* %215, i64 %216, %struct.TYPE_14__** %12)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %214, %201
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %221 = call %struct.TYPE_14__* @vm_map_entry_succ(%struct.TYPE_14__* %220)
  store %struct.TYPE_14__* %221, %struct.TYPE_14__** %12, align 8
  br label %222

222:                                              ; preds = %219, %214
  br label %106

223:                                              ; preds = %106
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %225 = call i32 @vm_map_unlock_read(%struct.TYPE_13__* %224)
  %226 = load i64, i64* %18, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %223
  %229 = load i32, i32* @KERN_FAILURE, align 4
  br label %232

230:                                              ; preds = %223
  %231 = load i32, i32* @KERN_SUCCESS, align 4
  br label %232

232:                                              ; preds = %230, %228
  %233 = phi i32 [ %229, %228 ], [ %231, %230 ]
  store i32 %233, i32* %6, align 4
  br label %234

234:                                              ; preds = %232, %85, %66, %32
  %235 = load i32, i32* %6, align 4
  ret i32 %235
}

declare dso_local i32 @vm_map_lock_read(%struct.TYPE_13__*) #1

declare dso_local i32 @VM_MAP_RANGE_CHECK(%struct.TYPE_13__*, i64, i64) #1

declare dso_local i32 @vm_map_lookup_entry(%struct.TYPE_13__*, i64, %struct.TYPE_14__**) #1

declare dso_local i32 @vm_map_unlock_read(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_14__* @vm_map_entry_succ(%struct.TYPE_14__*) #1

declare dso_local i32 @pmap_remove(i32, i64, i64) #1

declare dso_local i32 @vm_object_reference(i32) #1

declare dso_local i32 @vm_object_sync(i32, i64, i64, i64, i64) #1

declare dso_local i32 @vm_object_deallocate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
