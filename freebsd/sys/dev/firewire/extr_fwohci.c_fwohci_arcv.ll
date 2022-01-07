; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_arcv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_arcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwohci_softc = type { %struct.TYPE_10__, %struct.fwohci_dbch, %struct.fwohci_dbch }
%struct.TYPE_10__ = type { i32, i32 }
%struct.fwohci_dbch = type { i32, %struct.TYPE_14__, %struct.fwohcidb_tr*, %struct.fwohcidb_tr*, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.fwohcidb_tr = type { i32, i8*, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.iovec = type { i8*, i32 }
%struct.fw_pkt = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.fw_rcv_buf = type { i32, i32, %struct.iovec*, %struct.TYPE_10__* }

@OHCI_ARQOFF = common dso_local global i32 0, align 4
@OHCI_ARSOFF = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@OHCI_STATUS_SHIFT = common dso_local global i32 0, align 4
@OHCI_COUNT_MASK = common dso_local global i32 0, align 4
@OHCI_CNTL_DMA_ACTIVE = common dso_local global i32 0, align 4
@firewire_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"rlen=%d, offset=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"why rlen < 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"hlen should be positive.\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"resCount=%d hlen=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"plen(%d) is negative! offset=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"splitted payload\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"resCount=%d plen=%d len=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"nvec == 0\0A\00", align 1
@FWBUSRESET = common dso_local global i32 0, align 4
@FWBUSINIT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"got BUSRST packet!?\0A\00", align 1
@.str.9 = private unnamed_addr constant [100 x i8] c"Async DMA Receive error err=%02x %s plen=%d offset=%d len=%d status=0x%08x tcode=0x%x, stat=0x%08x\0A\00", align 1
@fwohcicode = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"pdb_tr != db_tr\0A\00", align 1
@link = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"AR DMA status=%x, \00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c" skip buffer\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c" #\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c" done\0A\00", align 1
@OHCI_CNTL_DMA_WAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fwohci_softc*, %struct.fwohci_dbch*, i32)* @fwohci_arcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwohci_arcv(%struct.fwohci_softc* %0, %struct.fwohci_dbch* %1, i32 %2) #0 {
  %4 = alloca %struct.fwohci_softc*, align 8
  %5 = alloca %struct.fwohci_dbch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fwohcidb_tr*, align 8
  %8 = alloca [2 x %struct.iovec], align 16
  %9 = alloca %struct.fw_pkt, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fw_pkt*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca %struct.fw_rcv_buf, align 8
  store %struct.fwohci_softc* %0, %struct.fwohci_softc** %4, align 8
  store %struct.fwohci_dbch* %1, %struct.fwohci_dbch** %5, align 8
  store i32 %2, i32* %6, align 4
  %29 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %30 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %29, i32 0, i32 2
  %31 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %32 = icmp eq %struct.fwohci_dbch* %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* @OHCI_ARQOFF, align 4
  store i32 %34, i32* %14, align 4
  br label %44

35:                                               ; preds = %3
  %36 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %37 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %36, i32 0, i32 1
  %38 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %39 = icmp eq %struct.fwohci_dbch* %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @OHCI_ARSOFF, align 4
  store i32 %41, i32* %14, align 4
  br label %43

42:                                               ; preds = %35
  br label %561

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %43, %33
  %45 = call i32 (...) @splfw()
  store i32 %45, i32* %23, align 4
  %46 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %47 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %46, i32 0, i32 2
  %48 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %47, align 8
  store %struct.fwohcidb_tr* %48, %struct.fwohcidb_tr** %7, align 8
  store i32 0, i32* %21, align 4
  %49 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %50 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %53 = call i32 @fwdma_sync_multiseg_all(i32 %51, i32 %52)
  %54 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %55 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %58 = call i32 @fwdma_sync_multiseg_all(i32 %56, i32 %57)
  %59 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %60 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %59, i32 0, i32 2
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @FWOHCI_DMA_READ(i32 %66)
  %68 = load i32, i32* @OHCI_STATUS_SHIFT, align 4
  %69 = ashr i32 %67, %68
  store i32 %69, i32* %15, align 4
  %70 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %71 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %70, i32 0, i32 2
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @FWOHCI_DMA_READ(i32 %77)
  %79 = load i32, i32* @OHCI_COUNT_MASK, align 4
  %80 = and i32 %78, %79
  store i32 %80, i32* %25, align 4
  br label %81

81:                                               ; preds = %500, %44
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* @OHCI_CNTL_DMA_ACTIVE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %501

86:                                               ; preds = %81
  %87 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %88 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %25, align 4
  %92 = sub nsw i32 %90, %91
  store i32 %92, i32* %18, align 4
  %93 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %94 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %12, align 8
  %96 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %97 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %96, i32 0, i32 3
  %98 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %97, align 8
  %99 = icmp eq %struct.fwohcidb_tr* %98, null
  br i1 %99, label %100, label %112

100:                                              ; preds = %86
  %101 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %102 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %18, align 4
  %105 = sub nsw i32 %104, %103
  store i32 %105, i32* %18, align 4
  %106 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %107 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i8*, i8** %12, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  store i8* %111, i8** %12, align 8
  br label %112

112:                                              ; preds = %100, %86
  %113 = load i32, i32* %18, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %112
  %116 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %117 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %120 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %123 = call i32 @bus_dmamap_sync(i32 %118, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %115, %112
  br label %125

125:                                              ; preds = %435, %124
  %126 = load i32, i32* %18, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %436

128:                                              ; preds = %125
  %129 = load i32, i32* %6, align 4
  %130 = icmp sge i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %128
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %6, align 4
  %134 = icmp eq i32 %132, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  br label %437

136:                                              ; preds = %131, %128
  %137 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %138 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %137, i32 0, i32 3
  %139 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %138, align 8
  %140 = icmp ne %struct.fwohcidb_tr* %139, null
  br i1 %140, label %141, label %235

141:                                              ; preds = %136
  %142 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %143 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  store i32 %144, i32* %22, align 4
  %145 = load i32, i32* %22, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %141
  %148 = load i32, i32* %22, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %22, align 4
  br label %150

150:                                              ; preds = %147, %141
  %151 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %152 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %151, i32 0, i32 3
  %153 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %152, align 8
  %154 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = load i32, i32* %22, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  store i8* %158, i8** %24, align 8
  %159 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %160 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %22, align 4
  %164 = sub nsw i32 %162, %163
  store i32 %164, i32* %26, align 4
  %165 = load i64, i64* @firewire_debug, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %150
  %168 = load i32, i32* %26, align 4
  %169 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %170 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %168, i32 %171)
  br label %173

173:                                              ; preds = %167, %150
  %174 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %175 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %222

178:                                              ; preds = %173
  %179 = bitcast %struct.fw_pkt* %9 to i8*
  store i8* %179, i8** %27, align 8
  %180 = load i8*, i8** %24, align 8
  %181 = load i8*, i8** %27, align 8
  %182 = load i32, i32* %26, align 4
  %183 = call i32 @bcopy(i8* %180, i8* %181, i32 %182)
  %184 = load i32, i32* %26, align 4
  %185 = load i8*, i8** %27, align 8
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i8, i8* %185, i64 %186
  store i8* %187, i8** %27, align 8
  %188 = load i32, i32* %26, align 4
  %189 = sext i32 %188 to i64
  %190 = sub i64 4, %189
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %26, align 4
  %192 = load i32, i32* %26, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %178
  %195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %196

196:                                              ; preds = %194, %178
  %197 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %198 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %197, i32 0, i32 1
  %199 = load i8*, i8** %198, align 8
  %200 = load i8*, i8** %27, align 8
  %201 = load i32, i32* %26, align 4
  %202 = call i32 @bcopy(i8* %199, i8* %200, i32 %201)
  %203 = load i32, i32* %26, align 4
  %204 = load i8*, i8** %12, align 8
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i8, i8* %204, i64 %205
  store i8* %206, i8** %12, align 8
  %207 = load i32, i32* %26, align 4
  %208 = load i32, i32* %18, align 4
  %209 = sub nsw i32 %208, %207
  store i32 %209, i32* %18, align 4
  %210 = call i32 @fwohci_arcv_swap(%struct.fw_pkt* %9, i32 4)
  store i32 %210, i32* %20, align 4
  %211 = load i32, i32* %20, align 4
  %212 = icmp sle i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %196
  %214 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %504

215:                                              ; preds = %196
  store i32 4, i32* %22, align 4
  %216 = bitcast %struct.fw_pkt* %9 to i8*
  %217 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %8, i64 0, i64 0
  %218 = getelementptr inbounds %struct.iovec, %struct.iovec* %217, i32 0, i32 0
  store i8* %216, i8** %218, align 16
  %219 = load i32, i32* %22, align 4
  %220 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %8, i64 0, i64 0
  %221 = getelementptr inbounds %struct.iovec, %struct.iovec* %220, i32 0, i32 1
  store i32 %219, i32* %221, align 8
  br label %230

222:                                              ; preds = %173
  %223 = load i32, i32* %26, align 4
  store i32 %223, i32* %22, align 4
  %224 = load i8*, i8** %24, align 8
  %225 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %8, i64 0, i64 0
  %226 = getelementptr inbounds %struct.iovec, %struct.iovec* %225, i32 0, i32 0
  store i8* %224, i8** %226, align 16
  %227 = load i32, i32* %26, align 4
  %228 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %8, i64 0, i64 0
  %229 = getelementptr inbounds %struct.iovec, %struct.iovec* %228, i32 0, i32 1
  store i32 %227, i32* %229, align 8
  br label %230

230:                                              ; preds = %222, %215
  %231 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %8, i64 0, i64 0
  %232 = getelementptr inbounds %struct.iovec, %struct.iovec* %231, i32 0, i32 0
  %233 = load i8*, i8** %232, align 16
  %234 = bitcast i8* %233 to %struct.fw_pkt*
  store %struct.fw_pkt* %234, %struct.fw_pkt** %11, align 8
  store i32 1, i32* %10, align 4
  br label %265

235:                                              ; preds = %136
  %236 = load i8*, i8** %12, align 8
  %237 = bitcast i8* %236 to %struct.fw_pkt*
  store %struct.fw_pkt* %237, %struct.fw_pkt** %11, align 8
  %238 = load %struct.fw_pkt*, %struct.fw_pkt** %11, align 8
  %239 = load i32, i32* %18, align 4
  %240 = call i32 @fwohci_arcv_swap(%struct.fw_pkt* %238, i32 %239)
  store i32 %240, i32* %20, align 4
  %241 = load i32, i32* %20, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %235
  br label %504

244:                                              ; preds = %235
  %245 = load i32, i32* %20, align 4
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %264

247:                                              ; preds = %244
  %248 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %249 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %250 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %249, i32 0, i32 3
  store %struct.fwohcidb_tr* %248, %struct.fwohcidb_tr** %250, align 8
  %251 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %252 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = sub nsw i32 0, %253
  %255 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %256 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %255, i32 0, i32 0
  store i32 %254, i32* %256, align 8
  %257 = load i32, i32* %25, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %247
  %260 = load i32, i32* %25, align 4
  %261 = load i32, i32* %20, align 4
  %262 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %260, i32 %261)
  br label %504

