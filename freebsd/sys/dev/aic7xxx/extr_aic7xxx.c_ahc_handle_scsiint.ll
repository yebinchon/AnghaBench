; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_handle_scsiint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_handle_scsiint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i8* }
%struct.ahc_softc = type { i32, i64, i32, i64*, i32 }
%struct.scb = type { %struct.TYPE_11__*, %struct.TYPE_8__*, i32 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.ahc_devinfo = type { i32, i32, i32 }
%struct.ahc_initiator_tinfo = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.ahc_tmode_tstate = type { i32 }

@AHC_TWIN = common dso_local global i32 0, align 4
@SBLKCTL = common dso_local global i32 0, align 4
@SELBUSB = common dso_local global i32 0, align 4
@AHC_ULTRA2 = common dso_local global i32 0, align 4
@SSTAT0 = common dso_local global i32 0, align 4
@IOERR = common dso_local global i64 0, align 8
@SSTAT1 = common dso_local global i32 0, align 4
@SELTO = common dso_local global i64 0, align 8
@SCSIRSTI = common dso_local global i64 0, align 8
@BUSFREE = common dso_local global i64 0, align 8
@SCSIPERR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"%s: Spurious SCSI interrupt\0A\00", align 1
@CLRINT = common dso_local global i32 0, align 4
@CLRSCSIINT = common dso_local global i32 0, align 4
@SCB_TAG = common dso_local global i32 0, align 4
@SEQ_FLAGS = common dso_local global i32 0, align 4
@NOT_IDENTIFIED = common dso_local global i32 0, align 4
@ENAB40 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"%s: Transceiver State Has Changed to %s mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"LVD\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"SE\00", align 1
@CLRSINT0 = common dso_local global i32 0, align 4
@CLRIOERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"%s: Someone reset channel %c\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@LASTPHASE = common dso_local global i32 0, align 4
@SCSISIGI = common dso_local global i32 0, align 4
@PHASE_MASK = common dso_local global i32 0, align 4
@SSTAT2 = common dso_local global i32 0, align 4
@CLRSINT1 = common dso_local global i32 0, align 4
@CLRSCSIPERR = common dso_local global i32 0, align 4
@P_DATAIN = common dso_local global i64 0, align 8
@P_DATAIN_DT = common dso_local global i64 0, align 8
@num_phases = common dso_local global i64 0, align 8
@ahc_phase_table = common dso_local global %struct.TYPE_12__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@SCB_TRANSMISSION_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"%s:%c:%d: \00", align 1
@SAVED_SCSIID = common dso_local global i32 0, align 4
@SCSIRATE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [56 x i8] c"parity error detected %s. SEQADDR(0x%x) SCSIRATE(0x%x)\0A\00", align 1
@SEQADDR0 = common dso_local global i32 0, align 4
@AHC_DT = common dso_local global i32 0, align 4
@CRCVALERR = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"\09CRC Value Mismatch\0A\00", align 1
@CRCENDERR = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [34 x i8] c"\09No terminal CRC packet recevied\0A\00", align 1
@CRCREQERR = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [29 x i8] c"\09Illegal CRC packet request\0A\00", align 1
@DUAL_EDGE_ERR = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [29 x i8] c"\09Unexpected %sDT Data Phase\0A\00", align 1
@SINGLE_EDGE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"non-\00", align 1
@MSG_INITIATOR_DET_ERR = common dso_local global i64 0, align 8
@MSG_NOOP = common dso_local global i64 0, align 8
@MSG_TYPE_NONE = common dso_local global i64 0, align 8
@MSG_OUT = common dso_local global i32 0, align 4
@SCSISEQ = common dso_local global i32 0, align 4
@SIMODE1 = common dso_local global i32 0, align 4
@ENBUSFREE = common dso_local global i32 0, align 4
@CLRSELTIMEO = common dso_local global i32 0, align 4
@CLRBUSFREE = common dso_local global i32 0, align 4
@CLRSELINGO = common dso_local global i32 0, align 4
@WAITING_SCBH = common dso_local global i32 0, align 4
@SCBPTR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [66 x i8] c"%s: ahc_intr - referenced scb not valid during SELTO scb(%d, %d)\0A\00", align 1
@CAM_SEL_TIMEOUT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [18 x i8] c"Selection Timeout\00", align 1
@ENSELI = common dso_local global i32 0, align 4
@ENRSELI = common dso_local global i32 0, align 4
@ENAUTOATNP = common dso_local global i32 0, align 4
@SAVED_LUN = common dso_local global i32 0, align 4
@ROLE_INITIATOR = common dso_local global i32 0, align 4
@P_MESGOUT = common dso_local global i64 0, align 8
@SCB_LIST_NULL = common dso_local global i64 0, align 8
@AHCMSG_1B = common dso_local global i32 0, align 4
@MSG_ABORT_TAG = common dso_local global i64 0, align 8
@MSG_ABORT = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [29 x i8] c"SCB %d - Abort%s Completed.\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c" Tag\00", align 1
@CAM_REQ_ABORTED = common dso_local global i32 0, align 4
@MSG_BUS_DEV_RESET = common dso_local global i64 0, align 8
@CAM_LUN_WILDCARD = common dso_local global i64 0, align 8
@CAM_BDR_SENT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [17 x i8] c"Bus Device Reset\00", align 1
@AHCMSG_EXT = common dso_local global i32 0, align 4
@MSG_EXT_PPR = common dso_local global i64 0, align 8
@MSG_EXT_WDTR = common dso_local global i64 0, align 8
@MSG_EXT_WDTR_BUS_8_BIT = common dso_local global i32 0, align 4
@AHC_TRANS_CUR = common dso_local global i32 0, align 4
@AHC_TRANS_GOAL = common dso_local global i32 0, align 4
@MSG_EXT_SDTR = common dso_local global i64 0, align 8
@TAG_ENB = common dso_local global i32 0, align 4
@CAM_UNEXP_BUSFREE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@P_BUSFREE = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [39 x i8] c"Unexpected busfree %s\0ASEQADDR == 0x%x\0A\00", align 1
@SEQADDR1 = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [53 x i8] c"%s: Missing case in ahc_handle_scsiint. status = %x\0A\00", align 1
@AHC_SHOW_SELTO = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@XPT_RESET_DEV = common dso_local global i64 0, align 8
@ahc_debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahc_handle_scsiint(%struct.ahc_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.scb*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca %struct.ahc_devinfo, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca %struct.ahc_devinfo, align 4
  %23 = alloca %struct.ahc_devinfo, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i8, align 1
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca %struct.ahc_initiator_tinfo*, align 8
  %33 = alloca %struct.ahc_tmode_tstate*, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %36 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %37 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @AHC_TWIN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %2
  %43 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %44 = load i32, i32* @SBLKCTL, align 4
  %45 = call i32 @ahc_inb(%struct.ahc_softc* %43, i32 %44)
  %46 = load i32, i32* @SELBUSB, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i8 66, i8* %9, align 1
  br label %51

50:                                               ; preds = %42, %2
  store i8 65, i8* %9, align 1
  br label %51

51:                                               ; preds = %50, %49
  %52 = load i8, i8* %9, align 1
  store i8 %52, i8* %10, align 1
  %53 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %54 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @AHC_ULTRA2, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %51
  %60 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %61 = load i32, i32* @SSTAT0, align 4
  %62 = call i32 @ahc_inb(%struct.ahc_softc* %60, i32 %61)
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* @IOERR, align 8
  %65 = and i64 %63, %64
  store i64 %65, i64* %6, align 8
  br label %67

66:                                               ; preds = %51
  store i64 0, i64* %6, align 8
  br label %67

67:                                               ; preds = %66, %59
  %68 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %69 = load i32, i32* @SSTAT1, align 4
  %70 = call i32 @ahc_inb(%struct.ahc_softc* %68, i32 %69)
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* @SELTO, align 8
  %73 = load i64, i64* @SCSIRSTI, align 8
  %74 = or i64 %72, %73
  %75 = load i64, i64* @BUSFREE, align 8
  %76 = or i64 %74, %75
  %77 = load i64, i64* @SCSIPERR, align 8
  %78 = or i64 %76, %77
  %79 = and i64 %71, %78
  store i64 %79, i64* %7, align 8
  %80 = load i64, i64* %7, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %133

82:                                               ; preds = %67
  %83 = load i64, i64* %6, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %133

85:                                               ; preds = %82
  %86 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %87 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @AHC_TWIN, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %119

92:                                               ; preds = %85
  %93 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %94 = load i32, i32* @SBLKCTL, align 4
  %95 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %96 = load i32, i32* @SBLKCTL, align 4
  %97 = call i32 @ahc_inb(%struct.ahc_softc* %95, i32 %96)
  %98 = load i32, i32* @SELBUSB, align 4
  %99 = xor i32 %97, %98
  %100 = call i32 @ahc_outb(%struct.ahc_softc* %93, i32 %94, i32 %99)
  %101 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %102 = load i32, i32* @SSTAT1, align 4
  %103 = call i32 @ahc_inb(%struct.ahc_softc* %101, i32 %102)
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* @SELTO, align 8
  %106 = load i64, i64* @SCSIRSTI, align 8
  %107 = or i64 %105, %106
  %108 = load i64, i64* @BUSFREE, align 8
  %109 = or i64 %107, %108
  %110 = load i64, i64* @SCSIPERR, align 8
  %111 = or i64 %109, %110
  %112 = and i64 %104, %111
  store i64 %112, i64* %7, align 8
  %113 = load i8, i8* %9, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 65
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i32 66, i32 65
  %118 = trunc i32 %117 to i8
  store i8 %118, i8* %10, align 1
  br label %119

119:                                              ; preds = %92, %85
  %120 = load i64, i64* %7, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %119
  %123 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %124 = call i8* @ahc_name(%struct.ahc_softc* %123)
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %124)
  %126 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %127 = load i32, i32* @CLRINT, align 4
  %128 = load i32, i32* @CLRSCSIINT, align 4
  %129 = call i32 @ahc_outb(%struct.ahc_softc* %126, i32 %127, i32 %128)
  %130 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %131 = call i32 @ahc_unpause(%struct.ahc_softc* %130)
  br label %813

132:                                              ; preds = %119
  br label %133

133:                                              ; preds = %132, %82, %67
  %134 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %135 = call i32 @ahc_clear_critical_section(%struct.ahc_softc* %134)
  %136 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %137 = load i32, i32* @SCB_TAG, align 4
  %138 = call i32 @ahc_inb(%struct.ahc_softc* %136, i32 %137)
  %139 = sext i32 %138 to i64
  store i64 %139, i64* %5, align 8
  %140 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %141 = load i64, i64* %5, align 8
  %142 = call %struct.scb* @ahc_lookup_scb(%struct.ahc_softc* %140, i64 %141)
  store %struct.scb* %142, %struct.scb** %8, align 8
  %143 = load %struct.scb*, %struct.scb** %8, align 8
  %144 = icmp ne %struct.scb* %143, null
  br i1 %144, label %145, label %153

145:                                              ; preds = %133
  %146 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %147 = load i32, i32* @SEQ_FLAGS, align 4
  %148 = call i32 @ahc_inb(%struct.ahc_softc* %146, i32 %147)
  %149 = load i32, i32* @NOT_IDENTIFIED, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  store %struct.scb* null, %struct.scb** %8, align 8
  br label %153

153:                                              ; preds = %152, %145, %133
  %154 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %155 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @AHC_ULTRA2, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %188

160:                                              ; preds = %153
  %161 = load i64, i64* %6, align 8
  %162 = load i64, i64* @IOERR, align 8
  %163 = and i64 %161, %162
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %188

165:                                              ; preds = %160
  %166 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %167 = load i32, i32* @SBLKCTL, align 4
  %168 = call i32 @ahc_inb(%struct.ahc_softc* %166, i32 %167)
  %169 = load i32, i32* @ENAB40, align 4
  %170 = and i32 %168, %169
  store i32 %170, i32* %11, align 4
  %171 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %172 = call i8* @ahc_name(%struct.ahc_softc* %171)
  %173 = load i32, i32* %11, align 4
  %174 = icmp ne i32 %173, 0
  %175 = zext i1 %174 to i64
  %176 = select i1 %174, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %172, i8* %176)
  %178 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %179 = load i32, i32* @CLRSINT0, align 4
  %180 = load i32, i32* @CLRIOERR, align 4
  %181 = call i32 @ahc_outb(%struct.ahc_softc* %178, i32 %179, i32 %180)
  %182 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %183 = load i8, i8* %10, align 1
  %184 = load i32, i32* %11, align 4
  %185 = icmp eq i32 %184, 0
  %186 = zext i1 %185 to i32
  %187 = call i32 @ahc_reset_channel(%struct.ahc_softc* %182, i8 signext %183, i32 %186)
  br label %813

