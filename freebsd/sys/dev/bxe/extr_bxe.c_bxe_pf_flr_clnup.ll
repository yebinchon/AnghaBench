; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_pf_flr_clnup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_pf_flr_clnup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Cleanup after FLR PF[%d]\0A\00", align 1
@PGLUE_B_REG_INTERNAL_PFID_ENABLE_TARGET_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Polling usage counters\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"PCIE Transactions still pending\0A\00", align 1
@PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_pf_flr_clnup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_pf_flr_clnup(%struct.bxe_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  %5 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %6 = call i32 @bxe_flr_clnup_poll_count(%struct.bxe_softc* %5)
  store i32 %6, i32* %4, align 4
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %8 = load i32, i32* @DBG_LOAD, align 4
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %10 = call i32 @SC_ABS_FUNC(%struct.bxe_softc* %9)
  %11 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %7, i32 %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %13 = load i32, i32* @PGLUE_B_REG_INTERNAL_PFID_ENABLE_TARGET_READ, align 4
  %14 = call i32 @REG_WR(%struct.bxe_softc* %12, i32 %13, i32 1)
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %16 = load i32, i32* @DBG_LOAD, align 4
  %17 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %15, i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @bxe_poll_hw_usage_counters(%struct.bxe_softc* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %49

23:                                               ; preds = %1
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %26 = call i64 @SC_FUNC(%struct.bxe_softc* %25)
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @bxe_send_final_clnup(%struct.bxe_softc* %24, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 -1, i32* %2, align 4
  br label %49

32:                                               ; preds = %23
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @bxe_tx_hw_flushed(%struct.bxe_softc* %33, i32 %34)
  %36 = call i32 @DELAY(i32 100000)
  %37 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %38 = call i64 @bxe_is_pcie_pending(%struct.bxe_softc* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %42 = call i32 @BLOGE(%struct.bxe_softc* %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %32
  %44 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %45 = call i32 @bxe_hw_enable_status(%struct.bxe_softc* %44)
  %46 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %47 = load i32, i32* @PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER, align 4
  %48 = call i32 @REG_WR(%struct.bxe_softc* %46, i32 %47, i32 1)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %43, %31, %22
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @bxe_flr_clnup_poll_count(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, ...) #1

declare dso_local i32 @SC_ABS_FUNC(%struct.bxe_softc*) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

declare dso_local i64 @bxe_poll_hw_usage_counters(%struct.bxe_softc*, i32) #1

declare dso_local i64 @bxe_send_final_clnup(%struct.bxe_softc*, i32, i32) #1

declare dso_local i64 @SC_FUNC(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_tx_hw_flushed(%struct.bxe_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @bxe_is_pcie_pending(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @bxe_hw_enable_status(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