263:                                              ; preds = %247
  br label %437

264:                                              ; preds = %244
  store i32 0, i32* %22, align 4
  store i32 0, i32* %10, align 4
  br label %265

265:                                              ; preds = %264, %230
  %266 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %267 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %268 = load %struct.fw_pkt*, %struct.fw_pkt** %11, align 8
  %269 = call i32 @fwohci_get_plen(%struct.fwohci_softc* %266, %struct.fwohci_dbch* %267, %struct.fw_pkt* %268)
  %270 = load i32, i32* %22, align 4
  %271 = sub nsw i32 %269, %270
  store i32 %271, i32* %19, align 4
  %272 = load i32, i32* %19, align 4
  %273 = icmp slt i32 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %265
  %275 = load i32, i32* %19, align 4
  %276 = load i32, i32* %22, align 4
  %277 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %275, i32 %276)
  br label %504

278:                                              ; preds = %265
  %279 = load i32, i32* %19, align 4
  %280 = icmp sgt i32 %279, 0
  br i1 %280, label %281, label %321

281:                                              ; preds = %278
  %282 = load i32, i32* %19, align 4
  %283 = load i32, i32* %18, align 4
  %284 = sub nsw i32 %283, %282
  store i32 %284, i32* %18, align 4
  %285 = load i32, i32* %18, align 4
  %286 = icmp slt i32 %285, 0
  br i1 %286, label %287, label %304

