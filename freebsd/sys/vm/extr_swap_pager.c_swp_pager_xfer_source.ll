; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swp_pager_xfer_source.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swp_pager_xfer_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SWAPBLK_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Unexpected destination swapblk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64)* @swp_pager_xfer_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swp_pager_xfer_source(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i64 @swp_pager_meta_ctl(i32 %11, i32 %12, i32 0)
  %14 = load i64, i64* @SWAPBLK_NONE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %39

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @vm_object_pip_add(i32 %18, i32 1)
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @VM_OBJECT_WUNLOCK(i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @vm_object_pip_add(i32 %22, i32 1)
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i64, i64* %9, align 8
  %27 = call i64 @swp_pager_meta_build(i32 %24, i32 %25, i64 %26)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @SWAPBLK_NONE, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @KASSERT(i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @vm_object_pip_wakeup(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @VM_OBJECT_WLOCK(i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @vm_object_pip_wakeup(i32 %37)
  store i32 1, i32* %5, align 4
  br label %39

39:                                               ; preds = %17, %16
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i64 @swp_pager_meta_ctl(i32, i32, i32) #1

declare dso_local i32 @vm_object_pip_add(i32, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32) #1

declare dso_local i64 @swp_pager_meta_build(i32, i32, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_object_pip_wakeup(i32) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
