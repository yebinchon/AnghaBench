; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_fibre_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_fibre_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_32__ = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_31__ = type { i32, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i8**, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_29__ = type { i32* }

@ISP_ROLE_NONE = common dso_local global i32 0, align 4
@ISP_INITSTATE = common dso_local global i32 0, align 4
@ICB_VERSION1 = common dso_local global i32 0, align 4
@ICBOPT_FAIRNESS = common dso_local global i32 0, align 4
@ICBOPT_FULL_LOGIN = common dso_local global i32 0, align 4
@ICBOPT_PDBCHANGE_AE = common dso_local global i32 0, align 4
@ISP_ROLE_TARGET = common dso_local global i32 0, align 4
@ICBOPT_TGT_ENABLE = common dso_local global i32 0, align 4
@ISP_ROLE_INITIATOR = common dso_local global i32 0, align 4
@ICBOPT_INI_DISABLE = common dso_local global i32 0, align 4
@ICB_MIN_FRMLEN = common dso_local global i64 0, align 8
@ICB_MAX_FRMLEN = common dso_local global i64 0, align 8
@ISP_LOGERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"bad frame length (%d) from NVRAM- using %d\00", align 1
@ICB_DFLT_FRMLEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"bad maximum allocation (%d)- using 16\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"bad execution throttle of %d- using %d\00", align 1
@ICB_DFLT_THROTTLE = common dso_local global i32 0, align 4
@ISP_CFG_OWNLOOPID = common dso_local global i32 0, align 4
@LOCAL_LOOP_LIM = common dso_local global i64 0, align 8
@ICBOPT_HARD_ADDRESS = common dso_local global i32 0, align 4
@ICBOPT_FAST_POST = common dso_local global i32 0, align 4
@ICBOPT_EXTENDED = common dso_local global i32 0, align 4
@ISP_CFG_NOFCTAPE = common dso_local global i32 0, align 4
@ICBXOPT_FCTAPE = common dso_local global i32 0, align 4
@ISP_CFG_FCTAPE = common dso_local global i32 0, align 4
@ICBXOPT_FCTAPE_CCQ = common dso_local global i32 0, align 4
@ICBXOPT_FCTAPE_CONFIRM = common dso_local global i32 0, align 4
@ISP_CFG_PORT_PREF = common dso_local global i32 0, align 4
@ICBXOPT_TOPO_MASK = common dso_local global i32 0, align 4
@ICBXOPT_RIO_16BIT = common dso_local global i32 0, align 4
@ICBXOPT_TIMER_MASK = common dso_local global i32 0, align 4
@ICBXOPT_ZIO = common dso_local global i32 0, align 4
@ISP_CFG_1GB = common dso_local global i32 0, align 4
@ICBZOPT_RATE_MASK = common dso_local global i32 0, align 4
@ISP_CFG_2GB = common dso_local global i32 0, align 4
@MBOX_SET_FIRMWARE_OPTIONS = common dso_local global i32 0, align 4
@MBLOGALL = common dso_local global i32 0, align 4
@IFCOPT1_DISF7SWTCH = common dso_local global i32 0, align 4
@IFCOPT1_LIPASYNC = common dso_local global i32 0, align 4
@IFCOPT1_LIPF8 = common dso_local global i32 0, align 4
@IFCOPT1_EQFQASYNC = common dso_local global i32 0, align 4
@IFCOPT1_CTIO_RETRY = common dso_local global i32 0, align 4
@IFCOPT1_ENAPURE = common dso_local global i32 0, align 4
@IFCOPT3_NOPRLI = common dso_local global i32 0, align 4
@MBOX_COMMAND_COMPLETE = common dso_local global i32 0, align 4
@ICB_LOGIN_TOV = common dso_local global i32 0, align 4
@ICBOPT_BOTH_WWNS = common dso_local global i32 0, align 4
@ISP_LOGDEBUG1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Setting ICB Node 0x%08x%08x Port 0x%08x%08x\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Setting ICB Port 0x%08x%08x\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"No valid WWNs to use\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"bad request queue length\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"bad result queue length\00", align 1
@RQRSP_ADDR0015 = common dso_local global i64 0, align 8
@RQRSP_ADDR1631 = common dso_local global i64 0, align 8
@RQRSP_ADDR3247 = common dso_local global i64 0, align 8
@RQRSP_ADDR4863 = common dso_local global i64 0, align 8
@sacq = common dso_local global i32 0, align 4
@ISP_LOGDEBUG0 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [51 x i8] c"isp_fibre_init: fwopt 0x%x xfwopt 0x%x zfwopt 0x%x\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"isp_fibre_init\00", align 1
@MBOX_INIT_FIRMWARE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"INIT F/W from %p (%08x%08x)\00", align 1
@SYNC_SFORDEV = common dso_local global i32 0, align 4
@ISP_RUNSTATE = common dso_local global i32 0, align 4
@ICB_LUN_ENABLE_TOV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_30__*)* @isp_fibre_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_fibre_init(%struct.TYPE_30__* %0) #0 {
  %2 = alloca %struct.TYPE_30__*, align 8
  %3 = alloca %struct.TYPE_32__*, align 8
  %4 = alloca %struct.TYPE_31__, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_29__, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %2, align 8
  store %struct.TYPE_31__* %4, %struct.TYPE_31__** %5, align 8
  %8 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %9 = call %struct.TYPE_32__* @FCPARAM(%struct.TYPE_30__* %8, i32 0)
  store %struct.TYPE_32__* %9, %struct.TYPE_32__** %3, align 8
  %10 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @ISP_ROLE_NONE, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %861

