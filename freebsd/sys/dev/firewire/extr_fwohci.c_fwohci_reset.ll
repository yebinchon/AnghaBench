; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwohci_softc = type { i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32* }
%struct.TYPE_12__ = type { i32, %struct.fwohcidb_tr*, %struct.fwohcidb_tr*, i32 }
%struct.fwohcidb_tr = type { i32* }
%struct.TYPE_11__ = type { i32, %struct.fwohcidb_tr*, %struct.fwohcidb_tr*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@FWOHCI_INTMASKCLR = common dso_local global i32 0, align 4
@OHCI_ARQCTLCLR = common dso_local global i32 0, align 4
@OHCI_CNTL_DMA_RUN = common dso_local global i32 0, align 4
@OHCI_ARSCTLCLR = common dso_local global i32 0, align 4
@OHCI_ATQCTLCLR = common dso_local global i32 0, align 4
@OHCI_ATSCTLCLR = common dso_local global i32 0, align 4
@OHCI_IR_MASKCLR = common dso_local global i32 0, align 4
@OHCI_HCCCTL = common dso_local global i32 0, align 4
@OHCI_HCC_RESET = common dso_local global i32 0, align 4
@firewire_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"resetting OHCI...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"done (loop=%d)\0A\00", align 1
@OHCI_BUS_OPT = common dso_local global i32 0, align 4
@OHCI_BUSFNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Link %s, max_rec %d bytes.\0A\00", align 1
@linkspeed = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"max_rec %d -> %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"BUS_OPT 0x%x -> 0x%x\0A\00", align 1
@OHCI_CROMHDR = common dso_local global i32 0, align 4
@OHCI_CROMPTR = common dso_local global i32 0, align 4
@OHCI_HCCCTLCLR = common dso_local global i32 0, align 4
@OHCI_HCC_BIGEND = common dso_local global i32 0, align 4
@OHCI_HCC_POSTWR = common dso_local global i32 0, align 4
@OHCI_SID_BUF = common dso_local global i32 0, align 4
@OHCI_LNKCTL = common dso_local global i32 0, align 4
@OHCI_CNTL_SID = common dso_local global i32 0, align 4
@OHCI_HCC_LINKEN = common dso_local global i32 0, align 4
@FWXFERQ_RUNNING = common dso_local global i32 0, align 4
@OHCI_CNTL_DMA_DEAD = common dso_local global i32 0, align 4
@FWOHCI_RETRY = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@OHCI_INT_ERR = common dso_local global i32 0, align 4
@OHCI_INT_PHY_SID = common dso_local global i32 0, align 4
@OHCI_INT_DMA_ATRQ = common dso_local global i32 0, align 4
@OHCI_INT_DMA_ATRS = common dso_local global i32 0, align 4
@OHCI_INT_DMA_PRRQ = common dso_local global i32 0, align 4
@OHCI_INT_DMA_PRRS = common dso_local global i32 0, align 4
@OHCI_INT_PHY_BUS_R = common dso_local global i32 0, align 4
@OHCI_INT_PW_ERR = common dso_local global i32 0, align 4
@OHCI_INT_DMA_IR = common dso_local global i32 0, align 4
@OHCI_INT_DMA_IT = common dso_local global i32 0, align 4
@OHCI_INT_CYC_LOST = common dso_local global i32 0, align 4
@OHCI_INT_PHY_INT = common dso_local global i32 0, align 4
@FWOHCI_INTMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fwohci_reset(%struct.fwohci_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.fwohci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fwohcidb_tr*, align 8
  store %struct.fwohci_softc* %0, %struct.fwohci_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %12 = load i32, i32* @FWOHCI_INTMASKCLR, align 4
  %13 = call i32 @OWRITE(%struct.fwohci_softc* %11, i32 %12, i32 -1)
  %14 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %15 = load i32, i32* @OHCI_ARQCTLCLR, align 4
  %16 = load i32, i32* @OHCI_CNTL_DMA_RUN, align 4
  %17 = call i32 @OWRITE(%struct.fwohci_softc* %14, i32 %15, i32 %16)
  %18 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %19 = load i32, i32* @OHCI_ARSCTLCLR, align 4
  %20 = load i32, i32* @OHCI_CNTL_DMA_RUN, align 4
  %21 = call i32 @OWRITE(%struct.fwohci_softc* %18, i32 %19, i32 %20)
  %22 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %23 = load i32, i32* @OHCI_ATQCTLCLR, align 4
  %24 = load i32, i32* @OHCI_CNTL_DMA_RUN, align 4
  %25 = call i32 @OWRITE(%struct.fwohci_softc* %22, i32 %23, i32 %24)
  %26 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %27 = load i32, i32* @OHCI_ATSCTLCLR, align 4
  %28 = load i32, i32* @OHCI_CNTL_DMA_RUN, align 4
  %29 = call i32 @OWRITE(%struct.fwohci_softc* %26, i32 %27, i32 %28)
  %30 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %31 = load i32, i32* @OHCI_IR_MASKCLR, align 4
  %32 = call i32 @OWRITE(%struct.fwohci_softc* %30, i32 %31, i32 -1)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %51, %2
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %36 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %33
  %41 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @OHCI_IRCTLCLR(i32 %42)
  %44 = load i32, i32* @OHCI_CNTL_DMA_RUN, align 4
  %45 = call i32 @OWRITE(%struct.fwohci_softc* %41, i32 %43, i32 %44)
  %46 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @OHCI_ITCTLCLR(i32 %47)
  %49 = load i32, i32* @OHCI_CNTL_DMA_RUN, align 4
  %50 = call i32 @OWRITE(%struct.fwohci_softc* %46, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %40
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %33

54:                                               ; preds = %33
  %55 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %56 = load i32, i32* @OHCI_HCCCTL, align 4
  %57 = load i32, i32* @OHCI_HCC_RESET, align 4
  %58 = call i32 @OWRITE(%struct.fwohci_softc* %55, i32 %56, i32 %57)
  %59 = load i64, i64* @firewire_debug, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* %4, align 4
  %63 = call i32 (i32, i8*, ...) @device_printf(i32 %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %54
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %77, %64
  %66 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %67 = load i32, i32* @OHCI_HCCCTL, align 4
  %68 = call i32 @OREAD(%struct.fwohci_softc* %66, i32 %67)
  %69 = load i32, i32* @OHCI_HCC_RESET, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %65
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  %75 = icmp sgt i32 %73, 100
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %79

77:                                               ; preds = %72
  %78 = call i32 @DELAY(i32 1000)
  br label %65

79:                                               ; preds = %76, %65
  %80 = load i64, i64* @firewire_debug, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @fwohci_probe_phy(%struct.fwohci_softc* %86, i32 %87)
  %89 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %90 = load i32, i32* @OHCI_BUS_OPT, align 4
  %91 = call i32 @OREAD(%struct.fwohci_softc* %89, i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @OHCI_BUSFNC, align 4
  %94 = or i32 %92, %93
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %8, align 4
  %96 = and i32 %95, 61440
  %97 = ashr i32 %96, 12
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %8, align 4
  %99 = and i32 %98, 7
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %4, align 4
  %101 = load i32*, i32** @linkspeed, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @MAXREC(i32 %106)
  %108 = call i32 (i32, i8*, ...) @device_printf(i32 %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %105, i32 %107)
  %109 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %110 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 8
  %114 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %115 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 4
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %119 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %117, %121
  br i1 %122, label %123, label %141

123:                                              ; preds = %85
  %124 = load i32, i32* %9, align 4
  %125 = and i32 %124, -61441
  %126 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %127 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = shl i32 %129, 12
  %131 = or i32 %125, %130
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @MAXREC(i32 %133)
  %135 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %136 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @MAXREC(i32 %138)
  %140 = call i32 (i32, i8*, ...) @device_printf(i32 %132, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %134, i32 %139)
  br label %141

141:                                              ; preds = %123, %85
  %142 = load i64, i64* @firewire_debug, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %9, align 4
  %148 = call i32 (i32, i8*, ...) @device_printf(i32 %145, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %144, %141
  %150 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %151 = load i32, i32* @OHCI_BUS_OPT, align 4
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @OWRITE(%struct.fwohci_softc* %150, i32 %151, i32 %152)
  %154 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %155 = load i32, i32* @OHCI_CROMHDR, align 4
  %156 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %157 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 3
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @OWRITE(%struct.fwohci_softc* %154, i32 %155, i32 %161)
  %163 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %164 = load i32, i32* @OHCI_CROMPTR, align 4
  %165 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %166 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %165, i32 0, i32 7
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @OWRITE(%struct.fwohci_softc* %163, i32 %164, i32 %168)
  %170 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %171 = load i32, i32* @OHCI_HCCCTLCLR, align 4
  %172 = load i32, i32* @OHCI_HCC_BIGEND, align 4
  %173 = call i32 @OWRITE(%struct.fwohci_softc* %170, i32 %171, i32 %172)
  %174 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %175 = load i32, i32* @OHCI_HCCCTL, align 4
  %176 = load i32, i32* @OHCI_HCC_POSTWR, align 4
  %177 = call i32 @OWRITE(%struct.fwohci_softc* %174, i32 %175, i32 %176)
  %178 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %179 = load i32, i32* @OHCI_SID_BUF, align 4
  %180 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %181 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %180, i32 0, i32 6
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @OWRITE(%struct.fwohci_softc* %178, i32 %179, i32 %183)
  %185 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %186 = load i32, i32* @OHCI_LNKCTL, align 4
  %187 = load i32, i32* @OHCI_CNTL_SID, align 4
  %188 = call i32 @OWRITE(%struct.fwohci_softc* %185, i32 %186, i32 %187)
  %189 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %190 = load i32, i32* @OHCI_HCCCTL, align 4
  %191 = load i32, i32* @OHCI_HCC_LINKEN, align 4
  %192 = call i32 @OWRITE(%struct.fwohci_softc* %189, i32 %190, i32 %191)
  %193 = load i32, i32* @FWXFERQ_RUNNING, align 4
  %194 = xor i32 %193, -1
  %195 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %196 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %195, i32 0, i32 5
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = and i32 %199, %194
  store i32 %200, i32* %198, align 4
  %201 = load i32, i32* @FWXFERQ_RUNNING, align 4
  %202 = xor i32 %201, -1
  %203 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %204 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %203, i32 0, i32 4
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = and i32 %207, %202
  store i32 %208, i32* %206, align 8
  %209 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %210 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %211 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %210, i32 0, i32 5
  %212 = call i32 @fwohci_rx_enable(%struct.fwohci_softc* %209, %struct.TYPE_14__* %211)
  %213 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %214 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %215 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %214, i32 0, i32 4
  %216 = call i32 @fwohci_rx_enable(%struct.fwohci_softc* %213, %struct.TYPE_14__* %215)
  %217 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %218 = load i32, i32* @OHCI_ATQCTLCLR, align 4
  %219 = load i32, i32* @OHCI_CNTL_DMA_RUN, align 4
  %220 = load i32, i32* @OHCI_CNTL_DMA_DEAD, align 4
  %221 = or i32 %219, %220
  %222 = call i32 @OWRITE(%struct.fwohci_softc* %217, i32 %218, i32 %221)
  %223 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %224 = load i32, i32* @OHCI_ATSCTLCLR, align 4
  %225 = load i32, i32* @OHCI_CNTL_DMA_RUN, align 4
  %226 = load i32, i32* @OHCI_CNTL_DMA_DEAD, align 4
  %227 = or i32 %225, %226
  %228 = call i32 @OWRITE(%struct.fwohci_softc* %223, i32 %224, i32 %227)
  %229 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %230 = load i32, i32* @FWOHCI_RETRY, align 4
  %231 = call i32 @OWRITE(%struct.fwohci_softc* %229, i32 %230, i32 -61441)
  %232 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %233 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %232, i32 0, i32 3
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 3
  %235 = call i8* @STAILQ_FIRST(i32* %234)
  %236 = bitcast i8* %235 to %struct.fwohcidb_tr*
  %237 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %238 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 1
  store %struct.fwohcidb_tr* %236, %struct.fwohcidb_tr** %239, align 8
  %240 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %241 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 3
  %243 = call i8* @STAILQ_FIRST(i32* %242)
  %244 = bitcast i8* %243 to %struct.fwohcidb_tr*
  %245 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %246 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 1
  store %struct.fwohcidb_tr* %244, %struct.fwohcidb_tr** %247, align 8
  %248 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %249 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 1
  %251 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %250, align 8
  %252 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %253 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %252, i32 0, i32 3
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 2
  store %struct.fwohcidb_tr* %251, %struct.fwohcidb_tr** %254, align 8
  %255 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %256 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 1
  %258 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %257, align 8
  %259 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %260 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 2
  store %struct.fwohcidb_tr* %258, %struct.fwohcidb_tr** %261, align 8
  store i32 0, i32* %5, align 4
  %262 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %263 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %262, i32 0, i32 3
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 1
  %265 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %264, align 8
  store %struct.fwohcidb_tr* %265, %struct.fwohcidb_tr** %10, align 8
  br label %266

266:                                              ; preds = %276, %149
  %267 = load i32, i32* %5, align 4
  %268 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %269 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %268, i32 0, i32 3
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp slt i32 %267, %271
  br i1 %272, label %273, label %282

273:                                              ; preds = %266
  %274 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %10, align 8
  %275 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %274, i32 0, i32 0
  store i32* null, i32** %275, align 8
  br label %276

276:                                              ; preds = %273
  %277 = load i32, i32* %5, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %5, align 4
  %279 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %10, align 8
  %280 = load i32, i32* @link, align 4
  %281 = call %struct.fwohcidb_tr* @STAILQ_NEXT(%struct.fwohcidb_tr* %279, i32 %280)
  store %struct.fwohcidb_tr* %281, %struct.fwohcidb_tr** %10, align 8
  br label %266

282:                                              ; preds = %266
  store i32 0, i32* %5, align 4
  %283 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %284 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %283, i32 0, i32 2
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 1
  %286 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %285, align 8
  store %struct.fwohcidb_tr* %286, %struct.fwohcidb_tr** %10, align 8
  br label %287

287:                                              ; preds = %297, %282
  %288 = load i32, i32* %5, align 4
  %289 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %290 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %289, i32 0, i32 2
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = icmp slt i32 %288, %292
  br i1 %293, label %294, label %303

294:                                              ; preds = %287
  %295 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %10, align 8
  %296 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %295, i32 0, i32 0
  store i32* null, i32** %296, align 8
  br label %297

297:                                              ; preds = %294
  %298 = load i32, i32* %5, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %5, align 4
  %300 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %10, align 8
  %301 = load i32, i32* @link, align 4
  %302 = call %struct.fwohcidb_tr* @STAILQ_NEXT(%struct.fwohcidb_tr* %300, i32 %301)
  store %struct.fwohcidb_tr* %302, %struct.fwohcidb_tr** %10, align 8
  br label %287

303:                                              ; preds = %287
  %304 = load i32, i32* @OHCI_INT_ERR, align 4
  %305 = load i32, i32* @OHCI_INT_PHY_SID, align 4
  %306 = or i32 %304, %305
  %307 = load i32, i32* @OHCI_INT_DMA_ATRQ, align 4
  %308 = or i32 %306, %307
  %309 = load i32, i32* @OHCI_INT_DMA_ATRS, align 4
  %310 = or i32 %308, %309
  %311 = load i32, i32* @OHCI_INT_DMA_PRRQ, align 4
  %312 = or i32 %310, %311
  %313 = load i32, i32* @OHCI_INT_DMA_PRRS, align 4
  %314 = or i32 %312, %313
  %315 = load i32, i32* @OHCI_INT_PHY_BUS_R, align 4
  %316 = or i32 %314, %315
  %317 = load i32, i32* @OHCI_INT_PW_ERR, align 4
  %318 = or i32 %316, %317
  %319 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %320 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %319, i32 0, i32 0
  store i32 %318, i32* %320, align 8
  %321 = load i32, i32* @OHCI_INT_DMA_IR, align 4
  %322 = load i32, i32* @OHCI_INT_DMA_IT, align 4
  %323 = or i32 %321, %322
  %324 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %325 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = or i32 %326, %323
  store i32 %327, i32* %325, align 8
  %328 = load i32, i32* @OHCI_INT_CYC_LOST, align 4
  %329 = load i32, i32* @OHCI_INT_PHY_INT, align 4
  %330 = or i32 %328, %329
  %331 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %332 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = or i32 %333, %330
  store i32 %334, i32* %332, align 8
  %335 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %336 = load i32, i32* @FWOHCI_INTMASK, align 4
  %337 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %338 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = call i32 @OWRITE(%struct.fwohci_softc* %335, i32 %336, i32 %339)
  %341 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %342 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %341, i32 0, i32 1
  %343 = call i32 @fwohci_set_intr(%struct.TYPE_13__* %342, i32 1)
  ret void
}

declare dso_local i32 @OWRITE(%struct.fwohci_softc*, i32, i32) #1

declare dso_local i32 @OHCI_IRCTLCLR(i32) #1

declare dso_local i32 @OHCI_ITCTLCLR(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @OREAD(%struct.fwohci_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @fwohci_probe_phy(%struct.fwohci_softc*, i32) #1

declare dso_local i32 @MAXREC(i32) #1

declare dso_local i32 @fwohci_rx_enable(%struct.fwohci_softc*, %struct.TYPE_14__*) #1

declare dso_local i8* @STAILQ_FIRST(i32*) #1

declare dso_local %struct.fwohcidb_tr* @STAILQ_NEXT(%struct.fwohcidb_tr*, i32) #1

declare dso_local i32 @fwohci_set_intr(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
