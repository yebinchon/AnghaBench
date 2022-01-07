; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_attach_ifnet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_attach_ifnet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhso_softc = type { i32, i32, i32, %struct.ifnet*, i32, i32 }
%struct.ifnet = type { i32, i32, %struct.TYPE_5__, %struct.uhso_softc*, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.usb_interface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@uhso_ifnet_config = common dso_local global i32 0, align 4
@UHSO_IFNET_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"usbd_transfer_setup failed: %s\0A\00", align 1
@IFT_OTHER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"if_alloc() failed\0A\00", align 1
@uhso_if_rxflush = common dso_local global i32 0, align 4
@uhso_ifnet_unit = common dso_local global i32 0, align 4
@UHSO_MAX_MTU = common dso_local global i32 0, align 4
@uhso_if_ioctl = common dso_local global i32 0, align 4
@uhso_if_init = common dso_local global i32 0, align 4
@uhso_if_start = common dso_local global i32 0, align 4
@uhso_if_output = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@DLT_RAW = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"netif\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Attached network interface\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uhso_softc*, %struct.usb_interface*, i32)* @uhso_attach_ifnet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhso_attach_ifnet(%struct.uhso_softc* %0, %struct.usb_interface* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uhso_softc*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sysctl_ctx_list*, align 8
  %11 = alloca %struct.sysctl_oid*, align 8
  %12 = alloca i32, align 4
  store %struct.uhso_softc* %0, %struct.uhso_softc** %5, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %14 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %17 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %21 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @uhso_ifnet_config, align 4
  %24 = load i32, i32* @UHSO_IFNET_MAX, align 4
  %25 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %26 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %27 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %26, i32 0, i32 1
  %28 = call i64 @usbd_transfer_setup(i32 %15, i32* %19, i32 %22, i32 %23, i32 %24, %struct.uhso_softc* %25, i32* %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @usbd_errstr(i64 %32)
  %34 = call i32 @UHSO_DPRINTF(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 -1, i32* %4, align 4
  br label %133

35:                                               ; preds = %3
  %36 = load i32, i32* @IFT_OTHER, align 4
  %37 = call %struct.ifnet* @if_alloc(i32 %36)
  store %struct.ifnet* %37, %struct.ifnet** %8, align 8
  %38 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %39 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %38, i32 0, i32 3
  store %struct.ifnet* %37, %struct.ifnet** %39, align 8
  %40 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %41 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %40, i32 0, i32 3
  %42 = load %struct.ifnet*, %struct.ifnet** %41, align 8
  %43 = icmp eq %struct.ifnet* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %46 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %133

49:                                               ; preds = %35
  %50 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %51 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %50, i32 0, i32 2
  %52 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %53 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %52, i32 0, i32 1
  %54 = call i32 @callout_init_mtx(i32* %51, i32* %53, i32 0)
  %55 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %56 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %55, i32 0, i32 1
  %57 = call i32 @mtx_lock(i32* %56)
  %58 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %59 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %58, i32 0, i32 2
  %60 = load i32, i32* @uhso_if_rxflush, align 4
  %61 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %62 = call i32 @callout_reset(i32* %59, i32 1, i32 %60, %struct.uhso_softc* %61)
  %63 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %64 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %63, i32 0, i32 1
  %65 = call i32 @mtx_unlock(i32* %64)
  %66 = load i32, i32* @uhso_ifnet_unit, align 4
  %67 = call i32 @alloc_unr(i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %69 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %70 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @device_get_name(i32 %71)
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @if_initname(%struct.ifnet* %68, i32 %72, i32 %73)
  %75 = load i32, i32* @UHSO_MAX_MTU, align 4
  %76 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %77 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %76, i32 0, i32 8
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @uhso_if_ioctl, align 4
  %79 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %80 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %79, i32 0, i32 7
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @uhso_if_init, align 4
  %82 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %83 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @uhso_if_start, align 4
  %85 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %86 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @uhso_if_output, align 4
  %88 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %89 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @IFF_BROADCAST, align 4
  %91 = load i32, i32* @IFF_MULTICAST, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @IFF_NOARP, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %96 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %98 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %99 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %98, i32 0, i32 3
  store %struct.uhso_softc* %97, %struct.uhso_softc** %99, align 8
  %100 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %101 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %100, i32 0, i32 2
  %102 = load i32, i32* @ifqmaxlen, align 4
  %103 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_5__* %101, i32 %102)
  %104 = load i32, i32* @ifqmaxlen, align 4
  %105 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %106 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  %108 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %109 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %108, i32 0, i32 2
  %110 = call i32 @IFQ_SET_READY(%struct.TYPE_5__* %109)
  %111 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %112 = call i32 @if_attach(%struct.ifnet* %111)
  %113 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %114 = load i32, i32* @DLT_RAW, align 4
  %115 = call i32 @bpfattach(%struct.ifnet* %113, i32 %114, i32 0)
  %116 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %117 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %118)
  store %struct.sysctl_ctx_list* %119, %struct.sysctl_ctx_list** %10, align 8
  %120 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %121 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %122)
  store %struct.sysctl_oid* %123, %struct.sysctl_oid** %11, align 8
  %124 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %10, align 8
  %125 = load %struct.sysctl_oid*, %struct.sysctl_oid** %11, align 8
  %126 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %125)
  %127 = load i32, i32* @OID_AUTO, align 4
  %128 = load i32, i32* @CTLFLAG_RD, align 4
  %129 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %130 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @SYSCTL_ADD_STRING(%struct.sysctl_ctx_list* %124, i32 %126, i32 %127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %128, i32 %131, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %49, %44, %31
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i64 @usbd_transfer_setup(i32, i32*, i32, i32, i32, %struct.uhso_softc*, i32*) #1

declare dso_local i32 @UHSO_DPRINTF(i32, i8*, i32) #1

declare dso_local i32 @usbd_errstr(i64) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.uhso_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @alloc_unr(i32) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_5__*) #1

declare dso_local i32 @if_attach(%struct.ifnet*) #1

declare dso_local i32 @bpfattach(%struct.ifnet*, i32, i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_STRING(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
