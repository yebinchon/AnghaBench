; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_search_qinfifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_search_qinfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32*, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.scb = type { i32 }

@AHD_MODE_CCHAN = common dso_local global i32 0, align 4
@CCSCBCTL = common dso_local global i32 0, align 4
@CCARREN = common dso_local global i32 0, align 4
@CCSCBEN = common dso_local global i32 0, align 4
@CCSCBDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"qinstart = %d qinfifonext = %d\0AQINFIFO:\00", align 1
@NEXT_QUEUED_SCB_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"qinpos = %d, SCB index = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Loop 1\0A\00", align 1
@SCB_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Inactive SCB in qinfifo\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" 0x%x\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"\0AWAITING_TID_QUEUES:\0A\00", align 1
@AHD_MODE_SCSI = common dso_local global i32 0, align 4
@SEQ_FLAGS2 = common dso_local global i32 0, align 4
@PENDING_MK_MESSAGE = common dso_local global i32 0, align 4
@MK_MESSAGE_SCB = common dso_local global i32 0, align 4
@WAITING_TID_HEAD = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i32 0, align 4
@AHD_NUM_TARGETS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"TID LIST LOOP\00", align 1
@.str.7 = private unnamed_addr constant [76 x i8] c"%s: Waiting TID List inconsistency. SCB index == 0x%x, yet numscbs == 0x%x.\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"for safety\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"%s: SCB = 0x%x Not Active!\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Waiting TID List traversal\0A\00", align 1
@SCB_NEXT2 = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@ROLE_UNKNOWN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"       %d ( \00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Inactive SCB pending MK_MSG\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Removing MK_MSG scb\0A\00", align 1
@WAITING_SCB_TAILS = common dso_local global i32 0, align 4
@CMDS_PENDING = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [21 x i8] c"Queueing mk_msg_scb\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_search_qinfifo(%struct.ahd_softc* %0, i32 %1, i8 signext %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.ahd_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.scb*, align 8
  %18 = alloca %struct.scb*, align 8
  %19 = alloca %struct.scb*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8 %2, i8* %11, align 1
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %35 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %36 = call i32 @ahd_save_modes(%struct.ahd_softc* %35)
  store i32 %36, i32* %20, align 4
  %37 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %38 = load i32, i32* @AHD_MODE_CCHAN, align 4
  %39 = load i32, i32* @AHD_MODE_CCHAN, align 4
  %40 = call i32 @ahd_set_modes(%struct.ahd_softc* %37, i32 %38, i32 %39)
  %41 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %42 = load i32, i32* @CCSCBCTL, align 4
  %43 = call i32 @ahd_inb(%struct.ahd_softc* %41, i32 %42)
  %44 = load i32, i32* @CCARREN, align 4
  %45 = load i32, i32* @CCSCBEN, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @CCSCBDIR, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %43, %48
  %50 = load i32, i32* @CCARREN, align 4
  %51 = load i32, i32* @CCSCBEN, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @CCSCBDIR, align 4
  %54 = or i32 %52, %53
  %55 = icmp eq i32 %49, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %8
  %57 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %58 = load i32, i32* @CCSCBCTL, align 4
  %59 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %60 = load i32, i32* @CCSCBCTL, align 4
  %61 = call i32 @ahd_inb(%struct.ahd_softc* %59, i32 %60)
  %62 = load i32, i32* @CCARREN, align 4
  %63 = load i32, i32* @CCSCBEN, align 4
  %64 = or i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = and i32 %61, %65
  %67 = call i32 @ahd_outb(%struct.ahd_softc* %57, i32 %58, i32 %66)
  br label %68

