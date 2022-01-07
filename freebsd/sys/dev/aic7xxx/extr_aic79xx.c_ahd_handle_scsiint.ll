; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_handle_scsiint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_handle_scsiint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }
%struct.scb = type { i32 }
%struct.ahd_devinfo = type { i32 }

@AHD_MODE_SCSI = common dso_local global i32 0, align 4
@SSTAT3 = common dso_local global i32 0, align 4
@NTRAMPERR = common dso_local global i32 0, align 4
@OSRAMPERR = common dso_local global i32 0, align 4
@SSTAT0 = common dso_local global i32 0, align 4
@IOERR = common dso_local global i32 0, align 4
@OVERRUN = common dso_local global i32 0, align 4
@SELDI = common dso_local global i32 0, align 4
@SELDO = common dso_local global i32 0, align 4
@SSTAT1 = common dso_local global i32 0, align 4
@SELTO = common dso_local global i32 0, align 4
@SCSIRSTI = common dso_local global i32 0, align 4
@BUSFREE = common dso_local global i32 0, align 4
@SCSIPERR = common dso_local global i32 0, align 4
@LQISTAT1 = common dso_local global i32 0, align 4
@LQOSTAT0 = common dso_local global i32 0, align 4
@SSTAT2 = common dso_local global i32 0, align 4
@BUSFREETIME = common dso_local global i32 0, align 4
@AHD_MODE_CFG = common dso_local global i32 0, align 4
@SIMODE0 = common dso_local global i32 0, align 4
@SEQ_FLAGS = common dso_local global i32 0, align 4
@NOT_IDENTIFIED = common dso_local global i32 0, align 4
@SBLKCTL = common dso_local global i32 0, align 4
@ENAB40 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"%s: Transceiver State Has Changed to %s mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"LVD\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"SE\00", align 1
@CLRSINT0 = common dso_local global i32 0, align 4
@CLRIOERR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"%s: SCSI offset overrun detected.  Resetting bus.\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"%s: Someone reset channel A\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"%s: lqostat0 == 0x%x!\0A\00", align 1
@CLRLQOINT0 = common dso_local global i32 0, align 4
@AHD_CLRLQO_AUTOCLR_BUG = common dso_local global i32 0, align 4
@CLRLQOINT1 = common dso_local global i32 0, align 4
@SCSISEQ0 = common dso_local global i32 0, align 4
@CLRSINT1 = common dso_local global i32 0, align 4
@CLRSELTIMEO = common dso_local global i32 0, align 4
@CLRBUSFREE = common dso_local global i32 0, align 4
@CLRSCSIPERR = common dso_local global i32 0, align 4
@CLRSELINGO = common dso_local global i32 0, align 4
@WAITING_TID_HEAD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [64 x i8] c"%s: ahd_intr - referenced scb not valid during SELTO scb(0x%x)\0A\00", align 1
@CAM_SEL_TIMEOUT = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"Selection Timeout\00", align 1
@CLRINT = common dso_local global i32 0, align 4
@CLRSCSIINT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [43 x i8] c"%s: SCSI Cell parity error SSTAT3 == 0x%x\0A\00", align 1
@CLRSINT3 = common dso_local global i32 0, align 4
@LQIPHASE_LQ = common dso_local global i32 0, align 4
@LQIPHASE_NLQ = common dso_local global i32 0, align 4
@LQICRCI_NLQ = common dso_local global i32 0, align 4
@CLRLQIINT1 = common dso_local global i32 0, align 4
@CLRLQICRCI_NLQ = common dso_local global i32 0, align 4
@LQOBUSFREE = common dso_local global i32 0, align 4
@LQOSTAT1 = common dso_local global i32 0, align 4
@AHD_MODE_DFF0 = common dso_local global i32 0, align 4
@AHD_MODE_DFF1 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [55 x i8] c"%s: Invalid SCB %d in DFF%d during unexpected busfree\0A\00", align 1
@SCB_PACKETIZED = common dso_local global i32 0, align 4
@LASTPHASE = common dso_local global i32 0, align 4
@P_BUSFREE = common dso_local global i32 0, align 4
@ENSELO = common dso_local global i32 0, align 4
@AHD_BUSFREEREV_BUG = common dso_local global i32 0, align 4
@SIMODE1 = common dso_local global i32 0, align 4
@ENBUSFREE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [53 x i8] c"%s: Missing case in ahd_handle_scsiint. status = %x\0A\00", align 1
@AHD_SHOW_MISC = common dso_local global i32 0, align 4
@AHD_SHOW_SELTO = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahd_handle_scsiint(%struct.ahd_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ahd_devinfo, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.scb*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %24 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %25 = call i32 @ahd_update_modes(%struct.ahd_softc* %24)
  %26 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %27 = load i32, i32* @AHD_MODE_SCSI, align 4
  %28 = load i32, i32* @AHD_MODE_SCSI, align 4
  %29 = call i32 @ahd_set_modes(%struct.ahd_softc* %26, i32 %27, i32 %28)
  %30 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %31 = load i32, i32* @SSTAT3, align 4
  %32 = call i32 @ahd_inb(%struct.ahd_softc* %30, i32 %31)
  %33 = load i32, i32* @NTRAMPERR, align 4
  %34 = load i32, i32* @OSRAMPERR, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  store i32 %36, i32* %7, align 4
  %37 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %38 = load i32, i32* @SSTAT0, align 4
  %39 = call i32 @ahd_inb(%struct.ahd_softc* %37, i32 %38)
  %40 = load i32, i32* @IOERR, align 4
  %41 = load i32, i32* @OVERRUN, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @SELDI, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @SELDO, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %39, %46
  store i32 %47, i32* %6, align 4
  %48 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %49 = load i32, i32* @SSTAT1, align 4
  %50 = call i32 @ahd_inb(%struct.ahd_softc* %48, i32 %49)
  %51 = load i32, i32* @SELTO, align 4
  %52 = load i32, i32* @SCSIRSTI, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @BUSFREE, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @SCSIPERR, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %50, %57
  store i32 %58, i32* %8, align 4
  %59 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %60 = load i32, i32* @LQISTAT1, align 4
  %61 = call i32 @ahd_inb(%struct.ahd_softc* %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %63 = load i32, i32* @LQOSTAT0, align 4
  %64 = call i32 @ahd_inb(%struct.ahd_softc* %62, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %66 = load i32, i32* @SSTAT2, align 4
  %67 = call i32 @ahd_inb(%struct.ahd_softc* %65, i32 %66)
  %68 = load i32, i32* @BUSFREETIME, align 4
  %69 = and i32 %67, %68
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @SELDI, align 4
  %72 = load i32, i32* @SELDO, align 4
  %73 = or i32 %71, %72
  %74 = and i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %2
  %77 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %78 = load i32, i32* @AHD_MODE_CFG, align 4
  %79 = load i32, i32* @AHD_MODE_CFG, align 4
  %80 = call i32 @ahd_set_modes(%struct.ahd_softc* %77, i32 %78, i32 %79)
  %81 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %82 = load i32, i32* @SIMODE0, align 4
  %83 = call i32 @ahd_inb(%struct.ahd_softc* %81, i32 %82)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* @IOERR, align 4
  %86 = load i32, i32* @OVERRUN, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @SELDI, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @SELDO, align 4
  %91 = or i32 %89, %90
  %92 = and i32 %84, %91
  %93 = load i32, i32* %6, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %6, align 4
  %95 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %96 = load i32, i32* @AHD_MODE_SCSI, align 4
  %97 = load i32, i32* @AHD_MODE_SCSI, align 4
  %98 = call i32 @ahd_set_modes(%struct.ahd_softc* %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %76, %2
  %100 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %101 = call i32 @ahd_get_scbptr(%struct.ahd_softc* %100)
  store i32 %101, i32* %11, align 4
  %102 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %103 = load i32, i32* %11, align 4
  %104 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %102, i32 %103)
  store %struct.scb* %104, %struct.scb** %5, align 8
  %105 = load %struct.scb*, %struct.scb** %5, align 8
  %106 = icmp ne %struct.scb* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %99
  %108 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %109 = load i32, i32* @SEQ_FLAGS, align 4
  %110 = call i32 @ahd_inb(%struct.ahd_softc* %108, i32 %109)
  %111 = load i32, i32* @NOT_IDENTIFIED, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  store %struct.scb* null, %struct.scb** %5, align 8
  br label %115

115:                                              ; preds = %114, %107, %99
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @IOERR, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %146

120:                                              ; preds = %115
  %121 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %122 = load i32, i32* @SBLKCTL, align 4
  %123 = call i32 @ahd_inb(%struct.ahd_softc* %121, i32 %122)
  %124 = load i32, i32* @ENAB40, align 4
  %125 = and i32 %123, %124
  store i32 %125, i32* %14, align 4
  %126 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %127 = call i8* @ahd_name(%struct.ahd_softc* %126)
  %128 = load i32, i32* %14, align 4
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %127, i8* %131)
  %133 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %134 = load i32, i32* @CLRSINT0, align 4
  %135 = load i32, i32* @CLRIOERR, align 4
  %136 = call i32 @ahd_outb(%struct.ahd_softc* %133, i32 %134, i32 %135)
  %137 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %138 = load i32, i32* @TRUE, align 4
  %139 = call i32 @ahd_reset_channel(%struct.ahd_softc* %137, i8 signext 65, i32 %138)
  %140 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %141 = call i32 @ahd_pause(%struct.ahd_softc* %140)
  %142 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %143 = call i32 @ahd_setup_iocell_workaround(%struct.ahd_softc* %142)
  %144 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %145 = call i32 @ahd_unpause(%struct.ahd_softc* %144)
  br label %506

146:                                              ; preds = %115
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @OVERRUN, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %146
  %152 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %153 = call i8* @ahd_name(%struct.ahd_softc* %152)
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8* %153)
  %155 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %156 = call i32 @AHD_CORRECTABLE_ERROR(%struct.ahd_softc* %155)
  %157 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %158 = load i32, i32* @TRUE, align 4
  %159 = call i32 @ahd_reset_channel(%struct.ahd_softc* %157, i8 signext 65, i32 %158)
  br label %505

160:                                              ; preds = %146
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* @SCSIRSTI, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %160
  %166 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %167 = call i8* @ahd_name(%struct.ahd_softc* %166)
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %167)
  %169 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %170 = load i32, i32* @FALSE, align 4
  %171 = call i32 @ahd_reset_channel(%struct.ahd_softc* %169, i8 signext 65, i32 %170)
  %172 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %173 = call i32 @AHD_UNCORRECTABLE_ERROR(%struct.ahd_softc* %172)
  br label %504

