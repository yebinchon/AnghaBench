; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir.c_gdt_sync_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir.c_gdt_sync_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64, i32 }
%struct.gdt_softc = type { i32, i32, %struct.TYPE_12__, i32, i32, i32, i32 (%struct.gdt_softc*)*, i32 (%struct.gdt_softc*, %struct.gdt_ccb*)*, i64, i64, i32 (%struct.gdt_softc*)*, i32, i64 (%struct.gdt_softc*)* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.gdt_ccb = type opaque
%struct.gdt_ccb.0 = type { i8*, i8*, i32, i32, i32, i32, i32, i8*, i8*, %union.ccb* }
%union.ccb = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i8, i32, i64 }
%struct.scsi_sense_data = type opaque
%struct.TYPE_14__ = type { i32, i32, i32 }

@GDT_D_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"gdt_sync_event(%p, %d, %d, %p)\0A\00", align 1
@GDT_SCREENSERVICE = common dso_local global i32 0, align 4
@GDT_SCR_MSG_LEN = common dso_local global i32 0, align 4
@GDT_SCR_MSG_ANSWER = common dso_local global i64 0, align 8
@GDT_SCR_MSG_EXT = common dso_local global i64 0, align 8
@GDT_SCR_MSG_TEXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@GDT_CMD_SZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"No free command index found\0A\00", align 1
@GDT_GCF_SCREEN = common dso_local global i8* null, align 8
@GDT_CMD_COMMANDINDEX = common dso_local global i32 0, align 4
@GDT_CMD_OPCODE = common dso_local global i32 0, align 4
@GDT_READ = common dso_local global i32 0, align 4
@GDT_CMD_UNION = common dso_local global i32 0, align 4
@GDT_SCREEN_MSG_HANDLE = common dso_local global i32 0, align 4
@GDT_SCR_MSG_HANDLE = common dso_local global i64 0, align 8
@GDT_SCREEN_MSG_ADDR = common dso_local global i32 0, align 4
@GDT_SCREEN_SZ = common dso_local global i32 0, align 4
@GDT_SCR_MSG_ALEN = common dso_local global i32 0, align 4
@GDT_WRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@GDT_S_BSY = common dso_local global i32 0, align 4
@GDT_D_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"gdt_sync_event(%p) gccb %p busy\0A\00", align 1
@sim_links = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@gdt_stat = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@GDT_S_OK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_SIM_QUEUED = common dso_local global i32 0, align 4
@GDT_CACHESERVICE = common dso_local global i32 0, align 4
@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@CAM_AUTOSNS_VALID = common dso_local global i32 0, align 4
@SCSI_STATUS_CHECK_COND = common dso_local global i32 0, align 4
@SSD_TYPE_NONE = common dso_local global i32 0, align 4
@SSD_KEY_NOT_READY = common dso_local global i32 0, align 4
@SSD_ELEM_NONE = common dso_local global i32 0, align 4
@GDT_ES_SYNC = common dso_local global i32 0, align 4
@GDT_S_RAW_SCSI = common dso_local global i32 0, align 4
@CAM_DEV_NOT_THERE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdt_sync_event(%struct.gdt_softc* %0, i32 %1, i32 %2, %struct.gdt_ccb.0* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gdt_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gdt_ccb.0*, align 8
  %10 = alloca %union.ccb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.scsi_sense_data*, align 8
  store %struct.gdt_softc* %0, %struct.gdt_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.gdt_ccb.0* %3, %struct.gdt_ccb.0** %9, align 8
  %13 = load i32, i32* @GDT_D_INTR, align 4
  %14 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %18 = bitcast %struct.gdt_ccb.0* %17 to i8*
  %19 = call i32 @GDT_DPRINTF(i32 %13, i8* %18)
  %20 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %21 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %20, i32 0, i32 9
  %22 = load %union.ccb*, %union.ccb** %21, align 8
  store %union.ccb* %22, %union.ccb** %10, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @GDT_SCREENSERVICE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %398

26:                                               ; preds = %4
  %27 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %28 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* @GDT_SCR_MSG_LEN, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = call i32 @gdt_dec32(i8* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %71

36:                                               ; preds = %26
  %37 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %38 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i64, i64* @GDT_SCR_MSG_ANSWER, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %36
  %46 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %47 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i64, i64* @GDT_SCR_MSG_EXT, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %70, label %54

54:                                               ; preds = %45, %36
  %55 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %56 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* @GDT_SCR_MSG_TEXT, align 4
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %57, i64 %61
  store i8 0, i8* %62, align 1
  %63 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %64 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* @GDT_SCR_MSG_TEXT, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %54, %45
  br label %71

71:                                               ; preds = %70, %26
  %72 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %73 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i64, i64* @GDT_SCR_MSG_EXT, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %195

80:                                               ; preds = %71
  %81 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %82 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i64, i64* @GDT_SCR_MSG_ANSWER, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = icmp ne i8 %86, 0
  br i1 %87, label %195, label %88

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %96, %88
  %90 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %91 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %90, i32 0, i32 12
  %92 = load i64 (%struct.gdt_softc*)*, i64 (%struct.gdt_softc*)** %91, align 8
  %93 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %94 = call i64 %92(%struct.gdt_softc* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = call i32 @DELAY(i32 1)
  br label %89

98:                                               ; preds = %89
  %99 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %100 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = load i32, i32* @GDT_CMD_SZ, align 4
  %103 = call i32 @bzero(i8* %101, i32 %102)
  %104 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %105 = call %struct.gdt_ccb.0* @gdt_get_ccb(%struct.gdt_softc* %104)
  store %struct.gdt_ccb.0* %105, %struct.gdt_ccb.0** %9, align 8
  %106 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %107 = icmp eq %struct.gdt_ccb.0* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %98
  %109 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %110 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %109, i32 0, i32 11
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @device_printf(i32 %111, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %638

113:                                              ; preds = %98
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %116 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load i8*, i8** @GDT_GCF_SCREEN, align 8
  %118 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %119 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %118, i32 0, i32 8
  store i8* %117, i8** %119, align 8
  %120 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %121 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = load i32, i32* @GDT_CMD_COMMANDINDEX, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %127 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @gdt_enc32(i8* %125, i32 %128)
  %130 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %131 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = load i32, i32* @GDT_CMD_OPCODE, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i32, i32* @GDT_READ, align 4
  %137 = call i32 @gdt_enc16(i8* %135, i32 %136)
  %138 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %139 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = load i32, i32* @GDT_CMD_UNION, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i32, i32* @GDT_SCREEN_MSG_HANDLE, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %148 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = load i64, i64* @GDT_SCR_MSG_HANDLE, align 8
  %151 = getelementptr inbounds i8, i8* %149, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = call i32 @gdt_enc32(i8* %146, i32 %153)
  %155 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %156 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = load i32, i32* @GDT_CMD_UNION, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = load i32, i32* @GDT_SCREEN_MSG_ADDR, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %165 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @gdt_enc32(i8* %163, i32 %166)
  %168 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %169 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %168, i32 0, i32 10
  %170 = load i32 (%struct.gdt_softc*)*, i32 (%struct.gdt_softc*)** %169, align 8
  %171 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %172 = call i32 %170(%struct.gdt_softc* %171)
  %173 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %174 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %173, i32 0, i32 9
  store i64 0, i64* %174, align 8
  %175 = load i32, i32* @GDT_CMD_UNION, align 4
  %176 = load i32, i32* @GDT_SCREEN_SZ, align 4
  %177 = add nsw i32 %175, %176
  %178 = call i8* @roundup(i32 %177, i32 4)
  %179 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %180 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %179, i32 0, i32 7
  store i8* %178, i8** %180, align 8
  %181 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %182 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %181, i32 0, i32 8
  store i64 0, i64* %182, align 8
  %183 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %184 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %183, i32 0, i32 7
  %185 = load i32 (%struct.gdt_softc*, %struct.gdt_ccb*)*, i32 (%struct.gdt_softc*, %struct.gdt_ccb*)** %184, align 8
  %186 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %187 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %188 = bitcast %struct.gdt_ccb.0* %187 to %struct.gdt_ccb*
  %189 = call i32 %185(%struct.gdt_softc* %186, %struct.gdt_ccb* %188)
  %190 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %191 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %190, i32 0, i32 6
  %192 = load i32 (%struct.gdt_softc*)*, i32 (%struct.gdt_softc*)** %191, align 8
  %193 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %194 = call i32 %192(%struct.gdt_softc* %193)
  store i32 0, i32* %5, align 4
  br label %638

195:                                              ; preds = %80, %71
  %196 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %197 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = load i64, i64* @GDT_SCR_MSG_ANSWER, align 8
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %396

204:                                              ; preds = %195
  %205 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %206 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = load i32, i32* @GDT_SCR_MSG_ALEN, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %207, i64 %209
  %211 = call i32 @gdt_dec32(i8* %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %396

213:                                              ; preds = %204
  %214 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %215 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  %217 = load i32, i32* @GDT_SCR_MSG_ALEN, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, i8* %216, i64 %218
  %220 = call i32 @gdt_dec32(i8* %219)
  %221 = icmp eq i32 %220, 1
  br i1 %221, label %222, label %243

222:                                              ; preds = %213
  %223 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %224 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  %226 = load i32, i32* @GDT_SCR_MSG_ALEN, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %225, i64 %227
  %229 = call i32 @gdt_enc32(i8* %228, i32 0)
  %230 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %231 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = load i32, i32* @GDT_SCR_MSG_LEN, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, i8* %232, i64 %234
  %236 = call i32 @gdt_enc32(i8* %235, i32 1)
  %237 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %238 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = load i32, i32* @GDT_SCR_MSG_TEXT, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8, i8* %239, i64 %241
  store i8 0, i8* %242, align 1
  br label %279

243:                                              ; preds = %213
  %244 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %245 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %244, i32 0, i32 0
  %246 = load i8*, i8** %245, align 8
  %247 = load i32, i32* @GDT_SCR_MSG_ALEN, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, i8* %246, i64 %248
  %250 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %251 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %250, i32 0, i32 0
  %252 = load i8*, i8** %251, align 8
  %253 = load i32, i32* @GDT_SCR_MSG_ALEN, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8, i8* %252, i64 %254
  %256 = call i32 @gdt_dec32(i8* %255)
  %257 = sub nsw i32 %256, 2
  %258 = call i32 @gdt_enc32(i8* %249, i32 %257)
  %259 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %260 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %259, i32 0, i32 0
  %261 = load i8*, i8** %260, align 8
  %262 = load i32, i32* @GDT_SCR_MSG_LEN, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %261, i64 %263
  %265 = call i32 @gdt_enc32(i8* %264, i32 2)
  %266 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %267 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %266, i32 0, i32 0
  %268 = load i8*, i8** %267, align 8
  %269 = load i32, i32* @GDT_SCR_MSG_TEXT, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8, i8* %268, i64 %270
  store i8 1, i8* %271, align 1
  %272 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %273 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %272, i32 0, i32 0
  %274 = load i8*, i8** %273, align 8
  %275 = load i32, i32* @GDT_SCR_MSG_TEXT, align 4
  %276 = add nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8, i8* %274, i64 %277
  store i8 0, i8* %278, align 1
  br label %279

279:                                              ; preds = %243, %222
  %280 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %281 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %280, i32 0, i32 0
  %282 = load i8*, i8** %281, align 8
  %283 = load i64, i64* @GDT_SCR_MSG_EXT, align 8
  %284 = getelementptr inbounds i8, i8* %282, i64 %283
  store i8 0, i8* %284, align 1
  %285 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %286 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %285, i32 0, i32 0
  %287 = load i8*, i8** %286, align 8
  %288 = load i64, i64* @GDT_SCR_MSG_ANSWER, align 8
  %289 = getelementptr inbounds i8, i8* %287, i64 %288
  store i8 0, i8* %289, align 1
  br label %290

290:                                              ; preds = %297, %279
  %291 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %292 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %291, i32 0, i32 12
  %293 = load i64 (%struct.gdt_softc*)*, i64 (%struct.gdt_softc*)** %292, align 8
  %294 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %295 = call i64 %293(%struct.gdt_softc* %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %290
  %298 = call i32 @DELAY(i32 1)
  br label %290

299:                                              ; preds = %290
  %300 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %301 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %300, i32 0, i32 1
  %302 = load i8*, i8** %301, align 8
  %303 = load i32, i32* @GDT_CMD_SZ, align 4
  %304 = call i32 @bzero(i8* %302, i32 %303)
  %305 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %306 = call %struct.gdt_ccb.0* @gdt_get_ccb(%struct.gdt_softc* %305)
  store %struct.gdt_ccb.0* %306, %struct.gdt_ccb.0** %9, align 8
  %307 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %308 = icmp eq %struct.gdt_ccb.0* %307, null
  br i1 %308, label %309, label %314

309:                                              ; preds = %299
  %310 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %311 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %310, i32 0, i32 11
  %312 = load i32, i32* %311, align 8
  %313 = call i32 @device_printf(i32 %312, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %638

314:                                              ; preds = %299
  %315 = load i32, i32* %7, align 4
  %316 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %317 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %316, i32 0, i32 2
  store i32 %315, i32* %317, align 8
  %318 = load i8*, i8** @GDT_GCF_SCREEN, align 8
  %319 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %320 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %319, i32 0, i32 8
  store i8* %318, i8** %320, align 8
  %321 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %322 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %321, i32 0, i32 1
  %323 = load i8*, i8** %322, align 8
  %324 = load i32, i32* @GDT_CMD_COMMANDINDEX, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8, i8* %323, i64 %325
  %327 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %328 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @gdt_enc32(i8* %326, i32 %329)
  %331 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %332 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %331, i32 0, i32 1
  %333 = load i8*, i8** %332, align 8
  %334 = load i32, i32* @GDT_CMD_OPCODE, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i8, i8* %333, i64 %335
  %337 = load i32, i32* @GDT_WRITE, align 4
  %338 = call i32 @gdt_enc16(i8* %336, i32 %337)
  %339 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %340 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %339, i32 0, i32 1
  %341 = load i8*, i8** %340, align 8
  %342 = load i32, i32* @GDT_CMD_UNION, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8, i8* %341, i64 %343
  %345 = load i32, i32* @GDT_SCREEN_MSG_HANDLE, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i8, i8* %344, i64 %346
  %348 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %349 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %348, i32 0, i32 0
  %350 = load i8*, i8** %349, align 8
  %351 = load i64, i64* @GDT_SCR_MSG_HANDLE, align 8
  %352 = getelementptr inbounds i8, i8* %350, i64 %351
  %353 = load i8, i8* %352, align 1
  %354 = sext i8 %353 to i32
  %355 = call i32 @gdt_enc32(i8* %347, i32 %354)
  %356 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %357 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %356, i32 0, i32 1
  %358 = load i8*, i8** %357, align 8
  %359 = load i32, i32* @GDT_CMD_UNION, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i8, i8* %358, i64 %360
  %362 = load i32, i32* @GDT_SCREEN_MSG_ADDR, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i8, i8* %361, i64 %363
  %365 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %366 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %365, i32 0, i32 4
  %367 = load i32, i32* %366, align 8
  %368 = call i32 @gdt_enc32(i8* %364, i32 %367)
  %369 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %370 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %369, i32 0, i32 10
  %371 = load i32 (%struct.gdt_softc*)*, i32 (%struct.gdt_softc*)** %370, align 8
  %372 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %373 = call i32 %371(%struct.gdt_softc* %372)
  %374 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %375 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %374, i32 0, i32 9
  store i64 0, i64* %375, align 8
  %376 = load i32, i32* @GDT_CMD_UNION, align 4
  %377 = load i32, i32* @GDT_SCREEN_SZ, align 4
  %378 = add nsw i32 %376, %377
  %379 = call i8* @roundup(i32 %378, i32 4)
  %380 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %381 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %380, i32 0, i32 7
  store i8* %379, i8** %381, align 8
  %382 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %383 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %382, i32 0, i32 8
  store i64 0, i64* %383, align 8
  %384 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %385 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %384, i32 0, i32 7
  %386 = load i32 (%struct.gdt_softc*, %struct.gdt_ccb*)*, i32 (%struct.gdt_softc*, %struct.gdt_ccb*)** %385, align 8
  %387 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %388 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %389 = bitcast %struct.gdt_ccb.0* %388 to %struct.gdt_ccb*
  %390 = call i32 %386(%struct.gdt_softc* %387, %struct.gdt_ccb* %389)
  %391 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %392 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %391, i32 0, i32 6
  %393 = load i32 (%struct.gdt_softc*)*, i32 (%struct.gdt_softc*)** %392, align 8
  %394 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %395 = call i32 %393(%struct.gdt_softc* %394)
  store i32 0, i32* %5, align 4
  br label %638

396:                                              ; preds = %204, %195
  %397 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %638

398:                                              ; preds = %4
  %399 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %400 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %399, i32 0, i32 6
  %401 = call i32 @callout_stop(i32* %400)
  %402 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %403 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = load i32, i32* @GDT_S_BSY, align 4
  %406 = icmp eq i32 %404, %405
  br i1 %406, label %407, label %427

407:                                              ; preds = %398
  %408 = load i32, i32* @GDT_D_DEBUG, align 4
  %409 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %410 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %411 = bitcast %struct.gdt_ccb.0* %410 to i8*
  %412 = call i32 @GDT_DPRINTF(i32 %408, i8* %411)
  %413 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %414 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %413, i32 0, i32 5
  %415 = load %union.ccb*, %union.ccb** %10, align 8
  %416 = bitcast %union.ccb* %415 to %struct.TYPE_14__*
  %417 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sim_links, i32 0, i32 0), align 4
  %418 = call i32 @TAILQ_INSERT_HEAD(i32* %414, %struct.TYPE_14__* %416, i32 %417)
  %419 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gdt_stat, i32 0, i32 0), align 8
  %420 = add nsw i64 %419, 1
  store i64 %420, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gdt_stat, i32 0, i32 0), align 8
  %421 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gdt_stat, i32 0, i32 0), align 8
  %422 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gdt_stat, i32 0, i32 1), align 8
  %423 = icmp sgt i64 %421, %422
  br i1 %423, label %424, label %426

424:                                              ; preds = %407
  %425 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gdt_stat, i32 0, i32 0), align 8
  store i64 %425, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gdt_stat, i32 0, i32 1), align 8
  br label %426

