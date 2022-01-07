; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_llan.c_llan_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_llan.c_llan_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.llan_softc* }
%struct.llan_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ifreq = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @llan_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llan_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.llan_softc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 0
  %11 = load %struct.llan_softc*, %struct.llan_softc** %10, align 8
  store %struct.llan_softc* %11, %struct.llan_softc** %8, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %41 [
    i32 132, label %13
    i32 131, label %13
    i32 130, label %32
    i32 128, label %32
    i32 129, label %40
  ]

13:                                               ; preds = %3, %3
  %14 = load %struct.llan_softc*, %struct.llan_softc** %8, align 8
  %15 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %14, i32 0, i32 1
  %16 = call i32 @mtx_lock(i32* %15)
  %17 = load %struct.llan_softc*, %struct.llan_softc** %8, align 8
  %18 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = load %struct.llan_softc*, %struct.llan_softc** %8, align 8
  %27 = call i32 @llan_set_multicast(%struct.llan_softc* %26)
  br label %28

28:                                               ; preds = %25, %13
  %29 = load %struct.llan_softc*, %struct.llan_softc** %8, align 8
  %30 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %29, i32 0, i32 1
  %31 = call i32 @mtx_unlock(i32* %30)
  br label %46

32:                                               ; preds = %3, %3
  %33 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %34 = load i64, i64* %6, align 8
  %35 = inttoptr i64 %34 to %struct.ifreq*
  %36 = load %struct.llan_softc*, %struct.llan_softc** %8, align 8
  %37 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @ifmedia_ioctl(%struct.ifnet* %33, %struct.ifreq* %35, i32* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  br label %46

40:                                               ; preds = %3
  br label %41

41:                                               ; preds = %3, %40
  %42 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @ether_ioctl(%struct.ifnet* %42, i32 %43, i64 %44)
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %41, %32, %28
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @llan_set_multicast(%struct.llan_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
