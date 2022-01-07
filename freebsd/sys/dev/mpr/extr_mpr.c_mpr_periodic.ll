; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr.c_mpr_periodic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr.c_mpr_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i32, i32 }

@MPR_FLAGS_SHUTDOWN = common dso_local global i32 0, align 4
@MPI2_DOORBELL_OFFSET = common dso_local global i32 0, align 4
@MPI2_IOC_STATE_MASK = common dso_local global i32 0, align 4
@MPI2_IOC_STATE_FAULT = common dso_local global i32 0, align 4
@MPI2_DOORBELL_FAULT_CODE_MASK = common dso_local global i32 0, align 4
@IFAULT_IOP_OVER_TEMP_THRESHOLD_EXCEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"TEMPERATURE FAULT: STOPPING.\00", align 1
@MPR_FAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"IOC Fault 0x%08x, Resetting\0A\00", align 1
@MPR_PERIODIC_DELAY = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mpr_periodic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpr_periodic(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mpr_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.mpr_softc*
  store %struct.mpr_softc* %6, %struct.mpr_softc** %3, align 8
  %7 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %8 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MPR_FLAGS_SHUTDOWN, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %46

14:                                               ; preds = %1
  %15 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %16 = load i32, i32* @MPI2_DOORBELL_OFFSET, align 4
  %17 = call i32 @mpr_regread(%struct.mpr_softc* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @MPI2_IOC_STATE_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @MPI2_IOC_STATE_FAULT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %14
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @MPI2_DOORBELL_FAULT_CODE_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @IFAULT_IOP_OVER_TEMP_THRESHOLD_EXCEEDED, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %23
  %32 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %33 = load i32, i32* @MPR_FAULT, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @mpr_dprint(%struct.mpr_softc* %32, i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %37 = call i32 @mpr_reinit(%struct.mpr_softc* %36)
  br label %38

38:                                               ; preds = %31, %14
  %39 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %40 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %39, i32 0, i32 1
  %41 = load i32, i32* @MPR_PERIODIC_DELAY, align 4
  %42 = load i32, i32* @hz, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %45 = call i32 @callout_reset(i32* %40, i32 %43, void (i8*)* @mpr_periodic, %struct.mpr_softc* %44)
  br label %46

46:                                               ; preds = %38, %13
  ret void
}

declare dso_local i32 @mpr_regread(%struct.mpr_softc*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @mpr_dprint(%struct.mpr_softc*, i32, i8*, i32) #1

declare dso_local i32 @mpr_reinit(%struct.mpr_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.mpr_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
