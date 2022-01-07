; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_irx_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_irx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firewire_comm = type { i32 }
%struct.fwohci_softc = type { %struct.TYPE_6__, %struct.fwohci_dbch* }
%struct.TYPE_6__ = type { i32 }
%struct.fwohci_dbch = type { i32, i32, i32, i32, i32, %struct.fw_xferq }
%struct.fw_xferq = type { i32, i32, i32, i32, i32, i64 }
%struct.fwohcidb_tr = type { i32, i32, %struct.fwohcidb*, i32 }
%struct.fwohcidb = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.fw_bulkxfer = type { i64, i64, i32* }

@FWXFERQ_RUNNING = common dso_local global i32 0, align 4
@tagbit = common dso_local global i16* null, align 8
@FWOHCI_DBCH_INIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"IR DMA no free chunk\0A\00", align 1
@FWXFERQ_HANDLER = common dso_local global i32 0, align 4
@fw_bulkxfer = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@fwohci_execute_db2 = common dso_local global i32 0, align 4
@OHCI_UPDATE = common dso_local global i32 0, align 4
@OHCI_INPUT_LAST = common dso_local global i32 0, align 4
@OHCI_INTERRUPT_ALWAYS = common dso_local global i32 0, align 4
@OHCI_BRANCH_ALWAYS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@OHCI_CNTL_DMA_ACTIVE = common dso_local global i32 0, align 4
@OHCI_CNTL_DMA_RUN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"IR DMA overrun (0x%08x)\0A\00", align 1
@firewire_debug = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"start IR DMA 0x%x\0A\00", align 1
@OHCI_IR_MASKCLR = common dso_local global i32 0, align 4
@OHCI_IR_STATCLR = common dso_local global i32 0, align 4
@OHCI_IR_MASK = common dso_local global i32 0, align 4
@OHCI_CNTL_ISOHDR = common dso_local global i32 0, align 4
@FWOHCI_INTMASK = common dso_local global i32 0, align 4
@OHCI_INT_DMA_IR = common dso_local global i32 0, align 4
@IRX_CH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.firewire_comm*, i32)* @fwohci_irx_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwohci_irx_enable(%struct.firewire_comm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.firewire_comm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fwohci_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca %struct.fwohci_dbch*, align 8
  %14 = alloca %struct.fwohcidb_tr*, align 8
  %15 = alloca %struct.fw_bulkxfer*, align 8
  %16 = alloca %struct.fw_bulkxfer*, align 8
  %17 = alloca %struct.fw_bulkxfer*, align 8
  %18 = alloca %struct.fw_xferq*, align 8
  %19 = alloca %struct.fwohcidb*, align 8
  store %struct.firewire_comm* %0, %struct.firewire_comm** %4, align 8
  store i32 %1, i32* %5, align 4
  %20 = load %struct.firewire_comm*, %struct.firewire_comm** %4, align 8
  %21 = bitcast %struct.firewire_comm* %20 to %struct.fwohci_softc*
  store %struct.fwohci_softc* %21, %struct.fwohci_softc** %6, align 8
  store i32 0, i32* %7, align 4
  %22 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %23 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %22, i32 0, i32 1
  %24 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %24, i64 %26
  store %struct.fwohci_dbch* %27, %struct.fwohci_dbch** %13, align 8
  %28 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %13, align 8
  %29 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %28, i32 0, i32 5
  store %struct.fw_xferq* %29, %struct.fw_xferq** %18, align 8
  %30 = load %struct.fw_xferq*, %struct.fw_xferq** %18, align 8
  %31 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @FWXFERQ_RUNNING, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %89

36:                                               ; preds = %2
  %37 = load %struct.fw_xferq*, %struct.fw_xferq** %18, align 8
  %38 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = ashr i32 %39, 6
  %41 = and i32 %40, 3
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %10, align 2
  %43 = load %struct.fw_xferq*, %struct.fw_xferq** %18, align 8
  %44 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, 63
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %11, align 2
  %48 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @OHCI_IRMATCH(i32 %49)
  %51 = load i16*, i16** @tagbit, align 8
  %52 = load i16, i16* %10, align 2
  %53 = zext i16 %52 to i64
  %54 = getelementptr inbounds i16, i16* %51, i64 %53
  %55 = load i16, i16* %54, align 2
  %56 = zext i16 %55 to i32
  %57 = load i16, i16* %11, align 2
  %58 = zext i16 %57 to i32
  %59 = or i32 %56, %58
  %60 = call i32 @OWRITE(%struct.fwohci_softc* %48, i32 %50, i32 %59)
  %61 = load %struct.fw_xferq*, %struct.fw_xferq** %18, align 8
  %62 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %61, i32 0, i32 5
  store i64 0, i64* %62, align 8
  %63 = load %struct.fw_xferq*, %struct.fw_xferq** %18, align 8
  %64 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.fw_xferq*, %struct.fw_xferq** %18, align 8
  %67 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %65, %68
  %70 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %13, align 8
  %71 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %13, align 8
  %73 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %72, i32 0, i32 1
  store i32 2, i32* %73, align 4
  %74 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %75 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %13, align 8
  %76 = call i32 @fwohci_db_init(%struct.fwohci_softc* %74, %struct.fwohci_dbch* %75)
  %77 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %13, align 8
  %78 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @FWOHCI_DBCH_INIT, align 4
  %81 = and i32 %79, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %36
  %84 = load i32, i32* @ENOMEM, align 4
  store i32 %84, i32* %3, align 4
  br label %332

85:                                               ; preds = %36
  %86 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %87 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %13, align 8
  %88 = call i32 @fwohci_rx_enable(%struct.fwohci_softc* %86, %struct.fwohci_dbch* %87)
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %85, %2
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %3, align 4
  br label %332

94:                                               ; preds = %89
  %95 = load %struct.fw_xferq*, %struct.fw_xferq** %18, align 8
  %96 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %95, i32 0, i32 4
  %97 = call %struct.fw_bulkxfer* @STAILQ_FIRST(i32* %96)
  store %struct.fw_bulkxfer* %97, %struct.fw_bulkxfer** %15, align 8
  %98 = load %struct.fw_bulkxfer*, %struct.fw_bulkxfer** %15, align 8
  %99 = icmp eq %struct.fw_bulkxfer* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = load %struct.firewire_comm*, %struct.firewire_comm** %4, align 8
  %102 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32, i8*, ...) @device_printf(i32 %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %332

105:                                              ; preds = %94
  %106 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %13, align 8
  %107 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 %108, 1
  store i32 %109, i32* %9, align 4
  %110 = call i32 (...) @splfw()
  store i32 %110, i32* %8, align 4
  %111 = load %struct.fw_xferq*, %struct.fw_xferq** %18, align 8
  %112 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @FWXFERQ_HANDLER, align 4
  %115 = and i32 %113, %114
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %105
  %118 = load %struct.firewire_comm*, %struct.firewire_comm** %4, align 8
  %119 = call i32 @FW_GLOCK(%struct.firewire_comm* %118)
  br label %120

120:                                              ; preds = %117, %105
  %121 = load %struct.fw_xferq*, %struct.fw_xferq** %18, align 8
  %122 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %121, i32 0, i32 3
  %123 = load i32, i32* @fw_bulkxfer, align 4
  %124 = load i32, i32* @link, align 4
  %125 = call %struct.fw_bulkxfer* @STAILQ_LAST(i32* %122, i32 %123, i32 %124)
  store %struct.fw_bulkxfer* %125, %struct.fw_bulkxfer** %16, align 8
  br label %126

126:                                              ; preds = %217, %120
  %127 = load %struct.fw_xferq*, %struct.fw_xferq** %18, align 8
  %128 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %127, i32 0, i32 4
  %129 = call %struct.fw_bulkxfer* @STAILQ_FIRST(i32* %128)
  store %struct.fw_bulkxfer* %129, %struct.fw_bulkxfer** %17, align 8
  %130 = icmp ne %struct.fw_bulkxfer* %129, null
  br i1 %130, label %131, label %228

131:                                              ; preds = %126
  %132 = load %struct.fw_bulkxfer*, %struct.fw_bulkxfer** %17, align 8
  %133 = getelementptr inbounds %struct.fw_bulkxfer, %struct.fw_bulkxfer* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %171

136:                                              ; preds = %131
  %137 = load %struct.fw_bulkxfer*, %struct.fw_bulkxfer** %17, align 8
  %138 = getelementptr inbounds %struct.fw_bulkxfer, %struct.fw_bulkxfer* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = inttoptr i64 %139 to %struct.fwohcidb_tr*
  store %struct.fwohcidb_tr* %140, %struct.fwohcidb_tr** %14, align 8
  %141 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %14, align 8
  %142 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %141, i32 0, i32 0
  store i32 1, i32* %142, align 8
  %143 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %13, align 8
  %144 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %14, align 8
  %147 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.fw_bulkxfer*, %struct.fw_bulkxfer** %17, align 8
  %150 = getelementptr inbounds %struct.fw_bulkxfer, %struct.fw_bulkxfer* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* @fwohci_execute_db2, align 4
  %153 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %14, align 8
  %154 = call i32 @bus_dmamap_load_mbuf(i32 %145, i32 %148, i32* %151, i32 %152, %struct.fwohcidb_tr* %153, i32 0)
  store i32 %154, i32* %7, align 4
  %155 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %14, align 8
  %156 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %155, i32 0, i32 2
  %157 = load %struct.fwohcidb*, %struct.fwohcidb** %156, align 8
  %158 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %157, i64 1
  %159 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @OHCI_UPDATE, align 4
  %164 = load i32, i32* @OHCI_INPUT_LAST, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @OHCI_INTERRUPT_ALWAYS, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @OHCI_BRANCH_ALWAYS, align 4
  %169 = or i32 %167, %168
  %170 = call i32 @FWOHCI_DMA_SET(i32 %162, i32 %169)
  br label %171

171:                                              ; preds = %136, %131
  %172 = load %struct.fw_bulkxfer*, %struct.fw_bulkxfer** %17, align 8
  %173 = getelementptr inbounds %struct.fw_bulkxfer, %struct.fw_bulkxfer* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = inttoptr i64 %174 to %struct.fwohcidb_tr*
  %176 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %175, i32 0, i32 2
  %177 = load %struct.fwohcidb*, %struct.fwohcidb** %176, align 8
  store %struct.fwohcidb* %177, %struct.fwohcidb** %19, align 8
  %178 = load %struct.fwohcidb*, %struct.fwohcidb** %19, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %178, i64 %180
  %182 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @FWOHCI_DMA_WRITE(i32 %185, i32 0)
  %187 = load %struct.fwohcidb*, %struct.fwohcidb** %19, align 8
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %187, i64 %189
  %191 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @FWOHCI_DMA_CLEAR(i32 %194, i32 15)
  %196 = load %struct.fw_bulkxfer*, %struct.fw_bulkxfer** %16, align 8
  %197 = icmp ne %struct.fw_bulkxfer* %196, null
  br i1 %197, label %198, label %217

198:                                              ; preds = %171
  %199 = load %struct.fw_bulkxfer*, %struct.fw_bulkxfer** %16, align 8
  %200 = getelementptr inbounds %struct.fw_bulkxfer, %struct.fw_bulkxfer* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = inttoptr i64 %201 to %struct.fwohcidb_tr*
  %203 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %202, i32 0, i32 2
  %204 = load %struct.fwohcidb*, %struct.fwohcidb** %203, align 8
  store %struct.fwohcidb* %204, %struct.fwohcidb** %19, align 8
  %205 = load %struct.fwohcidb*, %struct.fwohcidb** %19, align 8
  %206 = load i32, i32* %9, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %205, i64 %207
  %209 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %13, align 8
  %214 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @FWOHCI_DMA_SET(i32 %212, i32 %215)
  br label %217

217:                                              ; preds = %198, %171
  %218 = load %struct.fw_xferq*, %struct.fw_xferq** %18, align 8
  %219 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %218, i32 0, i32 4
  %220 = load i32, i32* @link, align 4
  %221 = call i32 @STAILQ_REMOVE_HEAD(i32* %219, i32 %220)
  %222 = load %struct.fw_xferq*, %struct.fw_xferq** %18, align 8
  %223 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %222, i32 0, i32 3
  %224 = load %struct.fw_bulkxfer*, %struct.fw_bulkxfer** %17, align 8
  %225 = load i32, i32* @link, align 4
  %226 = call i32 @STAILQ_INSERT_TAIL(i32* %223, %struct.fw_bulkxfer* %224, i32 %225)
  %227 = load %struct.fw_bulkxfer*, %struct.fw_bulkxfer** %17, align 8
  store %struct.fw_bulkxfer* %227, %struct.fw_bulkxfer** %16, align 8
  br label %126

228:                                              ; preds = %126
  %229 = load %struct.fw_xferq*, %struct.fw_xferq** %18, align 8
  %230 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @FWXFERQ_HANDLER, align 4
  %233 = and i32 %231, %232
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %228
  %236 = load %struct.firewire_comm*, %struct.firewire_comm** %4, align 8
  %237 = call i32 @FW_GUNLOCK(%struct.firewire_comm* %236)
  br label %238

238:                                              ; preds = %235, %228
  %239 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %13, align 8
  %240 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %243 = call i32 @fwdma_sync_multiseg_all(i32 %241, i32 %242)
  %244 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %13, align 8
  %245 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %248 = call i32 @fwdma_sync_multiseg_all(i32 %246, i32 %247)
  %249 = load i32, i32* %8, align 4
  %250 = call i32 @splx(i32 %249)
  %251 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %252 = load i32, i32* %5, align 4
  %253 = call i32 @OHCI_IRCTL(i32 %252)
  %254 = call i32 @OREAD(%struct.fwohci_softc* %251, i32 %253)
  store i32 %254, i32* %12, align 4
  %255 = load i32, i32* %12, align 4
  %256 = load i32, i32* @OHCI_CNTL_DMA_ACTIVE, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %238
  store i32 0, i32* %3, align 4
  br label %332

260:                                              ; preds = %238
  %261 = load i32, i32* %12, align 4
  %262 = load i32, i32* @OHCI_CNTL_DMA_RUN, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %277

265:                                              ; preds = %260
  %266 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %267 = load i32, i32* %5, align 4
  %268 = call i32 @OHCI_IRCTLCLR(i32 %267)
  %269 = load i32, i32* @OHCI_CNTL_DMA_RUN, align 4
  %270 = call i32 @OWRITE(%struct.fwohci_softc* %266, i32 %268, i32 %269)
  %271 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %272 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* %12, align 4
  %276 = call i32 (i32, i8*, ...) @device_printf(i32 %274, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %275)
  br label %277

277:                                              ; preds = %265, %260
  %278 = load i64, i64* @firewire_debug, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %277
  %281 = load i32, i32* %12, align 4
  %282 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %281)
  br label %283

