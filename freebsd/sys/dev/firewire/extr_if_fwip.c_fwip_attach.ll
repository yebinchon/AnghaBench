; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_if_fwip.c_fwip_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_if_fwip.c_fwip_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwip_softc = type { i32, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_9__ = type { %struct.ifnet*, %struct.fwip_softc* }
%struct.ifnet = type { i32, i32, %struct.TYPE_10__, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_11__*, i32, i32*, i32 }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.fw_hwaddr = type { i64, i8*, i32, i32, i8*, i8* }
%struct.TYPE_12__ = type { %struct.fw_hwaddr }

@IFT_IEEE1394 = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"fwip\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@tx_speed = common dso_local global i64 0, align 8
@fwip_post_busreset = common dso_local global i32 0, align 4
@fwip_start_send = common dso_local global i32 0, align 4
@INET_FIFO = common dso_local global i32 0, align 4
@fwip_init = common dso_local global i32 0, align 4
@fwip_start = common dso_local global i32 0, align 4
@fwip_ioctl = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@TX_MAX_QUEUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"interface created\0A\00", align 1
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fwip_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwip_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.fwip_softc*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fw_hwaddr*, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @device_get_softc(i32 %9)
  %11 = inttoptr i64 %10 to %struct.fwip_softc*
  store %struct.fwip_softc* %11, %struct.fwip_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @device_get_unit(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @IFT_IEEE1394, align 4
  %15 = call %struct.ifnet* @if_alloc(i32 %14)
  %16 = load %struct.fwip_softc*, %struct.fwip_softc** %4, align 8
  %17 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store %struct.ifnet* %15, %struct.ifnet** %18, align 8
  store %struct.ifnet* %15, %struct.ifnet** %5, align 8
  %19 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %20 = icmp eq %struct.ifnet* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOSPC, align 4
  store i32 %22, i32* %2, align 4
  br label %153

23:                                               ; preds = %1
  %24 = load %struct.fwip_softc*, %struct.fwip_softc** %4, align 8
  %25 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %24, i32 0, i32 4
  %26 = load i32, i32* @MTX_DEF, align 4
  %27 = call i32 @mtx_init(i32* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i32 %26)
  %28 = load %struct.fwip_softc*, %struct.fwip_softc** %4, align 8
  %29 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call %struct.TYPE_11__* @device_get_ivars(i32 %30)
  %32 = load %struct.fwip_softc*, %struct.fwip_softc** %4, align 8
  %33 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %34, align 8
  %35 = load i64, i64* @tx_speed, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %23
  %38 = load %struct.fwip_softc*, %struct.fwip_softc** %4, align 8
  %39 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* @tx_speed, align 8
  br label %44

44:                                               ; preds = %37, %23
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.fwip_softc*, %struct.fwip_softc** %4, align 8
  %47 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  store i32 %45, i32* %48, align 8
  %49 = load %struct.fwip_softc*, %struct.fwip_softc** %4, align 8
  %50 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  store i32* null, i32** %51, align 8
  %52 = load i32, i32* @fwip_post_busreset, align 4
  %53 = load %struct.fwip_softc*, %struct.fwip_softc** %4, align 8
  %54 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 8
  %56 = load %struct.fwip_softc*, %struct.fwip_softc** %4, align 8
  %57 = load %struct.fwip_softc*, %struct.fwip_softc** %4, align 8
  %58 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  store %struct.fwip_softc* %56, %struct.fwip_softc** %59, align 8
  %60 = load %struct.fwip_softc*, %struct.fwip_softc** %4, align 8
  %61 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %60, i32 0, i32 3
  %62 = load i32, i32* @fwip_start_send, align 4
  %63 = load %struct.fwip_softc*, %struct.fwip_softc** %4, align 8
  %64 = call i32 @TASK_INIT(i32* %61, i32 0, i32 %62, %struct.fwip_softc* %63)
  %65 = load %struct.fwip_softc*, %struct.fwip_softc** %4, align 8
  %66 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load %struct.ifnet*, %struct.ifnet** %67, align 8
  %69 = call %struct.TYPE_12__* @IFP2FWC(%struct.ifnet* %68)
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  store %struct.fw_hwaddr* %70, %struct.fw_hwaddr** %8, align 8
  %71 = load %struct.fwip_softc*, %struct.fwip_softc** %4, align 8
  %72 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @htonl(i32 %77)
  %79 = load %struct.fw_hwaddr*, %struct.fw_hwaddr** %8, align 8
  %80 = getelementptr inbounds %struct.fw_hwaddr, %struct.fw_hwaddr* %79, i32 0, i32 5
  store i8* %78, i8** %80, align 8
  %81 = load %struct.fwip_softc*, %struct.fwip_softc** %4, align 8
  %82 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @htonl(i32 %87)
  %89 = load %struct.fw_hwaddr*, %struct.fw_hwaddr** %8, align 8
  %90 = getelementptr inbounds %struct.fw_hwaddr, %struct.fw_hwaddr* %89, i32 0, i32 4
  store i8* %88, i8** %90, align 8
  %91 = load %struct.fwip_softc*, %struct.fwip_softc** %4, align 8
  %92 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.fw_hwaddr*, %struct.fw_hwaddr** %8, align 8
  %98 = getelementptr inbounds %struct.fw_hwaddr, %struct.fw_hwaddr* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load %struct.fwip_softc*, %struct.fwip_softc** %4, align 8
  %100 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.fw_hwaddr*, %struct.fw_hwaddr** %8, align 8
  %106 = getelementptr inbounds %struct.fw_hwaddr, %struct.fw_hwaddr* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load i32, i32* @INET_FIFO, align 4
  %108 = ashr i32 %107, 32
  %109 = call i32 @htons(i32 %108)
  %110 = load %struct.fw_hwaddr*, %struct.fw_hwaddr** %8, align 8
  %111 = getelementptr inbounds %struct.fw_hwaddr, %struct.fw_hwaddr* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* @INET_FIFO, align 4
  %113 = call i8* @htonl(i32 %112)
  %114 = load %struct.fw_hwaddr*, %struct.fw_hwaddr** %8, align 8
  %115 = getelementptr inbounds %struct.fw_hwaddr, %struct.fw_hwaddr* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  %116 = load %struct.fwip_softc*, %struct.fwip_softc** %4, align 8
  %117 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %116, i32 0, i32 1
  %118 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %119 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %118, i32 0, i32 6
  store %struct.TYPE_9__* %117, %struct.TYPE_9__** %119, align 8
  %120 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %121 = load i32, i32* %3, align 4
  %122 = call i32 @device_get_name(i32 %121)
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @if_initname(%struct.ifnet* %120, i32 %122, i32 %123)
  %125 = load i32, i32* @fwip_init, align 4
  %126 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %127 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @fwip_start, align 4
  %129 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %130 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* @fwip_ioctl, align 4
  %132 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %133 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @IFF_BROADCAST, align 4
  %135 = load i32, i32* @IFF_SIMPLEX, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @IFF_MULTICAST, align 4
  %138 = or i32 %136, %137
  %139 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %140 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load i32, i32* @TX_MAX_QUEUE, align 4
  %142 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %143 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  store i32 %141, i32* %144, align 8
  %145 = call i32 (...) @splimp()
  store i32 %145, i32* %7, align 4
  %146 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %147 = load %struct.fw_hwaddr*, %struct.fw_hwaddr** %8, align 8
  %148 = call i32 @firewire_ifattach(%struct.ifnet* %146, %struct.fw_hwaddr* %147)
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @splx(i32 %149)
  %151 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %152 = call i32 @FWIPDEBUG(%struct.ifnet* %151, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %153

153:                                              ; preds = %44, %21
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local %struct.TYPE_11__* @device_get_ivars(i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.fwip_softc*) #1

declare dso_local %struct.TYPE_12__* @IFP2FWC(%struct.ifnet*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @splimp(...) #1

declare dso_local i32 @firewire_ifattach(%struct.ifnet*, %struct.fw_hwaddr*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @FWIPDEBUG(%struct.ifnet*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
