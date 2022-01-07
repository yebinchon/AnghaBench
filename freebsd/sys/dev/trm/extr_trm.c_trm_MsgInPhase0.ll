; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_trm_MsgInPhase0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_trm_MsgInPhase0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_19__, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { i32, i64*, i32, i64*, i64, %struct.TYPE_20__*, i32*, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, %struct.TYPE_18__, %struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_19__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i32, i8*, i8* }
%struct.TYPE_16__ = type { i32, i8*, i8* }

@TRMREG_SCSI_FIFO = common dso_local global i32 0, align 4
@SRB_EXTEND_MSGIN = common dso_local global i32 0, align 4
@MSG_DISCONNECT = common dso_local global i64 0, align 8
@SRB_DISCONNECT = common dso_local global i32 0, align 4
@PH_BUS_FREE = common dso_local global i32 0, align 4
@DO_DATALATCH = common dso_local global i32 0, align 4
@TRMREG_SCSI_CONTROL = common dso_local global i32 0, align 4
@SCMD_MSGACCEPT = common dso_local global i32 0, align 4
@TRMREG_SCSI_COMMAND = common dso_local global i32 0, align 4
@MSG_SAVE_PTR = common dso_local global i64 0, align 8
@MSG_EXTENDED = common dso_local global i64 0, align 8
@MSG_SIMPLE_QTAG = common dso_local global i64 0, align 8
@MSG_ORDER_QTAG = common dso_local global i64 0, align 8
@MSG_REJECT_ = common dso_local global i64 0, align 8
@WIDE_NEGO_ENABLE = common dso_local global i32 0, align 4
@WIDE_NEGO_DONE = common dso_local global i32 0, align 4
@SYNC_NEGO_DONE = common dso_local global i32 0, align 4
@EN_ATN_STOP = common dso_local global i32 0, align 4
@SRB_DO_WIDE_NEGO = common dso_local global i32 0, align 4
@SRB_MSGIN = common dso_local global i32 0, align 4
@SYNC_NEGO_ENABLE = common dso_local global i32 0, align 4
@SRB_MSGOUT = common dso_local global i32 0, align 4
@DO_SETATN = common dso_local global i32 0, align 4
@DO_CLRATN = common dso_local global i32 0, align 4
@SRB_DO_SYNC_NEGO = common dso_local global i32 0, align 4
@TRMREG_SCSI_SYNC = common dso_local global i32 0, align 4
@TRMREG_SCSI_OFFSET = common dso_local global i32 0, align 4
@MSG_IGNOREWIDE = common dso_local global i64 0, align 8
@TRMREG_SCSI_COUNTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"pSRB->MsgInBuf[0]=%2x \0A \00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"pSRB->MsgInBuf[1]=%2x \0A \00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"pSRB->MsgInBuf[2]=%2x \0A \00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"pSRB->MsgInBuf[3]=%2x \0A \00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"pSRB->MsgInBuf[4]=%2x \0A \00", align 1
@ABORT_DEV_ = common dso_local global i32 0, align 4
@SRB_ABORT_SENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"SRB not yet disconnect........ \0A \00", align 1
@SRB_DATA_XFER = common dso_local global i32 0, align 4
@SRB_UNEXPECT_RESEL = common dso_local global i32 0, align 4
@MSG_ABORT_TAG = common dso_local global i32 0, align 4
@WIDE_SYNC = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_16_BIT = common dso_local global i8* null, align 8
@MSG_EXT_WDTR_BUS_8_BIT = common dso_local global i8* null, align 8
@dc395u2x_clock_period = common dso_local global i64* null, align 8
@dc395u2x_tinfo_period = common dso_local global i8** null, align 8
@LVDS_SYNC = common dso_local global i64 0, align 8
@dc395x_clock_period = common dso_local global i64* null, align 8
@dc395x_tinfo_period = common dso_local global i8** null, align 8
@ALT_SYNC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_19__*, i32*)* @trm_MsgInPhase0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trm_MsgInPhase0(%struct.TYPE_21__* %0, %struct.TYPE_19__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %10, align 8
  %15 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %16 = call i64 @trm_reg_read8(i32 %15)
  store i64 %16, i64* %7, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SRB_EXTEND_MSGIN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %240, label %23

23:                                               ; preds = %3
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @MSG_DISCONNECT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32, i32* @SRB_DISCONNECT, align 4
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @PH_BUS_FREE, align 4
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @DO_DATALATCH, align 4
  %34 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %35 = call i32 @trm_reg_write16(i32 %33, i32 %34)
  %36 = load i32, i32* @SCMD_MSGACCEPT, align 4
  %37 = load i32, i32* @TRMREG_SCSI_COMMAND, align 4
  %38 = call i32 @trm_reg_write8(i32 %36, i32 %37)
  br label %910

39:                                               ; preds = %23
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @MSG_SAVE_PTR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load i32, i32* @PH_BUS_FREE, align 4
  %45 = load i32*, i32** %6, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @DO_DATALATCH, align 4
  %47 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %48 = call i32 @trm_reg_write16(i32 %46, i32 %47)
  %49 = load i32, i32* @SCMD_MSGACCEPT, align 4
  %50 = load i32, i32* @TRMREG_SCSI_COMMAND, align 4
  %51 = call i32 @trm_reg_write8(i32 %49, i32 %50)
  br label %910

52:                                               ; preds = %39
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @MSG_EXTENDED, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @MSG_SIMPLE_QTAG, align 8
  %59 = icmp sge i64 %57, %58
  br i1 %59, label %60, label %91

60:                                               ; preds = %56
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @MSG_ORDER_QTAG, align 8
  %63 = icmp sle i64 %61, %62
  br i1 %63, label %64, label %91

64:                                               ; preds = %60, %52
  %65 = load i32, i32* @SRB_EXTEND_MSGIN, align 4
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  store i64 %70, i64* %74, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 2
  store i32 1, i32* %76, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 1
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 3
  store i64* %80, i64** %82, align 8
  %83 = load i32, i32* @PH_BUS_FREE, align 4
  %84 = load i32*, i32** %6, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* @DO_DATALATCH, align 4
  %86 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %87 = call i32 @trm_reg_write16(i32 %85, i32 %86)
  %88 = load i32, i32* @SCMD_MSGACCEPT, align 4
  %89 = load i32, i32* @TRMREG_SCSI_COMMAND, align 4
  %90 = call i32 @trm_reg_write8(i32 %88, i32 %89)
  br label %910

91:                                               ; preds = %60, %56
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* @MSG_REJECT_, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %214

95:                                               ; preds = %91
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @WIDE_NEGO_ENABLE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %156

102:                                              ; preds = %95
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 5
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %104, align 8
  store %struct.TYPE_20__* %105, %struct.TYPE_20__** %10, align 8
  %106 = load i32, i32* @WIDE_NEGO_DONE, align 4
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load i32, i32* @SYNC_NEGO_DONE, align 4
  %112 = load i32, i32* @EN_ATN_STOP, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @WIDE_NEGO_ENABLE, align 4
  %115 = or i32 %113, %114
  %116 = xor i32 %115, -1
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %119, %116
  store i32 %120, i32* %118, align 8
  %121 = load i32, i32* @SRB_DO_WIDE_NEGO, align 4
  %122 = load i32, i32* @SRB_MSGIN, align 4
  %123 = add nsw i32 %121, %122
  %124 = xor i32 %123, -1
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = and i32 %127, %124
  store i32 %128, i32* %126, align 8
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @SYNC_NEGO_ENABLE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %151

135:                                              ; preds = %102
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @SYNC_NEGO_DONE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %151, label %142

142:                                              ; preds = %135
  %143 = load i32, i32* @SRB_MSGOUT, align 4
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  %148 = load i32, i32* @DO_SETATN, align 4
  %149 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %150 = call i32 @trm_reg_write16(i32 %148, i32 %149)
  br label %155

151:                                              ; preds = %135, %102
  %152 = load i32, i32* @DO_CLRATN, align 4
  %153 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %154 = call i32 @trm_reg_write16(i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %151, %142
  br label %205

156:                                              ; preds = %95
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @SYNC_NEGO_ENABLE, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %204

163:                                              ; preds = %156
  %164 = load i32, i32* @DO_CLRATN, align 4
  %165 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %166 = call i32 @trm_reg_write16(i32 %164, i32 %165)
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @SRB_DO_SYNC_NEGO, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %203

173:                                              ; preds = %163
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 5
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %175, align 8
  store %struct.TYPE_20__* %176, %struct.TYPE_20__** %10, align 8
  %177 = load i32, i32* @SYNC_NEGO_ENABLE, align 4
  %178 = load i32, i32* @SYNC_NEGO_DONE, align 4
  %179 = add nsw i32 %177, %178
  %180 = xor i32 %179, -1
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = and i32 %183, %180
  store i32 %184, i32* %182, align 8
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 1
  store i32 0, i32* %186, align 4
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 2
  store i32 0, i32* %188, align 8
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @TRMREG_SCSI_SYNC, align 4
  %193 = call i32 @trm_reg_write8(i32 %191, i32 %192)
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @TRMREG_SCSI_OFFSET, align 4
  %198 = call i32 @trm_reg_write8(i32 %196, i32 %197)
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %202 = call i32 @trm_SetXferRate(%struct.TYPE_21__* %199, %struct.TYPE_19__* %200, %struct.TYPE_20__* %201)
  br label %203

203:                                              ; preds = %173, %163
  br label %204

204:                                              ; preds = %203, %156
  br label %205

205:                                              ; preds = %204, %155
  %206 = load i32, i32* @PH_BUS_FREE, align 4
  %207 = load i32*, i32** %6, align 8
  store i32 %206, i32* %207, align 4
  %208 = load i32, i32* @DO_DATALATCH, align 4
  %209 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %210 = call i32 @trm_reg_write16(i32 %208, i32 %209)
  %211 = load i32, i32* @SCMD_MSGACCEPT, align 4
  %212 = load i32, i32* @TRMREG_SCSI_COMMAND, align 4
  %213 = call i32 @trm_reg_write8(i32 %211, i32 %212)
  br label %910

214:                                              ; preds = %91
  %215 = load i64, i64* %7, align 8
  %216 = load i64, i64* @MSG_IGNOREWIDE, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %231

218:                                              ; preds = %214
  %219 = load i32, i32* @TRMREG_SCSI_COUNTER, align 4
  %220 = call i32 @trm_reg_write32(i32 1, i32 %219)
  %221 = load i32, i32* @TRMREG_SCSI_FIFO, align 4
  %222 = call i64 @trm_reg_read8(i32 %221)
  %223 = load i32, i32* @PH_BUS_FREE, align 4
  %224 = load i32*, i32** %6, align 8
  store i32 %223, i32* %224, align 4
  %225 = load i32, i32* @DO_DATALATCH, align 4
  %226 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %227 = call i32 @trm_reg_write16(i32 %225, i32 %226)
  %228 = load i32, i32* @SCMD_MSGACCEPT, align 4
  %229 = load i32, i32* @TRMREG_SCSI_COMMAND, align 4
  %230 = call i32 @trm_reg_write8(i32 %228, i32 %229)
  br label %910

231:                                              ; preds = %214
  %232 = load i32, i32* @PH_BUS_FREE, align 4
  %233 = load i32*, i32** %6, align 8
  store i32 %232, i32* %233, align 4
  %234 = load i32, i32* @DO_DATALATCH, align 4
  %235 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %236 = call i32 @trm_reg_write16(i32 %234, i32 %235)
  %237 = load i32, i32* @SCMD_MSGACCEPT, align 4
  %238 = load i32, i32* @TRMREG_SCSI_COMMAND, align 4
  %239 = call i32 @trm_reg_write8(i32 %237, i32 %238)
  br label %910

240:                                              ; preds = %3
  %241 = load i64, i64* %7, align 8
  %242 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %242, i32 0, i32 3
  %244 = load i64*, i64** %243, align 8
  store i64 %241, i64* %244, align 8
  %245 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %246, align 8
  %249 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i32 0, i32 3
  %251 = load i64*, i64** %250, align 8
  %252 = getelementptr inbounds i64, i64* %251, i32 1
  store i64* %252, i64** %250, align 8
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 1
  %255 = load i64*, i64** %254, align 8
  %256 = getelementptr inbounds i64, i64* %255, i64 0
  %257 = load i64, i64* %256, align 8
  %258 = call i32 (i8*, ...) @TRM_DPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %257)
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 1
  %261 = load i64*, i64** %260, align 8
  %262 = getelementptr inbounds i64, i64* %261, i64 1
  %263 = load i64, i64* %262, align 8
  %264 = call i32 (i8*, ...) @TRM_DPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %263)
  %265 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %265, i32 0, i32 1
  %267 = load i64*, i64** %266, align 8
  %268 = getelementptr inbounds i64, i64* %267, i64 2
  %269 = load i64, i64* %268, align 8
  %270 = call i32 (i8*, ...) @TRM_DPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %269)
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i32 0, i32 1
  %273 = load i64*, i64** %272, align 8
  %274 = getelementptr inbounds i64, i64* %273, i64 3
  %275 = load i64, i64* %274, align 8
  %276 = call i32 (i8*, ...) @TRM_DPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %275)
  %277 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %277, i32 0, i32 1
  %279 = load i64*, i64** %278, align 8
  %280 = getelementptr inbounds i64, i64* %279, i64 4
  %281 = load i64, i64* %280, align 8
  %282 = call i32 (i8*, ...) @TRM_DPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %281)
  %283 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %283, i32 0, i32 1
  %285 = load i64*, i64** %284, align 8
  %286 = getelementptr inbounds i64, i64* %285, i64 0
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @MSG_SIMPLE_QTAG, align 8
  %289 = icmp sge i64 %287, %288
  br i1 %289, label %290, label %395

