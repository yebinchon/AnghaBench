; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_pmc.c_pmc_soft_ev_acquire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_pmc.c_pmc_soft_ev_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_soft = type { i32 }

@PMC_EV_SOFT_FIRST = common dso_local global i32 0, align 4
@pmc_softevents = common dso_local global i32 0, align 4
@PMC_EV_SOFT_LAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"event out of range\00", align 1
@pmc_softs_mtx = common dso_local global i32 0, align 4
@pmc_softs = common dso_local global %struct.pmc_soft** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pmc_soft* @pmc_soft_ev_acquire(i32 %0) #0 {
  %2 = alloca %struct.pmc_soft*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmc_soft*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @PMC_EV_SOFT_FIRST, align 4
  %10 = sub i32 %8, %9
  %11 = load i32, i32* @pmc_softevents, align 4
  %12 = icmp uge i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7, %1
  store %struct.pmc_soft* null, %struct.pmc_soft** %2, align 8
  br label %40

14:                                               ; preds = %7
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @PMC_EV_SOFT_FIRST, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @PMC_EV_SOFT_LAST, align 4
  %21 = icmp sle i32 %19, %20
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @KASSERT(i32 %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @mtx_lock_spin(i32* @pmc_softs_mtx)
  %27 = load %struct.pmc_soft**, %struct.pmc_soft*** @pmc_softs, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @PMC_EV_SOFT_FIRST, align 4
  %30 = sub i32 %28, %29
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.pmc_soft*, %struct.pmc_soft** %27, i64 %31
  %33 = load %struct.pmc_soft*, %struct.pmc_soft** %32, align 8
  store %struct.pmc_soft* %33, %struct.pmc_soft** %4, align 8
  %34 = load %struct.pmc_soft*, %struct.pmc_soft** %4, align 8
  %35 = icmp eq %struct.pmc_soft* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = call i32 @mtx_unlock_spin(i32* @pmc_softs_mtx)
  br label %38

38:                                               ; preds = %36, %22
  %39 = load %struct.pmc_soft*, %struct.pmc_soft** %4, align 8
  store %struct.pmc_soft* %39, %struct.pmc_soft** %2, align 8
  br label %40

40:                                               ; preds = %38, %13
  %41 = load %struct.pmc_soft*, %struct.pmc_soft** %2, align 8
  ret %struct.pmc_soft* %41
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