188:                                              ; preds = %160, %153
  %189 = load i64, i64* %7, align 8
  %190 = load i64, i64* @SCSIRSTI, align 8
  %191 = and i64 %189, %190
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %218

193:                                              ; preds = %188
  %194 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %195 = call i8* @ahc_name(%struct.ahc_softc* %194)
  %196 = load i8, i8* %10, align 1
  %197 = sext i8 %196 to i32
  %198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %195, i32 %197)
  %199 = load i8, i8* %10, align 1
  %200 = sext i8 %199 to i32
  %201 = load i8, i8* %9, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp ne i32 %200, %202
  br i1 %203, label %204, label %213

204:                                              ; preds = %193
  %205 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %206 = load i32, i32* @SBLKCTL, align 4
  %207 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %208 = load i32, i32* @SBLKCTL, align 4
  %209 = call i32 @ahc_inb(%struct.ahc_softc* %207, i32 %208)
  %210 = load i32, i32* @SELBUSB, align 4
  %211 = xor i32 %209, %210
  %212 = call i32 @ahc_outb(%struct.ahc_softc* %205, i32 %206, i32 %211)
  br label %213

213:                                              ; preds = %204, %193
  %214 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %215 = load i8, i8* %10, align 1
  %216 = load i32, i32* @FALSE, align 4
  %217 = call i32 @ahc_reset_channel(%struct.ahc_softc* %214, i8 signext %215, i32 %216)
  br label %812

