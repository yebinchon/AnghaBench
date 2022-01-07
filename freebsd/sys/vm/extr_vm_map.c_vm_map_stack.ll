; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_stack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }

@MAP_WIREFUTURE = common dso_local global i32 0, align 4
@sgrowsiz = common dso_local global i64 0, align 8
@curthread = common dso_local global i32 0, align 4
@RLIMIT_VMEM = common dso_local global i32 0, align 4
@KERN_NO_SPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map_stack(%struct.TYPE_6__* %0, i32 %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MAP_WIREFUTURE, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @MPASS(i32 %23)
  %25 = load i64, i64* @sgrowsiz, align 8
  store i64 %25, i64* %13, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %13, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load i64, i64* %9, align 8
  br label %33

31:                                               ; preds = %6
  %32 = load i64, i64* %13, align 8
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i64 [ %30, %29 ], [ %32, %31 ]
  store i64 %34, i64* %14, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %36 = call i32 @vm_map_lock(%struct.TYPE_6__* %35)
  %37 = load i32, i32* @curthread, align 4
  %38 = load i32, i32* @RLIMIT_VMEM, align 4
  %39 = call i64 @lim_cur(i32 %37, i32 %38)
  store i64 %39, i64* %15, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %14, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i64, i64* %15, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = load i32, i32* @KERN_NO_SPACE, align 4
  store i32 %48, i32* %16, align 4
  br label %58

49:                                               ; preds = %33
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %13, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @vm_map_stack_locked(%struct.TYPE_6__* %50, i32 %51, i64 %52, i64 %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %16, align 4
  br label %58

58:                                               ; preds = %49, %47
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %60 = call i32 @vm_map_unlock(%struct.TYPE_6__* %59)
  %61 = load i32, i32* %16, align 4
  ret i32 %61
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @vm_map_lock(%struct.TYPE_6__*) #1

declare dso_local i64 @lim_cur(i32, i32) #1

declare dso_local i32 @vm_map_stack_locked(%struct.TYPE_6__*, i32, i64, i64, i32, i32, i32) #1

declare dso_local i32 @vm_map_unlock(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
