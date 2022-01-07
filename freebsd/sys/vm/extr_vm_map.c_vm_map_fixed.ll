; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_fixed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAP_STACK_GROWS_DOWN = common dso_local global i32 0, align 4
@MAP_STACK_GROWS_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"vm_map_fixed: non-NULL backing object for stack\00", align 1
@MAP_CHECK_EXCL = common dso_local global i32 0, align 4
@sgrowsiz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map_fixed(i32 %0, i32* %1, i32 %2, i64 %3, i64 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = load i64, i64* %12, align 8
  %20 = load i64, i64* %13, align 8
  %21 = add nsw i64 %19, %20
  store i64 %21, i64* %17, align 8
  %22 = load i32, i32* %16, align 4
  %23 = load i32, i32* @MAP_STACK_GROWS_DOWN, align 4
  %24 = load i32, i32* @MAP_STACK_GROWS_UP, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %8
  %29 = load i32*, i32** %10, align 8
  %30 = icmp eq i32* %29, null
  br label %31

31:                                               ; preds = %28, %8
  %32 = phi i1 [ true, %8 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @KASSERT(i32 %33, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @vm_map_lock(i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %17, align 8
  %40 = call i32 @VM_MAP_RANGE_CHECK(i32 %37, i64 %38, i64 %39)
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* @MAP_CHECK_EXCL, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %31
  %46 = load i32, i32* %9, align 4
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %17, align 8
  %49 = call i32 @vm_map_delete(i32 %46, i64 %47, i64 %48)
  br label %50

50:                                               ; preds = %45, %31
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* @MAP_STACK_GROWS_DOWN, align 4
  %53 = load i32, i32* @MAP_STACK_GROWS_UP, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = load i32, i32* %9, align 4
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load i32, i32* @sgrowsiz, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %16, align 4
  %65 = call i32 @vm_map_stack_locked(i32 %58, i64 %59, i64 %60, i32 %61, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %18, align 4
  br label %76

66:                                               ; preds = %50
  %67 = load i32, i32* %9, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %17, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @vm_map_insert(i32 %67, i32* %68, i32 %69, i64 %70, i64 %71, i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %18, align 4
  br label %76

76:                                               ; preds = %66, %57
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @vm_map_unlock(i32 %77)
  %79 = load i32, i32* %18, align 4
  ret i32 %79
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_map_lock(i32) #1

declare dso_local i32 @VM_MAP_RANGE_CHECK(i32, i64, i64) #1

declare dso_local i32 @vm_map_delete(i32, i64, i64) #1

declare dso_local i32 @vm_map_stack_locked(i32, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @vm_map_insert(i32, i32*, i32, i64, i64, i32, i32, i32) #1

declare dso_local i32 @vm_map_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