218:                                              ; preds = %188
  %219 = load i64, i64* %7, align 8
  %220 = load i64, i64* @SCSIPERR, align 8
  %221 = and i64 %219, %220
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %423

223:                                              ; preds = %218
  %224 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %225 = load i32, i32* @LASTPHASE, align 4
  %226 = call i32 @ahc_inb(%struct.ahc_softc* %224, i32 %225)
  %227 = sext i32 %226 to i64
  store i64 %227, i64* %16, align 8
  %228 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %229 = load i32, i32* @SCSISIGI, align 4
  %230 = call i32 @ahc_inb(%struct.ahc_softc* %228, i32 %229)
  %231 = load i32, i32* @PHASE_MASK, align 4
  %232 = and i32 %230, %231
  %233 = sext i32 %232 to i64
  store i64 %233, i64* %14, align 8
  %234 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %235 = load i32, i32* @SSTAT2, align 4
  %236 = call i32 @ahc_inb(%struct.ahc_softc* %234, i32 %235)
  %237 = sext i32 %236 to i64
  store i64 %237, i64* %19, align 8
  %238 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %239 = load i32, i32* @CLRSINT1, align 4
  %240 = load i32, i32* @CLRSCSIPERR, align 4
  %241 = call i32 @ahc_outb(%struct.ahc_softc* %238, i32 %239, i32 %240)
  %242 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %243 = load i32, i32* @SSTAT1, align 4
  %244 = call i32 @ahc_inb(%struct.ahc_softc* %242, i32 %243)
  %245 = sext i32 %244 to i64
  %246 = load i64, i64* @SCSIPERR, align 8
  %247 = and i64 %245, %246
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %257, label %249

249:                                              ; preds = %223
  %250 = load i64, i64* %14, align 8
  %251 = load i64, i64* @P_DATAIN, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %257, label %253

253:                                              ; preds = %249
  %254 = load i64, i64* %14, align 8
  %255 = load i64, i64* @P_DATAIN_DT, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %259

257:                                              ; preds = %253, %249, %223
  %258 = load i64, i64* %14, align 8
  store i64 %258, i64* %15, align 8
  br label %261

259:                                              ; preds = %253
  %260 = load i64, i64* %16, align 8
  store i64 %260, i64* %15, align 8
  br label %261

261:                                              ; preds = %259, %257
  store i64 0, i64* %18, align 8
  br label %262

262:                                              ; preds = %276, %261
  %263 = load i64, i64* %18, align 8
  %264 = load i64, i64* @num_phases, align 8
  %265 = icmp ult i64 %263, %264
  br i1 %265, label %266, label %279

266:                                              ; preds = %262
  %267 = load i64, i64* %15, align 8
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ahc_phase_table, align 8
  %269 = load i64, i64* %18, align 8
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = icmp eq i64 %267, %272
  br i1 %273, label %274, label %275

274:                                              ; preds = %266
  br label %279

275:                                              ; preds = %266
  br label %276

276:                                              ; preds = %275
  %277 = load i64, i64* %18, align 8
  %278 = add i64 %277, 1
  store i64 %278, i64* %18, align 8
  br label %262

279:                                              ; preds = %274, %262
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ahc_phase_table, align 8
  %281 = load i64, i64* %18, align 8
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  store i64 %284, i64* %13, align 8
  %285 = load i32, i32* @FALSE, align 4
  store i32 %285, i32* %20, align 4
  %286 = load %struct.scb*, %struct.scb** %8, align 8
  %287 = icmp ne %struct.scb* %286, null
  br i1 %287, label %288, label %304

288:                                              ; preds = %279
  %289 = load %struct.scb*, %struct.scb** %8, align 8
  %290 = call i64 @SCB_IS_SILENT(%struct.scb* %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %288
  %293 = load i32, i32* @TRUE, align 4
  store i32 %293, i32* %20, align 4
  br label %298

294:                                              ; preds = %288
  %295 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %296 = load %struct.scb*, %struct.scb** %8, align 8
  %297 = call i32 @ahc_print_path(%struct.ahc_softc* %295, %struct.scb* %296)
  br label %298

298:                                              ; preds = %294, %292
  %299 = load i32, i32* @SCB_TRANSMISSION_ERROR, align 4
  %300 = load %struct.scb*, %struct.scb** %8, align 8
  %301 = getelementptr inbounds %struct.scb, %struct.scb* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = or i32 %302, %299
  store i32 %303, i32* %301, align 8
  br label %316

304:                                              ; preds = %279
  %305 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %306 = call i8* @ahc_name(%struct.ahc_softc* %305)
  %307 = load i8, i8* %10, align 1
  %308 = sext i8 %307 to i32
  %309 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %310 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %311 = load i32, i32* @SAVED_SCSIID, align 4
  %312 = call i32 @ahc_inb(%struct.ahc_softc* %310, i32 %311)
  %313 = sext i32 %312 to i64
  %314 = call i32 @SCSIID_TARGET(%struct.ahc_softc* %309, i64 %313)
  %315 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %306, i32 %308, i32 %314)
  br label %316