68:                                               ; preds = %77, %56
  %69 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %70 = load i32, i32* @CCSCBCTL, align 4
  %71 = call i32 @ahd_inb(%struct.ahd_softc* %69, i32 %70)
  %72 = load i32, i32* @CCARREN, align 4
  %73 = load i32, i32* @CCSCBEN, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %71, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %68

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78, %8
  %80 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %81 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @AHD_QIN_WRAP(i32 %82)
  store i32 %83, i32* %23, align 4
  %84 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %85 = call i32 @ahd_get_snscb_qoff(%struct.ahd_softc* %84)
  store i32 %85, i32* %21, align 4
  %86 = load i32, i32* %21, align 4
  %87 = call i32 @AHD_QIN_WRAP(i32 %86)
  store i32 %87, i32* %22, align 4
  store i32 0, i32* %30, align 4
  store %struct.scb* null, %struct.scb** %19, align 8
  %88 = load i32, i32* %16, align 4
  %89 = icmp eq i32 %88, 129
  br i1 %89, label %90, label %96

90:                                               ; preds = %79
  %91 = load i32, i32* %21, align 4
  %92 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %93 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %90, %79
  %97 = load i32, i32* %21, align 4
  %98 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %99 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %101 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %100, i32 0, i32 3
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @aic_le32toh(i32 %104)
  store i32 %105, i32* %29, align 4
  %106 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %107 = load i32, i32* @NEXT_QUEUED_SCB_ADDR, align 4
  %108 = load i32, i32* %29, align 4
  %109 = call i32 @ahd_outl(%struct.ahd_softc* %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %190, %96
  %111 = load i32, i32* %22, align 4
  %112 = load i32, i32* %23, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %194

114:                                              ; preds = %110
  %115 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %116 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %117 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %22, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %115, i32 %122)
  store %struct.scb* %123, %struct.scb** %17, align 8
  %124 = load %struct.scb*, %struct.scb** %17, align 8
  %125 = icmp eq %struct.scb* %124, null
  br i1 %125, label %126, label %139