283:                                              ; preds = %280, %277
  %284 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %285 = load i32, i32* @OHCI_IR_MASKCLR, align 4
  %286 = load i32, i32* %5, align 4
  %287 = shl i32 1, %286
  %288 = call i32 @OWRITE(%struct.fwohci_softc* %284, i32 %285, i32 %287)
  %289 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %290 = load i32, i32* @OHCI_IR_STATCLR, align 4
  %291 = load i32, i32* %5, align 4
  %292 = shl i32 1, %291
  %293 = call i32 @OWRITE(%struct.fwohci_softc* %289, i32 %290, i32 %292)
  %294 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %295 = load i32, i32* @OHCI_IR_MASK, align 4
  %296 = load i32, i32* %5, align 4
  %297 = shl i32 1, %296
  %298 = call i32 @OWRITE(%struct.fwohci_softc* %294, i32 %295, i32 %297)
  %299 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %300 = load i32, i32* %5, align 4
  %301 = call i32 @OHCI_IRCTLCLR(i32 %300)
  %302 = call i32 @OWRITE(%struct.fwohci_softc* %299, i32 %301, i32 -268435456)
  %303 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %304 = load i32, i32* %5, align 4
  %305 = call i32 @OHCI_IRCTL(i32 %304)
  %306 = load i32, i32* @OHCI_CNTL_ISOHDR, align 4
  %307 = call i32 @OWRITE(%struct.fwohci_softc* %303, i32 %305, i32 %306)
  %308 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %309 = load i32, i32* %5, align 4
  %310 = call i32 @OHCI_IRCMD(i32 %309)
  %311 = load %struct.fw_bulkxfer*, %struct.fw_bulkxfer** %15, align 8
  %312 = getelementptr inbounds %struct.fw_bulkxfer, %struct.fw_bulkxfer* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = inttoptr i64 %313 to %struct.fwohcidb_tr*
  %315 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %13, align 8
  %318 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = or i32 %316, %319
  %321 = call i32 @OWRITE(%struct.fwohci_softc* %308, i32 %310, i32 %320)
  %322 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %323 = load i32, i32* %5, align 4
  %324 = call i32 @OHCI_IRCTL(i32 %323)
  %325 = load i32, i32* @OHCI_CNTL_DMA_RUN, align 4
  %326 = call i32 @OWRITE(%struct.fwohci_softc* %322, i32 %324, i32 %325)
  %327 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %328 = load i32, i32* @FWOHCI_INTMASK, align 4
  %329 = load i32, i32* @OHCI_INT_DMA_IR, align 4
  %330 = call i32 @OWRITE(%struct.fwohci_softc* %327, i32 %328, i32 %329)
  %331 = load i32, i32* %7, align 4
  store i32 %331, i32* %3, align 4
  br label %332

