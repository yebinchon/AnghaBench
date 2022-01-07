; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tunopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tunopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.tuntap_softc*, i32 }
%struct.tuntap_softc = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.thread = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ifnet = type { i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"si_drv1 should have been initialized at creation\00", align 1
@TUN_INITED = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@TUN_OPEN = common dso_local global i32 0, align 4
@TUN_DYING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Must be able to busy an unopen tunnel\00", align 1
@TUN_L2 = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@tapuponopen = common dso_local global i64 0, align 8
@IFF_UP = common dso_local global i32 0, align 4
@LINK_STATE_UP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"open\0A\00", align 1
@tundtor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @tunopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tunopen(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.ifnet*, align 8
  %11 = alloca %struct.tuntap_softc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.thread*, %struct.thread** %9, align 8
  %15 = call i32 @TD_TO_VNET(%struct.thread* %14)
  %16 = call i32 @CURVNET_SET(i32 %15)
  %17 = load %struct.cdev*, %struct.cdev** %6, align 8
  %18 = getelementptr inbounds %struct.cdev, %struct.cdev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @tuntap_name2info(i32 %19, i32* null, i32* %13)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = call i32 (...) @CURVNET_RESTORE()
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %5, align 4
  br label %128

26:                                               ; preds = %4
  %27 = load %struct.cdev*, %struct.cdev** %6, align 8
  %28 = getelementptr inbounds %struct.cdev, %struct.cdev* %27, i32 0, i32 0
  %29 = load %struct.tuntap_softc*, %struct.tuntap_softc** %28, align 8
  store %struct.tuntap_softc* %29, %struct.tuntap_softc** %11, align 8
  %30 = load %struct.tuntap_softc*, %struct.tuntap_softc** %11, align 8
  %31 = icmp ne %struct.tuntap_softc* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @KASSERT(i32 %32, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.tuntap_softc*, %struct.tuntap_softc** %11, align 8
  %35 = call i32 @TUN_LOCK(%struct.tuntap_softc* %34)
  %36 = load %struct.tuntap_softc*, %struct.tuntap_softc** %11, align 8
  %37 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @TUN_INITED, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %26
  %43 = load %struct.tuntap_softc*, %struct.tuntap_softc** %11, align 8
  %44 = call i32 @TUN_UNLOCK(%struct.tuntap_softc* %43)
  %45 = call i32 (...) @CURVNET_RESTORE()
  %46 = load i32, i32* @ENXIO, align 4
  store i32 %46, i32* %5, align 4
  br label %128

47:                                               ; preds = %26
  %48 = load %struct.tuntap_softc*, %struct.tuntap_softc** %11, align 8
  %49 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @TUN_OPEN, align 4
  %52 = load i32, i32* @TUN_DYING, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = load %struct.tuntap_softc*, %struct.tuntap_softc** %11, align 8
  %58 = call i32 @TUN_UNLOCK(%struct.tuntap_softc* %57)
  %59 = call i32 (...) @CURVNET_RESTORE()
  %60 = load i32, i32* @EBUSY, align 4
  store i32 %60, i32* %5, align 4
  br label %128

61:                                               ; preds = %47
  %62 = load %struct.tuntap_softc*, %struct.tuntap_softc** %11, align 8
  %63 = call i32 @tun_busy_locked(%struct.tuntap_softc* %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp eq i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @KASSERT(i32 %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.tuntap_softc*, %struct.tuntap_softc** %11, align 8
  %69 = call %struct.ifnet* @TUN2IFP(%struct.tuntap_softc* %68)
  store %struct.ifnet* %69, %struct.ifnet** %10, align 8
  %70 = load %struct.tuntap_softc*, %struct.tuntap_softc** %11, align 8
  %71 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @TUN_L2, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %104

76:                                               ; preds = %61
  %77 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %78 = call i32 @IF_LLADDR(%struct.ifnet* %77)
  %79 = load %struct.tuntap_softc*, %struct.tuntap_softc** %11, align 8
  %80 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @bcopy(i32 %78, i32 %82, i32 4)
  %84 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %85 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %86 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %90 = xor i32 %89, -1
  %91 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %92 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load i64, i64* @tapuponopen, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %76
  %98 = load i32, i32* @IFF_UP, align 4
  %99 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %100 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %97, %76
  br label %104

104:                                              ; preds = %103, %61
  %105 = load %struct.thread*, %struct.thread** %9, align 8
  %106 = getelementptr inbounds %struct.thread, %struct.thread* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.tuntap_softc*, %struct.tuntap_softc** %11, align 8
  %111 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @TUN_OPEN, align 4
  %113 = load %struct.tuntap_softc*, %struct.tuntap_softc** %11, align 8
  %114 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  %117 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %118 = load i32, i32* @LINK_STATE_UP, align 4
  %119 = call i32 @if_link_state_change(%struct.ifnet* %117, i32 %118)
  %120 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %121 = call i32 @TUNDEBUG(%struct.ifnet* %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %122 = load %struct.tuntap_softc*, %struct.tuntap_softc** %11, align 8
  %123 = call i32 @TUN_UNLOCK(%struct.tuntap_softc* %122)
  %124 = load %struct.tuntap_softc*, %struct.tuntap_softc** %11, align 8
  %125 = load i32, i32* @tundtor, align 4
  %126 = call i32 @devfs_set_cdevpriv(%struct.tuntap_softc* %124, i32 %125)
  %127 = call i32 (...) @CURVNET_RESTORE()
  store i32 0, i32* %5, align 4
  br label %128

128:                                              ; preds = %104, %56, %42, %23
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @TD_TO_VNET(%struct.thread*) #1

declare dso_local i32 @tuntap_name2info(i32, i32*, i32*) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TUN_LOCK(%struct.tuntap_softc*) #1

declare dso_local i32 @TUN_UNLOCK(%struct.tuntap_softc*) #1

declare dso_local i32 @tun_busy_locked(%struct.tuntap_softc*) #1

declare dso_local %struct.ifnet* @TUN2IFP(%struct.tuntap_softc*) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @if_link_state_change(%struct.ifnet*, i32) #1

declare dso_local i32 @TUNDEBUG(%struct.ifnet*, i8*) #1

declare dso_local i32 @devfs_set_cdevpriv(%struct.tuntap_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
