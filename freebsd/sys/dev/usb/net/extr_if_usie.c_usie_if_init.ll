; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_usie.c_usie_if_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_usie.c_usie_if_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usie_softc = type { i32, i32*, i32**, %struct.TYPE_4__, %struct.ifnet* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.ifnet = type { i32 }

@USIE_HIP_CTX = common dso_local global i32 0, align 4
@USIE_IP_TX = common dso_local global i32 0, align 4
@USIE_IF_N_XFER = common dso_local global i64 0, align 8
@USIE_HIP_IF = common dso_local global i64 0, align 8
@USIE_UC_RX = common dso_local global i64 0, align 8
@USIE_IF_STATUS = common dso_local global i64 0, align 8
@USIE_IF_RX = common dso_local global i64 0, align 8
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@USIE_CNS_ID_INIT = common dso_local global i32 0, align 4
@USIE_CNS_OB_LINK_UPDATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"ifnet initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @usie_if_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usie_if_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.usie_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.usie_softc*
  store %struct.usie_softc* %7, %struct.usie_softc** %3, align 8
  %8 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %9 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %8, i32 0, i32 4
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %4, align 8
  %11 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %12 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %11, i32 0, i32 0
  %13 = call i32 @mtx_lock(i32* %12)
  %14 = load i32, i32* @USIE_HIP_CTX, align 4
  %15 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %16 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i32 %14, i32* %18, align 8
  %19 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %20 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @USIE_IP_TX, align 4
  %24 = call i32 @htobe16(i32 %23)
  %25 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %26 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  store i64 0, i64* %5, align 8
  br label %28

28:                                               ; preds = %40, %1
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @USIE_IF_N_XFER, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %34 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @usbd_xfer_set_stall(i32 %38)
  br label %40

40:                                               ; preds = %32
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %5, align 8
  br label %28

43:                                               ; preds = %28
  %44 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %45 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %44, i32 0, i32 2
  %46 = load i32**, i32*** %45, align 8
  %47 = load i64, i64* @USIE_HIP_IF, align 8
  %48 = getelementptr inbounds i32*, i32** %46, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @USIE_UC_RX, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @usbd_transfer_start(i32 %52)
  %54 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %55 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @USIE_IF_STATUS, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @usbd_transfer_start(i32 %59)
  %61 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %62 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @USIE_IF_RX, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @usbd_transfer_start(i32 %66)
  %68 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %69 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %43
  %75 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %76 = load i32, i32* @USIE_CNS_ID_INIT, align 4
  %77 = load i32, i32* @USIE_CNS_OB_LINK_UPDATE, align 4
  %78 = call i32 @usie_cns_req(%struct.usie_softc* %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %74, %43
  %80 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %81 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %80, i32 0, i32 0
  %82 = call i32 @mtx_unlock(i32* %81)
  %83 = call i32 @DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @htobe16(i32) #1

declare dso_local i32 @usbd_xfer_set_stall(i32) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

declare dso_local i32 @usie_cns_req(%struct.usie_softc*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @DPRINTF(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
