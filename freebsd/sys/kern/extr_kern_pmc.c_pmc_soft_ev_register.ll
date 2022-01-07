; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_pmc.c_pmc_soft_ev_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_pmc.c_pmc_soft_ev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_soft = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@pmc_soft_ev_register.warned = internal global i32 0, align 4
@pmc_softs_mtx = common dso_local global i32 0, align 4
@pmc_softs_count = common dso_local global i32 0, align 4
@pmc_softevents = common dso_local global i32 0, align 4
@pmc_softs = common dso_local global %struct.pmc_soft** null, align 8
@.str = private unnamed_addr constant [69 x i8] c"hwpmc: too many soft events, increase kern.hwpmc.softevents tunable\0A\00", align 1
@PMC_EV_SOFT_FIRST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmc_soft_ev_register(%struct.pmc_soft* %0) #0 {
  %2 = alloca %struct.pmc_soft*, align 8
  %3 = alloca i32, align 4
  store %struct.pmc_soft* %0, %struct.pmc_soft** %2, align 8
  %4 = load %struct.pmc_soft*, %struct.pmc_soft** %2, align 8
  %5 = getelementptr inbounds %struct.pmc_soft, %struct.pmc_soft* %4, i32 0, i32 1
  store i64 0, i64* %5, align 8
  %6 = load %struct.pmc_soft*, %struct.pmc_soft** %2, align 8
  %7 = getelementptr inbounds %struct.pmc_soft, %struct.pmc_soft* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = load %struct.pmc_soft*, %struct.pmc_soft** %2, align 8
  %10 = getelementptr inbounds %struct.pmc_soft, %struct.pmc_soft* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pmc_soft_namecleanup(i32 %12)
  %14 = call i32 @mtx_lock_spin(i32* @pmc_softs_mtx)
  %15 = load i32, i32* @pmc_softs_count, align 4
  %16 = load i32, i32* @pmc_softevents, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %58

18:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %32, %18
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @pmc_softevents, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load %struct.pmc_soft**, %struct.pmc_soft*** @pmc_softs, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.pmc_soft*, %struct.pmc_soft** %24, i64 %26
  %28 = load %struct.pmc_soft*, %struct.pmc_soft** %27, align 8
  %29 = icmp eq %struct.pmc_soft* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %35

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %19

35:                                               ; preds = %30, %19
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @pmc_softevents, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = call i32 @mtx_unlock_spin(i32* @pmc_softs_mtx)
  %41 = load i32, i32* @pmc_soft_ev_register.warned, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = call i32 @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @pmc_soft_ev_register.warned, align 4
  br label %45

45:                                               ; preds = %43, %39
  br label %73

46:                                               ; preds = %35
  %47 = load i32, i32* @PMC_EV_SOFT_FIRST, align 4
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %47, %48
  %50 = load %struct.pmc_soft*, %struct.pmc_soft** %2, align 8
  %51 = getelementptr inbounds %struct.pmc_soft, %struct.pmc_soft* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load %struct.pmc_soft*, %struct.pmc_soft** %2, align 8
  %54 = load %struct.pmc_soft**, %struct.pmc_soft*** @pmc_softs, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.pmc_soft*, %struct.pmc_soft** %54, i64 %56
  store %struct.pmc_soft* %53, %struct.pmc_soft** %57, align 8
  br label %71

58:                                               ; preds = %1
  %59 = load i32, i32* @PMC_EV_SOFT_FIRST, align 4
  %60 = load i32, i32* @pmc_softs_count, align 4
  %61 = add nsw i32 %59, %60
  %62 = load %struct.pmc_soft*, %struct.pmc_soft** %2, align 8
  %63 = getelementptr inbounds %struct.pmc_soft, %struct.pmc_soft* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load %struct.pmc_soft*, %struct.pmc_soft** %2, align 8
  %66 = load %struct.pmc_soft**, %struct.pmc_soft*** @pmc_softs, align 8
  %67 = load i32, i32* @pmc_softs_count, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* @pmc_softs_count, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds %struct.pmc_soft*, %struct.pmc_soft** %66, i64 %69
  store %struct.pmc_soft* %65, %struct.pmc_soft** %70, align 8
  br label %71

71:                                               ; preds = %58, %46
  %72 = call i32 @mtx_unlock_spin(i32* @pmc_softs_mtx)
  br label %73

73:                                               ; preds = %71, %45
  ret void
}

declare dso_local i32 @pmc_soft_namecleanup(i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
