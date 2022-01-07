; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_inherit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_inherit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }

@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@MAP_ENTRY_GUARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map_inherit(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  switch i32 %12, label %14 [
    i32 130, label %13
    i32 131, label %13
    i32 129, label %13
    i32 128, label %13
  ]

13:                                               ; preds = %4, %4, %4, %4
  br label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %15, i32* %5, align 4
  br label %84

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %21, i32* %5, align 4
  br label %84

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @vm_map_lock(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @VM_MAP_RANGE_CHECK(i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @vm_map_lookup_entry(i32 %29, i32 %30, %struct.TYPE_9__** %11)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %22
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %10, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @vm_map_clip_start(i32 %35, %struct.TYPE_9__* %36, i32 %37)
  br label %42

39:                                               ; preds = %22
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %41 = call %struct.TYPE_9__* @vm_map_entry_succ(%struct.TYPE_9__* %40)
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %10, align 8
  br label %42

42:                                               ; preds = %39, %33
  br label %43

43:                                               ; preds = %67, %42
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %75

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @vm_map_clip_end(i32 %50, %struct.TYPE_9__* %51, i32 %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MAP_ENTRY_GUARD, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %49
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 128
  br i1 %62, label %63, label %67

63:                                               ; preds = %60, %49
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %63, %60
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %70 = call i32 @vm_map_entry_pred(%struct.TYPE_9__* %69)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %72 = call i32 @vm_map_try_merge_entries(i32 %68, i32 %70, %struct.TYPE_9__* %71)
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %74 = call %struct.TYPE_9__* @vm_map_entry_succ(%struct.TYPE_9__* %73)
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %10, align 8
  br label %43

75:                                               ; preds = %43
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %78 = call i32 @vm_map_entry_pred(%struct.TYPE_9__* %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %80 = call i32 @vm_map_try_merge_entries(i32 %76, i32 %78, %struct.TYPE_9__* %79)
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @vm_map_unlock(i32 %81)
  %83 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %75, %20, %14
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @vm_map_lock(i32) #1

declare dso_local i32 @VM_MAP_RANGE_CHECK(i32, i32, i32) #1

declare dso_local i64 @vm_map_lookup_entry(i32, i32, %struct.TYPE_9__**) #1

declare dso_local i32 @vm_map_clip_start(i32, %struct.TYPE_9__*, i32) #1

declare dso_local %struct.TYPE_9__* @vm_map_entry_succ(%struct.TYPE_9__*) #1

declare dso_local i32 @vm_map_clip_end(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @vm_map_try_merge_entries(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @vm_map_entry_pred(%struct.TYPE_9__*) #1

declare dso_local i32 @vm_map_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
