; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_soft_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }

@MPT_PRT_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"soft reset\0A\00", align 1
@MPT_DB_STATE_RUNNING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"soft reset failed: device not running\0A\00", align 1
@MPT_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"soft reset failed: doorbell wedged\0A\00", align 1
@MPT_OFFSET_DOORBELL = common dso_local global i32 0, align 4
@MPI_FUNCTION_IOC_MESSAGE_UNIT_RESET = common dso_local global i32 0, align 4
@MPI_DOORBELL_FUNCTION_SHIFT = common dso_local global i32 0, align 4
@MPT_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"soft reset failed: ack timeout\0A\00", align 1
@MPT_DB_STATE_READY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"soft reset failed: device did not restart\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*)* @mpt_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_soft_reset(%struct.mpt_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpt_softc*, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %3, align 8
  %4 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %5 = load i32, i32* @MPT_PRT_DEBUG, align 4
  %6 = call i32 @mpt_lprt(%struct.mpt_softc* %4, i32 %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %8 = call i32 @mpt_rd_db(%struct.mpt_softc* %7)
  %9 = call i64 @MPT_STATE(i32 %8)
  %10 = load i64, i64* @MPT_DB_STATE_RUNNING, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %14 = call i32 @mpt_prt(%struct.mpt_softc* %13, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @MPT_FAIL, align 4
  store i32 %15, i32* %2, align 4
  br label %53

16:                                               ; preds = %1
  %17 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %18 = call i32 @mpt_rd_db(%struct.mpt_softc* %17)
  %19 = call i64 @MPT_DB_IS_IN_USE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %23 = call i32 @mpt_prt(%struct.mpt_softc* %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32, i32* @MPT_FAIL, align 4
  store i32 %24, i32* %2, align 4
  br label %53

25:                                               ; preds = %16
  %26 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %27 = load i32, i32* @MPT_OFFSET_DOORBELL, align 4
  %28 = load i32, i32* @MPI_FUNCTION_IOC_MESSAGE_UNIT_RESET, align 4
  %29 = load i32, i32* @MPI_DOORBELL_FUNCTION_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = call i32 @mpt_write(%struct.mpt_softc* %26, i32 %27, i32 %30)
  %32 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %33 = call i64 @mpt_wait_db_ack(%struct.mpt_softc* %32)
  %34 = load i64, i64* @MPT_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %38 = call i32 @mpt_prt(%struct.mpt_softc* %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %39 = load i32, i32* @MPT_FAIL, align 4
  store i32 %39, i32* %2, align 4
  br label %53

40:                                               ; preds = %25
  %41 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %42 = load i32, i32* @MPT_DB_STATE_READY, align 4
  %43 = call i64 @mpt_wait_state(%struct.mpt_softc* %41, i32 %42)
  %44 = load i64, i64* @MPT_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %48 = call i32 @mpt_prt(%struct.mpt_softc* %47, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %49 = load i32, i32* @MPT_FAIL, align 4
  store i32 %49, i32* %2, align 4
  br label %53

50:                                               ; preds = %40
  %51 = load i64, i64* @MPT_OK, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %50, %46, %36, %21, %12
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @mpt_lprt(%struct.mpt_softc*, i32, i8*) #1

declare dso_local i64 @MPT_STATE(i32) #1

declare dso_local i32 @mpt_rd_db(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*) #1

declare dso_local i64 @MPT_DB_IS_IN_USE(i32) #1

declare dso_local i32 @mpt_write(%struct.mpt_softc*, i32, i32) #1

declare dso_local i64 @mpt_wait_db_ack(%struct.mpt_softc*) #1

declare dso_local i64 @mpt_wait_state(%struct.mpt_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