174:                                              ; preds = %160
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* @SCSIPERR, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %174
  %180 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %181 = call i32 @ahd_clear_critical_section(%struct.ahd_softc* %180)
  %182 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %183 = call i32 @ahd_handle_transmission_error(%struct.ahd_softc* %182)
  br label %503

184:                                              ; preds = %174
  %185 = load i32, i32* %10, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %207

187:                                              ; preds = %184
  %188 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %189 = call i8* @ahd_name(%struct.ahd_softc* %188)
  %190 = load i32, i32* %10, align 4
  %191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %189, i32 %190)
  %192 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %193 = load i32, i32* @CLRLQOINT0, align 4
  %194 = load i32, i32* %10, align 4
  %195 = call i32 @ahd_outb(%struct.ahd_softc* %192, i32 %193, i32 %194)
  %196 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %197 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @AHD_CLRLQO_AUTOCLR_BUG, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %187
  %203 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %204 = load i32, i32* @CLRLQOINT1, align 4
  %205 = call i32 @ahd_outb(%struct.ahd_softc* %203, i32 %204, i32 0)
  br label %206

206:                                              ; preds = %202, %187
  br label %502

207:                                              ; preds = %184
  %208 = load i32, i32* %8, align 4
  %209 = load i32, i32* @SELTO, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %272

