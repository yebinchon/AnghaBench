; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_52__ = type { i64 }
%struct.TYPE_42__ = type { i32, i32, i64, i8*, i32, i8*, i8*, %struct.TYPE_49__ }
%struct.TYPE_49__ = type { i32, i32 }
%struct.TYPE_45__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_46__ = type { i32, i64, i64, %struct.TYPE_45__* }
%struct.TYPE_51__ = type { %struct.TYPE_50__*, i64 }
%struct.TYPE_50__ = type { i32 }
%struct.TYPE_44__ = type { i32, i8*, %struct.TYPE_47__ }
%struct.TYPE_47__ = type { i32, i8* }
%struct.TYPE_43__ = type { i32, i8*, %struct.TYPE_48__ }
%struct.TYPE_48__ = type { i32, i8* }
%struct.TYPE_53__ = type { i32, i32, i32, i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_55__ = type { i8*, i32, i8*, i32, i8*, i32, i8* }
%struct.TYPE_54__ = type { i8*, i32, i8*, i32 }

@QENTRY_LEN = common dso_local global i32 0, align 4
@ISP_LOGERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"unsupported cdb length (%d, CDB[0]=0x%x)\00", align 1
@HBA_REQINVAL = common dso_local global i32 0, align 4
@CMD_COMPLETE = common dso_local global i32 0, align 4
@ISP_ROLE_INITIATOR = common dso_local global i32 0, align 4
@ISP_LOG_WARN1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"%d.%d.%jx I am not an initiator\00", align 1
@HBA_SELTIMEOUT = common dso_local global i32 0, align 4
@ISP_RUNSTATE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Adapter not at RUNSTATE\00", align 1
@HBA_BOTCH = common dso_local global i32 0, align 4
@ISP_LOGDEBUG2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"XS_TGT(xs)=%d\00", align 1
@MAX_FC_TARG = common dso_local global i32 0, align 4
@LOOP_READY = common dso_local global i64 0, align 8
@ISP_LOGDEBUG1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"%d.%d.%jx loop is not ready\00", align 1
@CMD_RQLATER = common dso_local global i32 0, align 4
@FC_PORTDB_STATE_ZOMBIE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"%d.%d.%jx target zombie\00", align 1
@FC_PORTDB_STATE_VALID = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [33 x i8] c"%d.%d.%jx bad db port state 0x%x\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Request Queue Overflow\00", align 1
@CMD_EAGAIN = common dso_local global i32 0, align 4
@HBA_NOERROR = common dso_local global i32 0, align 4
@RQSTYPE_MARKER = common dso_local global i8* null, align 8
@SYNC_ALL = common dso_local global i8* null, align 8
@RQSTYPE_T7RQS = common dso_local global i32 0, align 4
@RQSTYPE_T2RQS = common dso_local global i32 0, align 4
@RQSTYPE_CMDONLY = common dso_local global i32 0, align 4
@RQSTYPE_REQUEST = common dso_local global i32 0, align 4
@REQFLAG_STAG = common dso_local global i8* null, align 8
@REQFLAG_OTAG = common dso_local global i32 0, align 4
@FCP_CMND_TASK_ATTR_ORDERED = common dso_local global i32 0, align 4
@REQFLAG_HTAG = common dso_local global i32 0, align 4
@FCP_CMND_TASK_ATTR_HEAD = common dso_local global i32 0, align 4
@FCP_CMND_TASK_ATTR_SIMPLE = common dso_local global i32 0, align 4
@DPARM_TQING = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"Command Length %u too long for this chip\00", align 1
@PRLI_WD3_RETRY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"%d.%d.%jx cannot generate next CRN\00", align 1
@ISP_HANDLE_INITIATOR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"out of xflist pointers\00", align 1
@CMD_QUEUED = common dso_local global i32 0, align 4
@ISP_LOGDEBUG0 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [34 x i8] c"START cmd cdb[0]=0x%x datalen %ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isp_start(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_52__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_42__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_45__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_46__*, align 8
  %17 = alloca %struct.TYPE_51__*, align 8
  %18 = alloca %struct.TYPE_44__*, align 8
  %19 = alloca %struct.TYPE_43__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_51__*, align 8
  %22 = alloca %struct.TYPE_53__*, align 8
  %23 = alloca %struct.TYPE_55__*, align 8
  %24 = alloca %struct.TYPE_54__*, align 8
  store i32* %0, i32** %3, align 8
  %25 = load i32, i32* @QENTRY_LEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %6, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %7, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @XS_INITERR(i32* %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call %struct.TYPE_52__* @XS_ISP(i32* %31)
  store %struct.TYPE_52__* %32, %struct.TYPE_52__** %4, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @XS_CDBLEN(i32* %33)
  %35 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %36 = call i64 @IS_FC(%struct.TYPE_52__* %35)
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 16, i32 44
  %40 = icmp sgt i32 %34, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %1
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @XS_CDBLEN(i32* %42)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %41, %1
  %46 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %47 = load i32, i32* @ISP_LOGERR, align 4
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @XS_CDBLEN(i32* %48)
  %50 = load i32*, i32** %3, align 8
  %51 = call i32* @XS_CDBP(i32* %50)
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 255
  %55 = call i32 (%struct.TYPE_52__*, i32, i8*, ...) @isp_prt(%struct.TYPE_52__* %46, i32 %47, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %54)
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* @HBA_REQINVAL, align 4
  %58 = call i32 @XS_SETERR(i32* %56, i32 %57)
  %59 = load i32, i32* @CMD_COMPLETE, align 4
  store i32 %59, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %709

60:                                               ; preds = %41
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @XS_TGT(i32* %61)
  store i32 %62, i32* %13, align 4
  %63 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %64 = call i64 @IS_FC(%struct.TYPE_52__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %190

66:                                               ; preds = %60
  %67 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @XS_CHANNEL(i32* %68)
  %70 = call %struct.TYPE_46__* @FCPARAM(%struct.TYPE_52__* %67, i32 %69)
  store %struct.TYPE_46__* %70, %struct.TYPE_46__** %16, align 8
  %71 = load %struct.TYPE_46__*, %struct.TYPE_46__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @ISP_ROLE_INITIATOR, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %66
  %78 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %79 = load i32, i32* @ISP_LOG_WARN1, align 4
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @XS_CHANNEL(i32* %80)
  %82 = load i32, i32* %13, align 4
  %83 = load i32*, i32** %3, align 8
  %84 = call i8* @XS_LUN(i32* %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = call i32 (%struct.TYPE_52__*, i32, i8*, ...) @isp_prt(%struct.TYPE_52__* %78, i32 %79, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %82, i32 %85)
  %87 = load i32*, i32** %3, align 8
  %88 = load i32, i32* @HBA_SELTIMEOUT, align 4
  %89 = call i32 @XS_SETERR(i32* %87, i32 %88)
  %90 = load i32, i32* @CMD_COMPLETE, align 4
  store i32 %90, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %709

91:                                               ; preds = %66
  %92 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @ISP_RUNSTATE, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %91
  %98 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %99 = load i32, i32* @ISP_LOGERR, align 4
  %100 = call i32 (%struct.TYPE_52__*, i32, i8*, ...) @isp_prt(%struct.TYPE_52__* %98, i32 %99, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %101 = load i32*, i32** %3, align 8
  %102 = load i32, i32* @HBA_BOTCH, align 4
  %103 = call i32 @XS_SETERR(i32* %101, i32 %102)
  %104 = load i32, i32* @CMD_COMPLETE, align 4
  store i32 %104, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %709

105:                                              ; preds = %91
  %106 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %107 = load i32, i32* @ISP_LOGDEBUG2, align 4
  %108 = load i32, i32* %13, align 4
  %109 = call i32 (%struct.TYPE_52__*, i32, i8*, ...) @isp_prt(%struct.TYPE_52__* %106, i32 %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  %110 = load %struct.TYPE_46__*, %struct.TYPE_46__** %16, align 8
  %111 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_45__*, %struct.TYPE_45__** %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %112, i64 %114
  store %struct.TYPE_45__* %115, %struct.TYPE_45__** %12, align 8
  %116 = load i32, i32* %13, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %127, label %118

118:                                              ; preds = %105
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* @MAX_FC_TARG, align 4
  %121 = icmp sge i32 %119, %120
  br i1 %121, label %127, label %122

122:                                              ; preds = %118
  %123 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %122, %118, %105
  %128 = load i32*, i32** %3, align 8
  %129 = load i32, i32* @HBA_SELTIMEOUT, align 4
  %130 = call i32 @XS_SETERR(i32* %128, i32 %129)
  %131 = load i32, i32* @CMD_COMPLETE, align 4
  store i32 %131, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %709

132:                                              ; preds = %122
  %133 = load %struct.TYPE_46__*, %struct.TYPE_46__** %16, align 8
  %134 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @LOOP_READY, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %149

138:                                              ; preds = %132
  %139 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %140 = load i32, i32* @ISP_LOGDEBUG1, align 4
  %141 = load i32*, i32** %3, align 8
  %142 = call i32 @XS_CHANNEL(i32* %141)
  %143 = load i32, i32* %13, align 4
  %144 = load i32*, i32** %3, align 8
  %145 = call i8* @XS_LUN(i32* %144)
  %146 = ptrtoint i8* %145 to i32
  %147 = call i32 (%struct.TYPE_52__*, i32, i8*, ...) @isp_prt(%struct.TYPE_52__* %139, i32 %140, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %142, i32 %143, i32 %146)
  %148 = load i32, i32* @CMD_RQLATER, align 4
  store i32 %148, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %709

149:                                              ; preds = %132
  %150 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @FC_PORTDB_STATE_ZOMBIE, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %166

155:                                              ; preds = %149
  %156 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %157 = load i32, i32* @ISP_LOGDEBUG1, align 4
  %158 = load i32*, i32** %3, align 8
  %159 = call i32 @XS_CHANNEL(i32* %158)
  %160 = load i32, i32* %13, align 4
  %161 = load i32*, i32** %3, align 8
  %162 = call i8* @XS_LUN(i32* %161)
  %163 = ptrtoint i8* %162 to i32
  %164 = call i32 (%struct.TYPE_52__*, i32, i8*, ...) @isp_prt(%struct.TYPE_52__* %156, i32 %157, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %159, i32 %160, i32 %163)
  %165 = load i32, i32* @CMD_RQLATER, align 4
  store i32 %165, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %709

166:                                              ; preds = %149
  %167 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @FC_PORTDB_STATE_VALID, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %189

172:                                              ; preds = %166
  %173 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %174 = load i32, i32* @ISP_LOGDEBUG1, align 4
  %175 = load i32*, i32** %3, align 8
  %176 = call i32 @XS_CHANNEL(i32* %175)
  %177 = load i32, i32* %13, align 4
  %178 = load i32*, i32** %3, align 8
  %179 = call i8* @XS_LUN(i32* %178)
  %180 = ptrtoint i8* %179 to i32
  %181 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = call i32 (%struct.TYPE_52__*, i32, i8*, ...) @isp_prt(%struct.TYPE_52__* %173, i32 %174, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %176, i32 %177, i32 %180, i64 %183)
  %185 = load i32*, i32** %3, align 8
  %186 = load i32, i32* @HBA_SELTIMEOUT, align 4
  %187 = call i32 @XS_SETERR(i32* %185, i32 %186)
  %188 = load i32, i32* @CMD_COMPLETE, align 4
  store i32 %188, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %709

189:                                              ; preds = %166
  br label %219

190:                                              ; preds = %60
  %191 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %192 = load i32*, i32** %3, align 8
  %193 = call i32 @XS_CHANNEL(i32* %192)
  %194 = call %struct.TYPE_51__* @SDPARAM(%struct.TYPE_52__* %191, i32 %193)
  store %struct.TYPE_51__* %194, %struct.TYPE_51__** %17, align 8
  %195 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @ISP_RUNSTATE, align 8
  %199 = icmp ne i64 %197, %198
  br i1 %199, label %200, label %208

200:                                              ; preds = %190
  %201 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %202 = load i32, i32* @ISP_LOGERR, align 4
  %203 = call i32 (%struct.TYPE_52__*, i32, i8*, ...) @isp_prt(%struct.TYPE_52__* %201, i32 %202, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %204 = load i32*, i32** %3, align 8
  %205 = load i32, i32* @HBA_BOTCH, align 4
  %206 = call i32 @XS_SETERR(i32* %204, i32 %205)
  %207 = load i32, i32* @CMD_COMPLETE, align 4
  store i32 %207, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %709

208:                                              ; preds = %190
  %209 = load %struct.TYPE_51__*, %struct.TYPE_51__** %17, align 8
  %210 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %208
  %214 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %215 = load i32*, i32** %3, align 8
  %216 = call i32 @XS_CHANNEL(i32* %215)
  %217 = call i32 @isp_spi_update(%struct.TYPE_52__* %214, i32 %216)
  br label %218

218:                                              ; preds = %213, %208
  store %struct.TYPE_45__* null, %struct.TYPE_45__** %12, align 8
  br label %219

219:                                              ; preds = %218, %189
  br label %220

220:                                              ; preds = %292, %219
  %221 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %222 = call i8* @isp_getrqentry(%struct.TYPE_52__* %221)
  store i8* %222, i8** %10, align 8
  %223 = load i8*, i8** %10, align 8
  %224 = icmp eq i8* %223, null
  br i1 %224, label %225, label %233

225:                                              ; preds = %220
  %226 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %227 = load i32, i32* @ISP_LOG_WARN1, align 4
  %228 = call i32 (%struct.TYPE_52__*, i32, i8*, ...) @isp_prt(%struct.TYPE_52__* %226, i32 %227, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %229 = load i32*, i32** %3, align 8
  %230 = load i32, i32* @HBA_BOTCH, align 4
  %231 = call i32 @XS_SETERR(i32* %229, i32 %230)
  %232 = load i32, i32* @CMD_EAGAIN, align 4
  store i32 %232, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %709

233:                                              ; preds = %220
  %234 = load i32*, i32** %3, align 8
  %235 = load i32, i32* @HBA_NOERROR, align 4
  %236 = call i32 @XS_SETERR(i32* %234, i32 %235)
  %237 = bitcast i32* %28 to %struct.TYPE_42__*
  store %struct.TYPE_42__* %237, %struct.TYPE_42__** %8, align 8
  %238 = load i32, i32* @QENTRY_LEN, align 4
  %239 = call i32 @ISP_MEMZERO(i32* %28, i32 %238)
  %240 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %241 = load i32*, i32** %3, align 8
  %242 = call i32 @XS_CHANNEL(i32* %241)
  %243 = call i64 @ISP_TST_SENDMARKER(%struct.TYPE_52__* %240, i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %299

245:                                              ; preds = %233
  %246 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %247 = call i64 @IS_24XX(%struct.TYPE_52__* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %270

249:                                              ; preds = %245
  %250 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %251 = bitcast %struct.TYPE_42__* %250 to %struct.TYPE_44__*
  store %struct.TYPE_44__* %251, %struct.TYPE_44__** %18, align 8
  %252 = load %struct.TYPE_44__*, %struct.TYPE_44__** %18, align 8
  %253 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %253, i32 0, i32 0
  store i32 1, i32* %254, align 8
  %255 = load i8*, i8** @RQSTYPE_MARKER, align 8
  %256 = load %struct.TYPE_44__*, %struct.TYPE_44__** %18, align 8
  %257 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %257, i32 0, i32 1
  store i8* %255, i8** %258, align 8
  %259 = load i8*, i8** @SYNC_ALL, align 8
  %260 = load %struct.TYPE_44__*, %struct.TYPE_44__** %18, align 8
  %261 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %260, i32 0, i32 1
  store i8* %259, i8** %261, align 8
  %262 = load i32*, i32** %3, align 8
  %263 = call i32 @XS_CHANNEL(i32* %262)
  %264 = load %struct.TYPE_44__*, %struct.TYPE_44__** %18, align 8
  %265 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %264, i32 0, i32 0
  store i32 %263, i32* %265, align 8
  %266 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %267 = load %struct.TYPE_44__*, %struct.TYPE_44__** %18, align 8
  %268 = load i8*, i8** %10, align 8
  %269 = call i32 @isp_put_marker_24xx(%struct.TYPE_52__* %266, %struct.TYPE_44__* %267, i8* %268)
  br label %292

270:                                              ; preds = %245
  %271 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %272 = bitcast %struct.TYPE_42__* %271 to %struct.TYPE_43__*
  store %struct.TYPE_43__* %272, %struct.TYPE_43__** %19, align 8
  %273 = load %struct.TYPE_43__*, %struct.TYPE_43__** %19, align 8
  %274 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %274, i32 0, i32 0
  store i32 1, i32* %275, align 8
  %276 = load i8*, i8** @RQSTYPE_MARKER, align 8
  %277 = load %struct.TYPE_43__*, %struct.TYPE_43__** %19, align 8
  %278 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %278, i32 0, i32 1
  store i8* %276, i8** %279, align 8
  %280 = load i32*, i32** %3, align 8
  %281 = call i32 @XS_CHANNEL(i32* %280)
  %282 = shl i32 %281, 7
  %283 = load %struct.TYPE_43__*, %struct.TYPE_43__** %19, align 8
  %284 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %283, i32 0, i32 0
  store i32 %282, i32* %284, align 8
  %285 = load i8*, i8** @SYNC_ALL, align 8
  %286 = load %struct.TYPE_43__*, %struct.TYPE_43__** %19, align 8
  %287 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %286, i32 0, i32 1
  store i8* %285, i8** %287, align 8
  %288 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %289 = load %struct.TYPE_43__*, %struct.TYPE_43__** %19, align 8
  %290 = load i8*, i8** %10, align 8
  %291 = call i32 @isp_put_marker(%struct.TYPE_52__* %288, %struct.TYPE_43__* %289, i8* %290)
  br label %292

292:                                              ; preds = %270, %249
  %293 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %294 = call i32 @ISP_SYNC_REQUEST(%struct.TYPE_52__* %293)
  %295 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %296 = load i32*, i32** %3, align 8
  %297 = call i32 @XS_CHANNEL(i32* %296)
  %298 = call i32 @ISP_SET_SENDMARKER(%struct.TYPE_52__* %295, i32 %297, i32 0)
  br label %220

299:                                              ; preds = %233
  %300 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %300, i32 0, i32 7
  %302 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %301, i32 0, i32 0
  store i32 1, i32* %302, align 8
  %303 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %304 = call i64 @IS_24XX(%struct.TYPE_52__* %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %311

306:                                              ; preds = %299
  %307 = load i32, i32* @RQSTYPE_T7RQS, align 4
  %308 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %308, i32 0, i32 7
  %310 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %309, i32 0, i32 1
  store i32 %307, i32* %310, align 4
  br label %336

311:                                              ; preds = %299
  %312 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %313 = call i64 @IS_FC(%struct.TYPE_52__* %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %320

315:                                              ; preds = %311
  %316 = load i32, i32* @RQSTYPE_T2RQS, align 4
  %317 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %318 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %317, i32 0, i32 7
  %319 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %318, i32 0, i32 1
  store i32 %316, i32* %319, align 4
  br label %335

320:                                              ; preds = %311
  %321 = load i32*, i32** %3, align 8
  %322 = call i32 @XS_CDBLEN(i32* %321)
  %323 = icmp sgt i32 %322, 12
  br i1 %323, label %324, label %329

324:                                              ; preds = %320
  %325 = load i32, i32* @RQSTYPE_CMDONLY, align 4
  %326 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %327 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %326, i32 0, i32 7
  %328 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %327, i32 0, i32 1
  store i32 %325, i32* %328, align 4
  br label %334

329:                                              ; preds = %320
  %330 = load i32, i32* @RQSTYPE_REQUEST, align 4
  %331 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %332 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %331, i32 0, i32 7
  %333 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %332, i32 0, i32 1
  store i32 %330, i32* %333, align 4
  br label %334

334:                                              ; preds = %329, %324
  br label %335

335:                                              ; preds = %334, %315
  br label %336

336:                                              ; preds = %335, %306
  %337 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %338 = call i64 @IS_24XX(%struct.TYPE_52__* %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %371

340:                                              ; preds = %336
  %341 = load i32*, i32** %3, align 8
  %342 = call i64 @XS_TAG_P(i32* %341)
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %348

344:                                              ; preds = %340
  %345 = load i32*, i32** %3, align 8
  %346 = call i8* @XS_TAG_TYPE(i32* %345)
  %347 = ptrtoint i8* %346 to i32
  store i32 %347, i32* %20, align 4
  br label %351

348:                                              ; preds = %340
  %349 = load i8*, i8** @REQFLAG_STAG, align 8
  %350 = ptrtoint i8* %349 to i32
  store i32 %350, i32* %20, align 4
  br label %351

351:                                              ; preds = %348, %344
  %352 = load i32, i32* %20, align 4
  %353 = load i32, i32* @REQFLAG_OTAG, align 4
  %354 = icmp eq i32 %352, %353
  br i1 %354, label %355, label %357

355:                                              ; preds = %351
  %356 = load i32, i32* @FCP_CMND_TASK_ATTR_ORDERED, align 4
  store i32 %356, i32* %20, align 4
  br label %366

357:                                              ; preds = %351
  %358 = load i32, i32* %20, align 4
  %359 = load i32, i32* @REQFLAG_HTAG, align 4
  %360 = icmp eq i32 %358, %359
  br i1 %360, label %361, label %363

361:                                              ; preds = %357
  %362 = load i32, i32* @FCP_CMND_TASK_ATTR_HEAD, align 4
  store i32 %362, i32* %20, align 4
  br label %365

363:                                              ; preds = %357
  %364 = load i32, i32* @FCP_CMND_TASK_ATTR_SIMPLE, align 4
  store i32 %364, i32* %20, align 4
  br label %365

365:                                              ; preds = %363, %361
  br label %366

366:                                              ; preds = %365, %355
  %367 = load i32, i32* %20, align 4
  %368 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %369 = bitcast %struct.TYPE_42__* %368 to %struct.TYPE_53__*
  %370 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %369, i32 0, i32 0
  store i32 %367, i32* %370, align 8
  br label %418

371:                                              ; preds = %336
  %372 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %373 = call i64 @IS_FC(%struct.TYPE_52__* %372)
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %391

375:                                              ; preds = %371
  %376 = load i32*, i32** %3, align 8
  %377 = call i64 @XS_TAG_P(i32* %376)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %385

379:                                              ; preds = %375
  %380 = load i32*, i32** %3, align 8
  %381 = call i8* @XS_TAG_TYPE(i32* %380)
  %382 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %383 = bitcast %struct.TYPE_42__* %382 to %struct.TYPE_55__*
  %384 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %383, i32 0, i32 6
  store i8* %381, i8** %384, align 8
  br label %390

385:                                              ; preds = %375
  %386 = load i8*, i8** @REQFLAG_STAG, align 8
  %387 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %388 = bitcast %struct.TYPE_42__* %387 to %struct.TYPE_55__*
  %389 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %388, i32 0, i32 6
  store i8* %386, i8** %389, align 8
  br label %390

390:                                              ; preds = %385, %379
  br label %417

391:                                              ; preds = %371
  %392 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %393 = load i32*, i32** %3, align 8
  %394 = call i32 @XS_CHANNEL(i32* %393)
  %395 = call %struct.TYPE_51__* @SDPARAM(%struct.TYPE_52__* %392, i32 %394)
  store %struct.TYPE_51__* %395, %struct.TYPE_51__** %21, align 8
  %396 = load %struct.TYPE_51__*, %struct.TYPE_51__** %21, align 8
  %397 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %396, i32 0, i32 0
  %398 = load %struct.TYPE_50__*, %struct.TYPE_50__** %397, align 8
  %399 = load i32, i32* %13, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %398, i64 %400
  %402 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = load i32, i32* @DPARM_TQING, align 4
  %405 = and i32 %403, %404
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %416

407:                                              ; preds = %391
  %408 = load i32*, i32** %3, align 8
  %409 = call i64 @XS_TAG_P(i32* %408)
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %416

411:                                              ; preds = %407
  %412 = load i32*, i32** %3, align 8
  %413 = call i8* @XS_TAG_TYPE(i32* %412)
  %414 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %415 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %414, i32 0, i32 6
  store i8* %413, i8** %415, align 8
  br label %416

416:                                              ; preds = %411, %407, %391
  br label %417

417:                                              ; preds = %416, %390
  br label %418

418:                                              ; preds = %417, %366
  %419 = load i32*, i32** %3, align 8
  %420 = call i32 @XS_CDBLEN(i32* %419)
  store i32 %420, i32* %5, align 4
  %421 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %422 = call i64 @IS_SCSI(%struct.TYPE_52__* %421)
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %457

424:                                              ; preds = %418
  %425 = load i32, i32* %5, align 4
  %426 = sext i32 %425 to i64
  %427 = icmp ugt i64 %426, 8
  br i1 %427, label %428, label %437

428:                                              ; preds = %424
  %429 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %430 = load i32, i32* @ISP_LOGERR, align 4
  %431 = load i32, i32* %5, align 4
  %432 = call i32 (%struct.TYPE_52__*, i32, i8*, ...) @isp_prt(%struct.TYPE_52__* %429, i32 %430, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %431)
  %433 = load i32*, i32** %3, align 8
  %434 = load i32, i32* @HBA_REQINVAL, align 4
  %435 = call i32 @XS_SETERR(i32* %433, i32 %434)
  %436 = load i32, i32* @CMD_COMPLETE, align 4
  store i32 %436, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %709

437:                                              ; preds = %424
  %438 = load i32, i32* %13, align 4
  %439 = load i32*, i32** %3, align 8
  %440 = call i32 @XS_CHANNEL(i32* %439)
  %441 = shl i32 %440, 7
  %442 = or i32 %438, %441
  %443 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %444 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %443, i32 0, i32 0
  store i32 %442, i32* %444, align 8
  %445 = load i32*, i32** %3, align 8
  %446 = call i8* @XS_LUN(i32* %445)
  %447 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %448 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %447, i32 0, i32 5
  store i8* %446, i8** %448, align 8
  %449 = load i32, i32* %5, align 4
  %450 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %451 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %450, i32 0, i32 1
  store i32 %449, i32* %451, align 4
  %452 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %453 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %452, i32 0, i32 4
  store i32* %453, i32** %11, align 8
  %454 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %455 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %454, i32 0, i32 3
  %456 = load i8*, i8** %455, align 8
  store i8* %456, i8** %9, align 8
  br label %655

457:                                              ; preds = %418
  %458 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %459 = call i64 @IS_24XX(%struct.TYPE_52__* %458)
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %547

461:                                              ; preds = %457
  %462 = bitcast i32* %28 to %struct.TYPE_53__*
  store %struct.TYPE_53__* %462, %struct.TYPE_53__** %22, align 8
  %463 = load i32, i32* %5, align 4
  %464 = sext i32 %463 to i64
  %465 = icmp ugt i64 %464, 8
  br i1 %465, label %466, label %475

466:                                              ; preds = %461
  %467 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %468 = load i32, i32* @ISP_LOGERR, align 4
  %469 = load i32, i32* %5, align 4
  %470 = call i32 (%struct.TYPE_52__*, i32, i8*, ...) @isp_prt(%struct.TYPE_52__* %467, i32 %468, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %469)
  %471 = load i32*, i32** %3, align 8
  %472 = load i32, i32* @HBA_REQINVAL, align 4
  %473 = call i32 @XS_SETERR(i32* %471, i32 %472)
  %474 = load i32, i32* @CMD_COMPLETE, align 4
  store i32 %474, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %709

475:                                              ; preds = %461
  %476 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %477 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %476, i32 0, i32 4
  %478 = load i32, i32* %477, align 8
  %479 = load %struct.TYPE_53__*, %struct.TYPE_53__** %22, align 8
  %480 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %479, i32 0, i32 8
  store i32 %478, i32* %480, align 8
  %481 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %482 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %481, i32 0, i32 2
  %483 = load i32, i32* %482, align 8
  %484 = load %struct.TYPE_53__*, %struct.TYPE_53__** %22, align 8
  %485 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %484, i32 0, i32 1
  store i32 %483, i32* %485, align 4
  %486 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %487 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %486, i32 0, i32 2
  %488 = load i32, i32* %487, align 8
  %489 = ashr i32 %488, 16
  %490 = load %struct.TYPE_53__*, %struct.TYPE_53__** %22, align 8
  %491 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %490, i32 0, i32 2
  store i32 %489, i32* %491, align 8
  %492 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %493 = load i32*, i32** %3, align 8
  %494 = call i32 @XS_CHANNEL(i32* %493)
  %495 = call i32 @ISP_GET_VPIDX(%struct.TYPE_52__* %492, i32 %494)
  %496 = load %struct.TYPE_53__*, %struct.TYPE_53__** %22, align 8
  %497 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %496, i32 0, i32 7
  store i32 %495, i32* %497, align 4
  %498 = load %struct.TYPE_53__*, %struct.TYPE_53__** %22, align 8
  %499 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %498, i32 0, i32 6
  %500 = load i32, i32* %499, align 8
  %501 = load i32*, i32** %3, align 8
  %502 = call i8* @XS_LUN(i32* %501)
  %503 = call i32 @CAM_EXTLUN_BYTE_SWIZZLE(i8* %502)
  %504 = call i32 @be64enc(i32 %500, i32 %503)
  %505 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %506 = load i32*, i32** %3, align 8
  %507 = call i32 @XS_CHANNEL(i32* %506)
  %508 = call %struct.TYPE_46__* @FCPARAM(%struct.TYPE_52__* %505, i32 %507)
  %509 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %508, i32 0, i32 2
  %510 = load i64, i64* %509, align 8
  %511 = icmp ne i64 %510, 0
  br i1 %511, label %512, label %541

512:                                              ; preds = %475
  %513 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %514 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %513, i32 0, i32 3
  %515 = load i32, i32* %514, align 4
  %516 = load i32, i32* @PRLI_WD3_RETRY, align 4
  %517 = and i32 %515, %516
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %541

519:                                              ; preds = %512
  %520 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %521 = load %struct.TYPE_53__*, %struct.TYPE_53__** %22, align 8
  %522 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %521, i32 0, i32 5
  %523 = load i32*, i32** %3, align 8
  %524 = call i64 @FCP_NEXT_CRN(%struct.TYPE_52__* %520, i32* %522, i32* %523)
  %525 = icmp ne i64 %524, 0
  br i1 %525, label %526, label %540

526:                                              ; preds = %519
  %527 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %528 = load i32, i32* @ISP_LOG_WARN1, align 4
  %529 = load i32*, i32** %3, align 8
  %530 = call i32 @XS_CHANNEL(i32* %529)
  %531 = load i32, i32* %13, align 4
  %532 = load i32*, i32** %3, align 8
  %533 = call i8* @XS_LUN(i32* %532)
  %534 = ptrtoint i8* %533 to i32
  %535 = call i32 (%struct.TYPE_52__*, i32, i8*, ...) @isp_prt(%struct.TYPE_52__* %527, i32 %528, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %530, i32 %531, i32 %534)
  %536 = load i32*, i32** %3, align 8
  %537 = load i32, i32* @HBA_BOTCH, align 4
  %538 = call i32 @XS_SETERR(i32* %536, i32 %537)
  %539 = load i32, i32* @CMD_EAGAIN, align 4
  store i32 %539, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %709

540:                                              ; preds = %519
  br label %541

541:                                              ; preds = %540, %512, %475
  %542 = load %struct.TYPE_53__*, %struct.TYPE_53__** %22, align 8
  %543 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %542, i32 0, i32 4
  store i32* %543, i32** %11, align 8
  %544 = load %struct.TYPE_53__*, %struct.TYPE_53__** %22, align 8
  %545 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %544, i32 0, i32 3
  %546 = load i8*, i8** %545, align 8
  store i8* %546, i8** %9, align 8
  br label %654

547:                                              ; preds = %457
  %548 = bitcast i32* %28 to %struct.TYPE_55__*
  store %struct.TYPE_55__* %548, %struct.TYPE_55__** %23, align 8
  %549 = load i32, i32* %5, align 4
  %550 = sext i32 %549 to i64
  %551 = icmp ugt i64 %550, 8
  br i1 %551, label %552, label %561

552:                                              ; preds = %547
  %553 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %554 = load i32, i32* @ISP_LOGERR, align 4
  %555 = load i32, i32* %5, align 4
  %556 = call i32 (%struct.TYPE_52__*, i32, i8*, ...) @isp_prt(%struct.TYPE_52__* %553, i32 %554, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %555)
  %557 = load i32*, i32** %3, align 8
  %558 = load i32, i32* @HBA_REQINVAL, align 4
  %559 = call i32 @XS_SETERR(i32* %557, i32 %558)
  %560 = load i32, i32* @CMD_COMPLETE, align 4
  store i32 %560, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %709

561:                                              ; preds = %547
  %562 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %563 = load i32*, i32** %3, align 8
  %564 = call i32 @XS_CHANNEL(i32* %563)
  %565 = call %struct.TYPE_46__* @FCPARAM(%struct.TYPE_52__* %562, i32 %564)
  %566 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %565, i32 0, i32 2
  %567 = load i64, i64* %566, align 8
  %568 = icmp ne i64 %567, 0
  br i1 %568, label %569, label %598

569:                                              ; preds = %561
  %570 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %571 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %570, i32 0, i32 3
  %572 = load i32, i32* %571, align 4
  %573 = load i32, i32* @PRLI_WD3_RETRY, align 4
  %574 = and i32 %572, %573
  %575 = icmp ne i32 %574, 0
  br i1 %575, label %576, label %598

576:                                              ; preds = %569
  %577 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %578 = load %struct.TYPE_55__*, %struct.TYPE_55__** %23, align 8
  %579 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %578, i32 0, i32 5
  %580 = load i32*, i32** %3, align 8
  %581 = call i64 @FCP_NEXT_CRN(%struct.TYPE_52__* %577, i32* %579, i32* %580)
  %582 = icmp ne i64 %581, 0
  br i1 %582, label %583, label %597

583:                                              ; preds = %576
  %584 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %585 = load i32, i32* @ISP_LOG_WARN1, align 4
  %586 = load i32*, i32** %3, align 8
  %587 = call i32 @XS_CHANNEL(i32* %586)
  %588 = load i32, i32* %13, align 4
  %589 = load i32*, i32** %3, align 8
  %590 = call i8* @XS_LUN(i32* %589)
  %591 = ptrtoint i8* %590 to i32
  %592 = call i32 (%struct.TYPE_52__*, i32, i8*, ...) @isp_prt(%struct.TYPE_52__* %584, i32 %585, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %587, i32 %588, i32 %591)
  %593 = load i32*, i32** %3, align 8
  %594 = load i32, i32* @HBA_BOTCH, align 4
  %595 = call i32 @XS_SETERR(i32* %593, i32 %594)
  %596 = load i32, i32* @CMD_EAGAIN, align 4
  store i32 %596, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %709

597:                                              ; preds = %576
  br label %598

598:                                              ; preds = %597, %569, %561
  %599 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %600 = call i64 @ISP_CAP_2KLOGIN(%struct.TYPE_52__* %599)
  %601 = icmp ne i64 %600, 0
  br i1 %601, label %602, label %618

602:                                              ; preds = %598
  %603 = bitcast i32* %28 to %struct.TYPE_54__*
  store %struct.TYPE_54__* %603, %struct.TYPE_54__** %24, align 8
  %604 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %605 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %604, i32 0, i32 4
  %606 = load i32, i32* %605, align 8
  %607 = load %struct.TYPE_54__*, %struct.TYPE_54__** %24, align 8
  %608 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %607, i32 0, i32 3
  store i32 %606, i32* %608, align 8
  %609 = load i32*, i32** %3, align 8
  %610 = call i8* @XS_LUN(i32* %609)
  %611 = load %struct.TYPE_54__*, %struct.TYPE_54__** %24, align 8
  %612 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %611, i32 0, i32 2
  store i8* %610, i8** %612, align 8
  %613 = load %struct.TYPE_54__*, %struct.TYPE_54__** %24, align 8
  %614 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %613, i32 0, i32 1
  store i32* %614, i32** %11, align 8
  %615 = load %struct.TYPE_54__*, %struct.TYPE_54__** %24, align 8
  %616 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %615, i32 0, i32 0
  %617 = load i8*, i8** %616, align 8
  store i8* %617, i8** %9, align 8
  br label %653

618:                                              ; preds = %598
  %619 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %620 = call i64 @ISP_CAP_SCCFW(%struct.TYPE_52__* %619)
  %621 = icmp ne i64 %620, 0
  br i1 %621, label %622, label %637

622:                                              ; preds = %618
  %623 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %624 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %623, i32 0, i32 4
  %625 = load i32, i32* %624, align 8
  %626 = load %struct.TYPE_55__*, %struct.TYPE_55__** %23, align 8
  %627 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %626, i32 0, i32 3
  store i32 %625, i32* %627, align 8
  %628 = load i32*, i32** %3, align 8
  %629 = call i8* @XS_LUN(i32* %628)
  %630 = load %struct.TYPE_55__*, %struct.TYPE_55__** %23, align 8
  %631 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %630, i32 0, i32 4
  store i8* %629, i8** %631, align 8
  %632 = load %struct.TYPE_55__*, %struct.TYPE_55__** %23, align 8
  %633 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %632, i32 0, i32 1
  store i32* %633, i32** %11, align 8
  %634 = load %struct.TYPE_55__*, %struct.TYPE_55__** %23, align 8
  %635 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %634, i32 0, i32 0
  %636 = load i8*, i8** %635, align 8
  store i8* %636, i8** %9, align 8
  br label %652

637:                                              ; preds = %618
  %638 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %639 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %638, i32 0, i32 4
  %640 = load i32, i32* %639, align 8
  %641 = load %struct.TYPE_55__*, %struct.TYPE_55__** %23, align 8
  %642 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %641, i32 0, i32 3
  store i32 %640, i32* %642, align 8
  %643 = load i32*, i32** %3, align 8
  %644 = call i8* @XS_LUN(i32* %643)
  %645 = load %struct.TYPE_55__*, %struct.TYPE_55__** %23, align 8
  %646 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %645, i32 0, i32 2
  store i8* %644, i8** %646, align 8
  %647 = load %struct.TYPE_55__*, %struct.TYPE_55__** %23, align 8
  %648 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %647, i32 0, i32 1
  store i32* %648, i32** %11, align 8
  %649 = load %struct.TYPE_55__*, %struct.TYPE_55__** %23, align 8
  %650 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %649, i32 0, i32 0
  %651 = load i8*, i8** %650, align 8
  store i8* %651, i8** %9, align 8
  br label %652

652:                                              ; preds = %637, %622
  br label %653

653:                                              ; preds = %652, %602
  br label %654

654:                                              ; preds = %653, %541
  br label %655

655:                                              ; preds = %654, %437
  %656 = load i32*, i32** %3, align 8
  %657 = call i32 @XS_TIME(i32* %656)
  %658 = load i32*, i32** %11, align 8
  store i32 %657, i32* %658, align 4
  %659 = load i8*, i8** %9, align 8
  %660 = load i32*, i32** %3, align 8
  %661 = call i32* @XS_CDBP(i32* %660)
  %662 = load i32, i32* %5, align 4
  %663 = call i32 @ISP_MEMCPY(i8* %659, i32* %661, i32 %662)
  %664 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %665 = load i32*, i32** %3, align 8
  %666 = load i32, i32* @ISP_HANDLE_INITIATOR, align 4
  %667 = call i64 @isp_allocate_handle(%struct.TYPE_52__* %664, i32* %665, i32 %666)
  %668 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %669 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %668, i32 0, i32 2
  store i64 %667, i64* %669, align 8
  %670 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %671 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %670, i32 0, i32 2
  %672 = load i64, i64* %671, align 8
  %673 = icmp eq i64 %672, 0
  br i1 %673, label %674, label %682

674:                                              ; preds = %655
  %675 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %676 = load i32, i32* @ISP_LOG_WARN1, align 4
  %677 = call i32 (%struct.TYPE_52__*, i32, i8*, ...) @isp_prt(%struct.TYPE_52__* %675, i32 %676, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %678 = load i32*, i32** %3, align 8
  %679 = load i32, i32* @HBA_BOTCH, align 4
  %680 = call i32 @XS_SETERR(i32* %678, i32 %679)
  %681 = load i32, i32* @CMD_EAGAIN, align 4
  store i32 %681, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %709

682:                                              ; preds = %655
  %683 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %684 = load i32*, i32** %3, align 8
  %685 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %686 = call i32 @ISP_DMASETUP(%struct.TYPE_52__* %683, i32* %684, %struct.TYPE_42__* %685)
  store i32 %686, i32* %14, align 4
  %687 = load i32, i32* %14, align 4
  %688 = load i32, i32* @CMD_QUEUED, align 4
  %689 = icmp ne i32 %687, %688
  br i1 %689, label %690, label %697

690:                                              ; preds = %682
  %691 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %692 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %693 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %692, i32 0, i32 2
  %694 = load i64, i64* %693, align 8
  %695 = call i32 @isp_destroy_handle(%struct.TYPE_52__* %691, i64 %694)
  %696 = load i32, i32* %14, align 4
  store i32 %696, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %709

697:                                              ; preds = %682
  %698 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %699 = load i32*, i32** %3, align 8
  %700 = load i32, i32* @ISP_LOGDEBUG0, align 4
  %701 = load i32*, i32** %3, align 8
  %702 = call i32* @XS_CDBP(i32* %701)
  %703 = getelementptr inbounds i32, i32* %702, i64 0
  %704 = load i32, i32* %703, align 4
  %705 = load i32*, i32** %3, align 8
  %706 = call i64 @XS_XFRLEN(i32* %705)
  %707 = call i32 @isp_xs_prt(%struct.TYPE_52__* %698, i32* %699, i32 %700, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 %704, i64 %706)
  %708 = load i32, i32* @CMD_QUEUED, align 4
  store i32 %708, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %709

709:                                              ; preds = %697, %690, %674, %583, %552, %526, %466, %428, %225, %200, %172, %155, %138, %127, %97, %77, %45
  %710 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %710)
  %711 = load i32, i32* %2, align 4
  ret i32 %711
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @XS_INITERR(i32*) #2

declare dso_local %struct.TYPE_52__* @XS_ISP(i32*) #2

declare dso_local i32 @XS_CDBLEN(i32*) #2

declare dso_local i64 @IS_FC(%struct.TYPE_52__*) #2

declare dso_local i32 @isp_prt(%struct.TYPE_52__*, i32, i8*, ...) #2

declare dso_local i32* @XS_CDBP(i32*) #2

declare dso_local i32 @XS_SETERR(i32*, i32) #2

declare dso_local i32 @XS_TGT(i32*) #2

declare dso_local %struct.TYPE_46__* @FCPARAM(%struct.TYPE_52__*, i32) #2

declare dso_local i32 @XS_CHANNEL(i32*) #2

declare dso_local i8* @XS_LUN(i32*) #2

declare dso_local %struct.TYPE_51__* @SDPARAM(%struct.TYPE_52__*, i32) #2

declare dso_local i32 @isp_spi_update(%struct.TYPE_52__*, i32) #2

declare dso_local i8* @isp_getrqentry(%struct.TYPE_52__*) #2

declare dso_local i32 @ISP_MEMZERO(i32*, i32) #2

declare dso_local i64 @ISP_TST_SENDMARKER(%struct.TYPE_52__*, i32) #2

declare dso_local i64 @IS_24XX(%struct.TYPE_52__*) #2

declare dso_local i32 @isp_put_marker_24xx(%struct.TYPE_52__*, %struct.TYPE_44__*, i8*) #2

declare dso_local i32 @isp_put_marker(%struct.TYPE_52__*, %struct.TYPE_43__*, i8*) #2

declare dso_local i32 @ISP_SYNC_REQUEST(%struct.TYPE_52__*) #2

declare dso_local i32 @ISP_SET_SENDMARKER(%struct.TYPE_52__*, i32, i32) #2

declare dso_local i64 @XS_TAG_P(i32*) #2

declare dso_local i8* @XS_TAG_TYPE(i32*) #2

declare dso_local i64 @IS_SCSI(%struct.TYPE_52__*) #2

declare dso_local i32 @ISP_GET_VPIDX(%struct.TYPE_52__*, i32) #2

declare dso_local i32 @be64enc(i32, i32) #2

declare dso_local i32 @CAM_EXTLUN_BYTE_SWIZZLE(i8*) #2

declare dso_local i64 @FCP_NEXT_CRN(%struct.TYPE_52__*, i32*, i32*) #2

declare dso_local i64 @ISP_CAP_2KLOGIN(%struct.TYPE_52__*) #2

declare dso_local i64 @ISP_CAP_SCCFW(%struct.TYPE_52__*) #2

declare dso_local i32 @XS_TIME(i32*) #2

declare dso_local i32 @ISP_MEMCPY(i8*, i32*, i32) #2

declare dso_local i64 @isp_allocate_handle(%struct.TYPE_52__*, i32*, i32) #2

declare dso_local i32 @ISP_DMASETUP(%struct.TYPE_52__*, i32*, %struct.TYPE_42__*) #2

declare dso_local i32 @isp_destroy_handle(%struct.TYPE_52__*, i64) #2

declare dso_local i32 @isp_xs_prt(%struct.TYPE_52__*, i32*, i32, i8*, i32, i64) #2

declare dso_local i64 @XS_XFRLEN(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