290:                                              ; preds = %240
  %291 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %291, i32 0, i32 1
  %293 = load i64*, i64** %292, align 8
  %294 = getelementptr inbounds i64, i64* %293, i64 0
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* @MSG_ORDER_QTAG, align 8
  %297 = icmp sle i64 %295, %296
  br i1 %297, label %298, label %395

298:                                              ; preds = %290
  %299 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = icmp eq i32 %301, 2
  br i1 %302, label %303, label %386

303:                                              ; preds = %298
  %304 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %304, i32 0, i32 0
  store i32 0, i32* %305, align 8
  %306 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %306, i32 0, i32 1
  %308 = load i64*, i64** %307, align 8
  %309 = getelementptr inbounds i64, i64* %308, i64 1
  %310 = load i64, i64* %309, align 8
  store i64 %310, i64* %9, align 8
  %311 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %312 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %311, i32 0, i32 8
  %313 = load %struct.TYPE_19__*, %struct.TYPE_19__** %312, align 8
  store %struct.TYPE_19__* %313, %struct.TYPE_19__** %5, align 8
  %314 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %315 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %314, i32 0, i32 7
  %316 = load %struct.TYPE_19__*, %struct.TYPE_19__** %315, align 8
  store %struct.TYPE_19__* %316, %struct.TYPE_19__** %11, align 8
  %317 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %318 = icmp ne %struct.TYPE_19__* %317, null
  br i1 %318, label %319, label %367