287:                                              ; preds = %281
  %288 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %289 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %290 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %289, i32 0, i32 3
  store %struct.fwohcidb_tr* %288, %struct.fwohcidb_tr** %290, align 8
  %291 = load i64, i64* @firewire_debug, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %287
  %294 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %295

295:                                              ; preds = %293, %287
  %296 = load i32, i32* %25, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %303

298:                                              ; preds = %295
  %299 = load i32, i32* %25, align 4
  %300 = load i32, i32* %19, align 4
  %301 = load i32, i32* %18, align 4
  %302 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %299, i32 %300, i32 %301)
  br label %504

303:                                              ; preds = %295
  br label %437

304:                                              ; preds = %281
  %305 = load i8*, i8** %12, align 8
  %306 = load i32, i32* %10, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %8, i64 0, i64 %307
  %309 = getelementptr inbounds %struct.iovec, %struct.iovec* %308, i32 0, i32 0
  store i8* %305, i8** %309, align 16
  %310 = load i32, i32* %19, align 4
  %311 = load i32, i32* %10, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %8, i64 0, i64 %312
  %314 = getelementptr inbounds %struct.iovec, %struct.iovec* %313, i32 0, i32 1
  store i32 %310, i32* %314, align 8
  %315 = load i32, i32* %10, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %10, align 4
  %317 = load i32, i32* %19, align 4
  %318 = load i8*, i8** %12, align 8
  %319 = sext i32 %317 to i64
  %320 = getelementptr inbounds i8, i8* %318, i64 %319
  store i8* %320, i8** %12, align 8
  br label %321