426:                                              ; preds = %424, %407
  store i32 2, i32* %5, align 4
  br label %638

427:                                              ; preds = %398
  %428 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %429 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %428, i32 0, i32 4
  %430 = load i32, i32* %429, align 4
  %431 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %432 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %431, i32 0, i32 5
  %433 = load i32, i32* %432, align 4
  %434 = load %union.ccb*, %union.ccb** %10, align 8
  %435 = bitcast %union.ccb* %434 to %struct.TYPE_14__*
  %436 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 8
  %438 = load i32, i32* @CAM_DIR_MASK, align 4
  %439 = and i32 %437, %438
  %440 = load i32, i32* @CAM_DIR_IN, align 4
  %441 = icmp eq i32 %439, %440
  br i1 %441, label %442, label %444

442:                                              ; preds = %427
  %443 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  br label %446

444:                                              ; preds = %427
  %445 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  br label %446

446:                                              ; preds = %444, %442
  %447 = phi i32 [ %443, %442 ], [ %445, %444 ]
  %448 = call i32 @bus_dmamap_sync(i32 %430, i32 %433, i32 %447)
  %449 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %450 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %449, i32 0, i32 4
  %451 = load i32, i32* %450, align 4
  %452 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %453 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %452, i32 0, i32 5
  %454 = load i32, i32* %453, align 4
  %455 = call i32 @bus_dmamap_unload(i32 %451, i32 %454)
  %456 = load %union.ccb*, %union.ccb** %10, align 8
  %457 = bitcast %union.ccb* %456 to %struct.TYPE_10__*
  %458 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %457, i32 0, i32 3
  store i64 0, i64* %458, align 8
  %459 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %460 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = load i32, i32* @GDT_S_OK, align 4
  %463 = icmp eq i32 %461, %462
  br i1 %463, label %464, label %478