212:                                              ; preds = %207
  %213 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %214 = load i32, i32* @SCSISEQ0, align 4
  %215 = call i32 @ahd_outb(%struct.ahd_softc* %213, i32 %214, i32 0)
  %216 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %217 = call i32 @ahd_clear_critical_section(%struct.ahd_softc* %216)
  %218 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %219 = call i32 @ahd_clear_msg_state(%struct.ahd_softc* %218)
  %220 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %221 = load i32, i32* @CLRSINT1, align 4
  %222 = load i32, i32* @CLRSELTIMEO, align 4
  %223 = load i32, i32* @CLRBUSFREE, align 4
  %224 = or i32 %222, %223
  %225 = load i32, i32* @CLRSCSIPERR, align 4
  %226 = or i32 %224, %225
  %227 = call i32 @ahd_outb(%struct.ahd_softc* %220, i32 %221, i32 %226)
  %228 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %229 = load i32, i32* @CLRSINT0, align 4
  %230 = load i32, i32* @CLRSELINGO, align 4
  %231 = call i32 @ahd_outb(%struct.ahd_softc* %228, i32 %229, i32 %230)
  %232 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %233 = load i32, i32* @WAITING_TID_HEAD, align 4
  %234 = call i32 @ahd_inw(%struct.ahd_softc* %232, i32 %233)
  store i32 %234, i32* %15, align 4
  %235 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %236 = load i32, i32* %15, align 4
  %237 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %235, i32 %236)
  store %struct.scb* %237, %struct.scb** %5, align 8
  %238 = load %struct.scb*, %struct.scb** %5, align 8
  %239 = icmp eq %struct.scb* %238, null
  br i1 %239, label %240, label %249