321:                                              ; preds = %304, %278
  %322 = load i8*, i8** %12, align 8
  %323 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %324 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %323, i32 0, i32 1
  %325 = load i8*, i8** %324, align 8
  %326 = ptrtoint i8* %322 to i64
  %327 = ptrtoint i8* %325 to i64
  %328 = sub i64 %326, %327
  %329 = trunc i64 %328 to i32
  %330 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %331 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %330, i32 0, i32 0
  store i32 %329, i32* %331, align 8
  %332 = load i32, i32* %10, align 4
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %336

334:                                              ; preds = %321
  %335 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %336

336:                                              ; preds = %334, %321
  %337 = load i8*, i8** %12, align 8
  %338 = getelementptr inbounds i8, i8* %337, i64 -4
  %339 = bitcast i8* %338 to i32*
  %340 = load i32, i32* %339, align 4
  %341 = call i32 @FWOHCI_DMA_READ(i32 %340)
  store i32 %341, i32* %13, align 4
  %342 = load i32, i32* %13, align 4
  %343 = ashr i32 %342, 21
  %344 = and i32 %343, 3
  store i32 %344, i32* %17, align 4
  %345 = load i32, i32* %13, align 4
  %346 = ashr i32 %345, 16
  %347 = and i32 %346, 31
  store i32 %347, i32* %16, align 4
  %348 = load i32, i32* %16, align 4
  switch i32 %348, label %391 [
    i32 129, label %349
    i32 130, label %349
    i32 128, label %374
  ]

