; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_entry_in_transition.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_entry_in_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32 }

@MAP_ENTRY_IN_TRANSITION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"not in-tranition map entry %p\00", align 1
@MAP_ENTRY_NEEDS_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (%struct.TYPE_13__*, i32, i32*, i32, %struct.TYPE_14__*)* @vm_map_entry_in_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @vm_map_entry_in_transition(%struct.TYPE_13__* %0, i32 %1, i32* %2, i32 %3, %struct.TYPE_14__* %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %11, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %16 = call i32 @VM_MAP_ASSERT_LOCKED(%struct.TYPE_13__* %15)
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MAP_ENTRY_IN_TRANSITION, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %25 = bitcast %struct.TYPE_14__* %24 to i8*
  %26 = call i32 @KASSERT(i32 %23, i8* %25)
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @MAX(i32 %27, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* @MAP_ENTRY_NEEDS_WAKEUP, align 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %14, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %41 = call i64 @vm_map_unlock_and_wait(%struct.TYPE_13__* %40, i32 0)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %5
  br label %44

44:                                               ; preds = %43, %5
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %46 = call i32 @vm_map_lock(%struct.TYPE_13__* %45)
  %47 = load i64, i64* %14, align 8
  %48 = add nsw i64 %47, 1
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %54, %struct.TYPE_14__** %6, align 8
  br label %71

55:                                               ; preds = %44
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @vm_map_lookup_entry(%struct.TYPE_13__* %56, i32 %57, %struct.TYPE_14__** %12)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %13, align 4
  %65 = load i32*, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  br label %71

66:                                               ; preds = %60
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %68 = call %struct.TYPE_14__* @vm_map_entry_succ(%struct.TYPE_14__* %67)
  store %struct.TYPE_14__* %68, %struct.TYPE_14__** %12, align 8
  br label %69

69:                                               ; preds = %66, %55
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %70, %struct.TYPE_14__** %6, align 8
  br label %71

71:                                               ; preds = %69, %63, %53
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  ret %struct.TYPE_14__* %72
}

declare dso_local i32 @VM_MAP_ASSERT_LOCKED(%struct.TYPE_13__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i64 @vm_map_unlock_and_wait(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @vm_map_lock(%struct.TYPE_13__*) #1

declare dso_local i32 @vm_map_lookup_entry(%struct.TYPE_13__*, i32, %struct.TYPE_14__**) #1

declare dso_local %struct.TYPE_14__* @vm_map_entry_succ(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