240:                                              ; preds = %212
  %241 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %242 = call i8* @ahd_name(%struct.ahd_softc* %241)
  %243 = load i32, i32* %15, align 4
  %244 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0), i8* %242, i32 %243)
  %245 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %246 = call i32 @ahd_dump_card_state(%struct.ahd_softc* %245)
  %247 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %248 = call i32 @AHD_UNCORRECTABLE_ERROR(%struct.ahd_softc* %247)
  br label %263

249:                                              ; preds = %212
  %250 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %251 = load %struct.scb*, %struct.scb** %5, align 8
  %252 = call i32 @ahd_scb_devinfo(%struct.ahd_softc* %250, %struct.ahd_devinfo* %16, %struct.scb* %251)
  %253 = load %struct.scb*, %struct.scb** %5, align 8
  %254 = load i32, i32* @CAM_SEL_TIMEOUT, align 4
  %255 = call i32 @aic_set_transaction_status(%struct.scb* %253, i32 %254)
  %256 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %257 = load %struct.scb*, %struct.scb** %5, align 8
  %258 = call i32 @ahd_freeze_devq(%struct.ahd_softc* %256, %struct.scb* %257)
  %259 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %260 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %261 = load i32, i32* @CAM_SEL_TIMEOUT, align 4
  %262 = call i32 @ahd_handle_devreset(%struct.ahd_softc* %259, %struct.ahd_devinfo* %16, i32 %260, i32 %261, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 1)
  br label %263

263:                                              ; preds = %249, %240
  %264 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %265 = load i32, i32* @CLRINT, align 4
  %266 = load i32, i32* @CLRSCSIINT, align 4
  %267 = call i32 @ahd_outb(%struct.ahd_softc* %264, i32 %265, i32 %266)
  %268 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %269 = call i32 @ahd_iocell_first_selection(%struct.ahd_softc* %268)
  %270 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %271 = call i32 @ahd_unpause(%struct.ahd_softc* %270)
  br label %501

272:                                              ; preds = %207
  %273 = load i32, i32* %6, align 4
  %274 = load i32, i32* @SELDI, align 4
  %275 = load i32, i32* @SELDO, align 4
  %276 = or i32 %274, %275
  %277 = and i32 %273, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %284

279:                                              ; preds = %272
  %280 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %281 = call i32 @ahd_iocell_first_selection(%struct.ahd_softc* %280)
  %282 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %283 = call i32 @ahd_unpause(%struct.ahd_softc* %282)
  br label %500

284:                                              ; preds = %272
  %285 = load i32, i32* %7, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %298

287:                                              ; preds = %284
  %288 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %289 = call i8* @ahd_name(%struct.ahd_softc* %288)
  %290 = load i32, i32* %7, align 4
  %291 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i8* %289, i32 %290)
  %292 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %293 = call i32 @AHD_CORRECTABLE_ERROR(%struct.ahd_softc* %292)
  %294 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %295 = load i32, i32* @CLRSINT3, align 4
  %296 = load i32, i32* %7, align 4
  %297 = call i32 @ahd_outb(%struct.ahd_softc* %294, i32 %295, i32 %296)
  br label %499