126:                                              ; preds = %114
  %127 = load i32, i32* %22, align 4
  %128 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %129 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %22, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %127, i32 %134)
  %136 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %137 = call i32 @AHD_FATAL_ERROR(%struct.ahd_softc* %136)
  %138 = call i32 @panic(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %139

139:                                              ; preds = %126, %114
  %140 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %141 = load %struct.scb*, %struct.scb** %17, align 8
  %142 = load i32, i32* %10, align 4
  %143 = load i8, i8* %11, align 1
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* %14, align 4
  %147 = call i64 @ahd_match_scb(%struct.ahd_softc* %140, %struct.scb* %141, i32 %142, i8 signext %143, i32 %144, i32 %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %184

149:                                              ; preds = %139
  %150 = load i32, i32* %30, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %30, align 4
  %152 = load i32, i32* %16, align 4
  switch i32 %152, label %183 [
    i32 131, label %153
    i32 128, label %167
    i32 129, label %168
    i32 130, label %177
  ]

153:                                              ; preds = %149
  %154 = load %struct.scb*, %struct.scb** %17, align 8
  %155 = getelementptr inbounds %struct.scb, %struct.scb* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @SCB_ACTIVE, align 4
  %158 = and i32 %156, %157
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %153
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %162

162:                                              ; preds = %160, %153
  %163 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %164 = load %struct.scb*, %struct.scb** %17, align 8
  %165 = load i32, i32* %15, align 4
  %166 = call i32 @ahd_done_with_status(%struct.ahd_softc* %163, %struct.scb* %164, i32 %165)
  br label %167

167:                                              ; preds = %149, %162
  br label %183

168:                                              ; preds = %149
  %169 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %170 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %22, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %149, %168
  %178 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %179 = load %struct.scb*, %struct.scb** %19, align 8
  %180 = load %struct.scb*, %struct.scb** %17, align 8
  %181 = call i32 @ahd_qinfifo_requeue(%struct.ahd_softc* %178, %struct.scb* %179, %struct.scb* %180)
  %182 = load %struct.scb*, %struct.scb** %17, align 8
  store %struct.scb* %182, %struct.scb** %19, align 8
  br label %183

183:                                              ; preds = %149, %177, %167
  br label %190

184:                                              ; preds = %139
  %185 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %186 = load %struct.scb*, %struct.scb** %19, align 8
  %187 = load %struct.scb*, %struct.scb** %17, align 8
  %188 = call i32 @ahd_qinfifo_requeue(%struct.ahd_softc* %185, %struct.scb* %186, %struct.scb* %187)
  %189 = load %struct.scb*, %struct.scb** %17, align 8
  store %struct.scb* %189, %struct.scb** %19, align 8
  br label %190

190:                                              ; preds = %184, %183
  %191 = load i32, i32* %22, align 4
  %192 = add nsw i32 %191, 1
  %193 = call i32 @AHD_QIN_WRAP(i32 %192)
  store i32 %193, i32* %22, align 4
  br label %110

194:                                              ; preds = %110
  %195 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %196 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %197 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @ahd_set_hnscb_qoff(%struct.ahd_softc* %195, i32 %198)
  %200 = load i32, i32* %16, align 4
  %201 = icmp eq i32 %200, 129
  br i1 %201, label %202, label %204

202:                                              ; preds = %194
  %203 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %204

204:                                              ; preds = %202, %194
  %205 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %206 = load i32, i32* @AHD_MODE_SCSI, align 4
  %207 = load i32, i32* @AHD_MODE_SCSI, align 4
  %208 = call i32 @ahd_set_modes(%struct.ahd_softc* %205, i32 %206, i32 %207)
  %209 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %210 = load i32, i32* @SEQ_FLAGS2, align 4
  %211 = call i32 @ahd_inb(%struct.ahd_softc* %209, i32 %210)
  store i32 %211, i32* %27, align 4
  %212 = load i32, i32* %27, align 4
  %213 = load i32, i32* @PENDING_MK_MESSAGE, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %204
  %217 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %218 = load i32, i32* @MK_MESSAGE_SCB, align 4
  %219 = call i32 @ahd_inw(%struct.ahd_softc* %217, i32 %218)
  store i32 %219, i32* %26, align 4
  %220 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %221 = load i32, i32* %26, align 4
  %222 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %220, i32 %221)
  store %struct.scb* %222, %struct.scb** %18, align 8
  br label %224

223:                                              ; preds = %204
  store %struct.scb* null, %struct.scb** %18, align 8
  br label %224

224:                                              ; preds = %223, %216
  %225 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %226 = call i32 @ahd_get_scbptr(%struct.ahd_softc* %225)
  store i32 %226, i32* %28, align 4
  %227 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %228 = load i32, i32* @WAITING_TID_HEAD, align 4
  %229 = call i32 @ahd_inw(%struct.ahd_softc* %227, i32 %228)
  store i32 %229, i32* %24, align 4
  %230 = load i32, i32* @SCB_LIST_NULL, align 4
  store i32 %230, i32* %25, align 4
  store i32 0, i32* %31, align 4
  %231 = load i32, i32* %24, align 4
  store i32 %231, i32* %26, align 4
  br label %232

232:                                              ; preds = %435, %224
  %233 = load i32, i32* %26, align 4
  %234 = call i64 @SCBID_IS_NULL(i32 %233)
  %235 = icmp ne i64 %234, 0
  %236 = xor i1 %235, true
  br i1 %236, label %237, label %437

237:                                              ; preds = %232
  %238 = load i32, i32* %31, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %31, align 4
  %240 = load i32, i32* %31, align 4
  %241 = load i32, i32* @AHD_NUM_TARGETS, align 4
  %242 = icmp sgt i32 %240, %241
  br i1 %242, label %243, label %245

243:                                              ; preds = %237
  %244 = call i32 @panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %245

245:                                              ; preds = %243, %237
  %246 = load i32, i32* %26, align 4
  %247 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %248 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = icmp sge i32 %246, %250
  br i1 %251, label %252, label %264

252:                                              ; preds = %245
  %253 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %254 = call i8* @ahd_name(%struct.ahd_softc* %253)
  %255 = load i32, i32* %26, align 4
  %256 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %257 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.7, i64 0, i64 0), i8* %254, i32 %255, i32 %259)
  %261 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %262 = call i32 @ahd_dump_card_state(%struct.ahd_softc* %261)
  %263 = call i32 @panic(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %264

264:                                              ; preds = %252, %245
  %265 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %266 = load i32, i32* %26, align 4
  %267 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %265, i32 %266)
  store %struct.scb* %267, %struct.scb** %17, align 8
  %268 = load %struct.scb*, %struct.scb** %17, align 8
  %269 = icmp eq %struct.scb* %268, null
  br i1 %269, label %270, label %276

