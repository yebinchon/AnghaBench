; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_tbuf_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_tbuf_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwohci_softc = type { %struct.TYPE_4__*, %struct.firewire_comm }
%struct.TYPE_4__ = type { i32, i32 }
%struct.firewire_comm = type { i32, %struct.fw_xferq** }
%struct.fw_xferq = type { i32, i32 }
%struct.fwohcidb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.fw_bulkxfer = type { i64, i64 }
%struct.fwohcidb_tr = type { %struct.fwohcidb* }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@firewire_debug = common dso_local global i64 0, align 8
@ITX_CH = common dso_local global i64 0, align 8
@OHCI_STATUS_SHIFT = common dso_local global i32 0, align 4
@OHCI_COUNT_MASK = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@FWOHCIEV_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Isochronous transmit err %02x(%s)\0A\00", align 1
@fwohcicode = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fwohci_softc*, i32)* @fwohci_tbuf_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwohci_tbuf_update(%struct.fwohci_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.fwohci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.firewire_comm*, align 8
  %6 = alloca %struct.fwohcidb*, align 8
  %7 = alloca %struct.fw_bulkxfer*, align 8
  %8 = alloca %struct.fw_xferq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fwohci_softc* %0, %struct.fwohci_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %15 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %14, i32 0, i32 1
  store %struct.firewire_comm* %15, %struct.firewire_comm** %5, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %17 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %16, i32 0, i32 1
  %18 = load %struct.fw_xferq**, %struct.fw_xferq*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.fw_xferq*, %struct.fw_xferq** %18, i64 %20
  %22 = load %struct.fw_xferq*, %struct.fw_xferq** %21, align 8
  store %struct.fw_xferq* %22, %struct.fw_xferq** %8, align 8
  %23 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %24 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %13, align 4
  %32 = call i32 (...) @splfw()
  store i32 %32, i32* %11, align 4
  %33 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %34 = call i32 @FW_GLOCK(%struct.firewire_comm* %33)
  %35 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %36 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %44 = call i32 @fwdma_sync_multiseg_all(i32 %42, i32 %43)
  %45 = load i64, i64* @firewire_debug, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %2
  %48 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %49 = load i64, i64* @ITX_CH, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = call i32 @dump_db(%struct.fwohci_softc* %48, i64 %52)
  br label %54

54:                                               ; preds = %47, %2
  br label %55

55:                                               ; preds = %119, %54
  %56 = load %struct.fw_xferq*, %struct.fw_xferq** %8, align 8
  %57 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %56, i32 0, i32 1
  %58 = call %struct.fw_bulkxfer* @STAILQ_FIRST(i32* %57)
  store %struct.fw_bulkxfer* %58, %struct.fw_bulkxfer** %7, align 8
  %59 = icmp ne %struct.fw_bulkxfer* %58, null
  br i1 %59, label %60, label %127

60:                                               ; preds = %55
  %61 = load %struct.fw_bulkxfer*, %struct.fw_bulkxfer** %7, align 8
  %62 = getelementptr inbounds %struct.fw_bulkxfer, %struct.fw_bulkxfer* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.fwohcidb_tr*
  %65 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %64, i32 0, i32 0
  %66 = load %struct.fwohcidb*, %struct.fwohcidb** %65, align 8
  store %struct.fwohcidb* %66, %struct.fwohcidb** %6, align 8
  %67 = load %struct.fwohcidb*, %struct.fwohcidb** %6, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %67, i64 %69
  %71 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @FWOHCI_DMA_READ(i32 %74)
  %76 = load i32, i32* @OHCI_STATUS_SHIFT, align 4
  %77 = ashr i32 %75, %76
  store i32 %77, i32* %9, align 4
  %78 = load %struct.fw_bulkxfer*, %struct.fw_bulkxfer** %7, align 8
  %79 = getelementptr inbounds %struct.fw_bulkxfer, %struct.fw_bulkxfer* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to %struct.fwohcidb_tr*
  %82 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %81, i32 0, i32 0
  %83 = load %struct.fwohcidb*, %struct.fwohcidb** %82, align 8
  store %struct.fwohcidb* %83, %struct.fwohcidb** %6, align 8
  %84 = load %struct.fwohcidb*, %struct.fwohcidb** %6, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %84, i64 %86
  %88 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @FWOHCI_DMA_READ(i32 %91)
  %93 = load i32, i32* @OHCI_COUNT_MASK, align 4
  %94 = and i32 %92, %93
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %60
  br label %127

98:                                               ; preds = %60
  %99 = load %struct.fw_xferq*, %struct.fw_xferq** %8, align 8
  %100 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %99, i32 0, i32 1
  %101 = load i32, i32* @link, align 4
  %102 = call i32 @STAILQ_REMOVE_HEAD(i32* %100, i32 %101)
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @FWOHCIEV_MASK, align 4
  %105 = and i32 %103, %104
  switch i32 %105, label %107 [
    i32 128, label %106
  ]

106:                                              ; preds = %98
  br label %119

107:                                              ; preds = %98
  %108 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %109 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load i32*, i32** @fwohcicode, align 8
  %113 = load i32, i32* %9, align 4
  %114 = and i32 %113, 31
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %111, i32 %117)
  br label %119

119:                                              ; preds = %107, %106
  %120 = load %struct.fw_xferq*, %struct.fw_xferq** %8, align 8
  %121 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %120, i32 0, i32 0
  %122 = load %struct.fw_bulkxfer*, %struct.fw_bulkxfer** %7, align 8
  %123 = load i32, i32* @link, align 4
  %124 = call i32 @STAILQ_INSERT_TAIL(i32* %121, %struct.fw_bulkxfer* %122, i32 %123)
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %12, align 4
  br label %55

127:                                              ; preds = %97, %55
  %128 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %129 = call i32 @FW_GUNLOCK(%struct.firewire_comm* %128)
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @splx(i32 %130)
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %127
  %135 = load %struct.fw_xferq*, %struct.fw_xferq** %8, align 8
  %136 = call i32 @wakeup(%struct.fw_xferq* %135)
  br label %137

137:                                              ; preds = %134, %127
  ret void
}

declare dso_local i32 @splfw(...) #1

declare dso_local i32 @FW_GLOCK(%struct.firewire_comm*) #1

declare dso_local i32 @fwdma_sync_multiseg_all(i32, i32) #1

declare dso_local i32 @dump_db(%struct.fwohci_softc*, i64) #1

declare dso_local %struct.fw_bulkxfer* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @FWOHCI_DMA_READ(i32) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.fw_bulkxfer*, i32) #1

declare dso_local i32 @FW_GUNLOCK(%struct.firewire_comm*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @wakeup(%struct.fw_xferq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