316:                                              ; preds = %304, %298
  %317 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %318 = load i32, i32* @SCSIRATE, align 4
  %319 = call i32 @ahc_inb(%struct.ahc_softc* %317, i32 %318)
  %320 = sext i32 %319 to i64
  store i64 %320, i64* %17, align 8
  %321 = load i32, i32* %20, align 4
  %322 = load i32, i32* @FALSE, align 4
  %323 = icmp eq i32 %321, %322
  br i1 %323, label %324, label %377

324:                                              ; preds = %316
  %325 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ahc_phase_table, align 8
  %326 = load i64, i64* %18, align 8
  %327 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %327, i32 0, i32 2
  %329 = load i8*, i8** %328, align 8
  %330 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %331 = load i32, i32* @SEQADDR0, align 4
  %332 = call i32 @ahc_inw(%struct.ahc_softc* %330, i32 %331)
  %333 = load i64, i64* %17, align 8
  %334 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i8* %329, i32 %332, i64 %333)
  %335 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %336 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @AHC_DT, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %376

341:                                              ; preds = %324
  %342 = load i64, i64* %19, align 8
  %343 = load i64, i64* @CRCVALERR, align 8
  %344 = and i64 %342, %343
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %348

346:                                              ; preds = %341
  %347 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %348

348:                                              ; preds = %346, %341
  %349 = load i64, i64* %19, align 8
  %350 = load i64, i64* @CRCENDERR, align 8
  %351 = and i64 %349, %350
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %355

353:                                              ; preds = %348
  %354 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  br label %355

355:                                              ; preds = %353, %348
  %356 = load i64, i64* %19, align 8
  %357 = load i64, i64* @CRCREQERR, align 8
  %358 = and i64 %356, %357
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %362

360:                                              ; preds = %355
  %361 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  br label %362

362:                                              ; preds = %360, %355
  %363 = load i64, i64* %19, align 8
  %364 = load i64, i64* @DUAL_EDGE_ERR, align 8
  %365 = and i64 %363, %364
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %375

367:                                              ; preds = %362
  %368 = load i64, i64* %17, align 8
  %369 = load i64, i64* @SINGLE_EDGE, align 8
  %370 = and i64 %368, %369
  %371 = icmp ne i64 %370, 0
  %372 = zext i1 %371 to i64
  %373 = select i1 %371, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)
  %374 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i8* %373)
  br label %375

375:                                              ; preds = %367, %362
  br label %376

376:                                              ; preds = %375, %324
  br label %377

377:                                              ; preds = %376, %316
  %378 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %379 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = load i32, i32* @AHC_DT, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %391

384:                                              ; preds = %377
  %385 = load i64, i64* %19, align 8
  %386 = load i64, i64* @DUAL_EDGE_ERR, align 8
  %387 = and i64 %385, %386
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %391

389:                                              ; preds = %384
  %390 = load i64, i64* @MSG_INITIATOR_DET_ERR, align 8
  store i64 %390, i64* %13, align 8
  br label %391

391:                                              ; preds = %389, %384, %377
  %392 = load i64, i64* %13, align 8
  %393 = load i64, i64* @MSG_NOOP, align 8
  %394 = icmp ne i64 %392, %393
  br i1 %394, label %395, label %412

395:                                              ; preds = %391
  %396 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %397 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %396, i32 0, i32 1
  %398 = load i64, i64* %397, align 8
  %399 = load i64, i64* @MSG_TYPE_NONE, align 8
  %400 = icmp ne i64 %398, %399
  br i1 %400, label %401, label %405

401:                                              ; preds = %395
  %402 = load i32, i32* @TRUE, align 4
  %403 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %404 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %403, i32 0, i32 2
  store i32 %402, i32* %404, align 8
  br label %411

405:                                              ; preds = %395
  %406 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %407 = load i32, i32* @MSG_OUT, align 4
  %408 = load i64, i64* %13, align 8
  %409 = trunc i64 %408 to i32
  %410 = call i32 @ahc_outb(%struct.ahc_softc* %406, i32 %407, i32 %409)
  br label %411

411:                                              ; preds = %405, %401
  br label %412

412:                                              ; preds = %411, %391
  %413 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %414 = call i32 @ahc_fetch_devinfo(%struct.ahc_softc* %413, %struct.ahc_devinfo* %12)
  %415 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %416 = call i32 @ahc_force_renegotiation(%struct.ahc_softc* %415, %struct.ahc_devinfo* %12)
  %417 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %418 = load i32, i32* @CLRINT, align 4
  %419 = load i32, i32* @CLRSCSIINT, align 4
  %420 = call i32 @ahc_outb(%struct.ahc_softc* %417, i32 %418, i32 %419)
  %421 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %422 = call i32 @ahc_unpause(%struct.ahc_softc* %421)
  br label %811

423:                                              ; preds = %218
  %424 = load i64, i64* %7, align 8
  %425 = load i64, i64* @SELTO, align 8
  %426 = and i64 %424, %425
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %501