298:                                              ; preds = %284
  %299 = load i32, i32* %9, align 4
  %300 = load i32, i32* @LQIPHASE_LQ, align 4
  %301 = load i32, i32* @LQIPHASE_NLQ, align 4
  %302 = or i32 %300, %301
  %303 = and i32 %299, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %311

305:                                              ; preds = %298
  %306 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %307 = call i32 @ahd_clear_critical_section(%struct.ahd_softc* %306)
  %308 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %309 = load i32, i32* %9, align 4
  %310 = call i32 @ahd_handle_lqiphase_error(%struct.ahd_softc* %308, i32 %309)
  br label %498

311:                                              ; preds = %298
  %312 = load i32, i32* %9, align 4
  %313 = load i32, i32* @LQICRCI_NLQ, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %321

316:                                              ; preds = %311
  %317 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %318 = load i32, i32* @CLRLQIINT1, align 4
  %319 = load i32, i32* @CLRLQICRCI_NLQ, align 4
  %320 = call i32 @ahd_outb(%struct.ahd_softc* %317, i32 %318, i32 %319)
  br label %497

321:                                              ; preds = %311
  %322 = load i32, i32* %8, align 4
  %323 = load i32, i32* @BUSFREE, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %331, label %326

326:                                              ; preds = %321
  %327 = load i32, i32* %9, align 4
  %328 = load i32, i32* @LQOBUSFREE, align 4
  %329 = and i32 %327, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %485

331:                                              ; preds = %326, %321
  %332 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %333 = load i32, i32* @SCSISEQ0, align 4
  %334 = call i32 @ahd_outb(%struct.ahd_softc* %332, i32 %333, i32 0)
  %335 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %336 = call i32 @ahd_clear_critical_section(%struct.ahd_softc* %335)
  %337 = load i32, i32* @AHD_MODE_SCSI, align 4
  store i32 %337, i32* %21, align 4
  %338 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %339 = load i32, i32* @SSTAT2, align 4
  %340 = call i32 @ahd_inb(%struct.ahd_softc* %338, i32 %339)
  %341 = load i32, i32* @BUSFREETIME, align 4
  %342 = and i32 %340, %341
  store i32 %342, i32* %12, align 4
  %343 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %344 = load i32, i32* @LQOSTAT1, align 4
  %345 = call i32 @ahd_inb(%struct.ahd_softc* %343, i32 %344)
  store i32 %345, i32* %17, align 4
  %346 = load i32, i32* %12, align 4
  switch i32 %346, label %385 [
    i32 130, label %347
    i32 129, label %347
    i32 128, label %384
  ]

347:                                              ; preds = %331, %331
  %348 = load i32, i32* %12, align 4
  %349 = icmp eq i32 %348, 130
  br i1 %349, label %350, label %352

350:                                              ; preds = %347
  %351 = load i32, i32* @AHD_MODE_DFF0, align 4
  br label %354

352:                                              ; preds = %347
  %353 = load i32, i32* @AHD_MODE_DFF1, align 4
  br label %354

354:                                              ; preds = %352, %350
  %355 = phi i32 [ %351, %350 ], [ %353, %352 ]
  store i32 %355, i32* %21, align 4
  %356 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %357 = load i32, i32* %21, align 4
  %358 = load i32, i32* %21, align 4
  %359 = call i32 @ahd_set_modes(%struct.ahd_softc* %356, i32 %357, i32 %358)
  %360 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %361 = call i32 @ahd_get_scbptr(%struct.ahd_softc* %360)
  store i32 %361, i32* %22, align 4
  %362 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %363 = load i32, i32* %22, align 4
  %364 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %362, i32 %363)
  store %struct.scb* %364, %struct.scb** %23, align 8
  %365 = load %struct.scb*, %struct.scb** %23, align 8
  %366 = icmp eq %struct.scb* %365, null
  br i1 %366, label %367, label %375