319:                                              ; preds = %303
  br label %320

320:                                              ; preds = %336, %319
  %321 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %321, i32 0, i32 4
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* %9, align 8
  %325 = icmp ne i64 %323, %324
  br i1 %325, label %326, label %335

326:                                              ; preds = %320
  %327 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %328 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %329 = icmp eq %struct.TYPE_19__* %327, %328
  br i1 %329, label %330, label %331

330:                                              ; preds = %326
  br label %368

331:                                              ; preds = %326
  %332 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %332, i32 0, i32 7
  %334 = load %struct.TYPE_19__*, %struct.TYPE_19__** %333, align 8
  store %struct.TYPE_19__* %334, %struct.TYPE_19__** %5, align 8
  br label %336

335:                                              ; preds = %320
  br label %337

336:                                              ; preds = %331
  br label %320

337:                                              ; preds = %335
  %338 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %339 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %338, i32 0, i32 3
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* @ABORT_DEV_, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %351

344:                                              ; preds = %337
  %345 = load i32, i32* @SRB_ABORT_SENT, align 4
  %346 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %346, i32 0, i32 0
  store i32 %345, i32* %347, align 8
  %348 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %349 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %350 = call i32 @trm_EnableMsgOutAbort1(%struct.TYPE_21__* %348, %struct.TYPE_19__* %349)
  br label %351

351:                                              ; preds = %344, %337
  %352 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load i32, i32* @SRB_DISCONNECT, align 4
  %356 = and i32 %354, %355
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %360, label %358

