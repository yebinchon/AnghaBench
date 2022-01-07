; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfe_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32, i32, i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bfe_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfe_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bfe_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.bfe_softc* @device_get_softc(i32 %5)
  store %struct.bfe_softc* %6, %struct.bfe_softc** %3, align 8
  %7 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %8 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %7, i32 0, i32 0
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %11 = call i32 @BFE_LOCK(%struct.bfe_softc* %10)
  %12 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %13 = call i32 @bfe_chip_reset(%struct.bfe_softc* %12)
  %14 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %15 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IFF_UP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %1
  %21 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %22 = call i32 @bfe_init_locked(%struct.bfe_softc* %21)
  %23 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %24 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %20
  %30 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 2
  %32 = call i32 @IFQ_DRV_IS_EMPTY(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %36 = call i32 @bfe_start_locked(%struct.ifnet* %35)
  br label %37

37:                                               ; preds = %34, %29, %20
  br label %38

38:                                               ; preds = %37, %1
  %39 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %40 = call i32 @BFE_UNLOCK(%struct.bfe_softc* %39)
  ret i32 0
}

declare dso_local %struct.bfe_softc* @device_get_softc(i32) #1

declare dso_local i32 @BFE_LOCK(%struct.bfe_softc*) #1

declare dso_local i32 @bfe_chip_reset(%struct.bfe_softc*) #1

declare dso_local i32 @bfe_init_locked(%struct.bfe_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @bfe_start_locked(%struct.ifnet*) #1

declare dso_local i32 @BFE_UNLOCK(%struct.bfe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
