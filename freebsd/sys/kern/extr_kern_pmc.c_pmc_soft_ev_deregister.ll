; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_pmc.c_pmc_soft_ev_deregister.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_pmc.c_pmc_soft_ev_deregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_soft = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"pmc_soft_deregister: called with NULL\00", align 1
@pmc_softs_mtx = common dso_local global i32 0, align 4
@PMC_EV_SOFT_FIRST = common dso_local global i64 0, align 8
@pmc_softevents = common dso_local global i64 0, align 8
@PMC_EV_SOFT_LAST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"pmc_soft_deregister: invalid event value\00", align 1
@pmc_softs = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmc_soft_ev_deregister(%struct.pmc_soft* %0) #0 {
  %2 = alloca %struct.pmc_soft*, align 8
  store %struct.pmc_soft* %0, %struct.pmc_soft** %2, align 8
  %3 = load %struct.pmc_soft*, %struct.pmc_soft** %2, align 8
  %4 = icmp ne %struct.pmc_soft* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @KASSERT(i32 %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @mtx_lock_spin(i32* @pmc_softs_mtx)
  %8 = load %struct.pmc_soft*, %struct.pmc_soft** %2, align 8
  %9 = getelementptr inbounds %struct.pmc_soft, %struct.pmc_soft* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %51

13:                                               ; preds = %1
  %14 = load %struct.pmc_soft*, %struct.pmc_soft** %2, align 8
  %15 = getelementptr inbounds %struct.pmc_soft, %struct.pmc_soft* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PMC_EV_SOFT_FIRST, align 8
  %19 = sub nsw i64 %17, %18
  %20 = load i64, i64* @pmc_softevents, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %13
  %23 = load %struct.pmc_soft*, %struct.pmc_soft** %2, align 8
  %24 = getelementptr inbounds %struct.pmc_soft, %struct.pmc_soft* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* @PMC_EV_SOFT_FIRST, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %22
  %32 = load %struct.pmc_soft*, %struct.pmc_soft** %2, align 8
  %33 = getelementptr inbounds %struct.pmc_soft, %struct.pmc_soft* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @PMC_EV_SOFT_LAST, align 4
  %38 = icmp sle i32 %36, %37
  br label %39

39:                                               ; preds = %31, %22
  %40 = phi i1 [ false, %22 ], [ %38, %31 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @KASSERT(i32 %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32**, i32*** @pmc_softs, align 8
  %44 = load %struct.pmc_soft*, %struct.pmc_soft** %2, align 8
  %45 = getelementptr inbounds %struct.pmc_soft, %struct.pmc_soft* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PMC_EV_SOFT_FIRST, align 8
  %49 = sub nsw i64 %47, %48
  %50 = getelementptr inbounds i32*, i32** %43, i64 %49
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %39, %13, %1
  %52 = call i32 @mtx_unlock_spin(i32* @pmc_softs_mtx)
  ret void
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
