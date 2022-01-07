; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_init_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_init_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otus_softc = type { i32 }

@AR_MAC_REG_ACK_EXTENSION = common dso_local global i32 0, align 4
@AR_MAC_REG_RETRY_MAX = common dso_local global i32 0, align 4
@AR_MAC_REG_RX_THRESHOLD = common dso_local global i32 0, align 4
@AR_MAC_REG_RX_PE_DELAY = common dso_local global i32 0, align 4
@AR_MAC_REG_EIFS_AND_SIFS = common dso_local global i32 0, align 4
@AR_MAC_REG_SLOT_TIME = common dso_local global i32 0, align 4
@AR_MAC_REG_TID_CFACK_CFEND_RATE = common dso_local global i32 0, align 4
@AR_MAC_REG_TXOP_DURATION = common dso_local global i32 0, align 4
@AR_MAC_REG_BCN_HT1 = common dso_local global i32 0, align 4
@AR_MAC_REG_BACKOFF_PROTECT = common dso_local global i32 0, align 4
@AR_MAC_REG_AMPDU_FACTOR = common dso_local global i32 0, align 4
@AR_MAC_REG_BASIC_RATE = common dso_local global i32 0, align 4
@AR_MAC_REG_MANDATORY_RATE = common dso_local global i32 0, align 4
@AR_MAC_REG_RTS_CTS_RATE = common dso_local global i32 0, align 4
@AR_MAC_REG_ACK_TPC = common dso_local global i32 0, align 4
@AR_GPIO_REG_PORT_TYPE = common dso_local global i32 0, align 4
@AR_GPIO_REG_PORT_DATA = common dso_local global i32 0, align 4
@AR_MAC_REG_AMPDU_RX_THRESH = common dso_local global i32 0, align 4
@AR_MAC_REG_MISC_680 = common dso_local global i32 0, align 4
@AR_MAC_REG_RX_TIMEOUT = common dso_local global i32 0, align 4
@AR_PWR_REG_CLOCK_SEL = common dso_local global i32 0, align 4
@AR_MAC_REG_TXRX_MPI = common dso_local global i32 0, align 4
@AR_MAC_REG_FCS_SELECT = common dso_local global i32 0, align 4
@AR_MAC_REG_TXOP_NOT_ENOUGH_INDICATION = common dso_local global i32 0, align 4
@AR_MAC_REG_ENCRYPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @otus_init_mac(%struct.otus_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.otus_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.otus_softc* %0, %struct.otus_softc** %3, align 8
  %5 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %6 = call i32 @OTUS_LOCK_ASSERT(%struct.otus_softc* %5)
  %7 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %8 = load i32, i32* @AR_MAC_REG_ACK_EXTENSION, align 4
  %9 = call i32 @otus_write(%struct.otus_softc* %7, i32 %8, i32 64)
  %10 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %11 = load i32, i32* @AR_MAC_REG_RETRY_MAX, align 4
  %12 = call i32 @otus_write(%struct.otus_softc* %10, i32 %11, i32 0)
  %13 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %14 = load i32, i32* @AR_MAC_REG_RX_THRESHOLD, align 4
  %15 = call i32 @otus_write(%struct.otus_softc* %13, i32 %14, i32 794496)
  %16 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %17 = load i32, i32* @AR_MAC_REG_RX_PE_DELAY, align 4
  %18 = call i32 @otus_write(%struct.otus_softc* %16, i32 %17, i32 112)
  %19 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %20 = load i32, i32* @AR_MAC_REG_EIFS_AND_SIFS, align 4
  %21 = call i32 @otus_write(%struct.otus_softc* %19, i32 %20, i32 169099264)
  %22 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %23 = load i32, i32* @AR_MAC_REG_SLOT_TIME, align 4
  %24 = call i32 @otus_write(%struct.otus_softc* %22, i32 %23, i32 9216)
  %25 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %26 = load i32, i32* @AR_MAC_REG_TID_CFACK_CFEND_RATE, align 4
  %27 = call i32 @otus_write(%struct.otus_softc* %25, i32 %26, i32 419430400)
  %28 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %29 = load i32, i32* @AR_MAC_REG_TXOP_DURATION, align 4
  %30 = call i32 @otus_write(%struct.otus_softc* %28, i32 %29, i32 513)
  %31 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %32 = load i32, i32* @AR_MAC_REG_BCN_HT1, align 4
  %33 = call i32 @otus_write(%struct.otus_softc* %31, i32 %32, i32 134218096)
  %34 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %35 = load i32, i32* @AR_MAC_REG_BACKOFF_PROTECT, align 4
  %36 = call i32 @otus_write(%struct.otus_softc* %34, i32 %35, i32 261)
  %37 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %38 = load i32, i32* @AR_MAC_REG_AMPDU_FACTOR, align 4
  %39 = call i32 @otus_write(%struct.otus_softc* %37, i32 %38, i32 1048586)
  %40 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %41 = call i32 @otus_set_rx_filter(%struct.otus_softc* %40)
  %42 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %43 = load i32, i32* @AR_MAC_REG_BASIC_RATE, align 4
  %44 = call i32 @otus_write(%struct.otus_softc* %42, i32 %43, i32 5391)
  %45 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %46 = load i32, i32* @AR_MAC_REG_MANDATORY_RATE, align 4
  %47 = call i32 @otus_write(%struct.otus_softc* %45, i32 %46, i32 5391)
  %48 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %49 = load i32, i32* @AR_MAC_REG_RTS_CTS_RATE, align 4
  %50 = call i32 @otus_write(%struct.otus_softc* %48, i32 %49, i32 17498555)
  %51 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %52 = load i32, i32* @AR_MAC_REG_ACK_TPC, align 4
  %53 = call i32 @otus_write(%struct.otus_softc* %51, i32 %52, i32 67124254)
  %54 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %55 = load i32, i32* @AR_GPIO_REG_PORT_TYPE, align 4
  %56 = call i32 @otus_write(%struct.otus_softc* %54, i32 %55, i32 3)
  %57 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %58 = load i32, i32* @AR_GPIO_REG_PORT_DATA, align 4
  %59 = call i32 @otus_write(%struct.otus_softc* %57, i32 %58, i32 3)
  %60 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %61 = call i32 @otus_write(%struct.otus_softc* %60, i32 1848832, i32 3)
  %62 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %63 = load i32, i32* @AR_MAC_REG_AMPDU_RX_THRESH, align 4
  %64 = call i32 @otus_write(%struct.otus_softc* %62, i32 %63, i32 65535)
  %65 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %66 = load i32, i32* @AR_MAC_REG_MISC_680, align 4
  %67 = call i32 @otus_write(%struct.otus_softc* %65, i32 %66, i32 15728648)
  %68 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %69 = load i32, i32* @AR_MAC_REG_RX_TIMEOUT, align 4
  %70 = call i32 @otus_write(%struct.otus_softc* %68, i32 %69, i32 0)
  %71 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %72 = call i32 @otus_write(%struct.otus_softc* %71, i32 1970448, i32 4)
  %73 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %74 = call i32 @otus_write(%struct.otus_softc* %73, i32 1970452, i32 128)
  %75 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %76 = load i32, i32* @AR_PWR_REG_CLOCK_SEL, align 4
  %77 = call i32 @otus_write(%struct.otus_softc* %75, i32 %76, i32 115)
  %78 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %79 = load i32, i32* @AR_MAC_REG_TXRX_MPI, align 4
  %80 = call i32 @otus_write(%struct.otus_softc* %78, i32 %79, i32 1114129)
  %81 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %82 = load i32, i32* @AR_MAC_REG_FCS_SELECT, align 4
  %83 = call i32 @otus_write(%struct.otus_softc* %81, i32 %82, i32 4)
  %84 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %85 = load i32, i32* @AR_MAC_REG_TXOP_NOT_ENOUGH_INDICATION, align 4
  %86 = call i32 @otus_write(%struct.otus_softc* %84, i32 %85, i32 337514312)
  %87 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %88 = load i32, i32* @AR_MAC_REG_ENCRYPTION, align 4
  %89 = call i32 @otus_write(%struct.otus_softc* %87, i32 %88, i32 120)
  %90 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %91 = call i32 @otus_write_barrier(%struct.otus_softc* %90)
  store i32 %91, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %1
  %94 = load i32, i32* %4, align 4
  store i32 %94, i32* %2, align 4
  br label %98

95:                                               ; preds = %1
  %96 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %97 = call i32 @otus_updateedca_locked(%struct.otus_softc* %96)
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %95, %93
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @OTUS_LOCK_ASSERT(%struct.otus_softc*) #1

declare dso_local i32 @otus_write(%struct.otus_softc*, i32, i32) #1

declare dso_local i32 @otus_set_rx_filter(%struct.otus_softc*) #1

declare dso_local i32 @otus_write_barrier(%struct.otus_softc*) #1

declare dso_local i32 @otus_updateedca_locked(%struct.otus_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