464:                                              ; preds = %446
  %465 = load i32, i32* @CAM_REQ_CMP, align 4
  %466 = load %union.ccb*, %union.ccb** %10, align 8
  %467 = bitcast %union.ccb* %466 to %struct.TYPE_14__*
  %468 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %467, i32 0, i32 1
  %469 = load i32, i32* %468, align 4
  %470 = or i32 %469, %465
  store i32 %470, i32* %468, align 4
  %471 = load i32, i32* @CAM_SIM_QUEUED, align 4
  %472 = xor i32 %471, -1
  %473 = load %union.ccb*, %union.ccb** %10, align 8
  %474 = bitcast %union.ccb* %473 to %struct.TYPE_14__*
  %475 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %474, i32 0, i32 1
  %476 = load i32, i32* %475, align 4
  %477 = and i32 %476, %472
  store i32 %477, i32* %475, align 4
  br label %632

478:                                              ; preds = %446
  %479 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %480 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %479, i32 0, i32 2
  %481 = load i32, i32* %480, align 8
  %482 = load i32, i32* @GDT_CACHESERVICE, align 4
  %483 = icmp eq i32 %481, %482
  br i1 %483, label %484, label %580

484:                                              ; preds = %478
  %485 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %486 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %487 = or i32 %485, %486
  %488 = load %union.ccb*, %union.ccb** %10, align 8
  %489 = bitcast %union.ccb* %488 to %struct.TYPE_14__*
  %490 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %489, i32 0, i32 1
  %491 = load i32, i32* %490, align 4
  %492 = or i32 %491, %487
  store i32 %492, i32* %490, align 4
  %493 = load i32, i32* @CAM_SIM_QUEUED, align 4
  %494 = xor i32 %493, -1
  %495 = load %union.ccb*, %union.ccb** %10, align 8
  %496 = bitcast %union.ccb* %495 to %struct.TYPE_14__*
  %497 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %496, i32 0, i32 1
  %498 = load i32, i32* %497, align 4
  %499 = and i32 %498, %494
  store i32 %499, i32* %497, align 4
  %500 = load i32, i32* @SCSI_STATUS_CHECK_COND, align 4
  %501 = load %union.ccb*, %union.ccb** %10, align 8
  %502 = bitcast %union.ccb* %501 to %struct.TYPE_10__*
  %503 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %502, i32 0, i32 0
  store i32 %500, i32* %503, align 8
  %504 = load %union.ccb*, %union.ccb** %10, align 8
  %505 = bitcast %union.ccb* %504 to %struct.TYPE_10__*
  %506 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %505, i32 0, i32 1
  %507 = load %union.ccb*, %union.ccb** %10, align 8
  %508 = bitcast %union.ccb* %507 to %struct.TYPE_10__*
  %509 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %508, i32 0, i32 2
  %510 = load i32, i32* %509, align 8
  %511 = call i32 @bzero(i8* %506, i32 %510)
  %512 = load %union.ccb*, %union.ccb** %10, align 8
  %513 = bitcast %union.ccb* %512 to %struct.TYPE_10__*
  %514 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %513, i32 0, i32 1
  %515 = bitcast i8* %514 to %struct.scsi_sense_data*
  store %struct.scsi_sense_data* %515, %struct.scsi_sense_data** %12, align 8
  %516 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %12, align 8
  %517 = bitcast %struct.scsi_sense_data* %516 to i8*
  %518 = load i32, i32* @SSD_TYPE_NONE, align 4
  %519 = load i32, i32* @SSD_KEY_NOT_READY, align 4
  %520 = load i32, i32* @SSD_ELEM_NONE, align 4
  %521 = call i32 @scsi_set_sense_data(i8* %517, i32 %518, i32 1, i32 %519, i32 4, i32 1, i32 %520)
  %522 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %523 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %522, i32 0, i32 2
  %524 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %523, i32 0, i32 0
  store i32 20, i32* %524, align 8
  %525 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %526 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %525, i32 0, i32 3
  %527 = load i32, i32* %526, align 8
  %528 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %529 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %528, i32 0, i32 2
  %530 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %529, i32 0, i32 1
  %531 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %530, i32 0, i32 0
  %532 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %531, i32 0, i32 4
  store i32 %527, i32* %532, align 4
  %533 = load i32, i32* %7, align 4
  %534 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %535 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %534, i32 0, i32 2
  %536 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %535, i32 0, i32 1
  %537 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %536, i32 0, i32 0
  %538 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %537, i32 0, i32 0
  store i32 %533, i32* %538, align 4
  %539 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %540 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %539, i32 0, i32 0
  %541 = load i32, i32* %540, align 8
  %542 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %543 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %542, i32 0, i32 2
  %544 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %543, i32 0, i32 1
  %545 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %544, i32 0, i32 0
  %546 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %545, i32 0, i32 1
  store i32 %541, i32* %546, align 4
  %547 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %548 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %547, i32 0, i32 1
  %549 = load i32, i32* %548, align 4
  %550 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %551 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %550, i32 0, i32 2
  %552 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %551, i32 0, i32 1
  %553 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %552, i32 0, i32 0
  %554 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %553, i32 0, i32 2
  store i32 %549, i32* %554, align 4
  %555 = load %union.ccb*, %union.ccb** %10, align 8
  %556 = bitcast %union.ccb* %555 to %struct.TYPE_14__*
  %557 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %556, i32 0, i32 2
  %558 = load i32, i32* %557, align 8
  %559 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %560 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %559, i32 0, i32 2
  %561 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %560, i32 0, i32 1
  %562 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %561, i32 0, i32 0
  %563 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %562, i32 0, i32 3
  store i32 %558, i32* %563, align 4
  %564 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %565 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %564, i32 0, i32 0
  %566 = load i32, i32* %565, align 8
  %567 = icmp sge i32 %566, 32768
  br i1 %567, label %568, label %573

