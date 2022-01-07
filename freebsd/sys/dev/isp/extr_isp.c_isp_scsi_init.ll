; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_scsi_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_scsi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_20__ = type { i32* }

@ISP_INITSTATE = common dso_local global i32 0, align 4
@RISC_MTR = common dso_local global i32 0, align 4
@MBOX_SET_RETRY_COUNT = common dso_local global i32 0, align 4
@MBLOGALL = common dso_local global i32 0, align 4
@MBOX_COMMAND_COMPLETE = common dso_local global i32 0, align 4
@MBOX_SET_ASYNC_DATA_SETUP_TIME = common dso_local global i32 0, align 4
@MBOX_SET_ACT_NEG_STATE = common dso_local global i32 0, align 4
@MBLOGNONE = common dso_local global i32 0, align 4
@ISP_LOGERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"failed to set active negation state (%d,%d), (%d,%d)\00", align 1
@MBOX_SET_TAG_AGE_LIMIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to set tag age limit (%d,%d)\00", align 1
@MBOX_SET_SELECT_TIMEOUT = common dso_local global i32 0, align 4
@MBOX_INIT_RES_QUEUE_A64 = common dso_local global i32 0, align 4
@MBOX_INIT_REQ_QUEUE_A64 = common dso_local global i32 0, align 4
@MBOX_INIT_RES_QUEUE = common dso_local global i32 0, align 4
@MBOX_INIT_REQ_QUEUE = common dso_local global i32 0, align 4
@MBOX_SET_FW_FEATURES = common dso_local global i32 0, align 4
@FW_FEATURE_LVD_NOTIFY = common dso_local global i32 0, align 4
@FW_FEATURE_RIO_32BIT = common dso_local global i32 0, align 4
@ISP_LOGINFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Enabled FW features (0x%x)\00", align 1
@ISP_RUNSTATE = common dso_local global i32 0, align 4
@FW_FEATURE_FAST_POST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*)* @isp_scsi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_scsi_init(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %7 = load i32, i32* @ISP_INITSTATE, align 4
  %8 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 4
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %11 = call %struct.TYPE_19__* @SDPARAM(%struct.TYPE_21__* %10, i32 0)
  store %struct.TYPE_19__* %11, %struct.TYPE_19__** %3, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %4, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %14 = call i64 @IS_DUALBUS(%struct.TYPE_21__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %18 = call %struct.TYPE_19__* @SDPARAM(%struct.TYPE_21__* %17, i32 1)
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %4, align 8
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %26 = load i32, i32* @RISC_MTR, align 4
  %27 = call i32 @ISP_WRITE(%struct.TYPE_21__* %25, i32 %26, i32 4883)
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i32, i32* @MBOX_SET_RETRY_COUNT, align 4
  %30 = load i32, i32* @MBLOGALL, align 4
  %31 = call i32 @MBSINIT(%struct.TYPE_20__* %5, i32 %29, i32 %30, i32 0)
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 %34, i32* %37, align 4
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  store i32 %40, i32* %43, align 4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 6
  store i32 %46, i32* %49, align 4
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 7
  store i32 %52, i32* %55, align 4
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %57 = call i32 @isp_mboxcmd(%struct.TYPE_21__* %56, %struct.TYPE_20__* %5)
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MBOX_COMMAND_COMPLETE, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %28
  br label %490

65:                                               ; preds = %28
  %66 = load i32, i32* @MBOX_SET_ASYNC_DATA_SETUP_TIME, align 4
  %67 = load i32, i32* @MBLOGALL, align 4
  %68 = call i32 @MBSINIT(%struct.TYPE_20__* %5, i32 %66, i32 %67, i32 0)
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 %71, i32* %74, align 4
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  store i32 %77, i32* %80, align 4
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %82 = call i32 @isp_mboxcmd(%struct.TYPE_21__* %81, %struct.TYPE_20__* %5)
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @MBOX_COMMAND_COMPLETE, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %65
  br label %490

90:                                               ; preds = %65
  %91 = load i32, i32* @MBOX_SET_ACT_NEG_STATE, align 4
  %92 = load i32, i32* @MBLOGNONE, align 4
  %93 = call i32 @MBSINIT(%struct.TYPE_20__* %5, i32 %91, i32 %92, i32 0)
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 4
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = shl i32 %100, 5
  %102 = or i32 %97, %101
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  store i32 %102, i32* %105, align 4
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 4
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = shl i32 %112, 5
  %114 = or i32 %109, %113
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  store i32 %114, i32* %117, align 4
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %119 = call i32 @isp_mboxcmd(%struct.TYPE_21__* %118, %struct.TYPE_20__* %5)
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @MBOX_COMMAND_COMPLETE, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %142

126:                                              ; preds = %90
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %128 = load i32, i32* @ISP_LOGERR, align 4
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = call i32 (%struct.TYPE_21__*, i32, i8*, i32, ...) @isp_prt(%struct.TYPE_21__* %127, i32 %128, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %131, i32 %134, i32 %137, i32 %140)
  br label %142

142:                                              ; preds = %126, %90
  %143 = load i32, i32* @MBOX_SET_TAG_AGE_LIMIT, align 4
  %144 = load i32, i32* @MBLOGALL, align 4
  %145 = call i32 @MBSINIT(%struct.TYPE_20__* %5, i32 %143, i32 %144, i32 0)
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  store i32 %148, i32* %151, align 4
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 2
  store i32 %154, i32* %157, align 4
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %159 = call i32 @isp_mboxcmd(%struct.TYPE_21__* %158, %struct.TYPE_20__* %5)
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @MBOX_COMMAND_COMPLETE, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %176

166:                                              ; preds = %142
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %168 = load i32, i32* @ISP_LOGERR, align 4
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (%struct.TYPE_21__*, i32, i8*, i32, ...) @isp_prt(%struct.TYPE_21__* %167, i32 %168, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %171, i32 %174)
  br label %490

176:                                              ; preds = %142
  %177 = load i32, i32* @MBOX_SET_SELECT_TIMEOUT, align 4
  %178 = load i32, i32* @MBLOGALL, align 4
  %179 = call i32 @MBSINIT(%struct.TYPE_20__* %5, i32 %177, i32 %178, i32 0)
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 1
  store i32 %182, i32* %185, align 4
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 2
  store i32 %188, i32* %191, align 4
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %193 = call i32 @isp_mboxcmd(%struct.TYPE_21__* %192, %struct.TYPE_20__* %5)
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @MBOX_COMMAND_COMPLETE, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %176
  br label %490

201:                                              ; preds = %176
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %203 = call i32 @isp_scsi_channel_init(%struct.TYPE_21__* %202, i32 0)
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %205 = call i64 @IS_DUALBUS(%struct.TYPE_21__* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %201
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %209 = call i32 @isp_scsi_channel_init(%struct.TYPE_21__* %208, i32 1)
  br label %210

210:                                              ; preds = %207, %201
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %212 = call i64 @IS_ULTRA2(%struct.TYPE_21__* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %218, label %214

214:                                              ; preds = %210
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %216 = call i64 @IS_1240(%struct.TYPE_21__* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %343

218:                                              ; preds = %214, %210
  %219 = load i32, i32* @MBOX_INIT_RES_QUEUE_A64, align 4
  %220 = load i32, i32* @MBLOGALL, align 4
  %221 = call i32 @MBSINIT(%struct.TYPE_20__* %5, i32 %219, i32 %220, i32 0)
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %223 = call i8* @RESULT_QUEUE_LEN(%struct.TYPE_21__* %222)
  %224 = ptrtoint i8* %223 to i32
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 1
  store i32 %224, i32* %227, align 4
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 6
  %230 = load i32, i32* %229, align 4
  %231 = call i8* @DMA_WD1(i32 %230)
  %232 = ptrtoint i8* %231 to i32
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 2
  store i32 %232, i32* %235, align 4
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 4
  %239 = call i8* @DMA_WD0(i32 %238)
  %240 = ptrtoint i8* %239 to i32
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 3
  store i32 %240, i32* %243, align 4
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 4
  store i32 0, i32* %246, align 4
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 6
  %249 = load i32, i32* %248, align 4
  %250 = call i8* @DMA_WD3(i32 %249)
  %251 = ptrtoint i8* %250 to i32
  %252 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 6
  store i32 %251, i32* %254, align 4
  %255 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %255, i32 0, i32 6
  %257 = load i32, i32* %256, align 4
  %258 = call i8* @DMA_WD2(i32 %257)
  %259 = ptrtoint i8* %258 to i32
  %260 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 7
  store i32 %259, i32* %262, align 4
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %264 = call i32 @isp_mboxcmd(%struct.TYPE_21__* %263, %struct.TYPE_20__* %5)
  %265 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %266 = load i32*, i32** %265, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 0
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @MBOX_COMMAND_COMPLETE, align 4
  %270 = icmp ne i32 %268, %269
  br i1 %270, label %271, label %272

271:                                              ; preds = %218
  br label %490

272:                                              ; preds = %218
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 5
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %278 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %277, i32 0, i32 1
  store i32 %276, i32* %278, align 4
  %279 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %280 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %279, i32 0, i32 0
  store i32 %276, i32* %280, align 4
  %281 = load i32, i32* @MBOX_INIT_REQ_QUEUE_A64, align 4
  %282 = load i32, i32* @MBLOGALL, align 4
  %283 = call i32 @MBSINIT(%struct.TYPE_20__* %5, i32 %281, i32 %282, i32 0)
  %284 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %285 = call i8* @RQUEST_QUEUE_LEN(%struct.TYPE_21__* %284)
  %286 = ptrtoint i8* %285 to i32
  %287 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 1
  store i32 %286, i32* %289, align 4
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %291 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %290, i32 0, i32 5
  %292 = load i32, i32* %291, align 4
  %293 = call i8* @DMA_WD1(i32 %292)
  %294 = ptrtoint i8* %293 to i32
  %295 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 2
  store i32 %294, i32* %297, align 4
  %298 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %299 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %298, i32 0, i32 5
  %300 = load i32, i32* %299, align 4
  %301 = call i8* @DMA_WD0(i32 %300)
  %302 = ptrtoint i8* %301 to i32
  %303 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 3
  store i32 %302, i32* %305, align 4
  %306 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 5
  store i32 0, i32* %308, align 4
  %309 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %310 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %309, i32 0, i32 6
  %311 = load i32, i32* %310, align 4
  %312 = call i8* @DMA_WD3(i32 %311)
  %313 = ptrtoint i8* %312 to i32
  %314 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 6
  store i32 %313, i32* %316, align 4
  %317 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %318 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %317, i32 0, i32 6
  %319 = load i32, i32* %318, align 4
  %320 = call i8* @DMA_WD2(i32 %319)
  %321 = ptrtoint i8* %320 to i32
  %322 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %323 = load i32*, i32** %322, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 7
  store i32 %321, i32* %324, align 4
  %325 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %326 = call i32 @isp_mboxcmd(%struct.TYPE_21__* %325, %struct.TYPE_20__* %5)
  %327 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %328 = load i32*, i32** %327, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 0
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* @MBOX_COMMAND_COMPLETE, align 4
  %332 = icmp ne i32 %330, %331
  br i1 %332, label %333, label %334

333:                                              ; preds = %272
  br label %490

334:                                              ; preds = %272
  %335 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %336 = load i32*, i32** %335, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 4
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %340 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %339, i32 0, i32 3
  store i32 %338, i32* %340, align 4
  %341 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %342 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %341, i32 0, i32 2
  store i32 %338, i32* %342, align 4
  br label %436

343:                                              ; preds = %214
  %344 = load i32, i32* @MBOX_INIT_RES_QUEUE, align 4
  %345 = load i32, i32* @MBLOGALL, align 4
  %346 = call i32 @MBSINIT(%struct.TYPE_20__* %5, i32 %344, i32 %345, i32 0)
  %347 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %348 = call i8* @RESULT_QUEUE_LEN(%struct.TYPE_21__* %347)
  %349 = ptrtoint i8* %348 to i32
  %350 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %351 = load i32*, i32** %350, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 1
  store i32 %349, i32* %352, align 4
  %353 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %354 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %353, i32 0, i32 6
  %355 = load i32, i32* %354, align 4
  %356 = call i8* @DMA_WD1(i32 %355)
  %357 = ptrtoint i8* %356 to i32
  %358 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %359 = load i32*, i32** %358, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 2
  store i32 %357, i32* %360, align 4
  %361 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %362 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %361, i32 0, i32 6
  %363 = load i32, i32* %362, align 4
  %364 = call i8* @DMA_WD0(i32 %363)
  %365 = ptrtoint i8* %364 to i32
  %366 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %367 = load i32*, i32** %366, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 3
  store i32 %365, i32* %368, align 4
  %369 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %370 = load i32*, i32** %369, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 4
  store i32 0, i32* %371, align 4
  %372 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %373 = call i32 @isp_mboxcmd(%struct.TYPE_21__* %372, %struct.TYPE_20__* %5)
  %374 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %375 = load i32*, i32** %374, align 8
  %376 = getelementptr inbounds i32, i32* %375, i64 0
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* @MBOX_COMMAND_COMPLETE, align 4
  %379 = icmp ne i32 %377, %378
  br i1 %379, label %380, label %381

380:                                              ; preds = %343
  br label %490

381:                                              ; preds = %343
  %382 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %383 = load i32*, i32** %382, align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 5
  %385 = load i32, i32* %384, align 4
  %386 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %387 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %386, i32 0, i32 1
  store i32 %385, i32* %387, align 4
  %388 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %389 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %388, i32 0, i32 0
  store i32 %385, i32* %389, align 4
  %390 = load i32, i32* @MBOX_INIT_REQ_QUEUE, align 4
  %391 = load i32, i32* @MBLOGALL, align 4
  %392 = call i32 @MBSINIT(%struct.TYPE_20__* %5, i32 %390, i32 %391, i32 0)
  %393 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %394 = call i8* @RQUEST_QUEUE_LEN(%struct.TYPE_21__* %393)
  %395 = ptrtoint i8* %394 to i32
  %396 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %397 = load i32*, i32** %396, align 8
  %398 = getelementptr inbounds i32, i32* %397, i64 1
  store i32 %395, i32* %398, align 4
  %399 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %400 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %399, i32 0, i32 5
  %401 = load i32, i32* %400, align 4
  %402 = call i8* @DMA_WD1(i32 %401)
  %403 = ptrtoint i8* %402 to i32
  %404 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %405 = load i32*, i32** %404, align 8
  %406 = getelementptr inbounds i32, i32* %405, i64 2
  store i32 %403, i32* %406, align 4
  %407 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %408 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %407, i32 0, i32 5
  %409 = load i32, i32* %408, align 4
  %410 = call i8* @DMA_WD0(i32 %409)
  %411 = ptrtoint i8* %410 to i32
  %412 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %413 = load i32*, i32** %412, align 8
  %414 = getelementptr inbounds i32, i32* %413, i64 3
  store i32 %411, i32* %414, align 4
  %415 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %416 = load i32*, i32** %415, align 8
  %417 = getelementptr inbounds i32, i32* %416, i64 5
  store i32 0, i32* %417, align 4
  %418 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %419 = call i32 @isp_mboxcmd(%struct.TYPE_21__* %418, %struct.TYPE_20__* %5)
  %420 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %421 = load i32*, i32** %420, align 8
  %422 = getelementptr inbounds i32, i32* %421, i64 0
  %423 = load i32, i32* %422, align 4
  %424 = load i32, i32* @MBOX_COMMAND_COMPLETE, align 4
  %425 = icmp ne i32 %423, %424
  br i1 %425, label %426, label %427

426:                                              ; preds = %381
  br label %490

427:                                              ; preds = %381
  %428 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %429 = load i32*, i32** %428, align 8
  %430 = getelementptr inbounds i32, i32* %429, i64 4
  %431 = load i32, i32* %430, align 4
  %432 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %433 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %432, i32 0, i32 3
  store i32 %431, i32* %433, align 4
  %434 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %435 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %434, i32 0, i32 2
  store i32 %431, i32* %435, align 4
  br label %436

436:                                              ; preds = %427, %334
  %437 = load i32, i32* @MBOX_SET_FW_FEATURES, align 4
  %438 = load i32, i32* @MBLOGALL, align 4
  %439 = call i32 @MBSINIT(%struct.TYPE_20__* %5, i32 %437, i32 %438, i32 0)
  %440 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %441 = call i64 @IS_ULTRA2(%struct.TYPE_21__* %440)
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %443, label %450

443:                                              ; preds = %436
  %444 = load i32, i32* @FW_FEATURE_LVD_NOTIFY, align 4
  %445 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %446 = load i32*, i32** %445, align 8
  %447 = getelementptr inbounds i32, i32* %446, i64 1
  %448 = load i32, i32* %447, align 4
  %449 = or i32 %448, %444
  store i32 %449, i32* %447, align 4
  br label %450

450:                                              ; preds = %443, %436
  %451 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %452 = call i64 @IS_ULTRA3(%struct.TYPE_21__* %451)
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %454, label %461

454:                                              ; preds = %450
  %455 = load i32, i32* @FW_FEATURE_RIO_32BIT, align 4
  %456 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %457 = load i32*, i32** %456, align 8
  %458 = getelementptr inbounds i32, i32* %457, i64 1
  %459 = load i32, i32* %458, align 4
  %460 = or i32 %459, %455
  store i32 %460, i32* %458, align 4
  br label %461

461:                                              ; preds = %454, %450
  %462 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %463 = load i32*, i32** %462, align 8
  %464 = getelementptr inbounds i32, i32* %463, i64 1
  %465 = load i32, i32* %464, align 4
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %486

467:                                              ; preds = %461
  %468 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %469 = load i32*, i32** %468, align 8
  %470 = getelementptr inbounds i32, i32* %469, i64 1
  %471 = load i32, i32* %470, align 4
  store i32 %471, i32* %6, align 4
  %472 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %473 = call i32 @isp_mboxcmd(%struct.TYPE_21__* %472, %struct.TYPE_20__* %5)
  %474 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %475 = load i32*, i32** %474, align 8
  %476 = getelementptr inbounds i32, i32* %475, i64 0
  %477 = load i32, i32* %476, align 4
  %478 = load i32, i32* @MBOX_COMMAND_COMPLETE, align 4
  %479 = icmp eq i32 %477, %478
  br i1 %479, label %480, label %485

480:                                              ; preds = %467
  %481 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %482 = load i32, i32* @ISP_LOGINFO, align 4
  %483 = load i32, i32* %6, align 4
  %484 = call i32 (%struct.TYPE_21__*, i32, i8*, i32, ...) @isp_prt(%struct.TYPE_21__* %481, i32 %482, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %483)
  br label %485

485:                                              ; preds = %480, %467
  br label %486

486:                                              ; preds = %485, %461
  %487 = load i32, i32* @ISP_RUNSTATE, align 4
  %488 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %489 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %488, i32 0, i32 4
  store i32 %487, i32* %489, align 4
  br label %490

490:                                              ; preds = %486, %426, %380, %333, %271, %200, %166, %89, %64
  ret void
}

declare dso_local %struct.TYPE_19__* @SDPARAM(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @IS_DUALBUS(%struct.TYPE_21__*) #1

declare dso_local i32 @ISP_WRITE(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @MBSINIT(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @isp_mboxcmd(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @isp_prt(%struct.TYPE_21__*, i32, i8*, i32, ...) #1

declare dso_local i32 @isp_scsi_channel_init(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @IS_ULTRA2(%struct.TYPE_21__*) #1

declare dso_local i64 @IS_1240(%struct.TYPE_21__*) #1

declare dso_local i8* @RESULT_QUEUE_LEN(%struct.TYPE_21__*) #1

declare dso_local i8* @DMA_WD1(i32) #1

declare dso_local i8* @DMA_WD0(i32) #1

declare dso_local i8* @DMA_WD3(i32) #1

declare dso_local i8* @DMA_WD2(i32) #1

declare dso_local i8* @RQUEST_QUEUE_LEN(%struct.TYPE_21__*) #1

declare dso_local i64 @IS_ULTRA3(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
