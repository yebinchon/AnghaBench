; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_eint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_eint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hme_softc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@HME_SEB_STAT_MIFIRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"XXXlink status changed: cfg=%#x, stat=%#x, sm=%#x\0A\00", align 1
@HME_MIFI_CFG = common dso_local global i32 0, align 4
@HME_MIFI_STAT = common dso_local global i32 0, align 4
@HME_MIFI_SM = common dso_local global i32 0, align 4
@HME_SEB_STAT_FATAL_ERRORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"error signaled, status=%#x\0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hme_softc*, i32)* @hme_eint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hme_eint(%struct.hme_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.hme_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.hme_softc* %0, %struct.hme_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @HME_SEB_STAT_MIFIRQ, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %11 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %14 = load i32, i32* @HME_MIFI_CFG, align 4
  %15 = call i32 @HME_MIF_READ_4(%struct.hme_softc* %13, i32 %14)
  %16 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %17 = load i32, i32* @HME_MIFI_STAT, align 4
  %18 = call i32 @HME_MIF_READ_4(%struct.hme_softc* %16, i32 %17)
  %19 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %20 = load i32, i32* @HME_MIFI_SM, align 4
  %21 = call i32 @HME_MIF_READ_4(%struct.hme_softc* %19, i32 %20)
  %22 = call i32 @device_printf(i32 %12, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21)
  br label %44

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @HME_SEB_STAT_FATAL_ERRORS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %30 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @HME_WHINE(i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %37 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %35
  store i32 %41, i32* %39, align 4
  %42 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %43 = call i32 @hme_init_locked(%struct.hme_softc* %42)
  br label %44

44:                                               ; preds = %9, %28, %23
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @HME_MIF_READ_4(%struct.hme_softc*, i32) #1

declare dso_local i32 @HME_WHINE(i32, i8*, i32) #1

declare dso_local i32 @hme_init_locked(%struct.hme_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