349:                                              ; preds = %336, %336
  %350 = load i32, i32* %10, align 4
  %351 = sub nsw i32 %350, 1
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %8, i64 0, i64 %352
  %354 = getelementptr inbounds %struct.iovec, %struct.iovec* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 8
  %356 = sext i32 %355 to i64
  %357 = sub i64 %356, 4
  %358 = trunc i64 %357 to i32
  store i32 %358, i32* %354, align 8
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %349
  %361 = load i32, i32* %10, align 4
  %362 = add nsw i32 %361, -1
  store i32 %362, i32* %10, align 4
  br label %363

363:                                              ; preds = %360, %349
  %364 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %365 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.fw_rcv_buf, %struct.fw_rcv_buf* %28, i32 0, i32 3
  store %struct.TYPE_10__* %365, %struct.TYPE_10__** %366, align 8
  %367 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %8, i64 0, i64 0
  %368 = getelementptr inbounds %struct.fw_rcv_buf, %struct.fw_rcv_buf* %28, i32 0, i32 2
  store %struct.iovec* %367, %struct.iovec** %368, align 8
  %369 = load i32, i32* %10, align 4
  %370 = getelementptr inbounds %struct.fw_rcv_buf, %struct.fw_rcv_buf* %28, i32 0, i32 0
  store i32 %369, i32* %370, align 8
  %371 = load i32, i32* %17, align 4
  %372 = getelementptr inbounds %struct.fw_rcv_buf, %struct.fw_rcv_buf* %28, i32 0, i32 1
  store i32 %371, i32* %372, align 4
  %373 = call i32 @fw_rcv(%struct.fw_rcv_buf* %28)
  br label %418

374:                                              ; preds = %336
  %375 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %376 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* @FWBUSRESET, align 4
  %380 = icmp ne i32 %378, %379
  br i1 %380, label %381, label %390

381:                                              ; preds = %374
  %382 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %383 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = load i32, i32* @FWBUSINIT, align 4
  %387 = icmp ne i32 %385, %386
  br i1 %387, label %388, label %390

388:                                              ; preds = %381
  %389 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %390

390:                                              ; preds = %388, %381, %374
  br label %418

391:                                              ; preds = %336
  %392 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %393 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = load i32, i32* %16, align 4
  %397 = load i32*, i32** @fwohcicode, align 8
  %398 = load i32, i32* %16, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %397, i64 %399
  %401 = load i32, i32* %400, align 4
  %402 = load i32, i32* %19, align 4
  %403 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %404 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = load i32, i32* %18, align 4
  %407 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %408 = load i32, i32* %14, align 4
  %409 = call i32 @OHCI_DMACTL(i32 %408)
  %410 = call i32 @OREAD(%struct.fwohci_softc* %407, i32 %409)
  %411 = load %struct.fw_pkt*, %struct.fw_pkt** %11, align 8
  %412 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 4
  %416 = load i32, i32* %13, align 4
  %417 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %395, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.9, i64 0, i64 0), i32 %396, i32 %401, i32 %402, i32 %405, i32 %406, i32 %410, i32 %415, i32 %416)
  br label %504

418:                                              ; preds = %390, %363
  %419 = load i32, i32* %21, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %21, align 4
  %421 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %422 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %421, i32 0, i32 3
  %423 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %422, align 8
  %424 = icmp ne %struct.fwohcidb_tr* %423, null
  br i1 %424, label %425, label %435