270:                                              ; preds = %264
  %271 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %272 = call i8* @ahd_name(%struct.ahd_softc* %271)
  %273 = load i32, i32* %26, align 4
  %274 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* %272, i32 %273)
  %275 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  br label %276

276:                                              ; preds = %270, %264
  %277 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %278 = load i32, i32* %26, align 4
  %279 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %277, i32 %278)
  %280 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %281 = load i32, i32* @SCB_NEXT2, align 4
  %282 = call i32 @ahd_inw_scbram(%struct.ahd_softc* %280, i32 %281)
  store i32 %282, i32* %24, align 4
  %283 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %284 = load %struct.scb*, %struct.scb** %17, align 8
  %285 = load i32, i32* %10, align 4
  %286 = load i8, i8* %11, align 1
  %287 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %288 = load i32, i32* @SCB_LIST_NULL, align 4
  %289 = load i32, i32* @ROLE_UNKNOWN, align 4
  %290 = call i64 @ahd_match_scb(%struct.ahd_softc* %283, %struct.scb* %284, i32 %285, i8 signext %286, i32 %287, i32 %288, i32 %289)
  %291 = icmp eq i64 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %276
  %293 = load i32, i32* %26, align 4
  store i32 %293, i32* %25, align 4
  br label %435

294:                                              ; preds = %276
  %295 = load i32, i32* %16, align 4
  %296 = icmp eq i32 %295, 129
  br i1 %296, label %297, label %302

297:                                              ; preds = %294
  %298 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %299 = load %struct.scb*, %struct.scb** %17, align 8
  %300 = call i32 @SCB_GET_TARGET(%struct.ahd_softc* %298, %struct.scb* %299)
  %301 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %300)
  br label %302

302:                                              ; preds = %297, %294
  %303 = load i32, i32* %26, align 4
  store i32 %303, i32* %32, align 4
  %304 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %305 = load i32, i32* %10, align 4
  %306 = load i8, i8* %11, align 1
  %307 = load i32, i32* %12, align 4
  %308 = load i32, i32* %13, align 4
  %309 = load i32, i32* %14, align 4
  %310 = load i32, i32* %15, align 4
  %311 = load i32, i32* %16, align 4
  %312 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %313 = load %struct.scb*, %struct.scb** %17, align 8
  %314 = call i32 @SCB_GET_TARGET(%struct.ahd_softc* %312, %struct.scb* %313)
  %315 = call i64 @ahd_search_scb_list(%struct.ahd_softc* %304, i32 %305, i8 signext %306, i32 %307, i32 %308, i32 %309, i32 %310, i32 %311, i32* %32, i32* %33, i32 %314)
  %316 = load i32, i32* %30, align 4
  %317 = sext i32 %316 to i64
  %318 = add nsw i64 %317, %315
  %319 = trunc i64 %318 to i32
  store i32 %319, i32* %30, align 4
  %320 = load %struct.scb*, %struct.scb** %18, align 8
  %321 = icmp ne %struct.scb* %320, null
  br i1 %321, label %322, label %383

322:                                              ; preds = %302
  %323 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %324 = load %struct.scb*, %struct.scb** %18, align 8
  %325 = load i32, i32* %10, align 4
  %326 = load i8, i8* %11, align 1
  %327 = load i32, i32* %12, align 4
  %328 = load i32, i32* %13, align 4
  %329 = load i32, i32* %14, align 4
  %330 = call i64 @ahd_match_scb(%struct.ahd_softc* %323, %struct.scb* %324, i32 %325, i8 signext %326, i32 %327, i32 %328, i32 %329)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %383