568:                                              ; preds = %484
  %569 = load i32, i32* @GDT_ES_SYNC, align 4
  %570 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %571 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %570, i32 0, i32 2
  %572 = call i32 @gdt_store_event(i32 %569, i32 0, %struct.TYPE_12__* %571)
  br label %579

573:                                              ; preds = %484
  %574 = load i32, i32* @GDT_ES_SYNC, align 4
  %575 = load i32, i32* %7, align 4
  %576 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %577 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %576, i32 0, i32 2
  %578 = call i32 @gdt_store_event(i32 %574, i32 %575, %struct.TYPE_12__* %577)
  br label %579

579:                                              ; preds = %573, %568
  br label %631

580:                                              ; preds = %478
  %581 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %582 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %581, i32 0, i32 0
  %583 = load i32, i32* %582, align 8
  %584 = load i32, i32* @GDT_S_RAW_SCSI, align 4
  %585 = icmp ne i32 %583, %584
  br i1 %585, label %591, label %586

586:                                              ; preds = %580
  %587 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %588 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %587, i32 0, i32 1
  %589 = load i32, i32* %588, align 4
  %590 = icmp sge i32 %589, 256
  br i1 %590, label %591, label %596

591:                                              ; preds = %586, %580
  %592 = load i32, i32* @CAM_DEV_NOT_THERE, align 4
  %593 = load %union.ccb*, %union.ccb** %10, align 8
  %594 = bitcast %union.ccb* %593 to %struct.TYPE_14__*
  %595 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %594, i32 0, i32 1
  store i32 %592, i32* %595, align 4
  br label %630