425:                                              ; preds = %418
  %426 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %427 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %428 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %429 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %428, i32 0, i32 3
  %430 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %429, align 8
  %431 = load i32, i32* %14, align 4
  %432 = call i32 @fwohci_arcv_free_buf(%struct.fwohci_softc* %426, %struct.fwohci_dbch* %427, %struct.fwohcidb_tr* %430, i32 %431, i32 1)
  %433 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %434 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %433, i32 0, i32 3
  store %struct.fwohcidb_tr* null, %struct.fwohcidb_tr** %434, align 8
  br label %435

435:                                              ; preds = %425, %418
  br label %125

436:                                              ; preds = %125
  br label %437

437:                                              ; preds = %436, %303, %263, %135
  %438 = load i32, i32* %25, align 4
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %440, label %491

440:                                              ; preds = %437
  %441 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %442 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %441, i32 0, i32 3
  %443 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %442, align 8
  %444 = icmp eq %struct.fwohcidb_tr* %443, null
  br i1 %444, label %445, label %453

445:                                              ; preds = %440
  %446 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %447 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %448 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %449 = load i32, i32* %14, align 4
  %450 = call i32 @fwohci_arcv_free_buf(%struct.fwohci_softc* %446, %struct.fwohci_dbch* %447, %struct.fwohcidb_tr* %448, i32 %449, i32 1)
  %451 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %452 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %451, i32 0, i32 0
  store i32 0, i32* %452, align 8
  br label %462

453:                                              ; preds = %440
  %454 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %455 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %454, i32 0, i32 3
  %456 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %455, align 8
  %457 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %458 = icmp ne %struct.fwohcidb_tr* %456, %457
  br i1 %458, label %459, label %461

459:                                              ; preds = %453
  %460 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  br label %461

461:                                              ; preds = %459, %453
  br label %462

462:                                              ; preds = %461, %445
  %463 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %464 = load i32, i32* @link, align 4
  %465 = call %struct.fwohcidb_tr* @STAILQ_NEXT(%struct.fwohcidb_tr* %463, i32 %464)
  store %struct.fwohcidb_tr* %465, %struct.fwohcidb_tr** %7, align 8
  %466 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %467 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %466, i32 0, i32 2
  %468 = load %struct.TYPE_13__*, %struct.TYPE_13__** %467, align 8
  %469 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %468, i64 0
  %470 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %469, i32 0, i32 0
  %471 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %471, i32 0, i32 0
  %473 = load i32, i32* %472, align 4
  %474 = call i32 @FWOHCI_DMA_READ(i32 %473)
  %475 = load i32, i32* @OHCI_STATUS_SHIFT, align 4
  %476 = ashr i32 %474, %475
  store i32 %476, i32* %15, align 4
  %477 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %478 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %477, i32 0, i32 2
  %479 = load %struct.TYPE_13__*, %struct.TYPE_13__** %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %479, i64 0
  %481 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %480, i32 0, i32 0
  %482 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %481, i32 0, i32 0
  %483 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 4
  %485 = call i32 @FWOHCI_DMA_READ(i32 %484)
  %486 = load i32, i32* @OHCI_COUNT_MASK, align 4
  %487 = and i32 %485, %486
  store i32 %487, i32* %25, align 4
  %488 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %489 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %490 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %489, i32 0, i32 2
  store %struct.fwohcidb_tr* %488, %struct.fwohcidb_tr** %490, align 8
  br label %500

491:                                              ; preds = %437
  %492 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %493 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %492, i32 0, i32 1
  %494 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 4
  %496 = load i32, i32* %25, align 4
  %497 = sub nsw i32 %495, %496
  %498 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %499 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %498, i32 0, i32 0
  store i32 %497, i32* %499, align 8
  br label %501

500:                                              ; preds = %462
  br label %81

501:                                              ; preds = %491, %81
  %502 = load i32, i32* %23, align 4
  %503 = call i32 @splx(i32 %502)
  br label %561