332:                                              ; preds = %322
  %333 = load i32, i32* %30, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %30, align 4
  %335 = load i32, i32* %16, align 4
  switch i32 %335, label %382 [
    i32 131, label %336
    i32 128, label %350
    i32 129, label %377
    i32 130, label %381
  ]

336:                                              ; preds = %332
  %337 = load %struct.scb*, %struct.scb** %18, align 8
  %338 = getelementptr inbounds %struct.scb, %struct.scb* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @SCB_ACTIVE, align 4
  %341 = and i32 %339, %340
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %345

343:                                              ; preds = %336
  %344 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  br label %345

345:                                              ; preds = %343, %336
  %346 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %347 = load %struct.scb*, %struct.scb** %18, align 8
  %348 = load i32, i32* %15, align 4
  %349 = call i32 @ahd_done_with_status(%struct.ahd_softc* %346, %struct.scb* %347, i32 %348)
  br label %350

350:                                              ; preds = %332, %345
  %351 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  %352 = load i32, i32* @WAITING_SCB_TAILS, align 4
  %353 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %354 = load %struct.scb*, %struct.scb** %18, align 8
  %355 = call i32 @SCB_GET_TARGET(%struct.ahd_softc* %353, %struct.scb* %354)
  %356 = mul nsw i32 2, %355
  %357 = add nsw i32 %352, %356
  store i32 %357, i32* %34, align 4
  %358 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %359 = load i32, i32* %34, align 4
  %360 = load i32, i32* %33, align 4
  %361 = call i32 @ahd_outw(%struct.ahd_softc* %358, i32 %359, i32 %360)
  %362 = load i32, i32* @PENDING_MK_MESSAGE, align 4
  %363 = xor i32 %362, -1
  %364 = load i32, i32* %27, align 4
  %365 = and i32 %364, %363
  store i32 %365, i32* %27, align 4
  %366 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %367 = load i32, i32* @SEQ_FLAGS2, align 4
  %368 = load i32, i32* %27, align 4
  %369 = call i32 @ahd_outb(%struct.ahd_softc* %366, i32 %367, i32 %368)
  %370 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %371 = load i32, i32* @CMDS_PENDING, align 4
  %372 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %373 = load i32, i32* @CMDS_PENDING, align 4
  %374 = call i32 @ahd_inw(%struct.ahd_softc* %372, i32 %373)
  %375 = sub nsw i32 %374, 1
  %376 = call i32 @ahd_outw(%struct.ahd_softc* %370, i32 %371, i32 %375)
  store %struct.scb* null, %struct.scb** %18, align 8
  br label %382

377:                                              ; preds = %332
  %378 = load %struct.scb*, %struct.scb** %17, align 8
  %379 = call i32 @SCB_GET_TAG(%struct.scb* %378)
  %380 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %379)
  br label %381

381:                                              ; preds = %332, %377
  br label %382

382:                                              ; preds = %332, %381, %350
  br label %383

383:                                              ; preds = %382, %322, %302
  %384 = load %struct.scb*, %struct.scb** %18, align 8
  %385 = icmp ne %struct.scb* %384, null
  br i1 %385, label %386, label %413

386:                                              ; preds = %383
  %387 = load i32, i32* %32, align 4
  %388 = call i64 @SCBID_IS_NULL(i32 %387)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %413

390:                                              ; preds = %386
  %391 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %392 = load %struct.scb*, %struct.scb** %17, align 8
  %393 = load i32, i32* %10, align 4
  %394 = load i8, i8* %11, align 1
  %395 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %396 = load i32, i32* @SCB_LIST_NULL, align 4
  %397 = load i32, i32* @ROLE_UNKNOWN, align 4
  %398 = call i64 @ahd_match_scb(%struct.ahd_softc* %391, %struct.scb* %392, i32 %393, i8 signext %394, i32 %395, i32 %396, i32 %397)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %413