367:                                              ; preds = %354
  %368 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %369 = call i8* @ahd_name(%struct.ahd_softc* %368)
  %370 = load i32, i32* %22, align 4
  %371 = load i32, i32* %21, align 4
  %372 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0), i8* %369, i32 %370, i32 %371)
  store i32 0, i32* %20, align 4
  %373 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %374 = call i32 @AHD_CORRECTABLE_ERROR(%struct.ahd_softc* %373)
  br label %383

375:                                              ; preds = %354
  %376 = load %struct.scb*, %struct.scb** %23, align 8
  %377 = getelementptr inbounds %struct.scb, %struct.scb* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* @SCB_PACKETIZED, align 4
  %380 = and i32 %378, %379
  %381 = icmp ne i32 %380, 0
  %382 = zext i1 %381 to i32
  store i32 %382, i32* %20, align 4
  br label %383

383:                                              ; preds = %375, %367
  store i32 1, i32* %19, align 4
  br label %422

384:                                              ; preds = %331
  store i32 0, i32* %19, align 4
  store i32 1, i32* %20, align 4
  br label %422

385:                                              ; preds = %331
  store i32 0, i32* %19, align 4
  %386 = load i32, i32* %17, align 4
  %387 = load i32, i32* @LQOBUSFREE, align 4
  %388 = and i32 %386, %387
  %389 = icmp ne i32 %388, 0
  %390 = zext i1 %389 to i32
  store i32 %390, i32* %20, align 4
  %391 = load i32, i32* %20, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %421, label %393

393:                                              ; preds = %385
  %394 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %395 = load i32, i32* @LASTPHASE, align 4
  %396 = call i32 @ahd_inb(%struct.ahd_softc* %394, i32 %395)
  %397 = load i32, i32* @P_BUSFREE, align 4
  %398 = icmp eq i32 %396, %397
  br i1 %398, label %399, label %421

399:                                              ; preds = %393
  %400 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %401 = load i32, i32* @SSTAT0, align 4
  %402 = call i32 @ahd_inb(%struct.ahd_softc* %400, i32 %401)
  %403 = load i32, i32* @SELDI, align 4
  %404 = and i32 %402, %403
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %421

406:                                              ; preds = %399
  %407 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %408 = load i32, i32* @SSTAT0, align 4
  %409 = call i32 @ahd_inb(%struct.ahd_softc* %407, i32 %408)
  %410 = load i32, i32* @SELDO, align 4
  %411 = and i32 %409, %410
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %420, label %413

413:                                              ; preds = %406
  %414 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %415 = load i32, i32* @SCSISEQ0, align 4
  %416 = call i32 @ahd_inb(%struct.ahd_softc* %414, i32 %415)
  %417 = load i32, i32* @ENSELO, align 4
  %418 = and i32 %416, %417
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %420, label %421

420:                                              ; preds = %413, %406
  store i32 1, i32* %20, align 4
  br label %421

421:                                              ; preds = %420, %413, %399, %393, %385
  br label %422

422:                                              ; preds = %421, %384, %383
  %423 = load i32, i32* %20, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %435

425:                                              ; preds = %422
  %426 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %427 = load i32, i32* @LASTPHASE, align 4
  %428 = call i32 @ahd_inb(%struct.ahd_softc* %426, i32 %427)
  %429 = load i32, i32* @P_BUSFREE, align 4
  %430 = icmp eq i32 %428, %429
  br i1 %430, label %431, label %435

431:                                              ; preds = %425
  %432 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %433 = load i32, i32* %12, align 4
  %434 = call i32 @ahd_handle_pkt_busfree(%struct.ahd_softc* %432, i32 %433)
  store i32 %434, i32* %18, align 4
  br label %438

435:                                              ; preds = %425, %422
  store i32 0, i32* %20, align 4
  %436 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %437 = call i32 @ahd_handle_nonpkt_busfree(%struct.ahd_softc* %436)
  store i32 %437, i32* %18, align 4
  br label %438

438:                                              ; preds = %435, %431
  %439 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %440 = load i32, i32* @CLRSINT1, align 4
  %441 = load i32, i32* @CLRBUSFREE, align 4
  %442 = call i32 @ahd_outb(%struct.ahd_softc* %439, i32 %440, i32 %441)
  %443 = load i32, i32* %20, align 4
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %445, label %462

