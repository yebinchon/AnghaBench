; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_submap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_submap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i64, i64, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_18__*, i32* }

@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@MAP_IS_SUB_MAP = common dso_local global i32 0, align 4
@MAP_ENTRY_COW = common dso_local global i32 0, align 4
@MAP_ENTRY_IS_SUB_MAP = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map_submap(%struct.TYPE_18__* %0, i64 %1, i64 %2, %struct.TYPE_18__* %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %8, align 8
  %11 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %13 = call i32 @vm_map_lock(%struct.TYPE_18__* %12)
  %14 = load i32, i32* @MAP_IS_SUB_MAP, align 4
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %20 = call i32 @vm_map_unlock(%struct.TYPE_18__* %19)
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %22 = call i32 @vm_map_lock(%struct.TYPE_18__* %21)
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @VM_MAP_RANGE_CHECK(%struct.TYPE_18__* %23, i64 %24, i64 %25)
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @vm_map_lookup_entry(%struct.TYPE_18__* %27, i64 %28, %struct.TYPE_19__** %9)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %4
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @vm_map_clip_start(%struct.TYPE_18__* %32, %struct.TYPE_19__* %33, i64 %34)
  br label %39

36:                                               ; preds = %4
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %38 = call %struct.TYPE_19__* @vm_map_entry_succ(%struct.TYPE_19__* %37)
  store %struct.TYPE_19__* %38, %struct.TYPE_19__** %9, align 8
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @vm_map_clip_end(%struct.TYPE_18__* %40, %struct.TYPE_19__* %41, i64 %42)
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %79

49:                                               ; preds = %39
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %79

55:                                               ; preds = %49
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MAP_ENTRY_COW, align 4
  %60 = and i32 %58, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %55
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  store %struct.TYPE_18__* %69, %struct.TYPE_18__** %72, align 8
  %73 = load i32, i32* @MAP_ENTRY_IS_SUB_MAP, align 4
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %68, %62, %55, %49, %39
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %81 = call i32 @vm_map_unlock(%struct.TYPE_18__* %80)
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @KERN_SUCCESS, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %79
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %87 = call i32 @vm_map_lock(%struct.TYPE_18__* %86)
  %88 = load i32, i32* @MAP_IS_SUB_MAP, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %95 = call i32 @vm_map_unlock(%struct.TYPE_18__* %94)
  br label %96

96:                                               ; preds = %85, %79
  %97 = load i32, i32* %10, align 4
  ret i32 %97
}

declare dso_local i32 @vm_map_lock(%struct.TYPE_18__*) #1

declare dso_local i32 @vm_map_unlock(%struct.TYPE_18__*) #1

declare dso_local i32 @VM_MAP_RANGE_CHECK(%struct.TYPE_18__*, i64, i64) #1

declare dso_local i64 @vm_map_lookup_entry(%struct.TYPE_18__*, i64, %struct.TYPE_19__**) #1

declare dso_local i32 @vm_map_clip_start(%struct.TYPE_18__*, %struct.TYPE_19__*, i64) #1

declare dso_local %struct.TYPE_19__* @vm_map_entry_succ(%struct.TYPE_19__*) #1

declare dso_local i32 @vm_map_clip_end(%struct.TYPE_18__*, %struct.TYPE_19__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