400:                                              ; preds = %390
  %401 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  %402 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %403 = load i32, i32* @MK_MESSAGE_SCB, align 4
  %404 = call i32 @ahd_inw(%struct.ahd_softc* %402, i32 %403)
  store i32 %404, i32* %32, align 4
  %405 = load i32, i32* @PENDING_MK_MESSAGE, align 4
  %406 = xor i32 %405, -1
  %407 = load i32, i32* %27, align 4
  %408 = and i32 %407, %406
  store i32 %408, i32* %27, align 4
  %409 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %410 = load i32, i32* @SEQ_FLAGS2, align 4
  %411 = load i32, i32* %27, align 4
  %412 = call i32 @ahd_outb(%struct.ahd_softc* %409, i32 %410, i32 %411)
  store %struct.scb* null, %struct.scb** %18, align 8
  br label %413

413:                                              ; preds = %400, %390, %386, %383
  %414 = load i32, i32* %32, align 4
  %415 = load i32, i32* %26, align 4
  %416 = icmp ne i32 %414, %415
  br i1 %416, label %417, label %423

417:                                              ; preds = %413
  %418 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %419 = load i32, i32* %25, align 4
  %420 = load i32, i32* %32, align 4
  %421 = load i32, i32* %24, align 4
  %422 = call i32 @ahd_stitch_tid_list(%struct.ahd_softc* %418, i32 %419, i32 %420, i32 %421)
  br label %423

423:                                              ; preds = %417, %413
  %424 = load i32, i32* %32, align 4
  %425 = call i64 @SCBID_IS_NULL(i32 %424)
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %429, label %427

427:                                              ; preds = %423
  %428 = load i32, i32* %32, align 4
  store i32 %428, i32* %25, align 4
  br label %429

429:                                              ; preds = %427, %423
  %430 = load i32, i32* %16, align 4
  %431 = icmp eq i32 %430, 129
  br i1 %431, label %432, label %434

432:                                              ; preds = %429
  %433 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  br label %434

434:                                              ; preds = %432, %429
  br label %435

435:                                              ; preds = %434, %292
  %436 = load i32, i32* %24, align 4
  store i32 %436, i32* %26, align 4
  br label %232

437:                                              ; preds = %232
  %438 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %439 = load i32, i32* %28, align 4
  %440 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %438, i32 %439)
  %441 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %442 = load i32, i32* %20, align 4
  %443 = call i32 @ahd_restore_modes(%struct.ahd_softc* %441, i32 %442)
  %444 = load i32, i32* %30, align 4
  ret i32 %444
}

declare dso_local i32 @ahd_save_modes(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @AHD_QIN_WRAP(i32) #1

declare dso_local i32 @ahd_get_snscb_qoff(%struct.ahd_softc*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @aic_le32toh(i32) #1

declare dso_local i32 @ahd_outl(%struct.ahd_softc*, i32, i32) #1

declare dso_local %struct.scb* @ahd_lookup_scb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @AHD_FATAL_ERROR(%struct.ahd_softc*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @ahd_match_scb(%struct.ahd_softc*, %struct.scb*, i32, i8 signext, i32, i32, i32) #1

declare dso_local i32 @ahd_done_with_status(%struct.ahd_softc*, %struct.scb*, i32) #1

declare dso_local i32 @ahd_qinfifo_requeue(%struct.ahd_softc*, %struct.scb*, %struct.scb*) #1

declare dso_local i32 @ahd_set_hnscb_qoff(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_inw(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_get_scbptr(%struct.ahd_softc*) #1

declare dso_local i64 @SCBID_IS_NULL(i32) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_dump_card_state(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_scbptr(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_inw_scbram(%struct.ahd_softc*, i32) #1

declare dso_local i32 @SCB_GET_TARGET(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i64 @ahd_search_scb_list(%struct.ahd_softc*, i32, i8 signext, i32, i32, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @ahd_outw(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @SCB_GET_TAG(%struct.scb*) #1

declare dso_local i32 @ahd_stitch_tid_list(%struct.ahd_softc*, i32, i32, i32) #1

declare dso_local i32 @ahd_restore_modes(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
