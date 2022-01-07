; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps.c_mps_periodic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps.c_mps_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_softc = type { i32, i32 }

@MPS_FLAGS_SHUTDOWN = common dso_local global i32 0, align 4
@MPI2_DOORBELL_OFFSET = common dso_local global i32 0, align 4
@MPI2_IOC_STATE_MASK = common dso_local global i32 0, align 4
@MPI2_IOC_STATE_FAULT = common dso_local global i32 0, align 4
@MPS_FAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"IOC Fault 0x%08x, Resetting\0A\00", align 1
@MPS_PERIODIC_DELAY = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mps_periodic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mps_periodic(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mps_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.mps_softc*
  store %struct.mps_softc* %6, %struct.mps_softc** %3, align 8
  %7 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %8 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MPS_FLAGS_SHUTDOWN, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %38

14:                                               ; preds = %1
  %15 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %16 = load i32, i32* @MPI2_DOORBELL_OFFSET, align 4
  %17 = call i32 @mps_regread(%struct.mps_softc* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @MPI2_IOC_STATE_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @MPI2_IOC_STATE_FAULT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %25 = load i32, i32* @MPS_FAULT, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @mps_dprint(%struct.mps_softc* %24, i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %29 = call i32 @mps_reinit(%struct.mps_softc* %28)
  br label %30

30:                                               ; preds = %23, %14
  %31 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %32 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %31, i32 0, i32 1
  %33 = load i32, i32* @MPS_PERIODIC_DELAY, align 4
  %34 = load i32, i32* @hz, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %37 = call i32 @callout_reset(i32* %32, i32 %35, void (i8*)* @mps_periodic, %struct.mps_softc* %36)
  br label %38

38:                                               ; preds = %30, %13
  ret void
}

declare dso_local i32 @mps_regread(%struct.mps_softc*, i32) #1

declare dso_local i32 @mps_dprint(%struct.mps_softc*, i32, i8*, i32) #1

declare dso_local i32 @mps_reinit(%struct.mps_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.mps_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
