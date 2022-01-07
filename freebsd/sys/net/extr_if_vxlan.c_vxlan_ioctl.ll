; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, %struct.vxlan_softc* }
%struct.vxlan_softc = type { i32 }
%struct.ifreq = type { i32 }
%struct.ifdrv = type { i32 }

@ETHERMIN = common dso_local global i32 0, align 4
@VXLAN_MAX_MTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @vxlan_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.vxlan_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca %struct.ifdrv*, align 8
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 1
  %13 = load %struct.vxlan_softc*, %struct.vxlan_softc** %12, align 8
  store %struct.vxlan_softc* %13, %struct.vxlan_softc** %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = inttoptr i64 %14 to %struct.ifreq*
  store %struct.ifreq* %15, %struct.ifreq** %8, align 8
  %16 = load i64, i64* %6, align 8
  %17 = inttoptr i64 %16 to %struct.ifdrv*
  store %struct.ifdrv* %17, %struct.ifdrv** %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %58 [
    i32 135, label %19
    i32 134, label %19
    i32 133, label %20
    i32 131, label %20
    i32 130, label %27
    i32 129, label %30
    i32 132, label %30
    i32 128, label %37
  ]

19:                                               ; preds = %3, %3
  br label %63

20:                                               ; preds = %3, %3
  %21 = load %struct.vxlan_softc*, %struct.vxlan_softc** %7, align 8
  %22 = load %struct.ifdrv*, %struct.ifdrv** %9, align 8
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 133
  %25 = zext i1 %24 to i32
  %26 = call i32 @vxlan_ioctl_drvspec(%struct.vxlan_softc* %21, %struct.ifdrv* %22, i32 %25)
  store i32 %26, i32* %10, align 4
  br label %63

27:                                               ; preds = %3
  %28 = load %struct.vxlan_softc*, %struct.vxlan_softc** %7, align 8
  %29 = call i32 @vxlan_ioctl_ifflags(%struct.vxlan_softc* %28)
  store i32 %29, i32* %10, align 4
  br label %63

30:                                               ; preds = %3, %3
  %31 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %32 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %33 = load %struct.vxlan_softc*, %struct.vxlan_softc** %7, align 8
  %34 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @ifmedia_ioctl(%struct.ifnet* %31, %struct.ifreq* %32, i32* %34, i32 %35)
  store i32 %36, i32* %10, align 4
  br label %63

37:                                               ; preds = %3
  %38 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %39 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ETHERMIN, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %45 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @VXLAN_MAX_MTU, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43, %37
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %10, align 4
  br label %57

51:                                               ; preds = %43
  %52 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %53 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %51, %49
  br label %63

58:                                               ; preds = %3
  %59 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @ether_ioctl(%struct.ifnet* %59, i32 %60, i64 %61)
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %58, %57, %30, %27, %20, %19
  %64 = load i32, i32* %10, align 4
  ret i32 %64
}

declare dso_local i32 @vxlan_ioctl_drvspec(%struct.vxlan_softc*, %struct.ifdrv*, i32) #1

declare dso_local i32 @vxlan_ioctl_ifflags(%struct.vxlan_softc*) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