16:                                               ; preds = %1
  %17 = load i32, i32* @ISP_INITSTATE, align 4
  %18 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %21 = call i32 @ISP_MEMZERO(%struct.TYPE_31__* %20, i32 112)
  %22 = load i32, i32* @ICB_VERSION1, align 4
  %23 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %23, i32 0, i32 21
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %31 = call i64 @IS_2100(%struct.TYPE_30__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %16
  %34 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %36, 5
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i32, i32* @ICBOPT_FAIRNESS, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %38, %33, %16
  %46 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %47 = call i64 @ISP_FW_NEWER_THAN(%struct.TYPE_30__* %46, i32 1, i32 17, i32 0)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @ICBOPT_FULL_LOGIN, align 4
  %51 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %49, %45
  %56 = load i32, i32* @ICBOPT_PDBCHANGE_AE, align 4
  %57 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ISP_ROLE_TARGET, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %55
  %68 = load i32, i32* @ICBOPT_TGT_ENABLE, align 4
  %69 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %80

73:                                               ; preds = %55
  %74 = load i32, i32* @ICBOPT_TGT_ENABLE, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %73, %67
  %81 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @ISP_ROLE_INITIATOR, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %80
  %88 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %89 = call i64 @IS_2100(%struct.TYPE_30__* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %93 = call i64 @IS_2200(%struct.TYPE_30__* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %91, %87, %80
  %96 = load i32, i32* @ICBOPT_INI_DISABLE, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 8
  br label %108

102:                                              ; preds = %91
  %103 = load i32, i32* @ICBOPT_INI_DISABLE, align 4
  %104 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %102, %95
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %110 = call i64 @DEFAULT_FRAMESIZE(%struct.TYPE_30__* %109)
  %111 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  %113 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @ICB_MIN_FRMLEN, align 8
  %117 = icmp slt i64 %115, %116
  br i1 %117, label %124, label %118

118:                                              ; preds = %108
  %119 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @ICB_MAX_FRMLEN, align 8
  %123 = icmp sgt i64 %121, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %118, %108
  %125 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %126 = load i32, i32* @ISP_LOGERR, align 4
  %127 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %128 = call i64 @DEFAULT_FRAMESIZE(%struct.TYPE_30__* %127)
  %129 = load i64, i64* @ICB_DFLT_FRMLEN, align 8
  %130 = call i32 (%struct.TYPE_30__*, i32, i8*, ...) @isp_prt(%struct.TYPE_30__* %125, i32 %126, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %128, i64 %129)
  %131 = load i64, i64* @ICB_DFLT_FRMLEN, align 8
  %132 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %124, %118
  %135 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = icmp slt i32 %142, 1
  br i1 %143, label %144, label %153

144:                                              ; preds = %134
  %145 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %146 = load i32, i32* @ISP_LOGERR, align 4
  %147 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i32 (%struct.TYPE_30__*, i32, i8*, ...) @isp_prt(%struct.TYPE_30__* %145, i32 %146, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %149)
  %151 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %151, i32 0, i32 2
  store i32 16, i32* %152, align 8
  br label %153

153:                                              ; preds = %144, %134
  %154 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %155 = call i32 @DEFAULT_EXEC_THROTTLE(%struct.TYPE_30__* %154)
  %156 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 4
  %158 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = icmp slt i32 %160, 1
  br i1 %161, label %162, label %172

162:                                              ; preds = %153
  %163 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %164 = load i32, i32* @ISP_LOGERR, align 4
  %165 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %166 = call i32 @DEFAULT_EXEC_THROTTLE(%struct.TYPE_30__* %165)
  %167 = load i32, i32* @ICB_DFLT_THROTTLE, align 4
  %168 = call i32 (%struct.TYPE_30__*, i32, i8*, ...) @isp_prt(%struct.TYPE_30__* %163, i32 %164, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %166, i32 %167)
  %169 = load i32, i32* @ICB_DFLT_THROTTLE, align 4
  %170 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 4
  br label %172

172:                                              ; preds = %162, %153
  %173 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %173, i32 0, i32 12
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %176, i32 0, i32 20
  store i32 %175, i32* %177, align 4
  %178 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %178, i32 0, i32 11
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %181, i32 0, i32 19
  store i32 %180, i32* %182, align 8
  %183 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %186, i32 0, i32 4
  store i64 %185, i64* %187, align 8
  %188 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @ISP_CFG_OWNLOOPID, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  %194 = zext i1 %193 to i32
  store i32 %194, i32* %7, align 4
  %195 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %195, i32 0, i32 4
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @LOCAL_LOOP_LIM, align 8
  %199 = icmp sge i64 %197, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %172
  %201 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %201, i32 0, i32 4
  store i64 0, i64* %202, align 8
  store i32 0, i32* %7, align 4
  br label %203

203:                                              ; preds = %200, %172
  %204 = load i32, i32* %7, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %210, label %206

206:                                              ; preds = %203
  %207 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %208 = call i64 @ISP_FW_NEWER_THAN(%struct.TYPE_30__* %207, i32 2, i32 2, i32 5)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %206, %203
  %211 = load i32, i32* @ICBOPT_HARD_ADDRESS, align 4
  %212 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = or i32 %214, %211
  store i32 %215, i32* %213, align 8
  br label %216

216:                                              ; preds = %210, %206
  %217 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %218 = call i64 @IS_2100(%struct.TYPE_30__* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %216
  %221 = load i32, i32* @ICBOPT_FAST_POST, align 4
  %222 = xor i32 %221, -1
  %223 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = and i32 %225, %222
  store i32 %226, i32* %224, align 8
  br label %487

227:                                              ; preds = %216
  %228 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %229 = call i64 @IS_2200(%struct.TYPE_30__* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %235, label %231

231:                                              ; preds = %227
  %232 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %233 = call i64 @IS_23XX(%struct.TYPE_30__* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %486

235:                                              ; preds = %231, %227
  %236 = load i32, i32* @ICBOPT_EXTENDED, align 4
  %237 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = or i32 %239, %236
  store i32 %240, i32* %238, align 8
  %241 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %244, i32 0, i32 5
  store i32 %243, i32* %245, align 8
  %246 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %247 = call i64 @ISP_CAP_FCTAPE(%struct.TYPE_30__* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %305

249:                                              ; preds = %235
  %250 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %251 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @ISP_CFG_NOFCTAPE, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %263

256:                                              ; preds = %249
  %257 = load i32, i32* @ICBXOPT_FCTAPE, align 4
  %258 = xor i32 %257, -1
  %259 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %259, i32 0, i32 5
  %261 = load i32, i32* %260, align 8
  %262 = and i32 %261, %258
  store i32 %262, i32* %260, align 8
  br label %263

263:                                              ; preds = %256, %249
  %264 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %265 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @ISP_CFG_FCTAPE, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %263
  %271 = load i32, i32* @ICBXOPT_FCTAPE, align 4
  %272 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %272, i32 0, i32 5
  %274 = load i32, i32* %273, align 8
  %275 = or i32 %274, %271
  store i32 %275, i32* %273, align 8
  br label %276

276:                                              ; preds = %270, %263
  %277 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %277, i32 0, i32 5
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @ICBXOPT_FCTAPE, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %300

283:                                              ; preds = %276
  %284 = load i32, i32* @ICBOPT_FULL_LOGIN, align 4
  %285 = xor i32 %284, -1
  %286 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = and i32 %288, %285
  store i32 %289, i32* %287, align 8
  %290 = load i32, i32* @ICBXOPT_FCTAPE_CCQ, align 4
  %291 = load i32, i32* @ICBXOPT_FCTAPE_CONFIRM, align 4
  %292 = or i32 %290, %291
  %293 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %293, i32 0, i32 5
  %295 = load i32, i32* %294, align 8
  %296 = or i32 %295, %292
  store i32 %296, i32* %294, align 8
  %297 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %298 = call %struct.TYPE_32__* @FCPARAM(%struct.TYPE_30__* %297, i32 0)
  %299 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %298, i32 0, i32 5
  store i32 1, i32* %299, align 4
  br label %304

300:                                              ; preds = %276
  %301 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %302 = call %struct.TYPE_32__* @FCPARAM(%struct.TYPE_30__* %301, i32 0)
  %303 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %302, i32 0, i32 5
  store i32 0, i32* %303, align 4
  br label %304

304:                                              ; preds = %300, %283
  br label %315

305:                                              ; preds = %235
  %306 = load i32, i32* @ICBXOPT_FCTAPE, align 4
  %307 = xor i32 %306, -1
  %308 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %308, i32 0, i32 5
  %310 = load i32, i32* %309, align 8
  %311 = and i32 %310, %307
  store i32 %311, i32* %309, align 8
  %312 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %313 = call %struct.TYPE_32__* @FCPARAM(%struct.TYPE_30__* %312, i32 0)
  %314 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %313, i32 0, i32 5
  store i32 0, i32* %314, align 4
  br label %315

315:                                              ; preds = %305, %304
  %316 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %317 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* @ISP_CFG_PORT_PREF, align 4
  %320 = and i32 %318, %319
  switch i32 %320, label %365 [
    i32 130, label %321
    i32 128, label %332
    i32 131, label %343
    i32 129, label %354
  ]

321:                                              ; preds = %315
  %322 = load i32, i32* @ICBXOPT_TOPO_MASK, align 4
  %323 = xor i32 %322, -1
  %324 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %324, i32 0, i32 5
  %326 = load i32, i32* %325, align 8
  %327 = and i32 %326, %323
  store i32 %327, i32* %325, align 8
  %328 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %328, i32 0, i32 5
  %330 = load i32, i32* %329, align 8
  %331 = or i32 %330, 137
  store i32 %331, i32* %329, align 8
  br label %384

332:                                              ; preds = %315
  %333 = load i32, i32* @ICBXOPT_TOPO_MASK, align 4
  %334 = xor i32 %333, -1
  %335 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %335, i32 0, i32 5
  %337 = load i32, i32* %336, align 8
  %338 = and i32 %337, %334
  store i32 %338, i32* %336, align 8
  %339 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %339, i32 0, i32 5
  %341 = load i32, i32* %340, align 8
  %342 = or i32 %341, 135
  store i32 %342, i32* %340, align 8
  br label %384

343:                                              ; preds = %315
  %344 = load i32, i32* @ICBXOPT_TOPO_MASK, align 4
  %345 = xor i32 %344, -1
  %346 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %346, i32 0, i32 5
  %348 = load i32, i32* %347, align 8
  %349 = and i32 %348, %345
  store i32 %349, i32* %347, align 8
  %350 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %350, i32 0, i32 5
  %352 = load i32, i32* %351, align 8
  %353 = or i32 %352, 138
  store i32 %353, i32* %351, align 8
  br label %384

354:                                              ; preds = %315
  %355 = load i32, i32* @ICBXOPT_TOPO_MASK, align 4
  %356 = xor i32 %355, -1
  %357 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %358 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %357, i32 0, i32 5
  %359 = load i32, i32* %358, align 8
  %360 = and i32 %359, %356
  store i32 %360, i32* %358, align 8
  %361 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %361, i32 0, i32 5
  %363 = load i32, i32* %362, align 8
  %364 = or i32 %363, 136
  store i32 %364, i32* %362, align 8
  br label %384

365:                                              ; preds = %315
  %366 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %367 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %366, i32 0, i32 5
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* @ICBXOPT_TOPO_MASK, align 4
  %370 = and i32 %368, %369
  switch i32 %370, label %372 [
    i32 136, label %371
    i32 135, label %371
    i32 137, label %371
    i32 138, label %371
  ]

371:                                              ; preds = %365, %365, %365, %365
  br label %383

372:                                              ; preds = %365
  %373 = load i32, i32* @ICBXOPT_TOPO_MASK, align 4
  %374 = xor i32 %373, -1
  %375 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %376 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %375, i32 0, i32 5
  %377 = load i32, i32* %376, align 8
  %378 = and i32 %377, %374
  store i32 %378, i32* %376, align 8
  %379 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %380 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %379, i32 0, i32 5
  %381 = load i32, i32* %380, align 8
  %382 = or i32 %381, 138
  store i32 %382, i32* %380, align 8
  br label %383

383:                                              ; preds = %372, %371
  br label %384

384:                                              ; preds = %383, %354, %343, %332, %321
  %385 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %386 = call i64 @IS_2200(%struct.TYPE_30__* %385)
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %401

388:                                              ; preds = %384
  %389 = load i32, i32* @ICBXOPT_RIO_16BIT, align 4
  %390 = xor i32 %389, -1
  %391 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %392 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %391, i32 0, i32 5
  %393 = load i32, i32* %392, align 8
  %394 = and i32 %393, %390
  store i32 %394, i32* %392, align 8
  %395 = load i32, i32* @ICBOPT_FAST_POST, align 4
  %396 = xor i32 %395, -1
  %397 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %398 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = and i32 %399, %396
  store i32 %400, i32* %398, align 8
  br label %485

401:                                              ; preds = %384
  %402 = load i32, i32* @ICBOPT_FAST_POST, align 4
  %403 = xor i32 %402, -1
  %404 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %405 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = and i32 %406, %403
  store i32 %407, i32* %405, align 8
  %408 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %409 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %408, i32 0, i32 4
  %410 = load i32, i32* %409, align 8
  %411 = load i32, i32* @ICBXOPT_TIMER_MASK, align 4
  %412 = and i32 %410, %411
  %413 = load i32, i32* @ICBXOPT_ZIO, align 4
  %414 = icmp eq i32 %412, %413
  br i1 %414, label %415, label %423

415:                                              ; preds = %401
  %416 = load i32, i32* @ICBXOPT_ZIO, align 4
  %417 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %418 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %417, i32 0, i32 5
  %419 = load i32, i32* %418, align 8
  %420 = or i32 %419, %416
  store i32 %420, i32* %418, align 8
  %421 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %422 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %421, i32 0, i32 6
  store i32 10, i32* %422, align 4
  br label %423

423:                                              ; preds = %415, %401
  %424 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %425 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %424, i32 0, i32 6
  %426 = load i32, i32* %425, align 8
  %427 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %428 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %427, i32 0, i32 7
  store i32 %426, i32* %428, align 8
  %429 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %430 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = load i32, i32* @ISP_CFG_1GB, align 4
  %433 = and i32 %431, %432
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %446

435:                                              ; preds = %423
  %436 = load i32, i32* @ICBZOPT_RATE_MASK, align 4
  %437 = xor i32 %436, -1
  %438 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %439 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %438, i32 0, i32 7
  %440 = load i32, i32* %439, align 8
  %441 = and i32 %440, %437
  store i32 %441, i32* %439, align 8
  %442 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %443 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %442, i32 0, i32 7
  %444 = load i32, i32* %443, align 8
  %445 = or i32 %444, 134
  store i32 %445, i32* %443, align 8
  br label %484

446:                                              ; preds = %423
  %447 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %448 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 4
  %450 = load i32, i32* @ISP_CFG_2GB, align 4
  %451 = and i32 %449, %450
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %464

453:                                              ; preds = %446
  %454 = load i32, i32* @ICBZOPT_RATE_MASK, align 4
  %455 = xor i32 %454, -1
  %456 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %457 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %456, i32 0, i32 7
  %458 = load i32, i32* %457, align 8
  %459 = and i32 %458, %455
  store i32 %459, i32* %457, align 8
  %460 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %461 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %460, i32 0, i32 7
  %462 = load i32, i32* %461, align 8
  %463 = or i32 %462, 133
  store i32 %463, i32* %461, align 8
  br label %483

464:                                              ; preds = %446
  %465 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %466 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %465, i32 0, i32 7
  %467 = load i32, i32* %466, align 8
  %468 = load i32, i32* @ICBZOPT_RATE_MASK, align 4
  %469 = and i32 %467, %468
  switch i32 %469, label %471 [
    i32 134, label %470
    i32 133, label %470
    i32 132, label %470
  ]

470:                                              ; preds = %464, %464, %464
  br label %482

471:                                              ; preds = %464
  %472 = load i32, i32* @ICBZOPT_RATE_MASK, align 4
  %473 = xor i32 %472, -1
  %474 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %475 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %474, i32 0, i32 7
  %476 = load i32, i32* %475, align 8
  %477 = and i32 %476, %473
  store i32 %477, i32* %475, align 8
  %478 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %479 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %478, i32 0, i32 7
  %480 = load i32, i32* %479, align 8
  %481 = or i32 %480, 132
  store i32 %481, i32* %479, align 8
  br label %482

482:                                              ; preds = %471, %470
  br label %483

483:                                              ; preds = %482, %453
  br label %484

484:                                              ; preds = %483, %435
  br label %485

485:                                              ; preds = %484, %388
  br label %486

486:                                              ; preds = %485, %231
  br label %487

487:                                              ; preds = %486, %220
  %488 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %489 = call i64 @ISP_FW_NEWER_THAN(%struct.TYPE_30__* %488, i32 2, i32 26, i32 0)
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %491, label %555

491:                                              ; preds = %487
  %492 = load i32, i32* @MBOX_SET_FIRMWARE_OPTIONS, align 4
  %493 = load i32, i32* @MBLOGALL, align 4
  %494 = call i32 @MBSINIT(%struct.TYPE_29__* %6, i32 %492, i32 %493, i32 0)
  %495 = load i32, i32* @IFCOPT1_DISF7SWTCH, align 4
  %496 = load i32, i32* @IFCOPT1_LIPASYNC, align 4
  %497 = or i32 %495, %496
  %498 = load i32, i32* @IFCOPT1_LIPF8, align 4
  %499 = or i32 %497, %498
  %500 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 0
  %501 = load i32*, i32** %500, align 8
  %502 = getelementptr inbounds i32, i32* %501, i64 1
  store i32 %499, i32* %502, align 4
  %503 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 0
  %504 = load i32*, i32** %503, align 8
  %505 = getelementptr inbounds i32, i32* %504, i64 2
  store i32 0, i32* %505, align 4
  %506 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 0
  %507 = load i32*, i32** %506, align 8
  %508 = getelementptr inbounds i32, i32* %507, i64 3
  store i32 0, i32* %508, align 4
  %509 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %510 = call i64 @ISP_FW_NEWER_THAN(%struct.TYPE_30__* %509, i32 3, i32 16, i32 0)
  %511 = icmp ne i64 %510, 0
  br i1 %511, label %512, label %544

512:                                              ; preds = %491
  %513 = load i32, i32* @IFCOPT1_EQFQASYNC, align 4
  %514 = load i32, i32* @IFCOPT1_CTIO_RETRY, align 4
  %515 = or i32 %513, %514
  %516 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 0
  %517 = load i32*, i32** %516, align 8
  %518 = getelementptr inbounds i32, i32* %517, i64 1
  %519 = load i32, i32* %518, align 4
  %520 = or i32 %519, %515
  store i32 %520, i32* %518, align 4
  %521 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %522 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %521, i32 0, i32 0
  %523 = load i32, i32* %522, align 8
  %524 = load i32, i32* @ISP_ROLE_TARGET, align 4
  %525 = and i32 %523, %524
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %527, label %543

527:                                              ; preds = %512
  %528 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %529 = call i64 @ISP_FW_NEWER_THAN(%struct.TYPE_30__* %528, i32 3, i32 25, i32 0)
  %530 = icmp ne i64 %529, 0
  br i1 %530, label %531, label %538

531:                                              ; preds = %527
  %532 = load i32, i32* @IFCOPT1_ENAPURE, align 4
  %533 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 0
  %534 = load i32*, i32** %533, align 8
  %535 = getelementptr inbounds i32, i32* %534, i64 1
  %536 = load i32, i32* %535, align 4
  %537 = or i32 %536, %532
  store i32 %537, i32* %535, align 4
  br label %538

538:                                              ; preds = %531, %527
  %539 = load i32, i32* @IFCOPT3_NOPRLI, align 4
  %540 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 0
  %541 = load i32*, i32** %540, align 8
  %542 = getelementptr inbounds i32, i32* %541, i64 3
  store i32 %539, i32* %542, align 4
  br label %543

543:                                              ; preds = %538, %512
  br label %544

544:                                              ; preds = %543, %491
  %545 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %546 = call i32 @isp_mboxcmd(%struct.TYPE_30__* %545, %struct.TYPE_29__* %6)
  %547 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 0
  %548 = load i32*, i32** %547, align 8
  %549 = getelementptr inbounds i32, i32* %548, i64 0
  %550 = load i32, i32* %549, align 4
  %551 = load i32, i32* @MBOX_COMMAND_COMPLETE, align 4
  %552 = icmp ne i32 %550, %551
  br i1 %552, label %553, label %554

553:                                              ; preds = %544
  br label %861

554:                                              ; preds = %544
  br label %555

555:                                              ; preds = %554, %487
  %556 = load i32, i32* @ICB_LOGIN_TOV, align 4
  %557 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %558 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %557, i32 0, i32 18
  store i32 %556, i32* %558, align 4
  %559 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %560 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %559, i32 0, i32 7
  %561 = load i32, i32* %560, align 4
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %563, label %605

563:                                              ; preds = %555
  %564 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %565 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %564, i32 0, i32 8
  %566 = load i32, i32* %565, align 8
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %605

568:                                              ; preds = %563
  %569 = load i32, i32* @ICBOPT_BOTH_WWNS, align 4
  %570 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %571 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %570, i32 0, i32 0
  %572 = load i32, i32* %571, align 8
  %573 = or i32 %572, %569
  store i32 %573, i32* %571, align 8
  %574 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %575 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %574, i32 0, i32 16
  %576 = load i32, i32* %575, align 4
  %577 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %578 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %577, i32 0, i32 7
  %579 = load i32, i32* %578, align 4
  %580 = call i32 @MAKE_NODE_NAME_FROM_WWN(i32 %576, i32 %579)
  %581 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %582 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %581, i32 0, i32 15
  %583 = load i32, i32* %582, align 8
  %584 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %585 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %584, i32 0, i32 8
  %586 = load i32, i32* %585, align 8
  %587 = call i32 @MAKE_NODE_NAME_FROM_WWN(i32 %583, i32 %586)
  %588 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %589 = load i32, i32* @ISP_LOGDEBUG1, align 4
  %590 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %591 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %590, i32 0, i32 7
  %592 = load i32, i32* %591, align 4
  %593 = ashr i32 %592, 32
  %594 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %595 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %594, i32 0, i32 7
  %596 = load i32, i32* %595, align 4
  %597 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %598 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %597, i32 0, i32 8
  %599 = load i32, i32* %598, align 8
  %600 = ashr i32 %599, 32
  %601 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %602 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %601, i32 0, i32 8
  %603 = load i32, i32* %602, align 8
  %604 = call i32 (%struct.TYPE_30__*, i32, i8*, ...) @isp_prt(%struct.TYPE_30__* %588, i32 %589, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %593, i32 %596, i32 %600, i32 %603)
  br label %639

605:                                              ; preds = %563, %555
  %606 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %607 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %606, i32 0, i32 8
  %608 = load i32, i32* %607, align 8
  %609 = icmp ne i32 %608, 0
  br i1 %609, label %610, label %634

610:                                              ; preds = %605
  %611 = load i32, i32* @ICBOPT_BOTH_WWNS, align 4
  %612 = xor i32 %611, -1
  %613 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %614 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %613, i32 0, i32 0
  %615 = load i32, i32* %614, align 8
  %616 = and i32 %615, %612
  store i32 %616, i32* %614, align 8
  %617 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %618 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %617, i32 0, i32 15
  %619 = load i32, i32* %618, align 8
  %620 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %621 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %620, i32 0, i32 8
  %622 = load i32, i32* %621, align 8
  %623 = call i32 @MAKE_NODE_NAME_FROM_WWN(i32 %619, i32 %622)
  %624 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %625 = load i32, i32* @ISP_LOGDEBUG1, align 4
  %626 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %627 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %626, i32 0, i32 8
  %628 = load i32, i32* %627, align 8
  %629 = ashr i32 %628, 32
  %630 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %631 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %630, i32 0, i32 8
  %632 = load i32, i32* %631, align 8
  %633 = call i32 (%struct.TYPE_30__*, i32, i8*, ...) @isp_prt(%struct.TYPE_30__* %624, i32 %625, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %629, i32 %632)
  br label %638

634:                                              ; preds = %605
  %635 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %636 = load i32, i32* @ISP_LOGERR, align 4
  %637 = call i32 (%struct.TYPE_30__*, i32, i8*, ...) @isp_prt(%struct.TYPE_30__* %635, i32 %636, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %861

638:                                              ; preds = %610
  br label %639

639:                                              ; preds = %638, %568
  %640 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %641 = call i32 @RQUEST_QUEUE_LEN(%struct.TYPE_30__* %640)
  %642 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %643 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %642, i32 0, i32 11
  store i32 %641, i32* %643, align 8
  %644 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %645 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %644, i32 0, i32 11
  %646 = load i32, i32* %645, align 8
  %647 = icmp slt i32 %646, 1
  br i1 %647, label %648, label %652

648:                                              ; preds = %639
  %649 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %650 = load i32, i32* @ISP_LOGERR, align 4
  %651 = call i32 (%struct.TYPE_30__*, i32, i8*, ...) @isp_prt(%struct.TYPE_30__* %649, i32 %650, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %652

652:                                              ; preds = %648, %639
  %653 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %654 = call i32 @RESULT_QUEUE_LEN(%struct.TYPE_30__* %653)
  %655 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %656 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %655, i32 0, i32 12
  store i32 %654, i32* %656, align 4
  %657 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %658 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %657, i32 0, i32 12
  %659 = load i32, i32* %658, align 4
  %660 = icmp slt i32 %659, 1
  br i1 %660, label %661, label %665

661:                                              ; preds = %652
  %662 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %663 = load i32, i32* @ISP_LOGERR, align 4
  %664 = call i32 (%struct.TYPE_30__*, i32, i8*, ...) @isp_prt(%struct.TYPE_30__* %662, i32 %663, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %665

665:                                              ; preds = %661, %652
  %666 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %667 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %666, i32 0, i32 9
  %668 = load i64, i64* %667, align 8
  %669 = call i8* @DMA_WD0(i64 %668)
  %670 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %671 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %670, i32 0, i32 14
  %672 = load i8**, i8*** %671, align 8
  %673 = load i64, i64* @RQRSP_ADDR0015, align 8
  %674 = getelementptr inbounds i8*, i8** %672, i64 %673
  store i8* %669, i8** %674, align 8
  %675 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %676 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %675, i32 0, i32 9
  %677 = load i64, i64* %676, align 8
  %678 = call i8* @DMA_WD1(i64 %677)
  %679 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %680 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %679, i32 0, i32 14
  %681 = load i8**, i8*** %680, align 8
  %682 = load i64, i64* @RQRSP_ADDR1631, align 8
  %683 = getelementptr inbounds i8*, i8** %681, i64 %682
  store i8* %678, i8** %683, align 8
  %684 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %685 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %684, i32 0, i32 9
  %686 = load i64, i64* %685, align 8
  %687 = call i8* @DMA_WD2(i64 %686)
  %688 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %689 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %688, i32 0, i32 14
  %690 = load i8**, i8*** %689, align 8
  %691 = load i64, i64* @RQRSP_ADDR3247, align 8
  %692 = getelementptr inbounds i8*, i8** %690, i64 %691
  store i8* %687, i8** %692, align 8
  %693 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %694 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %693, i32 0, i32 9
  %695 = load i64, i64* %694, align 8
  %696 = call i8* @DMA_WD3(i64 %695)
  %697 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %698 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %697, i32 0, i32 14
  %699 = load i8**, i8*** %698, align 8
  %700 = load i64, i64* @RQRSP_ADDR4863, align 8
  %701 = getelementptr inbounds i8*, i8** %699, i64 %700
  store i8* %696, i8** %701, align 8
  %702 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %703 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %702, i32 0, i32 8
  %704 = load i64, i64* %703, align 8
  %705 = call i8* @DMA_WD0(i64 %704)
  %706 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %707 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %706, i32 0, i32 13
  %708 = load i8**, i8*** %707, align 8
  %709 = load i64, i64* @RQRSP_ADDR0015, align 8
  %710 = getelementptr inbounds i8*, i8** %708, i64 %709
  store i8* %705, i8** %710, align 8
  %711 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %712 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %711, i32 0, i32 8
  %713 = load i64, i64* %712, align 8
  %714 = call i8* @DMA_WD1(i64 %713)
  %715 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %716 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %715, i32 0, i32 13
  %717 = load i8**, i8*** %716, align 8
  %718 = load i64, i64* @RQRSP_ADDR1631, align 8
  %719 = getelementptr inbounds i8*, i8** %717, i64 %718
  store i8* %714, i8** %719, align 8
  %720 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %721 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %720, i32 0, i32 8
  %722 = load i64, i64* %721, align 8
  %723 = call i8* @DMA_WD2(i64 %722)
  %724 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %725 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %724, i32 0, i32 13
  %726 = load i8**, i8*** %725, align 8
  %727 = load i64, i64* @RQRSP_ADDR3247, align 8
  %728 = getelementptr inbounds i8*, i8** %726, i64 %727
  store i8* %723, i8** %728, align 8
  %729 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %730 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %729, i32 0, i32 8
  %731 = load i64, i64* %730, align 8
  %732 = call i8* @DMA_WD3(i64 %731)
  %733 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %734 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %733, i32 0, i32 13
  %735 = load i8**, i8*** %734, align 8
  %736 = load i64, i64* @RQRSP_ADDR4863, align 8
  %737 = getelementptr inbounds i8*, i8** %735, i64 %736
  store i8* %732, i8** %737, align 8
  %738 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %739 = call i64 @FC_SCRATCH_ACQUIRE(%struct.TYPE_30__* %738, i32 0)
  %740 = icmp ne i64 %739, 0
  br i1 %740, label %741, label %748

741:                                              ; preds = %665
  %742 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %743 = load i32, i32* @ISP_LOGERR, align 4
  %744 = load i32, i32* @sacq, align 4
  %745 = sext i32 %744 to i64
  %746 = inttoptr i64 %745 to i8*
  %747 = call i32 (%struct.TYPE_30__*, i32, i8*, ...) @isp_prt(%struct.TYPE_30__* %742, i32 %743, i8* %746)
  br label %861

748:                                              ; preds = %665
  %749 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %750 = load i32, i32* @ISP_LOGDEBUG0, align 4
  %751 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %752 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %751, i32 0, i32 0
  %753 = load i32, i32* %752, align 8
  %754 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %755 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %754, i32 0, i32 5
  %756 = load i32, i32* %755, align 8
  %757 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %758 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %757, i32 0, i32 7
  %759 = load i32, i32* %758, align 8
  %760 = call i32 (%struct.TYPE_30__*, i32, i8*, ...) @isp_prt(%struct.TYPE_30__* %749, i32 %750, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i32 %753, i32 %756, i32 %759)
  %761 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %762 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %763 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %764 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %763, i32 0, i32 9
  %765 = load i32, i32* %764, align 4
  %766 = sext i32 %765 to i64
  %767 = inttoptr i64 %766 to %struct.TYPE_31__*
  %768 = call i32 @isp_put_icb(%struct.TYPE_30__* %761, %struct.TYPE_31__* %762, %struct.TYPE_31__* %767)
  %769 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %770 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %769, i32 0, i32 2
  %771 = load i32, i32* %770, align 8
  %772 = load i32, i32* @ISP_LOGDEBUG1, align 4
  %773 = and i32 %771, %772
  %774 = icmp ne i32 %773, 0
  br i1 %774, label %775, label %781

775:                                              ; preds = %748
  %776 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %777 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %778 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %777, i32 0, i32 9
  %779 = load i32, i32* %778, align 4
  %780 = call i32 @isp_print_bytes(%struct.TYPE_30__* %776, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 112, i32 %779)
  br label %781

781:                                              ; preds = %775, %748
  %782 = load i32, i32* @MBOX_INIT_FIRMWARE, align 4
  %783 = load i32, i32* @MBLOGALL, align 4
  %784 = call i32 @MBSINIT(%struct.TYPE_29__* %6, i32 %782, i32 %783, i32 30000000)
  %785 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 0
  %786 = load i32*, i32** %785, align 8
  %787 = getelementptr inbounds i32, i32* %786, i64 1
  store i32 0, i32* %787, align 4
  %788 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %789 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %788, i32 0, i32 10
  %790 = load i64, i64* %789, align 8
  %791 = call i8* @DMA_WD1(i64 %790)
  %792 = ptrtoint i8* %791 to i32
  %793 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 0
  %794 = load i32*, i32** %793, align 8
  %795 = getelementptr inbounds i32, i32* %794, i64 2
  store i32 %792, i32* %795, align 4
  %796 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %797 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %796, i32 0, i32 10
  %798 = load i64, i64* %797, align 8
  %799 = call i8* @DMA_WD0(i64 %798)
  %800 = ptrtoint i8* %799 to i32
  %801 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 0
  %802 = load i32*, i32** %801, align 8
  %803 = getelementptr inbounds i32, i32* %802, i64 3
  store i32 %800, i32* %803, align 4
  %804 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %805 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %804, i32 0, i32 10
  %806 = load i64, i64* %805, align 8
  %807 = call i8* @DMA_WD3(i64 %806)
  %808 = ptrtoint i8* %807 to i32
  %809 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 0
  %810 = load i32*, i32** %809, align 8
  %811 = getelementptr inbounds i32, i32* %810, i64 6
  store i32 %808, i32* %811, align 4
  %812 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %813 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %812, i32 0, i32 10
  %814 = load i64, i64* %813, align 8
  %815 = call i8* @DMA_WD2(i64 %814)
  %816 = ptrtoint i8* %815 to i32
  %817 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 0
  %818 = load i32*, i32** %817, align 8
  %819 = getelementptr inbounds i32, i32* %818, i64 7
  store i32 %816, i32* %819, align 4
  %820 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %821 = load i32, i32* @ISP_LOGDEBUG0, align 4
  %822 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %823 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %822, i32 0, i32 9
  %824 = load i32, i32* %823, align 4
  %825 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %826 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %825, i32 0, i32 10
  %827 = load i64, i64* %826, align 8
  %828 = trunc i64 %827 to i32
  %829 = ashr i32 %828, 32
  %830 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %831 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %830, i32 0, i32 10
  %832 = load i64, i64* %831, align 8
  %833 = trunc i64 %832 to i32
  %834 = call i32 (%struct.TYPE_30__*, i32, i8*, ...) @isp_prt(%struct.TYPE_30__* %820, i32 %821, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %824, i32 %829, i32 %833)
  %835 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %836 = load i32, i32* @SYNC_SFORDEV, align 4
  %837 = call i32 @MEMORYBARRIER(%struct.TYPE_30__* %835, i32 %836, i32 0, i32 112, i32 0)
  %838 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %839 = call i32 @isp_mboxcmd(%struct.TYPE_30__* %838, %struct.TYPE_29__* %6)
  %840 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %841 = call i32 @FC_SCRATCH_RELEASE(%struct.TYPE_30__* %840, i32 0)
  %842 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 0
  %843 = load i32*, i32** %842, align 8
  %844 = getelementptr inbounds i32, i32* %843, i64 0
  %845 = load i32, i32* %844, align 4
  %846 = load i32, i32* @MBOX_COMMAND_COMPLETE, align 4
  %847 = icmp ne i32 %845, %846
  br i1 %847, label %848, label %849

848:                                              ; preds = %781
  br label %861

849:                                              ; preds = %781
  %850 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %851 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %850, i32 0, i32 7
  store i64 0, i64* %851, align 8
  %852 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %853 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %852, i32 0, i32 6
  store i64 0, i64* %853, align 8
  %854 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %855 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %854, i32 0, i32 5
  store i64 0, i64* %855, align 8
  %856 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %857 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %856, i32 0, i32 4
  store i64 0, i64* %857, align 8
  %858 = load i32, i32* @ISP_RUNSTATE, align 4
  %859 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %860 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %859, i32 0, i32 3
  store i32 %858, i32* %860, align 4
  br label %861

861:                                              ; preds = %849, %848, %741, %634, %553, %15
  ret void
}

declare dso_local %struct.TYPE_32__* @FCPARAM(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @ISP_MEMZERO(%struct.TYPE_31__*, i32) #1

declare dso_local i64 @IS_2100(%struct.TYPE_30__*) #1

declare dso_local i64 @ISP_FW_NEWER_THAN(%struct.TYPE_30__*, i32, i32, i32) #1

declare dso_local i64 @IS_2200(%struct.TYPE_30__*) #1

declare dso_local i64 @DEFAULT_FRAMESIZE(%struct.TYPE_30__*) #1

declare dso_local i32 @isp_prt(%struct.TYPE_30__*, i32, i8*, ...) #1

declare dso_local i32 @DEFAULT_EXEC_THROTTLE(%struct.TYPE_30__*) #1

declare dso_local i64 @IS_23XX(%struct.TYPE_30__*) #1

declare dso_local i64 @ISP_CAP_FCTAPE(%struct.TYPE_30__*) #1

declare dso_local i32 @MBSINIT(%struct.TYPE_29__*, i32, i32, i32) #1

declare dso_local i32 @isp_mboxcmd(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

declare dso_local i32 @MAKE_NODE_NAME_FROM_WWN(i32, i32) #1

declare dso_local i32 @RQUEST_QUEUE_LEN(%struct.TYPE_30__*) #1

declare dso_local i32 @RESULT_QUEUE_LEN(%struct.TYPE_30__*) #1

declare dso_local i8* @DMA_WD0(i64) #1

declare dso_local i8* @DMA_WD1(i64) #1

declare dso_local i8* @DMA_WD2(i64) #1

declare dso_local i8* @DMA_WD3(i64) #1

declare dso_local i64 @FC_SCRATCH_ACQUIRE(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @isp_put_icb(%struct.TYPE_30__*, %struct.TYPE_31__*, %struct.TYPE_31__*) #1

declare dso_local i32 @isp_print_bytes(%struct.TYPE_30__*, i8*, i32, i32) #1

declare dso_local i32 @MEMORYBARRIER(%struct.TYPE_30__*, i32, i32, i32, i32) #1

declare dso_local i32 @FC_SCRATCH_RELEASE(%struct.TYPE_30__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
