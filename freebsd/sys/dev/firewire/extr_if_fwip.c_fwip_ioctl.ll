; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_if_fwip.c_fwip_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_if_fwip.c_fwip_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i64 }
%struct.fwip_softc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.firewire_comm* }
%struct.firewire_comm = type { i32 (%struct.firewire_comm*, i32)* }
%struct.fwip_eth_softc = type { %struct.fwip_softc* }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@fwip_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @fwip_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwip_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.fwip_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.fwip_eth_softc*
  %15 = getelementptr inbounds %struct.fwip_eth_softc, %struct.fwip_eth_softc* %14, i32 0, i32 0
  %16 = load %struct.fwip_softc*, %struct.fwip_softc** %15, align 8
  store %struct.fwip_softc* %16, %struct.fwip_softc** %8, align 8
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %54 [
    i32 128, label %18
    i32 131, label %52
    i32 130, label %52
    i32 129, label %53
  ]

18:                                               ; preds = %3
  %19 = call i32 (...) @splimp()
  store i32 %19, i32* %9, align 4
  %20 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IFF_UP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %18
  %27 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = load %struct.fwip_softc*, %struct.fwip_softc** %8, align 8
  %35 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %34, i32 0, i32 1
  %36 = call i32 @fwip_init(i32* %35)
  br label %37

37:                                               ; preds = %33, %26
  br label %49

38:                                               ; preds = %18
  %39 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %40 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load %struct.fwip_softc*, %struct.fwip_softc** %8, align 8
  %47 = call i32 @fwip_stop(%struct.fwip_softc* %46)
  br label %48

48:                                               ; preds = %45, %38
  br label %49

49:                                               ; preds = %48, %37
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @splx(i32 %50)
  br label %63

52:                                               ; preds = %3, %3
  br label %63

53:                                               ; preds = %3
  br label %63

54:                                               ; preds = %3
  %55 = call i32 (...) @splimp()
  store i32 %55, i32* %9, align 4
  %56 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @firewire_ioctl(%struct.ifnet* %56, i32 %57, i64 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @splx(i32 %60)
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %64

63:                                               ; preds = %53, %52, %49
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %54
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @splimp(...) #1

declare dso_local i32 @fwip_init(i32*) #1

declare dso_local i32 @fwip_stop(%struct.fwip_softc*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @firewire_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