428:                                              ; preds = %423
  %429 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %430 = load i32, i32* @SCSISEQ, align 4
  %431 = call i32 @ahc_outb(%struct.ahc_softc* %429, i32 %430, i32 0)
  %432 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %433 = call i32 @ahc_clear_msg_state(%struct.ahc_softc* %432)
  %434 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %435 = load i32, i32* @SIMODE1, align 4
  %436 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %437 = load i32, i32* @SIMODE1, align 4
  %438 = call i32 @ahc_inb(%struct.ahc_softc* %436, i32 %437)
  %439 = load i32, i32* @ENBUSFREE, align 4
  %440 = xor i32 %439, -1
  %441 = and i32 %438, %440
  %442 = call i32 @ahc_outb(%struct.ahc_softc* %434, i32 %435, i32 %441)
  %443 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %444 = load i32, i32* @CLRSINT1, align 4
  %445 = load i32, i32* @CLRSELTIMEO, align 4
  %446 = load i32, i32* @CLRBUSFREE, align 4
  %447 = or i32 %445, %446
  %448 = load i32, i32* @CLRSCSIPERR, align 4
  %449 = or i32 %447, %448
  %450 = call i32 @ahc_outb(%struct.ahc_softc* %443, i32 %444, i32 %449)
  %451 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %452 = load i32, i32* @CLRSINT0, align 4
  %453 = load i32, i32* @CLRSELINGO, align 4
  %454 = call i32 @ahc_outb(%struct.ahc_softc* %451, i32 %452, i32 %453)
  %455 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %456 = load i32, i32* @WAITING_SCBH, align 4
  %457 = call i32 @ahc_inb(%struct.ahc_softc* %455, i32 %456)
  %458 = sext i32 %457 to i64
  store i64 %458, i64* %21, align 8
  %459 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %460 = load i32, i32* @SCBPTR, align 4
  %461 = load i64, i64* %21, align 8
  %462 = trunc i64 %461 to i32
  %463 = call i32 @ahc_outb(%struct.ahc_softc* %459, i32 %460, i32 %462)
  %464 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %465 = load i32, i32* @SCB_TAG, align 4
  %466 = call i32 @ahc_inb(%struct.ahc_softc* %464, i32 %465)
  %467 = sext i32 %466 to i64
  store i64 %467, i64* %5, align 8
  %468 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %469 = load i64, i64* %5, align 8
  %470 = call %struct.scb* @ahc_lookup_scb(%struct.ahc_softc* %468, i64 %469)
  store %struct.scb* %470, %struct.scb** %8, align 8
  %471 = load %struct.scb*, %struct.scb** %8, align 8
  %472 = icmp eq %struct.scb* %471, null
  br i1 %472, label %473, label %481

473:                                              ; preds = %428
  %474 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %475 = call i8* @ahc_name(%struct.ahc_softc* %474)
  %476 = load i64, i64* %21, align 8
  %477 = load i64, i64* %5, align 8
  %478 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.13, i64 0, i64 0), i8* %475, i64 %476, i64 %477)
  %479 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %480 = call i32 @ahc_dump_card_state(%struct.ahc_softc* %479)
  br label %494

481:                                              ; preds = %428
  %482 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %483 = load %struct.scb*, %struct.scb** %8, align 8
  %484 = call i32 @ahc_scb_devinfo(%struct.ahc_softc* %482, %struct.ahc_devinfo* %22, %struct.scb* %483)
  %485 = load %struct.scb*, %struct.scb** %8, align 8
  %486 = load i32, i32* @CAM_SEL_TIMEOUT, align 4
  %487 = call i32 @aic_set_transaction_status(%struct.scb* %485, i32 %486)
  %488 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %489 = load %struct.scb*, %struct.scb** %8, align 8
  %490 = call i32 @ahc_freeze_devq(%struct.ahc_softc* %488, %struct.scb* %489)
  %491 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %492 = load i32, i32* @CAM_SEL_TIMEOUT, align 4
  %493 = call i32 @ahc_handle_devreset(%struct.ahc_softc* %491, %struct.ahc_devinfo* %22, i32 %492, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 1)
  br label %494

494:                                              ; preds = %481, %473
  %495 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %496 = load i32, i32* @CLRINT, align 4
  %497 = load i32, i32* @CLRSCSIINT, align 4
  %498 = call i32 @ahc_outb(%struct.ahc_softc* %495, i32 %496, i32 %497)
  %499 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %500 = call i32 @ahc_restart(%struct.ahc_softc* %499)
  br label %810

501:                                              ; preds = %423
  %502 = load i64, i64* %7, align 8
  %503 = load i64, i64* @BUSFREE, align 8
  %504 = and i64 %502, %503
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %506, label %800

506:                                              ; preds = %501
  %507 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %508 = load i32, i32* @SIMODE1, align 4
  %509 = call i32 @ahc_inb(%struct.ahc_softc* %507, i32 %508)
  %510 = load i32, i32* @ENBUSFREE, align 4
  %511 = and i32 %509, %510
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %800

513:                                              ; preds = %506
  %514 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %515 = load i32, i32* @SCSISEQ, align 4
  %516 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %517 = load i32, i32* @SCSISEQ, align 4
  %518 = call i32 @ahc_inb(%struct.ahc_softc* %516, i32 %517)
  %519 = load i32, i32* @ENSELI, align 4
  %520 = load i32, i32* @ENRSELI, align 4
  %521 = or i32 %519, %520
  %522 = load i32, i32* @ENAUTOATNP, align 4
  %523 = or i32 %521, %522
  %524 = and i32 %518, %523
  %525 = call i32 @ahc_outb(%struct.ahc_softc* %514, i32 %515, i32 %524)
  %526 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %527 = load i32, i32* @SIMODE1, align 4
  %528 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %529 = load i32, i32* @SIMODE1, align 4
  %530 = call i32 @ahc_inb(%struct.ahc_softc* %528, i32 %529)
  %531 = load i32, i32* @ENBUSFREE, align 4
  %532 = xor i32 %531, -1
  %533 = and i32 %530, %532
  %534 = call i32 @ahc_outb(%struct.ahc_softc* %526, i32 %527, i32 %533)
  %535 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %536 = load i32, i32* @CLRSINT1, align 4
  %537 = load i32, i32* @CLRBUSFREE, align 4
  %538 = load i32, i32* @CLRSCSIPERR, align 4
  %539 = or i32 %537, %538
  %540 = call i32 @ahc_outb(%struct.ahc_softc* %535, i32 %536, i32 %539)
  %541 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %542 = load i32, i32* @LASTPHASE, align 4
  %543 = call i32 @ahc_inb(%struct.ahc_softc* %541, i32 %542)
  %544 = sext i32 %543 to i64
  store i64 %544, i64* %24, align 8
  %545 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %546 = load i32, i32* @SAVED_SCSIID, align 4
  %547 = call i32 @ahc_inb(%struct.ahc_softc* %545, i32 %546)
  %548 = sext i32 %547 to i64
  store i64 %548, i64* %25, align 8
  %549 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %550 = load i32, i32* @SAVED_LUN, align 4
  %551 = call i32 @ahc_inb(%struct.ahc_softc* %549, i32 %550)
  %552 = sext i32 %551 to i64
  store i64 %552, i64* %26, align 8
  %553 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %554 = load i64, i64* %25, align 8
  %555 = call i32 @SCSIID_TARGET(%struct.ahc_softc* %553, i64 %554)
  %556 = sext i32 %555 to i64
  store i64 %556, i64* %27, align 8
  %557 = load i64, i64* %25, align 8
  %558 = call i64 @SCSIID_OUR_ID(i64 %557)
  store i64 %558, i64* %28, align 8
  %559 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %560 = load i64, i64* %25, align 8
  %561 = call signext i8 @SCSIID_CHANNEL(%struct.ahc_softc* %559, i64 %560)
  store i8 %561, i8* %29, align 1
  %562 = load i64, i64* %28, align 8
  %563 = load i64, i64* %27, align 8
  %564 = load i64, i64* %26, align 8
  %565 = load i8, i8* %29, align 1
  %566 = load i32, i32* @ROLE_INITIATOR, align 4
  %567 = call i32 @ahc_compile_devinfo(%struct.ahc_devinfo* %23, i64 %562, i64 %563, i64 %564, i8 signext %565, i32 %566)
  store i32 1, i32* %30, align 4
  %568 = load i64, i64* %24, align 8
  %569 = load i64, i64* @P_MESGOUT, align 8
  %570 = icmp eq i64 %568, %569
  br i1 %570, label %571, label %713

