; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_if_axgbe.c_axgbe_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_if_axgbe.c_axgbe_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.axgbe_softc* }
%struct.axgbe_softc = type { i32 }
%struct.ifreq = type { i32 }

@ETHERMIN = common dso_local global i32 0, align 4
@ETHERMTU_JUMBO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i64, i64)* @axgbe_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axgbe_ioctl(%struct.ifnet* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.axgbe_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 0
  %12 = load %struct.axgbe_softc*, %struct.axgbe_softc** %11, align 8
  store %struct.axgbe_softc* %12, %struct.axgbe_softc** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = inttoptr i64 %13 to %struct.ifreq*
  store %struct.ifreq* %14, %struct.ifreq** %8, align 8
  %15 = load i64, i64* %5, align 8
  switch i64 %15, label %45 [
    i64 128, label %16
    i64 130, label %37
    i64 129, label %38
    i64 131, label %38
  ]

16:                                               ; preds = %3
  %17 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %18 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ETHERMIN, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %24 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ETHERMTU_JUMBO, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22, %16
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %9, align 4
  br label %36

30:                                               ; preds = %22
  %31 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %32 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %33 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @xgbe_change_mtu(%struct.ifnet* %31, i32 %34)
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %30, %28
  br label %50

37:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %50

38:                                               ; preds = %3, %3
  %39 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %40 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %41 = load %struct.axgbe_softc*, %struct.axgbe_softc** %7, align 8
  %42 = getelementptr inbounds %struct.axgbe_softc, %struct.axgbe_softc* %41, i32 0, i32 0
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @ifmedia_ioctl(%struct.ifnet* %39, %struct.ifreq* %40, i32* %42, i64 %43)
  store i32 %44, i32* %9, align 4
  br label %50

45:                                               ; preds = %3
  %46 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @ether_ioctl(%struct.ifnet* %46, i64 %47, i64 %48)
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %45, %38, %37, %36
  %51 = load i32, i32* %9, align 4
  ret i32 %51
}

declare dso_local i32 @xgbe_change_mtu(%struct.ifnet*, i32) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i64) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
