; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_intr_respq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_intr_respq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_54__ = type { i64, i32, i64, i32, i32, i32, i64, i32 }
%struct.TYPE_52__ = type { i32, i32, i32, i32, i64, i64, i64, i32, i64*, i64*, %struct.TYPE_49__ }
%struct.TYPE_49__ = type { i32, i32 }
%struct.TYPE_56__ = type { i32, i32, i64, i64, i64, i64* }
%struct.TYPE_55__ = type { i32*, %struct.TYPE_48__ }
%struct.TYPE_48__ = type { i32 }
%struct.TYPE_53__ = type { i32 }
%struct.TYPE_51__ = type { i32, %struct.TYPE_50__* }
%struct.TYPE_50__ = type { i32 }

@QENTRY_LEN = common dso_local global i32 0, align 4
@ISP_RUNSTATE = common dso_local global i64 0, align 8
@ISP_LOGINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"respq interrupt when not ready\00", align 1
@SYNC_RESULT = common dso_local global i32 0, align 4
@ISP_LOGDEBUG1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Response Queue Entry\00", align 1
@RQSTYPE_STATUS_CONT = common dso_local global i32 0, align 4
@RQSTYPE_RESPONSE = common dso_local global i32 0, align 4
@RQSF_GOT_STATUS = common dso_local global i32 0, align 4
@RQSTYPE_RIO1 = common dso_local global i32 0, align 4
@RQSTYPE_RIO2 = common dso_local global i32 0, align 4
@ISP_LOGERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"dropping RIO2 response\00", align 1
@ISP_LOGDEBUG0 = common dso_local global i32 0, align 4
@ISP_LOG_CWARN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Expecting Status Continuations for %u bytes\00", align 1
@ISP_LOG_WARN1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Ignored Continuation Response\00", align 1
@notresp = common dso_local global i8* null, align 8
@RQSFLAG_MASK = common dso_local global i32 0, align 4
@RQSFLAG_CONTINUATION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"unexpected continuation segment\00", align 1
@RQSFLAG_FULL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"internal queues full\00", align 1
@RQSFLAG_BADHEADER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"bad header flag\00", align 1
@RQSFLAG_BADPACKET = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"bad request packet\00", align 1
@RQSFLAG_BADCOUNT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"invalid entry count\00", align 1
@RQSFLAG_BADORDER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"invalid IOCB ordering\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"cannot find handle 0x%x (type 0x%x)\00", align 1
@RQCS_ABORTED = common dso_local global i64 0, align 8
@RQCS_RESET_OCCURRED = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [38 x i8] c"cannot find handle 0x%x (status 0x%x)\00", align 1
@RQSTF_BUS_RESET = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"%d.%d.%jx bus was reset\00", align 1
@HBA_BUSRESET = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [20 x i8] c"%d.%d.%jx buddaboom\00", align 1
@HBA_BOTCH = common dso_local global i32 0, align 4
@RQCS_RV = common dso_local global i32 0, align 4
@RQCS_SV = common dso_local global i32 0, align 4
@RQSF_GOT_SENSE = common dso_local global i32 0, align 4
@FCP_RSPNS_CODE_OFFSET = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [34 x i8] c"Task Management function complete\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"FCP_DATA length different than FCP_BURST_LEN\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"FCP_CMND fields invalid\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"FCP_DATA parameter mismatch with FCP_DATA_RO\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"Task Management function rejected\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"Task Management function failed\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"Task Management function succeeded\00", align 1
@.str.22 = private unnamed_addr constant [55 x i8] c"Task Management function incorrect logical unit number\00", align 1
@__const.isp_intr_respq.rnames = private unnamed_addr constant [10 x i8*] [i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i32 0, i32 0)], align 16
@.str.23 = private unnamed_addr constant [31 x i8] c"Unknown FCP Response Code 0x%x\00", align 1
@ISP_LOGWARN = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [40 x i8] c"FCP RESPONSE, LENGTH %u: %s CDB0=0x%02x\00", align 1
@HBA_NOERROR = common dso_local global i64 0, align 8
@SCSI_BUSY = common dso_local global i32 0, align 4
@HBA_TGTBSY = common dso_local global i32 0, align 4
@RQSTF_NEGOTIATION = common dso_local global i32 0, align 4
@RQSF_XFER_COMPLETE = common dso_local global i32 0, align 4
@RQCS_RESID = common dso_local global i32 0, align 4
@ISP_LOGDEBUG2 = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [48 x i8] c"asked for %lu got raw resid %lu settled for %lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isp_intr_respq(%struct.TYPE_54__* %0) #0 {
  %2 = alloca %struct.TYPE_54__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_52__*, align 8
  %8 = alloca %struct.TYPE_56__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_55__*, align 8
  %31 = alloca %struct.TYPE_53__*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i8*, align 8
  %34 = alloca [64 x i8], align 16
  %35 = alloca [10 x i8*], align 16
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  %38 = alloca %struct.TYPE_51__*, align 8
  store %struct.TYPE_54__* %0, %struct.TYPE_54__** %2, align 8
  %39 = load i32, i32* @QENTRY_LEN, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %5, align 8
  %42 = alloca i64, i64 %40, align 16
  store i64 %40, i64* %6, align 8
  %43 = bitcast i64* %42 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %43, %struct.TYPE_52__** %7, align 8
  %44 = bitcast i64* %42 to %struct.TYPE_56__*
  store %struct.TYPE_56__* %44, %struct.TYPE_56__** %8, align 8
  store i32 0, i32* %14, align 4
  %45 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ISP_RUNSTATE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %1
  %51 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %52 = load i32, i32* @ISP_LOGINFO, align 4
  %53 = call i32 (%struct.TYPE_54__*, i32, i8*, ...) @isp_prt(%struct.TYPE_54__* %51, i32 %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %29, align 4
  br label %838

54:                                               ; preds = %1
  %55 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %56 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @ISP_READ(%struct.TYPE_54__* %55, i32 %58)
  store i64 %59, i64* %20, align 8
  %60 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %61 = call i64 @IS_2100(%struct.TYPE_54__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %54
  %64 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %65 = call i64 @IS_2300(%struct.TYPE_54__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %63
  %68 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %70, 2
  br i1 %71, label %72, label %85

72:                                               ; preds = %67, %54
  br label %73

73:                                               ; preds = %80, %72
  %74 = load i64, i64* %20, align 8
  store i64 %74, i64* %21, align 8
  %75 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %76 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @ISP_READ(%struct.TYPE_54__* %75, i32 %78)
  store i64 %79, i64* %20, align 8
  br label %80

80:                                               ; preds = %73
  %81 = load i64, i64* %21, align 8
  %82 = load i64, i64* %20, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %73, label %84

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %84, %67, %63
  %86 = load i64, i64* %20, align 8
  %87 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %87, i32 0, i32 6
  store i64 %86, i64* %88, align 8
  %89 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %23, align 8
  br label %92

92:                                               ; preds = %814, %467, %421, %351, %323, %315, %286, %237, %229, %85
  %93 = load i64, i64* %23, align 8
  %94 = load i64, i64* %20, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %815

96:                                               ; preds = %92
  %97 = load i64, i64* %23, align 8
  store i64 %97, i64* %22, align 8
  store i64 %97, i64* %26, align 8
  %98 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = load i64, i64* %22, align 8
  %102 = call i64 @ISP_QUEUE_ENTRY(i32 %100, i64 %101)
  %103 = inttoptr i64 %102 to i32*
  store i32* %103, i32** %9, align 8
  %104 = load i64, i64* %23, align 8
  %105 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %106 = call i32 @RESULT_QUEUE_LEN(%struct.TYPE_54__* %105)
  %107 = call i64 @ISP_NXT_QENTRY(i64 %104, i32 %106)
  store i64 %107, i64* %23, align 8
  %108 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %109 = load i32, i32* @SYNC_RESULT, align 4
  %110 = load i64, i64* %22, align 8
  %111 = load i32, i32* @QENTRY_LEN, align 4
  %112 = call i32 @MEMORYBARRIER(%struct.TYPE_54__* %108, i32 %109, i64 %110, i32 %111, i32 -1)
  %113 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @ISP_LOGDEBUG1, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %96
  %120 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %121 = load i64, i64* %22, align 8
  %122 = load i32*, i32** %9, align 8
  %123 = call i32 @isp_print_qentry(%struct.TYPE_54__* %120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %121, i32* %122)
  br label %124

124:                                              ; preds = %119, %96
  %125 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %126 = load i32*, i32** %9, align 8
  %127 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %127, i32 0, i32 10
  %129 = call i32 @isp_get_hdr(%struct.TYPE_54__* %125, i32* %126, %struct.TYPE_49__* %128)
  %130 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %130, i32 0, i32 10
  %132 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  store i32 %133, i32* %15, align 4
  %134 = load i32, i32* %14, align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %124
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* @RQSTYPE_STATUS_CONT, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  store i32 0, i32* %14, align 4
  %141 = load i32*, i32** %4, align 8
  %142 = call i32 @isp_done(i32* %141)
  br label %143

143:                                              ; preds = %140, %136, %124
  %144 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %145 = call i64 @IS_24XX(%struct.TYPE_54__* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %173

147:                                              ; preds = %143
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* @RQSTYPE_RESPONSE, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %173

151:                                              ; preds = %147
  %152 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %153 = load i32*, i32** %9, align 8
  %154 = bitcast i32* %153 to %struct.TYPE_56__*
  %155 = load %struct.TYPE_56__*, %struct.TYPE_56__** %8, align 8
  %156 = call i32 @isp_get_24xx_response(%struct.TYPE_54__* %152, %struct.TYPE_56__* %154, %struct.TYPE_56__* %155)
  %157 = load %struct.TYPE_56__*, %struct.TYPE_56__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  store i32 %159, i32* %19, align 4
  %160 = load %struct.TYPE_56__*, %struct.TYPE_56__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %13, align 4
  store i32 0, i32* %17, align 4
  %163 = load i32, i32* %19, align 4
  %164 = and i32 %163, 255
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %151
  %167 = load i32, i32* @RQSF_GOT_STATUS, align 4
  store i32 %167, i32* %18, align 4
  br label %169

168:                                              ; preds = %151
  store i32 0, i32* %18, align 4
  br label %169

169:                                              ; preds = %168, %166
  %170 = load %struct.TYPE_56__*, %struct.TYPE_56__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  store i64 %172, i64* %28, align 8
  br label %335

173:                                              ; preds = %147, %143
  %174 = load i32, i32* %15, align 4
  %175 = load i32, i32* @RQSTYPE_RESPONSE, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %198

177:                                              ; preds = %173
  %178 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %179 = load i32*, i32** %9, align 8
  %180 = bitcast i32* %179 to %struct.TYPE_52__*
  %181 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %182 = call i32 @isp_get_response(%struct.TYPE_54__* %178, %struct.TYPE_52__* %180, %struct.TYPE_52__* %181)
  %183 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  store i32 %185, i32* %19, align 4
  %186 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %13, align 4
  %189 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  store i32 %191, i32* %17, align 4
  %192 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %18, align 4
  %195 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %195, i32 0, i32 4
  %197 = load i64, i64* %196, align 8
  store i64 %197, i64* %28, align 8
  br label %334

198:                                              ; preds = %173
  %199 = load i32, i32* %15, align 4
  %200 = load i32, i32* @RQSTYPE_RIO1, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %233

202:                                              ; preds = %198
  %203 = bitcast i64* %42 to %struct.TYPE_55__*
  store %struct.TYPE_55__* %203, %struct.TYPE_55__** %30, align 8
  %204 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %205 = load i32*, i32** %9, align 8
  %206 = bitcast i32* %205 to %struct.TYPE_55__*
  %207 = load %struct.TYPE_55__*, %struct.TYPE_55__** %30, align 8
  %208 = call i32 @isp_get_rio1(%struct.TYPE_54__* %204, %struct.TYPE_55__* %206, %struct.TYPE_55__* %207)
  store i32 0, i32* %16, align 4
  br label %209

209:                                              ; preds = %226, %202
  %210 = load i32, i32* %16, align 4
  %211 = load %struct.TYPE_55__*, %struct.TYPE_55__** %30, align 8
  %212 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp slt i32 %210, %214
  br i1 %215, label %216, label %229

216:                                              ; preds = %209
  %217 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %218 = load %struct.TYPE_55__*, %struct.TYPE_55__** %30, align 8
  %219 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %16, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @isp_fastpost_complete(%struct.TYPE_54__* %217, i32 %224)
  br label %226

226:                                              ; preds = %216
  %227 = load i32, i32* %16, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %16, align 4
  br label %209

229:                                              ; preds = %209
  %230 = load i32*, i32** %9, align 8
  %231 = load i32, i32* @QENTRY_LEN, align 4
  %232 = call i32 @ISP_MEMZERO(i32* %230, i32 %231)
  br label %92

233:                                              ; preds = %198
  %234 = load i32, i32* %15, align 4
  %235 = load i32, i32* @RQSTYPE_RIO2, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %244

237:                                              ; preds = %233
  %238 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %239 = load i32, i32* @ISP_LOGERR, align 4
  %240 = call i32 (%struct.TYPE_54__*, i32, i8*, ...) @isp_prt(%struct.TYPE_54__* %238, i32 %239, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %241 = load i32*, i32** %9, align 8
  %242 = load i32, i32* @QENTRY_LEN, align 4
  %243 = call i32 @ISP_MEMZERO(i32* %241, i32 %242)
  br label %92

244:                                              ; preds = %233
  %245 = load i32, i32* %15, align 4
  %246 = load i32, i32* @RQSTYPE_STATUS_CONT, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %248, label %290

248:                                              ; preds = %244
  %249 = bitcast i64* %42 to %struct.TYPE_53__*
  store %struct.TYPE_53__* %249, %struct.TYPE_53__** %31, align 8
  %250 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %251 = load i32*, i32** %9, align 8
  %252 = bitcast i32* %251 to %struct.TYPE_53__*
  %253 = load %struct.TYPE_53__*, %struct.TYPE_53__** %31, align 8
  %254 = call i32 @isp_get_cont_response(%struct.TYPE_54__* %250, %struct.TYPE_53__* %252, %struct.TYPE_53__* %253)
  %255 = load i32, i32* %14, align 4
  %256 = icmp sgt i32 %255, 0
  br i1 %256, label %257, label %282

257:                                              ; preds = %248
  %258 = load i32, i32* %14, align 4
  %259 = call i32 @min(i32 %258, i32 4)
  store i32 %259, i32* %16, align 4
  %260 = load i32*, i32** %4, align 8
  %261 = load %struct.TYPE_53__*, %struct.TYPE_53__** %31, align 8
  %262 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* %16, align 4
  %265 = call i32 @XS_SENSE_APPEND(i32* %260, i32 %263, i32 %264)
  %266 = load i32, i32* %16, align 4
  %267 = load i32, i32* %14, align 4
  %268 = sub nsw i32 %267, %266
  store i32 %268, i32* %14, align 4
  %269 = load i32, i32* %14, align 4
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %257
  %272 = load i32*, i32** %4, align 8
  %273 = call i32 @isp_done(i32* %272)
  br label %281

274:                                              ; preds = %257
  %275 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %276 = load i32, i32* @ISP_LOGDEBUG0, align 4
  %277 = load i32, i32* @ISP_LOG_CWARN, align 4
  %278 = or i32 %276, %277
  %279 = load i32, i32* %14, align 4
  %280 = call i32 (%struct.TYPE_54__*, i32, i8*, ...) @isp_prt(%struct.TYPE_54__* %275, i32 %278, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %279)
  br label %281

281:                                              ; preds = %274, %271
  br label %286

282:                                              ; preds = %248
  %283 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %284 = load i32, i32* @ISP_LOG_WARN1, align 4
  %285 = call i32 (%struct.TYPE_54__*, i32, i8*, ...) @isp_prt(%struct.TYPE_54__* %283, i32 %284, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %286

286:                                              ; preds = %282, %281
  %287 = load i32*, i32** %9, align 8
  %288 = load i32, i32* @QENTRY_LEN, align 4
  %289 = call i32 @ISP_MEMZERO(i32* %287, i32 %288)
  br label %92

290:                                              ; preds = %244
  %291 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %292 = load i32, i32* %15, align 4
  %293 = load i32*, i32** %9, align 8
  %294 = call i64 @isp_handle_other_response(%struct.TYPE_54__* %291, i32 %292, i32* %293, i64* %22)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %323

296:                                              ; preds = %290
  br label %297

297:                                              ; preds = %301, %296
  %298 = load i64, i64* %26, align 8
  %299 = load i64, i64* %22, align 8
  %300 = icmp ne i64 %298, %299
  br i1 %300, label %301, label %315

301:                                              ; preds = %297
  %302 = load i32*, i32** %9, align 8
  %303 = load i32, i32* @QENTRY_LEN, align 4
  %304 = call i32 @ISP_MEMZERO(i32* %302, i32 %303)
  %305 = load i64, i64* %26, align 8
  %306 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %307 = call i32 @RESULT_QUEUE_LEN(%struct.TYPE_54__* %306)
  %308 = call i64 @ISP_NXT_QENTRY(i64 %305, i32 %307)
  store i64 %308, i64* %26, align 8
  %309 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %310 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %309, i32 0, i32 5
  %311 = load i32, i32* %310, align 8
  %312 = load i64, i64* %26, align 8
  %313 = call i64 @ISP_QUEUE_ENTRY(i32 %311, i64 %312)
  %314 = inttoptr i64 %313 to i32*
  store i32* %314, i32** %9, align 8
  br label %297

315:                                              ; preds = %297
  %316 = load i32*, i32** %9, align 8
  %317 = load i32, i32* @QENTRY_LEN, align 4
  %318 = call i32 @ISP_MEMZERO(i32* %316, i32 %317)
  %319 = load i64, i64* %22, align 8
  %320 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %321 = call i32 @RESULT_QUEUE_LEN(%struct.TYPE_54__* %320)
  %322 = call i64 @ISP_NXT_QENTRY(i64 %319, i32 %321)
  store i64 %322, i64* %23, align 8
  br label %92

323:                                              ; preds = %290
  %324 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %325 = load i32, i32* @ISP_LOGERR, align 4
  %326 = load i8*, i8** @notresp, align 8
  %327 = load i32, i32* %15, align 4
  %328 = load i64, i64* %22, align 8
  %329 = load i64, i64* %23, align 8
  %330 = call i32 (%struct.TYPE_54__*, i32, i8*, ...) @isp_prt(%struct.TYPE_54__* %324, i32 %325, i8* %326, i32 %327, i64 %328, i64 %329)
  %331 = load i32*, i32** %9, align 8
  %332 = load i32, i32* @QENTRY_LEN, align 4
  %333 = call i32 @ISP_MEMZERO(i32* %331, i32 %332)
  br label %92

334:                                              ; preds = %177
  br label %335

335:                                              ; preds = %334, %169
  store i32 0, i32* %12, align 4
  %336 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %337 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %336, i32 0, i32 10
  %338 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @RQSFLAG_MASK, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %427

343:                                              ; preds = %335
  %344 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %345 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %344, i32 0, i32 10
  %346 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* @RQSFLAG_CONTINUATION, align 4
  %349 = and i32 %347, %348
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %356

351:                                              ; preds = %343
  %352 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %353 = load i64, i64* %22, align 8
  %354 = load i32*, i32** %9, align 8
  %355 = call i32 @isp_print_qentry(%struct.TYPE_54__* %352, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %353, i32* %354)
  br label %92

356:                                              ; preds = %343
  %357 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %357, i32 0, i32 10
  %359 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* @RQSFLAG_FULL, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %368

364:                                              ; preds = %356
  %365 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %366 = load i32, i32* @ISP_LOG_WARN1, align 4
  %367 = call i32 (%struct.TYPE_54__*, i32, i8*, ...) @isp_prt(%struct.TYPE_54__* %365, i32 %366, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %368

368:                                              ; preds = %364, %356
  %369 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %370 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %369, i32 0, i32 10
  %371 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* @RQSFLAG_BADHEADER, align 4
  %374 = and i32 %372, %373
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %383

376:                                              ; preds = %368
  %377 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %378 = load i64, i64* %22, align 8
  %379 = load i32*, i32** %9, align 8
  %380 = call i32 @isp_print_qentry(%struct.TYPE_54__* %377, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i64 %378, i32* %379)
  %381 = load i32, i32* %12, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %12, align 4
  br label %383

383:                                              ; preds = %376, %368
  %384 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %385 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %384, i32 0, i32 10
  %386 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = load i32, i32* @RQSFLAG_BADPACKET, align 4
  %389 = and i32 %387, %388
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %398

391:                                              ; preds = %383
  %392 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %393 = load i64, i64* %22, align 8
  %394 = load i32*, i32** %9, align 8
  %395 = call i32 @isp_print_qentry(%struct.TYPE_54__* %392, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i64 %393, i32* %394)
  %396 = load i32, i32* %12, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %12, align 4
  br label %398

398:                                              ; preds = %391, %383
  %399 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %400 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %399, i32 0, i32 10
  %401 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = load i32, i32* @RQSFLAG_BADCOUNT, align 4
  %404 = and i32 %402, %403
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %413

406:                                              ; preds = %398
  %407 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %408 = load i64, i64* %22, align 8
  %409 = load i32*, i32** %9, align 8
  %410 = call i32 @isp_print_qentry(%struct.TYPE_54__* %407, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i64 %408, i32* %409)
  %411 = load i32, i32* %12, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %12, align 4
  br label %413

413:                                              ; preds = %406, %398
  %414 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %415 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %414, i32 0, i32 10
  %416 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* @RQSFLAG_BADORDER, align 4
  %419 = and i32 %417, %418
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %426

421:                                              ; preds = %413
  %422 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %423 = load i64, i64* %22, align 8
  %424 = load i32*, i32** %9, align 8
  %425 = call i32 @isp_print_qentry(%struct.TYPE_54__* %422, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i64 %423, i32* %424)
  br label %92

426:                                              ; preds = %413
  br label %427

427:                                              ; preds = %426, %335
  %428 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %429 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %430 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %429, i32 0, i32 7
  %431 = load i32, i32* %430, align 8
  %432 = call i32* @isp_find_xs(%struct.TYPE_54__* %428, i32 %431)
  store i32* %432, i32** %3, align 8
  %433 = load i32*, i32** %3, align 8
  %434 = icmp eq i32* %433, null
  br i1 %434, label %435, label %471

435:                                              ; preds = %427
  %436 = load i32, i32* %13, align 4
  %437 = and i32 %436, 255
  %438 = sext i32 %437 to i64
  store i64 %438, i64* %32, align 8
  %439 = load i32, i32* %15, align 4
  %440 = load i32, i32* @RQSTYPE_RESPONSE, align 4
  %441 = icmp ne i32 %439, %440
  br i1 %441, label %442, label %450

442:                                              ; preds = %435
  %443 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %444 = load i32, i32* @ISP_LOGERR, align 4
  %445 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %446 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %445, i32 0, i32 7
  %447 = load i32, i32* %446, align 8
  %448 = load i32, i32* %15, align 4
  %449 = call i32 (%struct.TYPE_54__*, i32, i8*, ...) @isp_prt(%struct.TYPE_54__* %443, i32 %444, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %447, i32 %448)
  br label %467

450:                                              ; preds = %435
  %451 = load i64, i64* %32, align 8
  %452 = load i64, i64* @RQCS_ABORTED, align 8
  %453 = icmp ne i64 %451, %452
  br i1 %453, label %454, label %466

454:                                              ; preds = %450
  %455 = load i64, i64* %32, align 8
  %456 = load i64, i64* @RQCS_RESET_OCCURRED, align 8
  %457 = icmp ne i64 %455, %456
  br i1 %457, label %458, label %466

458:                                              ; preds = %454
  %459 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %460 = load i32, i32* @ISP_LOGERR, align 4
  %461 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %462 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %461, i32 0, i32 7
  %463 = load i32, i32* %462, align 8
  %464 = load i64, i64* %32, align 8
  %465 = call i32 (%struct.TYPE_54__*, i32, i8*, ...) @isp_prt(%struct.TYPE_54__* %459, i32 %460, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i32 %463, i64 %464)
  br label %466

466:                                              ; preds = %458, %454, %450
  br label %467

467:                                              ; preds = %466, %442
  %468 = load i32*, i32** %9, align 8
  %469 = load i32, i32* @QENTRY_LEN, align 4
  %470 = call i32 @ISP_MEMZERO(i32* %468, i32 %469)
  br label %92

471:                                              ; preds = %427
  %472 = load i32, i32* %17, align 4
  %473 = load i32, i32* @RQSTF_BUS_RESET, align 4
  %474 = and i32 %472, %473
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %494

476:                                              ; preds = %471
  %477 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %478 = load i32, i32* @ISP_LOG_WARN1, align 4
  %479 = load i32*, i32** %3, align 8
  %480 = call i32 @XS_CHANNEL(i32* %479)
  %481 = load i32*, i32** %3, align 8
  %482 = call i32 @XS_TGT(i32* %481)
  %483 = load i32*, i32** %3, align 8
  %484 = call i64 @XS_LUN(i32* %483)
  %485 = trunc i64 %484 to i32
  %486 = call i32 (%struct.TYPE_54__*, i32, i8*, ...) @isp_prt(%struct.TYPE_54__* %477, i32 %478, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %480, i32 %482, i32 %485)
  %487 = load i32*, i32** %3, align 8
  %488 = load i32, i32* @HBA_BUSRESET, align 4
  %489 = call i32 @XS_SETERR(i32* %487, i32 %488)
  %490 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %491 = load i32*, i32** %3, align 8
  %492 = call i32 @XS_CHANNEL(i32* %491)
  %493 = call i32 @ISP_SET_SENDMARKER(%struct.TYPE_54__* %490, i32 %492, i32 1)
  br label %494

494:                                              ; preds = %476, %471
  %495 = load i32, i32* %12, align 4
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %511

497:                                              ; preds = %494
  %498 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %499 = load i32, i32* @ISP_LOG_WARN1, align 4
  %500 = load i32*, i32** %3, align 8
  %501 = call i32 @XS_CHANNEL(i32* %500)
  %502 = load i32*, i32** %3, align 8
  %503 = call i32 @XS_TGT(i32* %502)
  %504 = load i32*, i32** %3, align 8
  %505 = call i64 @XS_LUN(i32* %504)
  %506 = trunc i64 %505 to i32
  %507 = call i32 (%struct.TYPE_54__*, i32, i8*, ...) @isp_prt(%struct.TYPE_54__* %498, i32 %499, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 %501, i32 %503, i32 %506)
  %508 = load i32*, i32** %3, align 8
  %509 = load i32, i32* @HBA_BOTCH, align 4
  %510 = call i32 @XS_SETERR(i32* %508, i32 %509)
  br label %511

511:                                              ; preds = %497, %494
  store i64* null, i64** %11, align 8
  store i64* null, i64** %10, align 8
  store i64 0, i64* %27, align 8
  store i64 0, i64* %25, align 8
  store i64 0, i64* %24, align 8
  %512 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %513 = call i64 @IS_24XX(%struct.TYPE_54__* %512)
  %514 = icmp ne i64 %513, 0
  br i1 %514, label %515, label %529

515:                                              ; preds = %511
  %516 = load i32, i32* %19, align 4
  %517 = load i32, i32* @RQCS_RV, align 4
  %518 = load i32, i32* @RQCS_SV, align 4
  %519 = or i32 %517, %518
  %520 = and i32 %516, %519
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %529

522:                                              ; preds = %515
  %523 = load %struct.TYPE_56__*, %struct.TYPE_56__** %8, align 8
  %524 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %523, i32 0, i32 5
  %525 = load i64*, i64** %524, align 8
  store i64* %525, i64** %10, align 8
  %526 = load %struct.TYPE_56__*, %struct.TYPE_56__** %8, align 8
  %527 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %526, i32 0, i32 3
  %528 = load i64, i64* %527, align 8
  store i64 %528, i64* %24, align 8
  br label %546

529:                                              ; preds = %515, %511
  %530 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %531 = call i64 @IS_FC(%struct.TYPE_54__* %530)
  %532 = icmp ne i64 %531, 0
  br i1 %532, label %533, label %545

533:                                              ; preds = %529
  %534 = load i32, i32* %19, align 4
  %535 = load i32, i32* @RQCS_RV, align 4
  %536 = and i32 %534, %535
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %538, label %545

538:                                              ; preds = %533
  %539 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %540 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %539, i32 0, i32 9
  %541 = load i64*, i64** %540, align 8
  store i64* %541, i64** %10, align 8
  %542 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %543 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %542, i32 0, i32 5
  %544 = load i64, i64* %543, align 8
  store i64 %544, i64* %24, align 8
  br label %545

545:                                              ; preds = %538, %533, %529
  br label %546

546:                                              ; preds = %545, %522
  %547 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %548 = call i64 @IS_FC(%struct.TYPE_54__* %547)
  %549 = icmp ne i64 %548, 0
  br i1 %549, label %550, label %584

550:                                              ; preds = %546
  %551 = load i32, i32* %19, align 4
  %552 = load i32, i32* @RQCS_SV, align 4
  %553 = and i32 %551, %552
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %555, label %584

555:                                              ; preds = %550
  %556 = load i32, i32* @RQSF_GOT_STATUS, align 4
  %557 = load i32, i32* @RQSF_GOT_SENSE, align 4
  %558 = or i32 %556, %557
  %559 = load i32, i32* %18, align 4
  %560 = or i32 %559, %558
  store i32 %560, i32* %18, align 4
  %561 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %562 = call i64 @IS_24XX(%struct.TYPE_54__* %561)
  %563 = icmp ne i64 %562, 0
  br i1 %563, label %564, label %576

564:                                              ; preds = %555
  %565 = load %struct.TYPE_56__*, %struct.TYPE_56__** %8, align 8
  %566 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %565, i32 0, i32 5
  %567 = load i64*, i64** %566, align 8
  store i64* %567, i64** %11, align 8
  %568 = load i64, i64* %24, align 8
  %569 = load i64*, i64** %11, align 8
  %570 = getelementptr inbounds i64, i64* %569, i64 %568
  store i64* %570, i64** %11, align 8
  %571 = load %struct.TYPE_56__*, %struct.TYPE_56__** %8, align 8
  %572 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %571, i32 0, i32 4
  %573 = load i64, i64* %572, align 8
  store i64 %573, i64* %27, align 8
  %574 = load i64, i64* %24, align 8
  %575 = sub i64 8, %574
  store i64 %575, i64* %25, align 8
  br label %583

576:                                              ; preds = %555
  %577 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %578 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %577, i32 0, i32 8
  %579 = load i64*, i64** %578, align 8
  store i64* %579, i64** %11, align 8
  %580 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %581 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %580, i32 0, i32 6
  %582 = load i64, i64* %581, align 8
  store i64 %582, i64* %27, align 8
  store i64 8, i64* %25, align 8
  br label %583

583:                                              ; preds = %576, %564
  br label %601

584:                                              ; preds = %550, %546
  %585 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %586 = call i64 @IS_SCSI(%struct.TYPE_54__* %585)
  %587 = icmp ne i64 %586, 0
  br i1 %587, label %588, label %600

588:                                              ; preds = %584
  %589 = load i32, i32* %18, align 4
  %590 = load i32, i32* @RQSF_GOT_SENSE, align 4
  %591 = and i32 %589, %590
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %593, label %600

593:                                              ; preds = %588
  %594 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %595 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %594, i32 0, i32 8
  %596 = load i64*, i64** %595, align 8
  store i64* %596, i64** %11, align 8
  %597 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %598 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %597, i32 0, i32 6
  %599 = load i64, i64* %598, align 8
  store i64 %599, i64* %27, align 8
  store i64 8, i64* %25, align 8
  br label %600

600:                                              ; preds = %593, %588, %584
  br label %601

601:                                              ; preds = %600, %583
  %602 = load i64, i64* %25, align 8
  %603 = load i64, i64* %27, align 8
  %604 = icmp sgt i64 %602, %603
  br i1 %604, label %605, label %607

605:                                              ; preds = %601
  %606 = load i64, i64* %27, align 8
  store i64 %606, i64* %25, align 8
  br label %607

607:                                              ; preds = %605, %601
  %608 = load i32, i32* %18, align 4
  %609 = load i32, i32* @RQSF_GOT_STATUS, align 4
  %610 = and i32 %608, %609
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %612, label %617

612:                                              ; preds = %607
  %613 = load i32, i32* %19, align 4
  %614 = and i32 %613, 255
  %615 = load i32*, i32** %3, align 8
  %616 = call i32* @XS_STSP(i32* %615)
  store i32 %614, i32* %616, align 4
  br label %617

617:                                              ; preds = %612, %607
  %618 = load i64, i64* %24, align 8
  %619 = icmp sge i64 %618, 4
  br i1 %619, label %620, label %670

620:                                              ; preds = %617
  %621 = load i64*, i64** %10, align 8
  %622 = load i64, i64* @FCP_RSPNS_CODE_OFFSET, align 8
  %623 = getelementptr inbounds i64, i64* %621, i64 %622
  %624 = load i64, i64* %623, align 8
  %625 = icmp ne i64 %624, 0
  br i1 %625, label %626, label %670

626:                                              ; preds = %620
  %627 = bitcast [10 x i8*]* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %627, i8* align 16 bitcast ([10 x i8*]* @__const.isp_intr_respq.rnames to i8*), i64 80, i1 false)
  %628 = load i64*, i64** %10, align 8
  %629 = load i64, i64* @FCP_RSPNS_CODE_OFFSET, align 8
  %630 = getelementptr inbounds i64, i64* %628, i64 %629
  %631 = load i64, i64* %630, align 8
  store i64 %631, i64* %36, align 8
  %632 = load i64, i64* %36, align 8
  %633 = icmp sge i64 %632, 10
  br i1 %633, label %639, label %634

634:                                              ; preds = %626
  %635 = load i64, i64* %36, align 8
  %636 = getelementptr inbounds [10 x i8*], [10 x i8*]* %35, i64 0, i64 %635
  %637 = load i8*, i8** %636, align 8
  %638 = icmp eq i8* %637, null
  br i1 %638, label %639, label %644

639:                                              ; preds = %634, %626
  %640 = getelementptr inbounds [64 x i8], [64 x i8]* %34, i64 0, i64 0
  %641 = load i64, i64* %36, align 8
  %642 = call i32 @ISP_SNPRINTF(i8* %640, i32 64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i64 0, i64 0), i64 %641)
  %643 = getelementptr inbounds [64 x i8], [64 x i8]* %34, i64 0, i64 0
  store i8* %643, i8** %33, align 8
  br label %648

644:                                              ; preds = %634
  %645 = load i64, i64* %36, align 8
  %646 = getelementptr inbounds [10 x i8*], [10 x i8*]* %35, i64 0, i64 %645
  %647 = load i8*, i8** %646, align 8
  store i8* %647, i8** %33, align 8
  br label %648

648:                                              ; preds = %644, %639
  %649 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %650 = load i32*, i32** %3, align 8
  %651 = load i32, i32* @ISP_LOGWARN, align 4
  %652 = load i64, i64* %24, align 8
  %653 = load i8*, i8** %33, align 8
  %654 = load i32*, i32** %3, align 8
  %655 = call i32* @XS_CDBP(i32* %654)
  %656 = getelementptr inbounds i32, i32* %655, i64 0
  %657 = load i32, i32* %656, align 4
  %658 = and i32 %657, 255
  %659 = call i32 @isp_xs_prt(%struct.TYPE_54__* %649, i32* %650, i32 %651, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i64 %652, i8* %653, i32 %658)
  %660 = load i64, i64* %36, align 8
  %661 = icmp ne i64 %660, 0
  br i1 %661, label %662, label %669

662:                                              ; preds = %648
  %663 = load i64, i64* %36, align 8
  %664 = icmp ne i64 %663, 8
  br i1 %664, label %665, label %669

665:                                              ; preds = %662
  %666 = load i32*, i32** %3, align 8
  %667 = load i32, i32* @HBA_BOTCH, align 4
  %668 = call i32 @XS_SETERR(i32* %666, i32 %667)
  br label %669

669:                                              ; preds = %665, %662, %648
  br label %670

670:                                              ; preds = %669, %620, %617
  %671 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %672 = call i64 @IS_24XX(%struct.TYPE_54__* %671)
  %673 = icmp ne i64 %672, 0
  br i1 %673, label %674, label %679

674:                                              ; preds = %670
  %675 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %676 = load %struct.TYPE_56__*, %struct.TYPE_56__** %8, align 8
  %677 = load i32*, i32** %3, align 8
  %678 = call i32 @isp_parse_status_24xx(%struct.TYPE_54__* %675, %struct.TYPE_56__* %676, i32* %677, i64* %28)
  br label %684

679:                                              ; preds = %670
  %680 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %681 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %682 = load i32*, i32** %3, align 8
  %683 = call i32 @isp_parse_status(%struct.TYPE_54__* %680, %struct.TYPE_52__* %681, i32* %682, i64* %28)
  br label %684

684:                                              ; preds = %679, %674
  %685 = load i32*, i32** %3, align 8
  %686 = call i64 @XS_NOERR(i32* %685)
  %687 = icmp ne i64 %686, 0
  br i1 %687, label %693, label %688

688:                                              ; preds = %684
  %689 = load i32*, i32** %3, align 8
  %690 = call i64 @XS_ERR(i32* %689)
  %691 = load i64, i64* @HBA_NOERROR, align 8
  %692 = icmp eq i64 %690, %691
  br i1 %692, label %693, label %703

693:                                              ; preds = %688, %684
  %694 = load i32*, i32** %3, align 8
  %695 = call i32* @XS_STSP(i32* %694)
  %696 = load i32, i32* %695, align 4
  %697 = load i32, i32* @SCSI_BUSY, align 4
  %698 = icmp eq i32 %696, %697
  br i1 %698, label %699, label %703

699:                                              ; preds = %693
  %700 = load i32*, i32** %3, align 8
  %701 = load i32, i32* @HBA_TGTBSY, align 4
  %702 = call i32 @XS_SETERR(i32* %700, i32 %701)
  br label %703

703:                                              ; preds = %699, %693, %688
  %704 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %705 = call i64 @IS_SCSI(%struct.TYPE_54__* %704)
  %706 = icmp ne i64 %705, 0
  br i1 %706, label %707, label %732

707:                                              ; preds = %703
  %708 = load i32*, i32** %3, align 8
  %709 = load i64, i64* %28, align 8
  %710 = call i32 @XS_SET_RESID(i32* %708, i64 %709)
  %711 = load i32, i32* %17, align 4
  %712 = load i32, i32* @RQSTF_NEGOTIATION, align 4
  %713 = and i32 %711, %712
  %714 = icmp ne i32 %713, 0
  br i1 %714, label %715, label %731

715:                                              ; preds = %707
  %716 = load i32*, i32** %3, align 8
  %717 = call i32 @XS_TGT(i32* %716)
  store i32 %717, i32* %37, align 4
  %718 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %719 = load i32*, i32** %3, align 8
  %720 = call i32 @XS_CHANNEL(i32* %719)
  %721 = call %struct.TYPE_51__* @SDPARAM(%struct.TYPE_54__* %718, i32 %720)
  store %struct.TYPE_51__* %721, %struct.TYPE_51__** %38, align 8
  %722 = load %struct.TYPE_51__*, %struct.TYPE_51__** %38, align 8
  %723 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %722, i32 0, i32 1
  %724 = load %struct.TYPE_50__*, %struct.TYPE_50__** %723, align 8
  %725 = load i32, i32* %37, align 4
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %724, i64 %726
  %728 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %727, i32 0, i32 0
  store i32 1, i32* %728, align 4
  %729 = load %struct.TYPE_51__*, %struct.TYPE_51__** %38, align 8
  %730 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %729, i32 0, i32 0
  store i32 1, i32* %730, align 8
  br label %731

731:                                              ; preds = %715, %707
  br label %754

732:                                              ; preds = %703
  %733 = load i32, i32* %17, align 4
  %734 = load i32, i32* @RQSF_XFER_COMPLETE, align 4
  %735 = and i32 %733, %734
  %736 = icmp ne i32 %735, 0
  br i1 %736, label %737, label %740

737:                                              ; preds = %732
  %738 = load i32*, i32** %3, align 8
  %739 = call i32 @XS_SET_RESID(i32* %738, i64 0)
  br label %753

740:                                              ; preds = %732
  %741 = load i32, i32* %19, align 4
  %742 = load i32, i32* @RQCS_RESID, align 4
  %743 = and i32 %741, %742
  %744 = icmp ne i32 %743, 0
  br i1 %744, label %745, label %749

745:                                              ; preds = %740
  %746 = load i32*, i32** %3, align 8
  %747 = load i64, i64* %28, align 8
  %748 = call i32 @XS_SET_RESID(i32* %746, i64 %747)
  br label %752

749:                                              ; preds = %740
  %750 = load i32*, i32** %3, align 8
  %751 = call i32 @XS_SET_RESID(i32* %750, i64 0)
  br label %752

752:                                              ; preds = %749, %745
  br label %753

753:                                              ; preds = %752, %737
  br label %754

754:                                              ; preds = %753, %731
  %755 = load i64, i64* %25, align 8
  %756 = icmp sgt i64 %755, 0
  br i1 %756, label %757, label %778

757:                                              ; preds = %754
  %758 = load i32*, i32** %3, align 8
  %759 = load i64*, i64** %11, align 8
  %760 = load i64, i64* %25, align 8
  %761 = call i32 @XS_SAVE_SENSE(i32* %758, i64* %759, i64 %760)
  %762 = load i64, i64* %27, align 8
  %763 = load i64, i64* %25, align 8
  %764 = icmp sgt i64 %762, %763
  br i1 %764, label %765, label %777

765:                                              ; preds = %757
  %766 = load i64, i64* %27, align 8
  %767 = load i64, i64* %25, align 8
  %768 = sub nsw i64 %766, %767
  %769 = trunc i64 %768 to i32
  store i32 %769, i32* %14, align 4
  %770 = load i32*, i32** %3, align 8
  store i32* %770, i32** %4, align 8
  %771 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %772 = load i32, i32* @ISP_LOGDEBUG0, align 4
  %773 = load i32, i32* @ISP_LOG_CWARN, align 4
  %774 = or i32 %772, %773
  %775 = load i32, i32* %14, align 4
  %776 = call i32 (%struct.TYPE_54__*, i32, i8*, ...) @isp_prt(%struct.TYPE_54__* %771, i32 %774, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %775)
  br label %777

777:                                              ; preds = %765, %757
  br label %778

778:                                              ; preds = %777, %754
  %779 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %780 = load i32, i32* @ISP_LOGDEBUG2, align 4
  %781 = load i32*, i32** %3, align 8
  %782 = call i64 @XS_XFRLEN(i32* %781)
  %783 = trunc i64 %782 to i32
  %784 = load i64, i64* %28, align 8
  %785 = trunc i64 %784 to i32
  %786 = load i32*, i32** %3, align 8
  %787 = call i64 @XS_GET_RESID(i32* %786)
  %788 = trunc i64 %787 to i32
  %789 = call i32 (%struct.TYPE_54__*, i32, i8*, ...) @isp_prt(%struct.TYPE_54__* %779, i32 %780, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.25, i64 0, i64 0), i32 %783, i32 %785, i32 %788)
  %790 = load i32*, i32** %3, align 8
  %791 = call i64 @XS_XFRLEN(i32* %790)
  %792 = icmp ne i64 %791, 0
  br i1 %792, label %793, label %800

793:                                              ; preds = %778
  %794 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %795 = load i32*, i32** %3, align 8
  %796 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %797 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %796, i32 0, i32 7
  %798 = load i32, i32* %797, align 8
  %799 = call i32 @ISP_DMAFREE(%struct.TYPE_54__* %794, i32* %795, i32 %798)
  br label %800

800:                                              ; preds = %793, %778
  %801 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %802 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %803 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %802, i32 0, i32 7
  %804 = load i32, i32* %803, align 8
  %805 = call i32 @isp_destroy_handle(%struct.TYPE_54__* %801, i32 %804)
  %806 = load i32*, i32** %9, align 8
  %807 = load i32, i32* @QENTRY_LEN, align 4
  %808 = call i32 @ISP_MEMZERO(i32* %806, i32 %807)
  %809 = load i32, i32* %14, align 4
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %811, label %814

811:                                              ; preds = %800
  %812 = load i32*, i32** %3, align 8
  %813 = call i32 @isp_done(i32* %812)
  br label %814

814:                                              ; preds = %811, %800
  br label %92

815:                                              ; preds = %92
  %816 = load i32, i32* %14, align 4
  %817 = icmp sgt i32 %816, 0
  br i1 %817, label %818, label %821

818:                                              ; preds = %815
  %819 = load i32*, i32** %4, align 8
  %820 = call i32 @isp_done(i32* %819)
  br label %821

821:                                              ; preds = %818, %815
  %822 = load i64, i64* %23, align 8
  %823 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %824 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %823, i32 0, i32 2
  %825 = load i64, i64* %824, align 8
  %826 = icmp ne i64 %822, %825
  br i1 %826, label %827, label %837

827:                                              ; preds = %821
  %828 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %829 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %830 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %829, i32 0, i32 4
  %831 = load i32, i32* %830, align 4
  %832 = load i64, i64* %23, align 8
  %833 = call i32 @ISP_WRITE(%struct.TYPE_54__* %828, i32 %831, i64 %832)
  %834 = load i64, i64* %23, align 8
  %835 = load %struct.TYPE_54__*, %struct.TYPE_54__** %2, align 8
  %836 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %835, i32 0, i32 2
  store i64 %834, i64* %836, align 8
  br label %837

837:                                              ; preds = %827, %821
  store i32 0, i32* %29, align 4
  br label %838

838:                                              ; preds = %837, %50
  %839 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %839)
  %840 = load i32, i32* %29, align 4
  switch i32 %840, label %842 [
    i32 0, label %841
    i32 1, label %841
  ]

841:                                              ; preds = %838, %838
  ret void

842:                                              ; preds = %838
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @isp_prt(%struct.TYPE_54__*, i32, i8*, ...) #2

declare dso_local i64 @ISP_READ(%struct.TYPE_54__*, i32) #2

declare dso_local i64 @IS_2100(%struct.TYPE_54__*) #2

declare dso_local i64 @IS_2300(%struct.TYPE_54__*) #2

declare dso_local i64 @ISP_QUEUE_ENTRY(i32, i64) #2

declare dso_local i64 @ISP_NXT_QENTRY(i64, i32) #2

declare dso_local i32 @RESULT_QUEUE_LEN(%struct.TYPE_54__*) #2

declare dso_local i32 @MEMORYBARRIER(%struct.TYPE_54__*, i32, i64, i32, i32) #2

declare dso_local i32 @isp_print_qentry(%struct.TYPE_54__*, i8*, i64, i32*) #2

declare dso_local i32 @isp_get_hdr(%struct.TYPE_54__*, i32*, %struct.TYPE_49__*) #2

declare dso_local i32 @isp_done(i32*) #2

declare dso_local i64 @IS_24XX(%struct.TYPE_54__*) #2

declare dso_local i32 @isp_get_24xx_response(%struct.TYPE_54__*, %struct.TYPE_56__*, %struct.TYPE_56__*) #2

declare dso_local i32 @isp_get_response(%struct.TYPE_54__*, %struct.TYPE_52__*, %struct.TYPE_52__*) #2

declare dso_local i32 @isp_get_rio1(%struct.TYPE_54__*, %struct.TYPE_55__*, %struct.TYPE_55__*) #2

declare dso_local i32 @isp_fastpost_complete(%struct.TYPE_54__*, i32) #2

declare dso_local i32 @ISP_MEMZERO(i32*, i32) #2

declare dso_local i32 @isp_get_cont_response(%struct.TYPE_54__*, %struct.TYPE_53__*, %struct.TYPE_53__*) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @XS_SENSE_APPEND(i32*, i32, i32) #2

declare dso_local i64 @isp_handle_other_response(%struct.TYPE_54__*, i32, i32*, i64*) #2

declare dso_local i32* @isp_find_xs(%struct.TYPE_54__*, i32) #2

declare dso_local i32 @XS_CHANNEL(i32*) #2

declare dso_local i32 @XS_TGT(i32*) #2

declare dso_local i64 @XS_LUN(i32*) #2

declare dso_local i32 @XS_SETERR(i32*, i32) #2

declare dso_local i32 @ISP_SET_SENDMARKER(%struct.TYPE_54__*, i32, i32) #2

declare dso_local i64 @IS_FC(%struct.TYPE_54__*) #2

declare dso_local i64 @IS_SCSI(%struct.TYPE_54__*) #2

declare dso_local i32* @XS_STSP(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @ISP_SNPRINTF(i8*, i32, i8*, i64) #2

declare dso_local i32 @isp_xs_prt(%struct.TYPE_54__*, i32*, i32, i8*, i64, i8*, i32) #2

declare dso_local i32* @XS_CDBP(i32*) #2

declare dso_local i32 @isp_parse_status_24xx(%struct.TYPE_54__*, %struct.TYPE_56__*, i32*, i64*) #2

declare dso_local i32 @isp_parse_status(%struct.TYPE_54__*, %struct.TYPE_52__*, i32*, i64*) #2

declare dso_local i64 @XS_NOERR(i32*) #2

declare dso_local i64 @XS_ERR(i32*) #2

declare dso_local i32 @XS_SET_RESID(i32*, i64) #2

declare dso_local %struct.TYPE_51__* @SDPARAM(%struct.TYPE_54__*, i32) #2

declare dso_local i32 @XS_SAVE_SENSE(i32*, i64*, i64) #2

declare dso_local i64 @XS_XFRLEN(i32*) #2

declare dso_local i64 @XS_GET_RESID(i32*) #2

declare dso_local i32 @ISP_DMAFREE(%struct.TYPE_54__*, i32*, i32) #2

declare dso_local i32 @isp_destroy_handle(%struct.TYPE_54__*, i32) #2

declare dso_local i32 @ISP_WRITE(%struct.TYPE_54__*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