571:                                              ; preds = %513
  %572 = load i64, i64* @SCB_LIST_NULL, align 8
  store i64 %572, i64* %31, align 8
  %573 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %574 = load i32, i32* @AHCMSG_1B, align 4
  %575 = load i64, i64* @MSG_ABORT_TAG, align 8
  %576 = load i32, i32* @TRUE, align 4
  %577 = call i64 @ahc_sent_msg(%struct.ahc_softc* %573, i32 %574, i64 %575, i32 %576)
  %578 = icmp ne i64 %577, 0
  br i1 %578, label %586, label %579

579:                                              ; preds = %571
  %580 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %581 = load i32, i32* @AHCMSG_1B, align 4
  %582 = load i64, i64* @MSG_ABORT, align 8
  %583 = load i32, i32* @TRUE, align 4
  %584 = call i64 @ahc_sent_msg(%struct.ahc_softc* %580, i32 %581, i64 %582, i32 %583)
  %585 = icmp ne i64 %584, 0
  br i1 %585, label %586, label %628

586:                                              ; preds = %579, %571
  %587 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %588 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %587, i32 0, i32 3
  %589 = load i64*, i64** %588, align 8
  %590 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %591 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %590, i32 0, i32 4
  %592 = load i32, i32* %591, align 8
  %593 = sub nsw i32 %592, 1
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds i64, i64* %589, i64 %594
  %596 = load i64, i64* %595, align 8
  %597 = load i64, i64* @MSG_ABORT_TAG, align 8
  %598 = icmp eq i64 %596, %597
  br i1 %598, label %599, label %605

599:                                              ; preds = %586
  %600 = load %struct.scb*, %struct.scb** %8, align 8
  %601 = getelementptr inbounds %struct.scb, %struct.scb* %600, i32 0, i32 0
  %602 = load %struct.TYPE_11__*, %struct.TYPE_11__** %601, align 8
  %603 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %602, i32 0, i32 0
  %604 = load i64, i64* %603, align 8
  store i64 %604, i64* %31, align 8
  br label %605

605:                                              ; preds = %599, %586
  %606 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %607 = load %struct.scb*, %struct.scb** %8, align 8
  %608 = call i32 @ahc_print_path(%struct.ahc_softc* %606, %struct.scb* %607)
  %609 = load %struct.scb*, %struct.scb** %8, align 8
  %610 = getelementptr inbounds %struct.scb, %struct.scb* %609, i32 0, i32 0
  %611 = load %struct.TYPE_11__*, %struct.TYPE_11__** %610, align 8
  %612 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %611, i32 0, i32 0
  %613 = load i64, i64* %612, align 8
  %614 = load i64, i64* %31, align 8
  %615 = load i64, i64* @SCB_LIST_NULL, align 8
  %616 = icmp eq i64 %614, %615
  %617 = zext i1 %616 to i64
  %618 = select i1 %616, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)
  %619 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i64 %613, i8* %618)
  %620 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %621 = load i64, i64* %27, align 8
  %622 = load i8, i8* %29, align 1
  %623 = load i64, i64* %26, align 8
  %624 = load i64, i64* %31, align 8
  %625 = load i32, i32* @ROLE_INITIATOR, align 4
  %626 = load i32, i32* @CAM_REQ_ABORTED, align 4
  %627 = call i32 @ahc_abort_scbs(%struct.ahc_softc* %620, i64 %621, i8 signext %622, i64 %623, i64 %624, i32 %625, i32 %626)
  store i32 0, i32* %30, align 4
  br label %712

628:                                              ; preds = %579
  %629 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %630 = load i32, i32* @AHCMSG_1B, align 4
  %631 = load i64, i64* @MSG_BUS_DEV_RESET, align 8
  %632 = load i32, i32* @TRUE, align 4
  %633 = call i64 @ahc_sent_msg(%struct.ahc_softc* %629, i32 %630, i64 %631, i32 %632)
  %634 = icmp ne i64 %633, 0
  br i1 %634, label %635, label %645

635:                                              ; preds = %628
  %636 = load i64, i64* %28, align 8
  %637 = load i64, i64* %27, align 8
  %638 = load i64, i64* @CAM_LUN_WILDCARD, align 8
  %639 = load i8, i8* %29, align 1
  %640 = load i32, i32* @ROLE_INITIATOR, align 4
  %641 = call i32 @ahc_compile_devinfo(%struct.ahc_devinfo* %23, i64 %636, i64 %637, i64 %638, i8 signext %639, i32 %640)
  %642 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %643 = load i32, i32* @CAM_BDR_SENT, align 4
  %644 = call i32 @ahc_handle_devreset(%struct.ahc_softc* %642, %struct.ahc_devinfo* %23, i32 %643, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 0)
  store i32 0, i32* %30, align 4
  br label %711

645:                                              ; preds = %628
  %646 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %647 = load i32, i32* @AHCMSG_EXT, align 4
  %648 = load i64, i64* @MSG_EXT_PPR, align 8
  %649 = load i32, i32* @FALSE, align 4
  %650 = call i64 @ahc_sent_msg(%struct.ahc_softc* %646, i32 %647, i64 %648, i32 %649)
  %651 = icmp ne i64 %650, 0
  br i1 %651, label %652, label %673

