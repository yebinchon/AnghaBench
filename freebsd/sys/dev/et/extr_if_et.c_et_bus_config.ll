; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_bus_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_bus_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_softc = type { i32, i32, i64 }

@ET_PCIR_EEPROM_STATUS = common dso_local global i64 0, align 8
@ET_PCIM_EEPROM_STATUS_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"EEPROM status error 0x%02x\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ET_FLAG_PCIE = common dso_local global i32 0, align 4
@PCIER_DEVICE_CAP = common dso_local global i64 0, align 8
@PCIEM_CAP_MAX_PAYLOAD = common dso_local global i32 0, align 4
@ET_PCIV_ACK_LATENCY_128 = common dso_local global i64 0, align 8
@ET_PCIV_REPLAY_TIMER_128 = common dso_local global i64 0, align 8
@ET_PCIV_ACK_LATENCY_256 = common dso_local global i64 0, align 8
@ET_PCIV_REPLAY_TIMER_256 = common dso_local global i64 0, align 8
@ET_PCIR_ACK_LATENCY = common dso_local global i64 0, align 8
@ET_PCIR_REPLAY_TIMER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"ack latency %u, replay timer %u\0A\00", align 1
@ET_PCIR_L0S_L1_LATENCY = common dso_local global i64 0, align 8
@PCIEM_LINK_CAP_L0S_EXIT = common dso_local global i32 0, align 4
@PCIEM_LINK_CAP_L1_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.et_softc*)* @et_bus_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et_bus_config(%struct.et_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.et_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.et_softc* %0, %struct.et_softc** %3, align 8
  %8 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %9 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* @ET_PCIR_EEPROM_STATUS, align 8
  %12 = call i8* @pci_read_config(i32 %10, i64 %11, i32 1)
  %13 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %14 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* @ET_PCIR_EEPROM_STATUS, align 8
  %17 = call i8* @pci_read_config(i32 %15, i64 %16, i32 1)
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @ET_PCIM_EEPROM_STATUS_ERROR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %25 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %124

31:                                               ; preds = %1
  %32 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %33 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ET_FLAG_PCIE, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %124

39:                                               ; preds = %31
  %40 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %41 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %44 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PCIER_DEVICE_CAP, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i8* @pci_read_config(i32 %42, i64 %47, i32 4)
  %49 = ptrtoint i8* %48 to i32
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @PCIEM_CAP_MAX_PAYLOAD, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  switch i32 %53, label %60 [
    i32 129, label %54
    i32 128, label %57
  ]

54:                                               ; preds = %39
  %55 = load i64, i64* @ET_PCIV_ACK_LATENCY_128, align 8
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* @ET_PCIV_REPLAY_TIMER_128, align 8
  store i64 %56, i64* %7, align 8
  br label %79

57:                                               ; preds = %39
  %58 = load i64, i64* @ET_PCIV_ACK_LATENCY_256, align 8
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* @ET_PCIV_REPLAY_TIMER_256, align 8
  store i64 %59, i64* %7, align 8
  br label %79

60:                                               ; preds = %39
  %61 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %62 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* @ET_PCIR_ACK_LATENCY, align 8
  %65 = call i8* @pci_read_config(i32 %63, i64 %64, i32 2)
  %66 = ptrtoint i8* %65 to i64
  store i64 %66, i64* %6, align 8
  %67 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %68 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* @ET_PCIR_REPLAY_TIMER, align 8
  %71 = call i8* @pci_read_config(i32 %69, i64 %70, i32 2)
  %72 = ptrtoint i8* %71 to i64
  store i64 %72, i64* %7, align 8
  %73 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %74 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* %7, align 8
  %78 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %76, i64 %77)
  br label %79

79:                                               ; preds = %60, %57, %54
  %80 = load i64, i64* %6, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %79
  %83 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %84 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* @ET_PCIR_ACK_LATENCY, align 8
  %87 = load i64, i64* %6, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @pci_write_config(i32 %85, i64 %86, i32 %88, i32 2)
  %90 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %91 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* @ET_PCIR_REPLAY_TIMER, align 8
  %94 = load i64, i64* %7, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @pci_write_config(i32 %92, i64 %93, i32 %95, i32 2)
  br label %97

97:                                               ; preds = %82, %79
  %98 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %99 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i64, i64* @ET_PCIR_L0S_L1_LATENCY, align 8
  %102 = call i8* @pci_read_config(i32 %100, i64 %101, i32 4)
  %103 = ptrtoint i8* %102 to i32
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* @PCIEM_LINK_CAP_L0S_EXIT, align 4
  %105 = load i32, i32* @PCIEM_LINK_CAP_L1_EXIT, align 4
  %106 = or i32 %104, %105
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %4, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = or i32 %110, 20480
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = or i32 %112, 163840
  store i32 %113, i32* %4, align 4
  %114 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %115 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i64, i64* @ET_PCIR_L0S_L1_LATENCY, align 8
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @pci_write_config(i32 %116, i64 %117, i32 %118, i32 4)
  %120 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %121 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @pci_set_max_read_req(i32 %122, i32 2048)
  store i32 0, i32* %2, align 4
  br label %124

124:                                              ; preds = %97, %38, %23
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i8* @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64, ...) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

declare dso_local i32 @pci_set_max_read_req(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