504:                                              ; preds = %391, %298, %274, %259, %243, %213
  %505 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %506 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %505, i32 0, i32 0
  %507 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 8
  %509 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %510 = load i32, i32* %14, align 4
  %511 = call i32 @OHCI_DMACTL(i32 %510)
  %512 = call i32 @OREAD(%struct.fwohci_softc* %509, i32 %511)
  %513 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %508, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 %512)
  %514 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %515 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %514, i32 0, i32 3
  store %struct.fwohcidb_tr* null, %struct.fwohcidb_tr** %515, align 8
  %516 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  br label %517

517:                                              ; preds = %520, %504
  %518 = load i32, i32* %25, align 4
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %520, label %541

520:                                              ; preds = %517
  %521 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %522 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %523 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %524 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %525 = load i32, i32* %14, align 4
  %526 = call i32 @fwohci_arcv_free_buf(%struct.fwohci_softc* %522, %struct.fwohci_dbch* %523, %struct.fwohcidb_tr* %524, i32 %525, i32 0)
  %527 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %528 = load i32, i32* @link, align 4
  %529 = call %struct.fwohcidb_tr* @STAILQ_NEXT(%struct.fwohcidb_tr* %527, i32 %528)
  store %struct.fwohcidb_tr* %529, %struct.fwohcidb_tr** %7, align 8
  %530 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %531 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %530, i32 0, i32 2
  %532 = load %struct.TYPE_13__*, %struct.TYPE_13__** %531, align 8
  %533 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %532, i64 0
  %534 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %533, i32 0, i32 0
  %535 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %534, i32 0, i32 0
  %536 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 4
  %538 = call i32 @FWOHCI_DMA_READ(i32 %537)
  %539 = load i32, i32* @OHCI_COUNT_MASK, align 4
  %540 = and i32 %538, %539
  store i32 %540, i32* %25, align 4
  br label %517

541:                                              ; preds = %517
  %542 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %543 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %544 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %545 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %544, i32 0, i32 2
  store %struct.fwohcidb_tr* %543, %struct.fwohcidb_tr** %545, align 8
  %546 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %547 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %546, i32 0, i32 1
  %548 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %547, i32 0, i32 0
  %549 = load i32, i32* %548, align 4
  %550 = load i32, i32* %25, align 4
  %551 = sub nsw i32 %549, %550
  %552 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %553 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %552, i32 0, i32 0
  store i32 %551, i32* %553, align 8
  %554 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %555 = load i32, i32* %14, align 4
  %556 = call i32 @OHCI_DMACTL(i32 %555)
  %557 = load i32, i32* @OHCI_CNTL_DMA_WAKE, align 4
  %558 = call i32 @OWRITE(%struct.fwohci_softc* %554, i32 %556, i32 %557)
  %559 = load i32, i32* %23, align 4
  %560 = call i32 @splx(i32 %559)
  br label %561

561:                                              ; preds = %541, %501, %42
  ret void
}

declare dso_local i32 @splfw(...) #1

declare dso_local i32 @fwdma_sync_multiseg_all(i32, i32) #1

declare dso_local i32 @FWOHCI_DMA_READ(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @fwohci_arcv_swap(%struct.fw_pkt*, i32) #1

declare dso_local i32 @fwohci_get_plen(%struct.fwohci_softc*, %struct.fwohci_dbch*, %struct.fw_pkt*) #1

declare dso_local i32 @fw_rcv(%struct.fw_rcv_buf*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @OREAD(%struct.fwohci_softc*, i32) #1

declare dso_local i32 @OHCI_DMACTL(i32) #1

declare dso_local i32 @fwohci_arcv_free_buf(%struct.fwohci_softc*, %struct.fwohci_dbch*, %struct.fwohcidb_tr*, i32, i32) #1

declare dso_local %struct.fwohcidb_tr* @STAILQ_NEXT(%struct.fwohcidb_tr*, i32) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @OWRITE(%struct.fwohci_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