652:                                              ; preds = %645
  %653 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %654 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %23, i32 0, i32 2
  %655 = load i32, i32* %654, align 4
  %656 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %23, i32 0, i32 1
  %657 = load i32, i32* %656, align 4
  %658 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %23, i32 0, i32 0
  %659 = load i32, i32* %658, align 4
  %660 = call %struct.ahc_initiator_tinfo* @ahc_fetch_transinfo(%struct.ahc_softc* %653, i32 %655, i32 %657, i32 %659, %struct.ahc_tmode_tstate** %33)
  store %struct.ahc_initiator_tinfo* %660, %struct.ahc_initiator_tinfo** %32, align 8
  %661 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %32, align 8
  %662 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %661, i32 0, i32 1
  %663 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %662, i32 0, i32 0
  store i32 2, i32* %663, align 8
  %664 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %32, align 8
  %665 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %664, i32 0, i32 0
  %666 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %665, i32 0, i32 0
  store i32 2, i32* %666, align 8
  %667 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %32, align 8
  %668 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %667, i32 0, i32 0
  %669 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %668, i32 0, i32 1
  store i64 0, i64* %669, align 8
  %670 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %671 = load %struct.scb*, %struct.scb** %8, align 8
  %672 = call i32 @ahc_qinfifo_requeue_tail(%struct.ahc_softc* %670, %struct.scb* %671)
  store i32 0, i32* %30, align 4
  br label %710

673:                                              ; preds = %645
  %674 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %675 = load i32, i32* @AHCMSG_EXT, align 4
  %676 = load i64, i64* @MSG_EXT_WDTR, align 8
  %677 = load i32, i32* @FALSE, align 4
  %678 = call i64 @ahc_sent_msg(%struct.ahc_softc* %674, i32 %675, i64 %676, i32 %677)
  %679 = icmp ne i64 %678, 0
  br i1 %679, label %680, label %691

680:                                              ; preds = %673
  %681 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %682 = load i32, i32* @MSG_EXT_WDTR_BUS_8_BIT, align 4
  %683 = load i32, i32* @AHC_TRANS_CUR, align 4
  %684 = load i32, i32* @AHC_TRANS_GOAL, align 4
  %685 = or i32 %683, %684
  %686 = load i32, i32* @TRUE, align 4
  %687 = call i32 @ahc_set_width(%struct.ahc_softc* %681, %struct.ahc_devinfo* %23, i32 %682, i32 %685, i32 %686)
  %688 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %689 = load %struct.scb*, %struct.scb** %8, align 8
  %690 = call i32 @ahc_qinfifo_requeue_tail(%struct.ahc_softc* %688, %struct.scb* %689)
  store i32 0, i32* %30, align 4
  br label %709

691:                                              ; preds = %673
  %692 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %693 = load i32, i32* @AHCMSG_EXT, align 4
  %694 = load i64, i64* @MSG_EXT_SDTR, align 8
  %695 = load i32, i32* @FALSE, align 4
  %696 = call i64 @ahc_sent_msg(%struct.ahc_softc* %692, i32 %693, i64 %694, i32 %695)
  %697 = icmp ne i64 %696, 0
  br i1 %697, label %698, label %708

698:                                              ; preds = %691
  %699 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %700 = load i32, i32* @AHC_TRANS_CUR, align 4
  %701 = load i32, i32* @AHC_TRANS_GOAL, align 4
  %702 = or i32 %700, %701
  %703 = load i32, i32* @TRUE, align 4
  %704 = call i32 @ahc_set_syncrate(%struct.ahc_softc* %699, %struct.ahc_devinfo* %23, i32* null, i32 0, i32 0, i32 0, i32 %702, i32 %703)
  %705 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %706 = load %struct.scb*, %struct.scb** %8, align 8
  %707 = call i32 @ahc_qinfifo_requeue_tail(%struct.ahc_softc* %705, %struct.scb* %706)
  store i32 0, i32* %30, align 4
  br label %708

708:                                              ; preds = %698, %691
  br label %709

709:                                              ; preds = %708, %680
  br label %710

710:                                              ; preds = %709, %652
  br label %711

711:                                              ; preds = %710, %635
  br label %712

712:                                              ; preds = %711, %605
  br label %713

713:                                              ; preds = %712, %513
  %714 = load i32, i32* %30, align 4
  %715 = icmp ne i32 %714, 0
  br i1 %715, label %716, label %793

716:                                              ; preds = %713
  %717 = load %struct.scb*, %struct.scb** %8, align 8
  %718 = icmp ne %struct.scb* %717, null
  br i1 %718, label %719, label %749

719:                                              ; preds = %716
  %720 = load %struct.scb*, %struct.scb** %8, align 8
  %721 = getelementptr inbounds %struct.scb, %struct.scb* %720, i32 0, i32 0
  %722 = load %struct.TYPE_11__*, %struct.TYPE_11__** %721, align 8
  %723 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %722, i32 0, i32 1
  %724 = load i32, i32* %723, align 8
  %725 = load i32, i32* @TAG_ENB, align 4
  %726 = and i32 %724, %725
  %727 = icmp ne i32 %726, 0
  br i1 %727, label %728, label %734

728:                                              ; preds = %719
  %729 = load %struct.scb*, %struct.scb** %8, align 8
  %730 = getelementptr inbounds %struct.scb, %struct.scb* %729, i32 0, i32 0
  %731 = load %struct.TYPE_11__*, %struct.TYPE_11__** %730, align 8
  %732 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %731, i32 0, i32 0
  %733 = load i64, i64* %732, align 8
  store i64 %733, i64* %35, align 8
  br label %736

734:                                              ; preds = %719
  %735 = load i64, i64* @SCB_LIST_NULL, align 8
  store i64 %735, i64* %35, align 8
  br label %736

736:                                              ; preds = %734, %728
  %737 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %738 = load %struct.scb*, %struct.scb** %8, align 8
  %739 = call i32 @ahc_print_path(%struct.ahc_softc* %737, %struct.scb* %738)
  %740 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %741 = load i64, i64* %27, align 8
  %742 = load i8, i8* %29, align 1
  %743 = load %struct.scb*, %struct.scb** %8, align 8
  %744 = call i64 @SCB_GET_LUN(%struct.scb* %743)
  %745 = load i64, i64* %35, align 8
  %746 = load i32, i32* @ROLE_INITIATOR, align 4
  %747 = load i32, i32* @CAM_UNEXP_BUSFREE, align 4
  %748 = call i32 @ahc_abort_scbs(%struct.ahc_softc* %740, i64 %741, i8 signext %742, i64 %744, i64 %745, i32 %746, i32 %747)
  br label %753