358:                                              ; preds = %351
  %359 = call i32 (i8*, ...) @TRM_DPRINTF(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %368

360:                                              ; preds = %351
  %361 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %362 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %363 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %362, i32 0, i32 6
  store %struct.TYPE_19__* %361, %struct.TYPE_19__** %363, align 8
  %364 = load i32, i32* @SRB_DATA_XFER, align 4
  %365 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %366 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %365, i32 0, i32 0
  store i32 %364, i32* %366, align 8
  br label %385

367:                                              ; preds = %303
  br label %368

368:                                              ; preds = %367, %358, %330
  %369 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %370 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %369, i32 0, i32 1
  store %struct.TYPE_19__* %370, %struct.TYPE_19__** %5, align 8
  %371 = load i32, i32* @SRB_UNEXPECT_RESEL, align 4
  %372 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %372, i32 0, i32 0
  store i32 %371, i32* %373, align 8
  %374 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %375 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %376 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %375, i32 0, i32 6
  store %struct.TYPE_19__* %374, %struct.TYPE_19__** %376, align 8
  %377 = load i32, i32* @MSG_ABORT_TAG, align 4
  %378 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %378, i32 0, i32 6
  %380 = load i32*, i32** %379, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 0
  store i32 %377, i32* %381, align 4
  %382 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %383 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %384 = call i32 @trm_EnableMsgOutAbort2(%struct.TYPE_21__* %382, %struct.TYPE_19__* %383)
  br label %385

385:                                              ; preds = %368, %360
  br label %386

386:                                              ; preds = %385, %298
  %387 = load i32, i32* @PH_BUS_FREE, align 4
  %388 = load i32*, i32** %6, align 8
  store i32 %387, i32* %388, align 4
  %389 = load i32, i32* @DO_DATALATCH, align 4
  %390 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %391 = call i32 @trm_reg_write16(i32 %389, i32 %390)
  %392 = load i32, i32* @SCMD_MSGACCEPT, align 4
  %393 = load i32, i32* @TRMREG_SCSI_COMMAND, align 4
  %394 = call i32 @trm_reg_write8(i32 %392, i32 %393)
  br label %910

395:                                              ; preds = %290, %240
  %396 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %397 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %396, i32 0, i32 1
  %398 = load i64*, i64** %397, align 8
  %399 = getelementptr inbounds i64, i64* %398, i64 0
  %400 = load i64, i64* %399, align 8
  %401 = load i64, i64* @MSG_EXTENDED, align 8
  %402 = icmp eq i64 %400, %401
  br i1 %402, label %403, label %591

403:                                              ; preds = %395
  %404 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %405 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %404, i32 0, i32 1
  %406 = load i64*, i64** %405, align 8
  %407 = getelementptr inbounds i64, i64* %406, i64 2
  %408 = load i64, i64* %407, align 8
  %409 = icmp eq i64 %408, 3
  br i1 %409, label %410, label %591

410:                                              ; preds = %403
  %411 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %412 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %411, i32 0, i32 2
  %413 = load i32, i32* %412, align 8
  %414 = icmp eq i32 %413, 4
  br i1 %414, label %415, label %591

415:                                              ; preds = %410
  %416 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %417 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %416, i32 0, i32 5
  %418 = load %struct.TYPE_20__*, %struct.TYPE_20__** %417, align 8
  store %struct.TYPE_20__* %418, %struct.TYPE_20__** %10, align 8
  %419 = load i32, i32* @SRB_EXTEND_MSGIN, align 4
  %420 = load i32, i32* @SRB_DO_WIDE_NEGO, align 4
  %421 = add nsw i32 %419, %420
  %422 = xor i32 %421, -1
  %423 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %424 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = and i32 %425, %422
  store i32 %426, i32* %424, align 8
  %427 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %428 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %427, i32 0, i32 1
  %429 = load i64*, i64** %428, align 8
  %430 = getelementptr inbounds i64, i64* %429, i64 1
  %431 = load i64, i64* %430, align 8
  %432 = icmp ne i64 %431, 2
  br i1 %432, label %433, label %460

433:                                              ; preds = %415
  %434 = load i32, i32* @WIDE_NEGO_ENABLE, align 4
  %435 = load i32, i32* @WIDE_NEGO_DONE, align 4
  %436 = add nsw i32 %434, %435
  %437 = xor i32 %436, -1
  %438 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %439 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 8
  %441 = and i32 %440, %437
  store i32 %441, i32* %439, align 8
  %442 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %443 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %442, i32 0, i32 2
  store i32 1, i32* %443, align 8
  %444 = load i64, i64* @MSG_REJECT_, align 8
  %445 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %446 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %445, i32 0, i32 1
  %447 = load i64*, i64** %446, align 8
  %448 = getelementptr inbounds i64, i64* %447, i64 0
  store i64 %444, i64* %448, align 8
  %449 = load i32, i32* @DO_SETATN, align 4
  %450 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %451 = call i32 @trm_reg_write16(i32 %449, i32 %450)
  %452 = load i32, i32* @PH_BUS_FREE, align 4
  %453 = load i32*, i32** %6, align 8
  store i32 %452, i32* %453, align 4
  %454 = load i32, i32* @DO_DATALATCH, align 4
  %455 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %456 = call i32 @trm_reg_write16(i32 %454, i32 %455)
  %457 = load i32, i32* @SCMD_MSGACCEPT, align 4
  %458 = load i32, i32* @TRMREG_SCSI_COMMAND, align 4
  %459 = call i32 @trm_reg_write8(i32 %457, i32 %458)
  br label %910

460:                                              ; preds = %415
  %461 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %462 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 8
  %464 = load i32, i32* @WIDE_NEGO_ENABLE, align 4
  %465 = and i32 %463, %464
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %569

467:                                              ; preds = %460
  %468 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %469 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %468, i32 0, i32 1
  %470 = load i64*, i64** %469, align 8
  %471 = getelementptr inbounds i64, i64* %470, i64 3
  %472 = load i64, i64* %471, align 8
  %473 = icmp sgt i64 %472, 2
  br i1 %473, label %474, label %501

474:                                              ; preds = %467
  %475 = load i32, i32* @WIDE_NEGO_ENABLE, align 4
  %476 = load i32, i32* @WIDE_NEGO_DONE, align 4
  %477 = add nsw i32 %475, %476
  %478 = xor i32 %477, -1
  %479 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %480 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 8
  %482 = and i32 %481, %478
  store i32 %482, i32* %480, align 8
  %483 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %484 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %483, i32 0, i32 2
  store i32 1, i32* %484, align 8
  %485 = load i64, i64* @MSG_REJECT_, align 8
  %486 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %487 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %486, i32 0, i32 1
  %488 = load i64*, i64** %487, align 8
  %489 = getelementptr inbounds i64, i64* %488, i64 0
  store i64 %485, i64* %489, align 8
  %490 = load i32, i32* @DO_SETATN, align 4
  %491 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %492 = call i32 @trm_reg_write16(i32 %490, i32 %491)
  %493 = load i32, i32* @PH_BUS_FREE, align 4
  %494 = load i32*, i32** %6, align 8
  store i32 %493, i32* %494, align 4
  %495 = load i32, i32* @DO_DATALATCH, align 4
  %496 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %497 = call i32 @trm_reg_write16(i32 %495, i32 %496)
  %498 = load i32, i32* @SCMD_MSGACCEPT, align 4
  %499 = load i32, i32* @TRMREG_SCSI_COMMAND, align 4
  %500 = call i32 @trm_reg_write8(i32 %498, i32 %499)
  br label %910

501:                                              ; preds = %467
  %502 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %503 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %502, i32 0, i32 1
  %504 = load i64*, i64** %503, align 8
  %505 = getelementptr inbounds i64, i64* %504, i64 3
  %506 = load i64, i64* %505, align 8
  %507 = icmp eq i64 %506, 2
  br i1 %507, label %508, label %513

508:                                              ; preds = %501
  %509 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %510 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %509, i32 0, i32 1
  %511 = load i64*, i64** %510, align 8
  %512 = getelementptr inbounds i64, i64* %511, i64 3
  store i64 1, i64* %512, align 8
  br label %568

513:                                              ; preds = %501
  %514 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %515 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %514, i32 0, i32 0
  %516 = load i32, i32* %515, align 8
  %517 = load i32, i32* @WIDE_NEGO_DONE, align 4
  %518 = and i32 %516, %517
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %567, label %520

520:                                              ; preds = %513
  %521 = load i32, i32* @SRB_DO_WIDE_NEGO, align 4
  %522 = load i32, i32* @SRB_MSGIN, align 4
  %523 = add nsw i32 %521, %522
  %524 = xor i32 %523, -1
  %525 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %526 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 8
  %528 = and i32 %527, %524
  store i32 %528, i32* %526, align 8
  %529 = load i32, i32* @WIDE_NEGO_DONE, align 4
  %530 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %531 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %530, i32 0, i32 0
  %532 = load i32, i32* %531, align 8
  %533 = or i32 %532, %529
  store i32 %533, i32* %531, align 8
  %534 = load i32, i32* @SYNC_NEGO_DONE, align 4
  %535 = load i32, i32* @EN_ATN_STOP, align 4
  %536 = or i32 %534, %535
  %537 = load i32, i32* @WIDE_NEGO_ENABLE, align 4
  %538 = or i32 %536, %537
  %539 = xor i32 %538, -1
  %540 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %541 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 8
  %543 = and i32 %542, %539
  store i32 %543, i32* %541, align 8
  %544 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %545 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %544, i32 0, i32 1
  %546 = load i64*, i64** %545, align 8
  %547 = getelementptr inbounds i64, i64* %546, i64 3
  %548 = load i64, i64* %547, align 8
  %549 = icmp ne i64 %548, 0
  br i1 %549, label %550, label %566

550:                                              ; preds = %520
  %551 = load i32, i32* @WIDE_SYNC, align 4
  %552 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %553 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %552, i32 0, i32 1
  %554 = load i32, i32* %553, align 4
  %555 = or i32 %554, %551
  store i32 %555, i32* %553, align 4
  %556 = load i8*, i8** @MSG_EXT_WDTR_BUS_16_BIT, align 8
  %557 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %558 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %557, i32 0, i32 5
  %559 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %558, i32 0, i32 0
  %560 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %559, i32 0, i32 2
  store i8* %556, i8** %560, align 8
  %561 = load i8*, i8** @MSG_EXT_WDTR_BUS_16_BIT, align 8
  %562 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %563 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %562, i32 0, i32 5
  %564 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %563, i32 0, i32 1
  %565 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %564, i32 0, i32 2
  store i8* %561, i8** %565, align 8
  br label %566

566:                                              ; preds = %550, %520
  br label %567

567:                                              ; preds = %566, %513
  br label %568

568:                                              ; preds = %567, %508
  br label %574

569:                                              ; preds = %460
  %570 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %571 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %570, i32 0, i32 1
  %572 = load i64*, i64** %571, align 8
  %573 = getelementptr inbounds i64, i64* %572, i64 3
  store i64 0, i64* %573, align 8
  br label %574

574:                                              ; preds = %569, %568
  %575 = load i32, i32* @SRB_MSGOUT, align 4
  %576 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %577 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %576, i32 0, i32 0
  %578 = load i32, i32* %577, align 8
  %579 = or i32 %578, %575
  store i32 %579, i32* %577, align 8
  %580 = load i32, i32* @DO_SETATN, align 4
  %581 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %582 = call i32 @trm_reg_write16(i32 %580, i32 %581)
  %583 = load i32, i32* @PH_BUS_FREE, align 4
  %584 = load i32*, i32** %6, align 8
  store i32 %583, i32* %584, align 4
  %585 = load i32, i32* @DO_DATALATCH, align 4
  %586 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %587 = call i32 @trm_reg_write16(i32 %585, i32 %586)
  %588 = load i32, i32* @SCMD_MSGACCEPT, align 4
  %589 = load i32, i32* @TRMREG_SCSI_COMMAND, align 4
  %590 = call i32 @trm_reg_write8(i32 %588, i32 %589)
  br label %910

591:                                              ; preds = %410, %403, %395
  %592 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %593 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %592, i32 0, i32 1
  %594 = load i64*, i64** %593, align 8
  %595 = getelementptr inbounds i64, i64* %594, i64 0
  %596 = load i64, i64* %595, align 8
  %597 = load i64, i64* @MSG_EXTENDED, align 8
  %598 = icmp eq i64 %596, %597
  br i1 %598, label %599, label %899

599:                                              ; preds = %591
  %600 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %601 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %600, i32 0, i32 1
  %602 = load i64*, i64** %601, align 8
  %603 = getelementptr inbounds i64, i64* %602, i64 2
  %604 = load i64, i64* %603, align 8
  %605 = icmp eq i64 %604, 1
  br i1 %605, label %606, label %899

606:                                              ; preds = %599
  %607 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %608 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %607, i32 0, i32 2
  %609 = load i32, i32* %608, align 8
  %610 = icmp eq i32 %609, 5
  br i1 %610, label %611, label %899

611:                                              ; preds = %606
  %612 = load i32, i32* @SRB_EXTEND_MSGIN, align 4
  %613 = load i32, i32* @SRB_DO_SYNC_NEGO, align 4
  %614 = add nsw i32 %612, %613
  %615 = xor i32 %614, -1
  %616 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %617 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %616, i32 0, i32 0
  %618 = load i32, i32* %617, align 8
  %619 = and i32 %618, %615
  store i32 %619, i32* %617, align 8
  %620 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %621 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %620, i32 0, i32 1
  %622 = load i64*, i64** %621, align 8
  %623 = getelementptr inbounds i64, i64* %622, i64 1
  %624 = load i64, i64* %623, align 8
  %625 = icmp ne i64 %624, 3
  br i1 %625, label %633, label %626

626:                                              ; preds = %611
  %627 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %628 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %627, i32 0, i32 1
  %629 = load i64*, i64** %628, align 8
  %630 = getelementptr inbounds i64, i64* %629, i64 2
  %631 = load i64, i64* %630, align 8
  %632 = icmp ne i64 %631, 1
  br i1 %632, label %633, label %652

633:                                              ; preds = %626, %611
  %634 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %635 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %634, i32 0, i32 2
  store i32 1, i32* %635, align 8
  %636 = load i64, i64* @MSG_REJECT_, align 8
  %637 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %638 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %637, i32 0, i32 1
  %639 = load i64*, i64** %638, align 8
  %640 = getelementptr inbounds i64, i64* %639, i64 0
  store i64 %636, i64* %640, align 8
  %641 = load i32, i32* @DO_SETATN, align 4
  %642 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %643 = call i32 @trm_reg_write16(i32 %641, i32 %642)
  %644 = load i32, i32* @PH_BUS_FREE, align 4
  %645 = load i32*, i32** %6, align 8
  store i32 %644, i32* %645, align 4
  %646 = load i32, i32* @DO_DATALATCH, align 4
  %647 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %648 = call i32 @trm_reg_write16(i32 %646, i32 %647)
  %649 = load i32, i32* @SCMD_MSGACCEPT, align 4
  %650 = load i32, i32* @TRMREG_SCSI_COMMAND, align 4
  %651 = call i32 @trm_reg_write8(i32 %649, i32 %650)
  br label %910

652:                                              ; preds = %626
  %653 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %654 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %653, i32 0, i32 1
  %655 = load i64*, i64** %654, align 8
  %656 = getelementptr inbounds i64, i64* %655, i64 3
  %657 = load i64, i64* %656, align 8
  %658 = icmp ne i64 %657, 0
  br i1 %658, label %659, label %666

659:                                              ; preds = %652
  %660 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %661 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %660, i32 0, i32 1
  %662 = load i64*, i64** %661, align 8
  %663 = getelementptr inbounds i64, i64* %662, i64 4
  %664 = load i64, i64* %663, align 8
  %665 = icmp ne i64 %664, 0
  br i1 %665, label %725, label %666

666:                                              ; preds = %659, %652
  %667 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %668 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %667, i32 0, i32 5
  %669 = load %struct.TYPE_20__*, %struct.TYPE_20__** %668, align 8
  store %struct.TYPE_20__* %669, %struct.TYPE_20__** %10, align 8
  %670 = load i32, i32* @SYNC_NEGO_ENABLE, align 4
  %671 = load i32, i32* @SYNC_NEGO_DONE, align 4
  %672 = add nsw i32 %670, %671
  %673 = xor i32 %672, -1
  %674 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %675 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %674, i32 0, i32 0
  %676 = load i32, i32* %675, align 8
  %677 = and i32 %676, %673
  store i32 %677, i32* %675, align 8
  %678 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %679 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %678, i32 0, i32 1
  store i32 0, i32* %679, align 4
  %680 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %681 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %680, i32 0, i32 2
  store i32 0, i32* %681, align 8
  %682 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %683 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %682, i32 0, i32 5
  %684 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %683, i32 0, i32 1
  %685 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %684, i32 0, i32 1
  store i8* null, i8** %685, align 8
  %686 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %687 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %686, i32 0, i32 5
  %688 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %687, i32 0, i32 1
  %689 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %688, i32 0, i32 0
  store i32 0, i32* %689, align 8
  %690 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %691 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %690, i32 0, i32 5
  %692 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %691, i32 0, i32 0
  %693 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %692, i32 0, i32 1
  store i8* null, i8** %693, align 8
  %694 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %695 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %694, i32 0, i32 5
  %696 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %695, i32 0, i32 0
  %697 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %696, i32 0, i32 0
  store i32 0, i32* %697, align 8
  %698 = load i8*, i8** @MSG_EXT_WDTR_BUS_8_BIT, align 8
  %699 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %700 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %699, i32 0, i32 5
  %701 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %700, i32 0, i32 0
  %702 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %701, i32 0, i32 2
  store i8* %698, i8** %702, align 8
  %703 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %704 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %703, i32 0, i32 1
  %705 = load i32, i32* %704, align 4
  %706 = load i32, i32* @TRMREG_SCSI_SYNC, align 4
  %707 = call i32 @trm_reg_write8(i32 %705, i32 %706)
  %708 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %709 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %708, i32 0, i32 2
  %710 = load i32, i32* %709, align 8
  %711 = load i32, i32* @TRMREG_SCSI_OFFSET, align 4
  %712 = call i32 @trm_reg_write8(i32 %710, i32 %711)
  %713 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %714 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %715 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %716 = call i32 @trm_SetXferRate(%struct.TYPE_21__* %713, %struct.TYPE_19__* %714, %struct.TYPE_20__* %715)
  %717 = load i32, i32* @PH_BUS_FREE, align 4
  %718 = load i32*, i32** %6, align 8
  store i32 %717, i32* %718, align 4
  %719 = load i32, i32* @DO_DATALATCH, align 4
  %720 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %721 = call i32 @trm_reg_write16(i32 %719, i32 %720)
  %722 = load i32, i32* @SCMD_MSGACCEPT, align 4
  %723 = load i32, i32* @TRMREG_SCSI_COMMAND, align 4
  %724 = call i32 @trm_reg_write8(i32 %722, i32 %723)
  br label %910

725:                                              ; preds = %659
  %726 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %727 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %726, i32 0, i32 5
  %728 = load %struct.TYPE_20__*, %struct.TYPE_20__** %727, align 8
  store %struct.TYPE_20__* %728, %struct.TYPE_20__** %10, align 8
  %729 = load i32, i32* @SYNC_NEGO_ENABLE, align 4
  %730 = load i32, i32* @SYNC_NEGO_DONE, align 4
  %731 = add nsw i32 %729, %730
  %732 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %733 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %732, i32 0, i32 0
  %734 = load i32, i32* %733, align 8
  %735 = or i32 %734, %731
  store i32 %735, i32* %733, align 8
  %736 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %737 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %736, i32 0, i32 1
  %738 = load i64*, i64** %737, align 8
  %739 = getelementptr inbounds i64, i64* %738, i64 3
  %740 = load i64, i64* %739, align 8
  %741 = trunc i64 %740 to i32
  %742 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %743 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %742, i32 0, i32 4
  store i32 %741, i32* %743, align 8
  %744 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %745 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %744, i32 0, i32 1
  %746 = load i64*, i64** %745, align 8
  %747 = getelementptr inbounds i64, i64* %746, i64 4
  %748 = load i64, i64* %747, align 8
  %749 = trunc i64 %748 to i32
  %750 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %751 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %750, i32 0, i32 2
  store i32 %749, i32* %751, align 8
  %752 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %753 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %752, i32 0, i32 0
  %754 = load i32, i32* %753, align 8
  %755 = icmp eq i32 %754, 1
  br i1 %755, label %756, label %816

756:                                              ; preds = %725
  store i64 0, i64* %8, align 8
  br label %757

757:                                              ; preds = %812, %756
  %758 = load i64, i64* %8, align 8
  %759 = icmp slt i64 %758, 7
  br i1 %759, label %760, label %815

760:                                              ; preds = %757
  %761 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %762 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %761, i32 0, i32 1
  %763 = load i64*, i64** %762, align 8
  %764 = getelementptr inbounds i64, i64* %763, i64 3
  %765 = load i64, i64* %764, align 8
  %766 = load i64*, i64** @dc395u2x_clock_period, align 8
  %767 = load i64, i64* %8, align 8
  %768 = getelementptr inbounds i64, i64* %766, i64 %767
  %769 = load i64, i64* %768, align 8
  %770 = icmp sle i64 %765, %769
  br i1 %770, label %771, label %811

771:                                              ; preds = %760
  %772 = load i8**, i8*** @dc395u2x_tinfo_period, align 8
  %773 = load i64, i64* %8, align 8
  %774 = getelementptr inbounds i8*, i8** %772, i64 %773
  %775 = load i8*, i8** %774, align 8
  %776 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %777 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %776, i32 0, i32 5
  %778 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %777, i32 0, i32 1
  %779 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %778, i32 0, i32 1
  store i8* %775, i8** %779, align 8
  %780 = load i8**, i8*** @dc395u2x_tinfo_period, align 8
  %781 = load i64, i64* %8, align 8
  %782 = getelementptr inbounds i8*, i8** %780, i64 %781
  %783 = load i8*, i8** %782, align 8
  %784 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %785 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %784, i32 0, i32 5
  %786 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %785, i32 0, i32 0
  %787 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %786, i32 0, i32 1
  store i8* %783, i8** %787, align 8
  %788 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %789 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %788, i32 0, i32 2
  %790 = load i32, i32* %789, align 8
  %791 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %792 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %791, i32 0, i32 5
  %793 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %792, i32 0, i32 1
  %794 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %793, i32 0, i32 0
  store i32 %790, i32* %794, align 8
  %795 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %796 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %795, i32 0, i32 2
  %797 = load i32, i32* %796, align 8
  %798 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %799 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %798, i32 0, i32 5
  %800 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %799, i32 0, i32 0
  %801 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %800, i32 0, i32 0
  store i32 %797, i32* %801, align 8
  %802 = load i64, i64* %8, align 8
  %803 = load i64, i64* @LVDS_SYNC, align 8
  %804 = or i64 %802, %803
  %805 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %806 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %805, i32 0, i32 1
  %807 = load i32, i32* %806, align 4
  %808 = sext i32 %807 to i64
  %809 = or i64 %808, %804
  %810 = trunc i64 %809 to i32
  store i32 %810, i32* %806, align 4
  br label %815

811:                                              ; preds = %760
  br label %812

812:                                              ; preds = %811
  %813 = load i64, i64* %8, align 8
  %814 = add nsw i64 %813, 1
  store i64 %814, i64* %8, align 8
  br label %757

815:                                              ; preds = %771, %757
  br label %876

816:                                              ; preds = %725
  store i64 0, i64* %8, align 8
  br label %817

817:                                              ; preds = %872, %816
  %818 = load i64, i64* %8, align 8
  %819 = icmp slt i64 %818, 7
  br i1 %819, label %820, label %875

820:                                              ; preds = %817
  %821 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %822 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %821, i32 0, i32 1
  %823 = load i64*, i64** %822, align 8
  %824 = getelementptr inbounds i64, i64* %823, i64 3
  %825 = load i64, i64* %824, align 8
  %826 = load i64*, i64** @dc395x_clock_period, align 8
  %827 = load i64, i64* %8, align 8
  %828 = getelementptr inbounds i64, i64* %826, i64 %827
  %829 = load i64, i64* %828, align 8
  %830 = icmp sle i64 %825, %829
  br i1 %830, label %831, label %871

831:                                              ; preds = %820
  %832 = load i8**, i8*** @dc395x_tinfo_period, align 8
  %833 = load i64, i64* %8, align 8
  %834 = getelementptr inbounds i8*, i8** %832, i64 %833
  %835 = load i8*, i8** %834, align 8
  %836 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %837 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %836, i32 0, i32 5
  %838 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %837, i32 0, i32 1
  %839 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %838, i32 0, i32 1
  store i8* %835, i8** %839, align 8
  %840 = load i8**, i8*** @dc395x_tinfo_period, align 8
  %841 = load i64, i64* %8, align 8
  %842 = getelementptr inbounds i8*, i8** %840, i64 %841
  %843 = load i8*, i8** %842, align 8
  %844 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %845 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %844, i32 0, i32 5
  %846 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %845, i32 0, i32 0
  %847 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %846, i32 0, i32 1
  store i8* %843, i8** %847, align 8
  %848 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %849 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %848, i32 0, i32 2
  %850 = load i32, i32* %849, align 8
  %851 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %852 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %851, i32 0, i32 5
  %853 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %852, i32 0, i32 1
  %854 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %853, i32 0, i32 0
  store i32 %850, i32* %854, align 8
  %855 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %856 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %855, i32 0, i32 2
  %857 = load i32, i32* %856, align 8
  %858 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %859 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %858, i32 0, i32 5
  %860 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %859, i32 0, i32 0
  %861 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %860, i32 0, i32 0
  store i32 %857, i32* %861, align 8
  %862 = load i64, i64* %8, align 8
  %863 = load i64, i64* @ALT_SYNC, align 8
  %864 = or i64 %862, %863
  %865 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %866 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %865, i32 0, i32 1
  %867 = load i32, i32* %866, align 4
  %868 = sext i32 %867 to i64
  %869 = or i64 %868, %864
  %870 = trunc i64 %869 to i32
  store i32 %870, i32* %866, align 4
  br label %875

871:                                              ; preds = %820
  br label %872

872:                                              ; preds = %871
  %873 = load i64, i64* %8, align 8
  %874 = add nsw i64 %873, 1
  store i64 %874, i64* %8, align 8
  br label %817

875:                                              ; preds = %831, %817
  br label %876

876:                                              ; preds = %875, %815
  %877 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %878 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %877, i32 0, i32 1
  %879 = load i32, i32* %878, align 4
  %880 = load i32, i32* @TRMREG_SCSI_SYNC, align 4
  %881 = call i32 @trm_reg_write8(i32 %879, i32 %880)
  %882 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %883 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %882, i32 0, i32 2
  %884 = load i32, i32* %883, align 8
  %885 = load i32, i32* @TRMREG_SCSI_OFFSET, align 4
  %886 = call i32 @trm_reg_write8(i32 %884, i32 %885)
  %887 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %888 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %889 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %890 = call i32 @trm_SetXferRate(%struct.TYPE_21__* %887, %struct.TYPE_19__* %888, %struct.TYPE_20__* %889)
  %891 = load i32, i32* @PH_BUS_FREE, align 4
  %892 = load i32*, i32** %6, align 8
  store i32 %891, i32* %892, align 4
  %893 = load i32, i32* @DO_DATALATCH, align 4
  %894 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %895 = call i32 @trm_reg_write16(i32 %893, i32 %894)
  %896 = load i32, i32* @SCMD_MSGACCEPT, align 4
  %897 = load i32, i32* @TRMREG_SCSI_COMMAND, align 4
  %898 = call i32 @trm_reg_write8(i32 %896, i32 %897)
  br label %910

899:                                              ; preds = %606, %599, %591
  br label %900

900:                                              ; preds = %899
  br label %901

901:                                              ; preds = %900
  %902 = load i32, i32* @PH_BUS_FREE, align 4
  %903 = load i32*, i32** %6, align 8
  store i32 %902, i32* %903, align 4
  %904 = load i32, i32* @DO_DATALATCH, align 4
  %905 = load i32, i32* @TRMREG_SCSI_CONTROL, align 4
  %906 = call i32 @trm_reg_write16(i32 %904, i32 %905)
  %907 = load i32, i32* @SCMD_MSGACCEPT, align 4
  %908 = load i32, i32* @TRMREG_SCSI_COMMAND, align 4
  %909 = call i32 @trm_reg_write8(i32 %907, i32 %908)
  br label %910

910:                                              ; preds = %27, %43, %64, %205, %218, %231, %386, %433, %474, %574, %633, %666, %876, %901
  ret void
}

declare dso_local i64 @trm_reg_read8(i32) #1

declare dso_local i32 @trm_reg_write16(i32, i32) #1

declare dso_local i32 @trm_reg_write8(i32, i32) #1

declare dso_local i32 @trm_SetXferRate(%struct.TYPE_21__*, %struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i32 @trm_reg_write32(i32, i32) #1

declare dso_local i32 @TRM_DPRINTF(i8*, ...) #1

declare dso_local i32 @trm_EnableMsgOutAbort1(%struct.TYPE_21__*, %struct.TYPE_19__*) #1

declare dso_local i32 @trm_EnableMsgOutAbort2(%struct.TYPE_21__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
