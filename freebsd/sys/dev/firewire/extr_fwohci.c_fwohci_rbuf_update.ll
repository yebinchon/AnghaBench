; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_rbuf_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_rbuf_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwohci_softc = type { %struct.TYPE_8__*, %struct.firewire_comm }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.firewire_comm = type { i32, %struct.fw_xferq** }
%struct.fw_xferq = type { i32, i32 (%struct.fw_xferq*)*, i32, i32, i32, i32* }
%struct.fwohcidb_tr = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.fw_bulkxfer = type { i32, i32, i32*, i64 }

@FWXFERQ_HANDLER = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@OHCI_STATUS_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"fwohci_rbuf_update: this shouldn't happened\0A\00", align 1
@link = common dso_local global i32 0, align 4
@FWOHCIEV_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Isochronous receive err %02x(%s)\0A\00", align 1
@fwohcicode = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fwohci_softc*, i32)* @fwohci_rbuf_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwohci_rbuf_update(%struct.fwohci_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.fwohci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.firewire_comm*, align 8
  %6 = alloca %struct.fwohcidb_tr*, align 8
  %7 = alloca %struct.fw_bulkxfer*, align 8
  %8 = alloca %struct.fw_xferq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fwohci_softc* %0, %struct.fwohci_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %13 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %12, i32 0, i32 1
  store %struct.firewire_comm* %13, %struct.firewire_comm** %5, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %15 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %14, i32 0, i32 1
  %16 = load %struct.fw_xferq**, %struct.fw_xferq*** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.fw_xferq*, %struct.fw_xferq** %16, i64 %18
  %20 = load %struct.fw_xferq*, %struct.fw_xferq** %19, align 8
  store %struct.fw_xferq* %20, %struct.fw_xferq** %8, align 8
  %21 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %22 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %11, align 4
  %30 = load %struct.fw_xferq*, %struct.fw_xferq** %8, align 8
  %31 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @FWXFERQ_HANDLER, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %38 = call i32 @FW_GLOCK(%struct.firewire_comm* %37)
  br label %39

39:                                               ; preds = %36, %2
  %40 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %41 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %49 = call i32 @fwdma_sync_multiseg_all(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %158, %39
  %51 = load %struct.fw_xferq*, %struct.fw_xferq** %8, align 8
  %52 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %51, i32 0, i32 3
  %53 = call %struct.fw_bulkxfer* @STAILQ_FIRST(i32* %52)
  store %struct.fw_bulkxfer* %53, %struct.fw_bulkxfer** %7, align 8
  %54 = icmp ne %struct.fw_bulkxfer* %53, null
  br i1 %54, label %55, label %161

55:                                               ; preds = %50
  %56 = load %struct.fw_bulkxfer*, %struct.fw_bulkxfer** %7, align 8
  %57 = getelementptr inbounds %struct.fw_bulkxfer, %struct.fw_bulkxfer* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.fwohcidb_tr*
  store %struct.fwohcidb_tr* %59, %struct.fwohcidb_tr** %6, align 8
  %60 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %6, align 8
  %61 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %60, i32 0, i32 1
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @FWOHCI_DMA_READ(i32 %69)
  %71 = load i32, i32* @OHCI_STATUS_SHIFT, align 4
  %72 = ashr i32 %70, %71
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %55
  br label %161

76:                                               ; preds = %55
  %77 = load %struct.fw_bulkxfer*, %struct.fw_bulkxfer** %7, align 8
  %78 = getelementptr inbounds %struct.fw_bulkxfer, %struct.fw_bulkxfer* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %107

81:                                               ; preds = %76
  %82 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %83 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %6, align 8
  %91 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %94 = call i32 @bus_dmamap_sync(i32 %89, i32 %92, i32 %93)
  %95 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %96 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %95, i32 0, i32 0
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %6, align 8
  %104 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @bus_dmamap_unload(i32 %102, i32 %105)
  br label %127

107:                                              ; preds = %76
  %108 = load %struct.fw_xferq*, %struct.fw_xferq** %8, align 8
  %109 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %108, i32 0, i32 5
  %110 = load i32*, i32** %109, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %124

112:                                              ; preds = %107
  %113 = load %struct.fw_xferq*, %struct.fw_xferq** %8, align 8
  %114 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %113, i32 0, i32 5
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.fw_bulkxfer*, %struct.fw_bulkxfer** %7, align 8
  %117 = getelementptr inbounds %struct.fw_bulkxfer, %struct.fw_bulkxfer* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.fw_xferq*, %struct.fw_xferq** %8, align 8
  %120 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %123 = call i32 @fwdma_sync_multiseg(i32* %115, i32 %118, i32 %121, i32 %122)
  br label %126

124:                                              ; preds = %107
  %125 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %112
  br label %127

127:                                              ; preds = %126, %81
  %128 = load %struct.fw_xferq*, %struct.fw_xferq** %8, align 8
  %129 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %128, i32 0, i32 3
  %130 = load i32, i32* @link, align 4
  %131 = call i32 @STAILQ_REMOVE_HEAD(i32* %129, i32 %130)
  %132 = load %struct.fw_xferq*, %struct.fw_xferq** %8, align 8
  %133 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %132, i32 0, i32 2
  %134 = load %struct.fw_bulkxfer*, %struct.fw_bulkxfer** %7, align 8
  %135 = load i32, i32* @link, align 4
  %136 = call i32 @STAILQ_INSERT_TAIL(i32* %133, %struct.fw_bulkxfer* %134, i32 %135)
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @FWOHCIEV_MASK, align 4
  %139 = and i32 %137, %138
  switch i32 %139, label %143 [
    i32 128, label %140
  ]

140:                                              ; preds = %127
  %141 = load %struct.fw_bulkxfer*, %struct.fw_bulkxfer** %7, align 8
  %142 = getelementptr inbounds %struct.fw_bulkxfer, %struct.fw_bulkxfer* %141, i32 0, i32 0
  store i32 0, i32* %142, align 8
  br label %158

143:                                              ; preds = %127
  %144 = load i32, i32* @EINVAL, align 4
  %145 = load %struct.fw_bulkxfer*, %struct.fw_bulkxfer** %7, align 8
  %146 = getelementptr inbounds %struct.fw_bulkxfer, %struct.fw_bulkxfer* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %148 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %9, align 4
  %151 = load i32*, i32** @fwohcicode, align 8
  %152 = load i32, i32* %9, align 4
  %153 = and i32 %152, 31
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @device_printf(i32 %149, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %150, i32 %156)
  br label %158

158:                                              ; preds = %143, %140
  %159 = load i32, i32* %10, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %10, align 4
  br label %50

161:                                              ; preds = %75, %50
  %162 = load %struct.fw_xferq*, %struct.fw_xferq** %8, align 8
  %163 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @FWXFERQ_HANDLER, align 4
  %166 = and i32 %164, %165
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %161
  %169 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %170 = call i32 @FW_GUNLOCK(%struct.firewire_comm* %169)
  br label %171

171:                                              ; preds = %168, %161
  %172 = load i32, i32* %10, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  br label %191

175:                                              ; preds = %171
  %176 = load %struct.fw_xferq*, %struct.fw_xferq** %8, align 8
  %177 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @FWXFERQ_HANDLER, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %175
  %183 = load %struct.fw_xferq*, %struct.fw_xferq** %8, align 8
  %184 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %183, i32 0, i32 1
  %185 = load i32 (%struct.fw_xferq*)*, i32 (%struct.fw_xferq*)** %184, align 8
  %186 = load %struct.fw_xferq*, %struct.fw_xferq** %8, align 8
  %187 = call i32 %185(%struct.fw_xferq* %186)
  br label %191

188:                                              ; preds = %175
  %189 = load %struct.fw_xferq*, %struct.fw_xferq** %8, align 8
  %190 = call i32 @wakeup(%struct.fw_xferq* %189)
  br label %191

191:                                              ; preds = %174, %188, %182
  ret void
}

declare dso_local i32 @FW_GLOCK(%struct.firewire_comm*) #1

declare dso_local i32 @fwdma_sync_multiseg_all(i32, i32) #1

declare dso_local %struct.fw_bulkxfer* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @FWOHCI_DMA_READ(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @fwdma_sync_multiseg(i32*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.fw_bulkxfer*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @FW_GUNLOCK(%struct.firewire_comm*) #1

declare dso_local i32 @wakeup(%struct.fw_xferq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