749:                                              ; preds = %716
  %750 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %751 = call i8* @ahc_name(%struct.ahc_softc* %750)
  %752 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* %751)
  br label %753

753:                                              ; preds = %749, %736
  store i64 0, i64* %34, align 8
  br label %754

754:                                              ; preds = %768, %753
  %755 = load i64, i64* %34, align 8
  %756 = load i64, i64* @num_phases, align 8
  %757 = icmp ult i64 %755, %756
  br i1 %757, label %758, label %771

758:                                              ; preds = %754
  %759 = load i64, i64* %24, align 8
  %760 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ahc_phase_table, align 8
  %761 = load i64, i64* %34, align 8
  %762 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %760, i64 %761
  %763 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %762, i32 0, i32 0
  %764 = load i64, i64* %763, align 8
  %765 = icmp eq i64 %759, %764
  br i1 %765, label %766, label %767

766:                                              ; preds = %758
  br label %771

767:                                              ; preds = %758
  br label %768

768:                                              ; preds = %767
  %769 = load i64, i64* %34, align 8
  %770 = add i64 %769, 1
  store i64 %770, i64* %34, align 8
  br label %754

771:                                              ; preds = %766, %754
  %772 = load i64, i64* %24, align 8
  %773 = load i64, i64* @P_BUSFREE, align 8
  %774 = icmp ne i64 %772, %773
  br i1 %774, label %775, label %778

775:                                              ; preds = %771
  %776 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %777 = call i32 @ahc_force_renegotiation(%struct.ahc_softc* %776, %struct.ahc_devinfo* %23)
  br label %778

778:                                              ; preds = %775, %771
  %779 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ahc_phase_table, align 8
  %780 = load i64, i64* %34, align 8
  %781 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %779, i64 %780
  %782 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %781, i32 0, i32 2
  %783 = load i8*, i8** %782, align 8
  %784 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %785 = load i32, i32* @SEQADDR0, align 4
  %786 = call i32 @ahc_inb(%struct.ahc_softc* %784, i32 %785)
  %787 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %788 = load i32, i32* @SEQADDR1, align 4
  %789 = call i32 @ahc_inb(%struct.ahc_softc* %787, i32 %788)
  %790 = shl i32 %789, 8
  %791 = or i32 %786, %790
  %792 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i64 0, i64 0), i8* %783, i32 %791)
  br label %793

793:                                              ; preds = %778, %713
  %794 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %795 = load i32, i32* @CLRINT, align 4
  %796 = load i32, i32* @CLRSCSIINT, align 4
  %797 = call i32 @ahc_outb(%struct.ahc_softc* %794, i32 %795, i32 %796)
  %798 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %799 = call i32 @ahc_restart(%struct.ahc_softc* %798)
  br label %809

800:                                              ; preds = %506, %501
  %801 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %802 = call i8* @ahc_name(%struct.ahc_softc* %801)
  %803 = load i64, i64* %7, align 8
  %804 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.20, i64 0, i64 0), i8* %802, i64 %803)
  %805 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %806 = load i32, i32* @CLRINT, align 4
  %807 = load i32, i32* @CLRSCSIINT, align 4
  %808 = call i32 @ahc_outb(%struct.ahc_softc* %805, i32 %806, i32 %807)
  br label %809

809:                                              ; preds = %800, %793
  br label %810

810:                                              ; preds = %809, %494
  br label %811

811:                                              ; preds = %810, %412
  br label %812

812:                                              ; preds = %811, %213
  br label %813

813:                                              ; preds = %122, %812, %165
  ret void
}

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ahc_name(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_unpause(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_clear_critical_section(%struct.ahc_softc*) #1

declare dso_local %struct.scb* @ahc_lookup_scb(%struct.ahc_softc*, i64) #1

declare dso_local i32 @ahc_reset_channel(%struct.ahc_softc*, i8 signext, i32) #1

declare dso_local i64 @SCB_IS_SILENT(%struct.scb*) #1

declare dso_local i32 @ahc_print_path(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i32 @SCSIID_TARGET(%struct.ahc_softc*, i64) #1

declare dso_local i32 @ahc_inw(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_fetch_devinfo(%struct.ahc_softc*, %struct.ahc_devinfo*) #1

declare dso_local i32 @ahc_force_renegotiation(%struct.ahc_softc*, %struct.ahc_devinfo*) #1

declare dso_local i32 @ahc_clear_msg_state(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_dump_card_state(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_scb_devinfo(%struct.ahc_softc*, %struct.ahc_devinfo*, %struct.scb*) #1

declare dso_local i32 @aic_set_transaction_status(%struct.scb*, i32) #1

declare dso_local i32 @ahc_freeze_devq(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i32 @ahc_handle_devreset(%struct.ahc_softc*, %struct.ahc_devinfo*, i32, i8*, i32) #1

declare dso_local i32 @ahc_restart(%struct.ahc_softc*) #1

declare dso_local i64 @SCSIID_OUR_ID(i64) #1

declare dso_local signext i8 @SCSIID_CHANNEL(%struct.ahc_softc*, i64) #1

declare dso_local i32 @ahc_compile_devinfo(%struct.ahc_devinfo*, i64, i64, i64, i8 signext, i32) #1

declare dso_local i64 @ahc_sent_msg(%struct.ahc_softc*, i32, i64, i32) #1

declare dso_local i32 @ahc_abort_scbs(%struct.ahc_softc*, i64, i8 signext, i64, i64, i32, i32) #1

declare dso_local %struct.ahc_initiator_tinfo* @ahc_fetch_transinfo(%struct.ahc_softc*, i32, i32, i32, %struct.ahc_tmode_tstate**) #1

declare dso_local i32 @ahc_qinfifo_requeue_tail(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i32 @ahc_set_width(%struct.ahc_softc*, %struct.ahc_devinfo*, i32, i32, i32) #1

declare dso_local i32 @ahc_set_syncrate(%struct.ahc_softc*, %struct.ahc_devinfo*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @SCB_GET_LUN(%struct.scb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
