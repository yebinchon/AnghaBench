; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tuncreate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tuncreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.tuntap_softc* }
%struct.tuntap_softc = type { i32, %struct.ifnet*, %struct.tuntap_driver* }
%struct.ifnet = type { i32, i32, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, i32, %struct.tuntap_softc* }
%struct.TYPE_5__ = type { i64 }
%struct.tuntap_driver = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ether_addr = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"si_drv1 should have been initialized at creation\00", align 1
@IFF_MULTICAST = common dso_local global i32 0, align 4
@TUN_L2 = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFT_PPP = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%s%d: failed to if_alloc() interface.\0A\00", align 1
@tunifioctl = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@IFCAP_LINKSTATE = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i32 0, align 4
@tunifinit = common dso_local global i32 0, align 4
@tunstart_l2 = common dso_local global i32 0, align 4
@TUNMTU = common dso_local global i32 0, align 4
@tunstart = common dso_local global i32 0, align 4
@tunoutput = common dso_local global i32 0, align 4
@DLT_NULL = common dso_local global i32 0, align 4
@TUN_INITED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"interface %s is created, minor = %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdev*)* @tuncreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tuncreate(%struct.cdev* %0) #0 {
  %2 = alloca %struct.cdev*, align 8
  %3 = alloca %struct.tuntap_driver*, align 8
  %4 = alloca %struct.tuntap_softc*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.ether_addr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %2, align 8
  %9 = load %struct.cdev*, %struct.cdev** %2, align 8
  %10 = getelementptr inbounds %struct.cdev, %struct.cdev* %9, i32 0, i32 0
  %11 = load %struct.tuntap_softc*, %struct.tuntap_softc** %10, align 8
  store %struct.tuntap_softc* %11, %struct.tuntap_softc** %4, align 8
  %12 = load %struct.tuntap_softc*, %struct.tuntap_softc** %4, align 8
  %13 = icmp ne %struct.tuntap_softc* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.tuntap_softc*, %struct.tuntap_softc** %4, align 8
  %17 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %16, i32 0, i32 2
  %18 = load %struct.tuntap_driver*, %struct.tuntap_driver** %17, align 8
  store %struct.tuntap_driver* %18, %struct.tuntap_driver** %3, align 8
  %19 = load i32, i32* @IFF_MULTICAST, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.tuntap_softc*, %struct.tuntap_softc** %4, align 8
  %21 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @TUN_L2, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load i32, i32* @IFT_ETHER, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @IFF_BROADCAST, align 4
  %29 = load i32, i32* @IFF_SIMPLEX, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %38

33:                                               ; preds = %1
  %34 = load i32, i32* @IFT_PPP, align 4
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @IFF_POINTOPOINT, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %33, %26
  %39 = load i32, i32* %8, align 4
  %40 = call %struct.ifnet* @if_alloc(i32 %39)
  %41 = load %struct.tuntap_softc*, %struct.tuntap_softc** %4, align 8
  %42 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %41, i32 0, i32 1
  store %struct.ifnet* %40, %struct.ifnet** %42, align 8
  store %struct.ifnet* %40, %struct.ifnet** %5, align 8
  %43 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %44 = icmp eq %struct.ifnet* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load %struct.tuntap_driver*, %struct.tuntap_driver** %3, align 8
  %47 = getelementptr inbounds %struct.tuntap_driver, %struct.tuntap_driver* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.cdev*, %struct.cdev** %2, align 8
  %51 = call i32 @dev2unit(%struct.cdev* %50)
  %52 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %51)
  br label %53

53:                                               ; preds = %45, %38
  %54 = load %struct.tuntap_softc*, %struct.tuntap_softc** %4, align 8
  %55 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 10
  store %struct.tuntap_softc* %54, %struct.tuntap_softc** %56, align 8
  %57 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %58 = load %struct.tuntap_driver*, %struct.tuntap_driver** %3, align 8
  %59 = getelementptr inbounds %struct.tuntap_driver, %struct.tuntap_driver* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.cdev*, %struct.cdev** %2, align 8
  %63 = call i32 @dev2unit(%struct.cdev* %62)
  %64 = call i32 @if_initname(%struct.ifnet* %57, i32 %61, i32 %63)
  %65 = load i32, i32* @tunifioctl, align 4
  %66 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %67 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %66, i32 0, i32 9
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %70 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %72 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %71, i32 0, i32 2
  %73 = load i32, i32* @ifqmaxlen, align 4
  %74 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_5__* %72, i32 %73)
  %75 = load i32, i32* @IFCAP_LINKSTATE, align 4
  %76 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %77 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* @IFCAP_LINKSTATE, align 4
  %81 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %82 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load %struct.tuntap_softc*, %struct.tuntap_softc** %4, align 8
  %86 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @TUN_L2, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %53
  %92 = load i32, i32* @ETHERMTU, align 4
  %93 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %94 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* @tunifinit, align 4
  %96 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %97 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %96, i32 0, i32 6
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @tunstart_l2, align 4
  %99 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %100 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 4
  %101 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %102 = call i32 @ether_gen_addr(%struct.ifnet* %101, %struct.ether_addr* %6)
  %103 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %104 = getelementptr inbounds %struct.ether_addr, %struct.ether_addr* %6, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ether_ifattach(%struct.ifnet* %103, i32 %105)
  br label %128

107:                                              ; preds = %53
  %108 = load i32, i32* @TUNMTU, align 4
  %109 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %110 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @tunstart, align 4
  %112 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %113 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @tunoutput, align 4
  %115 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %116 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 8
  %117 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %118 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  store i64 0, i64* %119, align 8
  %120 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %121 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %120, i32 0, i32 2
  %122 = call i32 @IFQ_SET_READY(%struct.TYPE_5__* %121)
  %123 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %124 = call i32 @if_attach(%struct.ifnet* %123)
  %125 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %126 = load i32, i32* @DLT_NULL, align 4
  %127 = call i32 @bpfattach(%struct.ifnet* %125, i32 %126, i32 4)
  br label %128

128:                                              ; preds = %107, %91
  %129 = load %struct.tuntap_softc*, %struct.tuntap_softc** %4, align 8
  %130 = call i32 @TUN_LOCK(%struct.tuntap_softc* %129)
  %131 = load i32, i32* @TUN_INITED, align 4
  %132 = load %struct.tuntap_softc*, %struct.tuntap_softc** %4, align 8
  %133 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  %136 = load %struct.tuntap_softc*, %struct.tuntap_softc** %4, align 8
  %137 = call i32 @TUN_UNLOCK(%struct.tuntap_softc* %136)
  %138 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %139 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %140 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.cdev*, %struct.cdev** %2, align 8
  %143 = call i32 @dev2unit(%struct.cdev* %142)
  %144 = call i32 @TUNDEBUG(%struct.ifnet* %138, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %141, i32 %143)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @panic(i8*, i32, i32) #1

declare dso_local i32 @dev2unit(%struct.cdev*) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ether_gen_addr(%struct.ifnet*, %struct.ether_addr*) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32) #1

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_5__*) #1

declare dso_local i32 @if_attach(%struct.ifnet*) #1

declare dso_local i32 @bpfattach(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @TUN_LOCK(%struct.tuntap_softc*) #1

declare dso_local i32 @TUN_UNLOCK(%struct.tuntap_softc*) #1

declare dso_local i32 @TUNDEBUG(%struct.ifnet*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