332:                                              ; preds = %283, %259, %100, %92, %83
  %333 = load i32, i32* %3, align 4
  ret i32 %333
}

declare dso_local i32 @OWRITE(%struct.fwohci_softc*, i32, i32) #1

declare dso_local i32 @OHCI_IRMATCH(i32) #1

declare dso_local i32 @fwohci_db_init(%struct.fwohci_softc*, %struct.fwohci_dbch*) #1

declare dso_local i32 @fwohci_rx_enable(%struct.fwohci_softc*, %struct.fwohci_dbch*) #1

declare dso_local %struct.fw_bulkxfer* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @splfw(...) #1

declare dso_local i32 @FW_GLOCK(%struct.firewire_comm*) #1

declare dso_local %struct.fw_bulkxfer* @STAILQ_LAST(i32*, i32, i32) #1

declare dso_local i32 @bus_dmamap_load_mbuf(i32, i32, i32*, i32, %struct.fwohcidb_tr*, i32) #1

declare dso_local i32 @FWOHCI_DMA_SET(i32, i32) #1

declare dso_local i32 @FWOHCI_DMA_WRITE(i32, i32) #1

declare dso_local i32 @FWOHCI_DMA_CLEAR(i32, i32) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.fw_bulkxfer*, i32) #1

declare dso_local i32 @FW_GUNLOCK(%struct.firewire_comm*) #1

declare dso_local i32 @fwdma_sync_multiseg_all(i32, i32) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @OREAD(%struct.fwohci_softc*, i32) #1

declare dso_local i32 @OHCI_IRCTL(i32) #1

declare dso_local i32 @OHCI_IRCTLCLR(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @OHCI_IRCMD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