445:                                              ; preds = %438
  %446 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %447 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 4
  %449 = load i32, i32* @AHD_BUSFREEREV_BUG, align 4
  %450 = and i32 %448, %449
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %462

452:                                              ; preds = %445
  %453 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %454 = load i32, i32* @SIMODE1, align 4
  %455 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %456 = load i32, i32* @SIMODE1, align 4
  %457 = call i32 @ahd_inb(%struct.ahd_softc* %455, i32 %456)
  %458 = load i32, i32* @ENBUSFREE, align 4
  %459 = xor i32 %458, -1
  %460 = and i32 %457, %459
  %461 = call i32 @ahd_outb(%struct.ahd_softc* %453, i32 %454, i32 %460)
  br label %462

462:                                              ; preds = %452, %445, %438
  %463 = load i32, i32* %19, align 4
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %469

465:                                              ; preds = %462
  %466 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %467 = load i32, i32* %21, align 4
  %468 = call i32 @ahd_clear_fifo(%struct.ahd_softc* %466, i32 %467)
  br label %469

469:                                              ; preds = %465, %462
  %470 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %471 = call i32 @ahd_clear_msg_state(%struct.ahd_softc* %470)
  %472 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %473 = load i32, i32* @CLRINT, align 4
  %474 = load i32, i32* @CLRSCSIINT, align 4
  %475 = call i32 @ahd_outb(%struct.ahd_softc* %472, i32 %473, i32 %474)
  %476 = load i32, i32* %18, align 4
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %481

478:                                              ; preds = %469
  %479 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %480 = call i32 @ahd_restart(%struct.ahd_softc* %479)
  br label %484

481:                                              ; preds = %469
  %482 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %483 = call i32 @ahd_unpause(%struct.ahd_softc* %482)
  br label %484

484:                                              ; preds = %481, %478
  br label %496

485:                                              ; preds = %326
  %486 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %487 = call i8* @ahd_name(%struct.ahd_softc* %486)
  %488 = load i32, i32* %8, align 4
  %489 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i8* %487, i32 %488)
  %490 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %491 = call i32 @ahd_dump_card_state(%struct.ahd_softc* %490)
  %492 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %493 = call i32 @ahd_clear_intstat(%struct.ahd_softc* %492)
  %494 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %495 = call i32 @ahd_unpause(%struct.ahd_softc* %494)
  br label %496

496:                                              ; preds = %485, %484
  br label %497

497:                                              ; preds = %496, %316
  br label %498

498:                                              ; preds = %497, %305
  br label %499

499:                                              ; preds = %498, %287
  br label %500

500:                                              ; preds = %499, %279
  br label %501

501:                                              ; preds = %500, %263
  br label %502

502:                                              ; preds = %501, %206
  br label %503

503:                                              ; preds = %502, %179
  br label %504

504:                                              ; preds = %503, %165
  br label %505

505:                                              ; preds = %504, %151
  br label %506

506:                                              ; preds = %505, %120
  ret void
}

declare dso_local i32 @ahd_update_modes(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_get_scbptr(%struct.ahd_softc*) #1

declare dso_local %struct.scb* @ahd_lookup_scb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_reset_channel(%struct.ahd_softc*, i8 signext, i32) #1

declare dso_local i32 @ahd_pause(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_setup_iocell_workaround(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_unpause(%struct.ahd_softc*) #1

declare dso_local i32 @AHD_CORRECTABLE_ERROR(%struct.ahd_softc*) #1

declare dso_local i32 @AHD_UNCORRECTABLE_ERROR(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_clear_critical_section(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_handle_transmission_error(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_clear_msg_state(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_inw(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_dump_card_state(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_scb_devinfo(%struct.ahd_softc*, %struct.ahd_devinfo*, %struct.scb*) #1

declare dso_local i32 @aic_set_transaction_status(%struct.scb*, i32) #1

declare dso_local i32 @ahd_freeze_devq(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_handle_devreset(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32, i8*, i32) #1

declare dso_local i32 @ahd_iocell_first_selection(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_handle_lqiphase_error(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_handle_pkt_busfree(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_handle_nonpkt_busfree(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_clear_fifo(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_restart(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_clear_intstat(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
