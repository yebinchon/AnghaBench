; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tun_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tun_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuntap_softc = type { i32, i64, i32, i32, %struct.TYPE_8__*, %struct.TYPE_9__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32*, i32 }

@TUN_DYING = common dso_local global i32 0, align 4
@TUN_L2 = common dso_local global i32 0, align 4
@tun_ioctl_sx = common dso_local global i32 0, align 4
@M_TUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tuntap_softc*)* @tun_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tun_destroy(%struct.tuntap_softc* %0) #0 {
  %2 = alloca %struct.tuntap_softc*, align 8
  store %struct.tuntap_softc* %0, %struct.tuntap_softc** %2, align 8
  %3 = load %struct.tuntap_softc*, %struct.tuntap_softc** %2, align 8
  %4 = call i32 @TUN_LOCK(%struct.tuntap_softc* %3)
  %5 = load i32, i32* @TUN_DYING, align 4
  %6 = load %struct.tuntap_softc*, %struct.tuntap_softc** %2, align 8
  %7 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 8
  %10 = load %struct.tuntap_softc*, %struct.tuntap_softc** %2, align 8
  %11 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.tuntap_softc*, %struct.tuntap_softc** %2, align 8
  %16 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %15, i32 0, i32 2
  %17 = load %struct.tuntap_softc*, %struct.tuntap_softc** %2, align 8
  %18 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %17, i32 0, i32 3
  %19 = call i32 @cv_wait_unlock(i32* %16, i32* %18)
  br label %23

20:                                               ; preds = %1
  %21 = load %struct.tuntap_softc*, %struct.tuntap_softc** %2, align 8
  %22 = call i32 @TUN_UNLOCK(%struct.tuntap_softc* %21)
  br label %23

23:                                               ; preds = %20, %14
  %24 = load %struct.tuntap_softc*, %struct.tuntap_softc** %2, align 8
  %25 = call %struct.TYPE_10__* @TUN2IFP(%struct.tuntap_softc* %24)
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @CURVNET_SET(i32 %27)
  %29 = load %struct.tuntap_softc*, %struct.tuntap_softc** %2, align 8
  %30 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @destroy_dev(i32 %31)
  %33 = load %struct.tuntap_softc*, %struct.tuntap_softc** %2, align 8
  %34 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %33, i32 0, i32 5
  %35 = call i32 @seldrain(%struct.TYPE_9__* %34)
  %36 = load %struct.tuntap_softc*, %struct.tuntap_softc** %2, align 8
  %37 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = call i32 @knlist_clear(i32* %38, i32 0)
  %40 = load %struct.tuntap_softc*, %struct.tuntap_softc** %2, align 8
  %41 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = call i32 @knlist_destroy(i32* %42)
  %44 = load %struct.tuntap_softc*, %struct.tuntap_softc** %2, align 8
  %45 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @TUN_L2, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %23
  %51 = load %struct.tuntap_softc*, %struct.tuntap_softc** %2, align 8
  %52 = call %struct.TYPE_10__* @TUN2IFP(%struct.tuntap_softc* %51)
  %53 = call i32 @ether_ifdetach(%struct.TYPE_10__* %52)
  br label %61

54:                                               ; preds = %23
  %55 = load %struct.tuntap_softc*, %struct.tuntap_softc** %2, align 8
  %56 = call %struct.TYPE_10__* @TUN2IFP(%struct.tuntap_softc* %55)
  %57 = call i32 @bpfdetach(%struct.TYPE_10__* %56)
  %58 = load %struct.tuntap_softc*, %struct.tuntap_softc** %2, align 8
  %59 = call %struct.TYPE_10__* @TUN2IFP(%struct.tuntap_softc* %58)
  %60 = call i32 @if_detach(%struct.TYPE_10__* %59)
  br label %61

61:                                               ; preds = %54, %50
  %62 = call i32 @sx_xlock(i32* @tun_ioctl_sx)
  %63 = load %struct.tuntap_softc*, %struct.tuntap_softc** %2, align 8
  %64 = call %struct.TYPE_10__* @TUN2IFP(%struct.tuntap_softc* %63)
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  store i32* null, i32** %65, align 8
  %66 = call i32 @sx_xunlock(i32* @tun_ioctl_sx)
  %67 = load %struct.tuntap_softc*, %struct.tuntap_softc** %2, align 8
  %68 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %67, i32 0, i32 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.tuntap_softc*, %struct.tuntap_softc** %2, align 8
  %73 = call %struct.TYPE_10__* @TUN2IFP(%struct.tuntap_softc* %72)
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @free_unr(i32 %71, i32 %75)
  %77 = load %struct.tuntap_softc*, %struct.tuntap_softc** %2, align 8
  %78 = call %struct.TYPE_10__* @TUN2IFP(%struct.tuntap_softc* %77)
  %79 = call i32 @if_free(%struct.TYPE_10__* %78)
  %80 = load %struct.tuntap_softc*, %struct.tuntap_softc** %2, align 8
  %81 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %80, i32 0, i32 3
  %82 = call i32 @mtx_destroy(i32* %81)
  %83 = load %struct.tuntap_softc*, %struct.tuntap_softc** %2, align 8
  %84 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %83, i32 0, i32 2
  %85 = call i32 @cv_destroy(i32* %84)
  %86 = load %struct.tuntap_softc*, %struct.tuntap_softc** %2, align 8
  %87 = load i32, i32* @M_TUN, align 4
  %88 = call i32 @free(%struct.tuntap_softc* %86, i32 %87)
  %89 = call i32 (...) @CURVNET_RESTORE()
  ret void
}

declare dso_local i32 @TUN_LOCK(%struct.tuntap_softc*) #1

declare dso_local i32 @cv_wait_unlock(i32*, i32*) #1

declare dso_local i32 @TUN_UNLOCK(%struct.tuntap_softc*) #1

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local %struct.TYPE_10__* @TUN2IFP(%struct.tuntap_softc*) #1

declare dso_local i32 @destroy_dev(i32) #1

declare dso_local i32 @seldrain(%struct.TYPE_9__*) #1

declare dso_local i32 @knlist_clear(i32*, i32) #1

declare dso_local i32 @knlist_destroy(i32*) #1

declare dso_local i32 @ether_ifdetach(%struct.TYPE_10__*) #1

declare dso_local i32 @bpfdetach(%struct.TYPE_10__*) #1

declare dso_local i32 @if_detach(%struct.TYPE_10__*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @free_unr(i32, i32) #1

declare dso_local i32 @if_free(%struct.TYPE_10__*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @cv_destroy(i32*) #1

declare dso_local i32 @free(%struct.tuntap_softc*, i32) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
