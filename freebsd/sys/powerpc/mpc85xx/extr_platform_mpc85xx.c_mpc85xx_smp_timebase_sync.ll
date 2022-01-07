; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_platform_mpc85xx.c_mpc85xx_smp_timebase_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_platform_mpc85xx.c_mpc85xx_smp_timebase_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mpc85xx_smp_timebase_sync.tb_ready = internal global i32 0, align 4
@mpc85xx_smp_timebase_sync.cpu_done = internal global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@rcpm_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @mpc85xx_smp_timebase_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc85xx_smp_timebase_sync(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %3
  br label %10

10:                                               ; preds = %14, %9
  %11 = load volatile i32, i32* @mpc85xx_smp_timebase_sync.tb_ready, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 (...) @atomic_thread_fence_seq_cst()
  br label %10

16:                                               ; preds = %10
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @mttb(i32 %17)
  %19 = call i32 @atomic_add_int(i32* @mpc85xx_smp_timebase_sync.cpu_done, i32 1)
  br label %20

20:                                               ; preds = %24, %16
  %21 = load volatile i32, i32* @mpc85xx_smp_timebase_sync.cpu_done, align 4
  %22 = load volatile i32, i32* @mp_ncpus, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 (...) @atomic_thread_fence_seq_cst()
  br label %20

26:                                               ; preds = %20
  br label %42

27:                                               ; preds = %3
  %28 = load i32, i32* @rcpm_dev, align 4
  %29 = call i32 @freeze_timebase(i32 %28, i32 1)
  store volatile i32 1, i32* @mpc85xx_smp_timebase_sync.tb_ready, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @mttb(i32 %30)
  %32 = call i32 @atomic_add_int(i32* @mpc85xx_smp_timebase_sync.cpu_done, i32 1)
  br label %33

33:                                               ; preds = %37, %27
  %34 = load volatile i32, i32* @mpc85xx_smp_timebase_sync.cpu_done, align 4
  %35 = load volatile i32, i32* @mp_ncpus, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 (...) @atomic_thread_fence_seq_cst()
  br label %33

39:                                               ; preds = %33
  %40 = load i32, i32* @rcpm_dev, align 4
  %41 = call i32 @freeze_timebase(i32 %40, i32 0)
  br label %42

42:                                               ; preds = %39, %26
  ret void
}

declare dso_local i32 @atomic_thread_fence_seq_cst(...) #1

declare dso_local i32 @mttb(i32) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @freeze_timebase(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