596:                                              ; preds = %586
  %597 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %598 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %599 = or i32 %597, %598
  %600 = load %union.ccb*, %union.ccb** %10, align 8
  %601 = bitcast %union.ccb* %600 to %struct.TYPE_14__*
  %602 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %601, i32 0, i32 1
  %603 = load i32, i32* %602, align 4
  %604 = or i32 %603, %599
  store i32 %604, i32* %602, align 4
  %605 = load i32, i32* @CAM_SIM_QUEUED, align 4
  %606 = xor i32 %605, -1
  %607 = load %union.ccb*, %union.ccb** %10, align 8
  %608 = bitcast %union.ccb* %607 to %struct.TYPE_14__*
  %609 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %608, i32 0, i32 1
  %610 = load i32, i32* %609, align 4
  %611 = and i32 %610, %606
  store i32 %611, i32* %609, align 4
  %612 = load %struct.gdt_softc*, %struct.gdt_softc** %6, align 8
  %613 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %612, i32 0, i32 1
  %614 = load i32, i32* %613, align 4
  %615 = load %union.ccb*, %union.ccb** %10, align 8
  %616 = bitcast %union.ccb* %615 to %struct.TYPE_10__*
  %617 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %616, i32 0, i32 0
  store i32 %614, i32* %617, align 8
  %618 = load %struct.gdt_ccb.0*, %struct.gdt_ccb.0** %9, align 8
  %619 = getelementptr inbounds %struct.gdt_ccb.0, %struct.gdt_ccb.0* %618, i32 0, i32 0
  %620 = load i8*, i8** %619, align 8
  %621 = bitcast i8* %620 to i32*
  %622 = load %union.ccb*, %union.ccb** %10, align 8
  %623 = bitcast %union.ccb* %622 to %struct.TYPE_10__*
  %624 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %623, i32 0, i32 1
  %625 = load %union.ccb*, %union.ccb** %10, align 8
  %626 = bitcast %union.ccb* %625 to %struct.TYPE_10__*
  %627 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %626, i32 0, i32 2
  %628 = load i32, i32* %627, align 8
  %629 = call i32 @bcopy(i32* %621, i8* %624, i32 %628)
  br label %630

630:                                              ; preds = %596, %591
  br label %631

631:                                              ; preds = %630, %579
  br label %632

632:                                              ; preds = %631, %464
  %633 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gdt_stat, i32 0, i32 2), align 8
  %634 = add nsw i32 %633, -1
  store i32 %634, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gdt_stat, i32 0, i32 2), align 8
  %635 = load %union.ccb*, %union.ccb** %10, align 8
  %636 = call i32 @xpt_done(%union.ccb* %635)
  br label %637

637:                                              ; preds = %632
  store i32 0, i32* %5, align 4
  br label %638

638:                                              ; preds = %637, %426, %396, %314, %309, %113, %108
  %639 = load i32, i32* %5, align 4
  ret i32 %639
}

declare dso_local i32 @GDT_DPRINTF(i32, i8*) #1

declare dso_local i32 @gdt_dec32(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local %struct.gdt_ccb.0* @gdt_get_ccb(%struct.gdt_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @gdt_enc32(i8*, i32) #1

declare dso_local i32 @gdt_enc16(i8*, i32) #1

declare dso_local i8* @roundup(i32, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @scsi_set_sense_data(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gdt_store_event(i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @bcopy(i32*, i8*, i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
