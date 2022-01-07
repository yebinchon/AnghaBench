; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_login.c_login_negotiate.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_login.c_login_negotiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { %struct.TYPE_2__, %struct.iscsi_session_limits }
%struct.TYPE_2__ = type { i64, i64, i64, i32, i32 }
%struct.iscsi_session_limits = type { i32, i32, i32, i32 }
%struct.pdu = type { i64 }
%struct.keys = type { i32*, i32** }
%struct.iscsi_bhs_login_response = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"beginning operational parameter negotiation\00", align 1
@BHSLR_STAGE_OPERATIONAL_NEGOTIATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [107 x i8] c"Limits for offload \22%s\22 are MaxRecvDataSegment=%d, max_send_dsl=%d, MaxBurstLength=%d, FirstBurstLength=%d\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"HeaderDigest\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"CRC32C\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"DataDigest\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"ImmediateData\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"MaxBurstLength\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"FirstBurstLength\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"InitialR2T\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"MaxOutstandingR2T\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"InitiatorRecvDataSegmentLength\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"TargetRecvDataSegmentLength\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"RDMAExtensions\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"MaxRecvDataSegmentLength\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"DefaultTime2Wait\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"DefaultTime2Retain\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"ErrorRecoveryLevel\00", align 1
@KEYS_MAX = common dso_local global i32 0, align 4
@BHSLR_FLAGS_TRANSIT = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [71 x i8] c"received login response without the \22T\22 flag too many times; giving up\00", align 1
@.str.22 = private unnamed_addr constant [70 x i8] c"received login response without the \22T\22 flag; sending another request\00", align 1
@BHSLR_STAGE_FULL_FEATURE_PHASE = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [50 x i8] c"received final login response with wrong NSG 0x%x\00", align 1
@.str.24 = private unnamed_addr constant [76 x i8] c"operational parameter negotiation done; transitioning to Full Feature phase\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connection*)* @login_negotiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @login_negotiate(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.pdu*, align 8
  %4 = alloca %struct.pdu*, align 8
  %5 = alloca %struct.keys*, align 8
  %6 = alloca %struct.keys*, align 8
  %7 = alloca %struct.iscsi_bhs_login_response*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iscsi_session_limits*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  store i32 0, i32* %9, align 4
  %11 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.connection*, %struct.connection** %2, align 8
  %13 = load i32, i32* @BHSLR_STAGE_OPERATIONAL_NEGOTIATION, align 4
  %14 = call %struct.pdu* @login_new_request(%struct.connection* %12, i32 %13)
  store %struct.pdu* %14, %struct.pdu** %3, align 8
  %15 = call %struct.keys* (...) @keys_new()
  store %struct.keys* %15, %struct.keys** %5, align 8
  %16 = load %struct.connection*, %struct.connection** %2, align 8
  %17 = getelementptr inbounds %struct.connection, %struct.connection* %16, i32 0, i32 1
  store %struct.iscsi_session_limits* %17, %struct.iscsi_session_limits** %10, align 8
  %18 = load %struct.connection*, %struct.connection** %2, align 8
  %19 = getelementptr inbounds %struct.connection, %struct.connection* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %10, align 8
  %23 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %10, align 8
  %26 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %10, align 8
  %29 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %10, align 8
  %32 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %24, i32 %27, i32 %30, i32 %33)
  %35 = load %struct.connection*, %struct.connection** %2, align 8
  %36 = getelementptr inbounds %struct.connection, %struct.connection* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %106

40:                                               ; preds = %1
  %41 = load %struct.connection*, %struct.connection** %2, align 8
  %42 = getelementptr inbounds %struct.connection, %struct.connection* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.keys*, %struct.keys** %5, align 8
  %48 = call i32 @keys_add(%struct.keys* %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %52

49:                                               ; preds = %40
  %50 = load %struct.keys*, %struct.keys** %5, align 8
  %51 = call i32 @keys_add(%struct.keys* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %46
  %53 = load %struct.connection*, %struct.connection** %2, align 8
  %54 = getelementptr inbounds %struct.connection, %struct.connection* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load %struct.keys*, %struct.keys** %5, align 8
  %60 = call i32 @keys_add(%struct.keys* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %64

61:                                               ; preds = %52
  %62 = load %struct.keys*, %struct.keys** %5, align 8
  %63 = call i32 @keys_add(%struct.keys* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %58
  %65 = load %struct.keys*, %struct.keys** %5, align 8
  %66 = call i32 @keys_add(%struct.keys* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %67 = load %struct.keys*, %struct.keys** %5, align 8
  %68 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %10, align 8
  %69 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @keys_add_int(%struct.keys* %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %70)
  %72 = load %struct.keys*, %struct.keys** %5, align 8
  %73 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %10, align 8
  %74 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @keys_add_int(%struct.keys* %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %75)
  %77 = load %struct.keys*, %struct.keys** %5, align 8
  %78 = call i32 @keys_add(%struct.keys* %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %79 = load %struct.keys*, %struct.keys** %5, align 8
  %80 = call i32 @keys_add(%struct.keys* %79, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %81 = load %struct.connection*, %struct.connection** %2, align 8
  %82 = getelementptr inbounds %struct.connection, %struct.connection* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %99

86:                                               ; preds = %64
  %87 = load %struct.keys*, %struct.keys** %5, align 8
  %88 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %10, align 8
  %89 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @keys_add_int(%struct.keys* %87, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %90)
  %92 = load %struct.keys*, %struct.keys** %5, align 8
  %93 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %10, align 8
  %94 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @keys_add_int(%struct.keys* %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 %95)
  %97 = load %struct.keys*, %struct.keys** %5, align 8
  %98 = call i32 @keys_add(%struct.keys* %97, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %105

99:                                               ; preds = %64
  %100 = load %struct.keys*, %struct.keys** %5, align 8
  %101 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %10, align 8
  %102 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @keys_add_int(%struct.keys* %100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %99, %86
  br label %116

106:                                              ; preds = %1
  %107 = load %struct.keys*, %struct.keys** %5, align 8
  %108 = call i32 @keys_add(%struct.keys* %107, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %109 = load %struct.keys*, %struct.keys** %5, align 8
  %110 = call i32 @keys_add(%struct.keys* %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %111 = load %struct.keys*, %struct.keys** %5, align 8
  %112 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %10, align 8
  %113 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @keys_add_int(%struct.keys* %111, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %106, %105
  %117 = load %struct.keys*, %struct.keys** %5, align 8
  %118 = call i32 @keys_add(%struct.keys* %117, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %119 = load %struct.keys*, %struct.keys** %5, align 8
  %120 = call i32 @keys_add(%struct.keys* %119, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %121 = load %struct.keys*, %struct.keys** %5, align 8
  %122 = call i32 @keys_add(%struct.keys* %121, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %123 = load %struct.keys*, %struct.keys** %5, align 8
  %124 = load %struct.pdu*, %struct.pdu** %3, align 8
  %125 = call i32 @keys_save(%struct.keys* %123, %struct.pdu* %124)
  %126 = load %struct.keys*, %struct.keys** %5, align 8
  %127 = call i32 @keys_delete(%struct.keys* %126)
  store %struct.keys* null, %struct.keys** %5, align 8
  %128 = load %struct.pdu*, %struct.pdu** %3, align 8
  %129 = call i32 @pdu_send(%struct.pdu* %128)
  %130 = load %struct.pdu*, %struct.pdu** %3, align 8
  %131 = call i32 @pdu_delete(%struct.pdu* %130)
  store %struct.pdu* null, %struct.pdu** %3, align 8
  %132 = load %struct.connection*, %struct.connection** %2, align 8
  %133 = call %struct.pdu* @login_receive(%struct.connection* %132)
  store %struct.pdu* %133, %struct.pdu** %4, align 8
  %134 = call %struct.keys* (...) @keys_new()
  store %struct.keys* %134, %struct.keys** %6, align 8
  %135 = load %struct.keys*, %struct.keys** %6, align 8
  %136 = load %struct.pdu*, %struct.pdu** %4, align 8
  %137 = call i32 @keys_load(%struct.keys* %135, %struct.pdu* %136)
  store i32 0, i32* %8, align 4
  br label %138

138:                                              ; preds = %169, %116
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @KEYS_MAX, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %172

142:                                              ; preds = %138
  %143 = load %struct.keys*, %struct.keys** %6, align 8
  %144 = getelementptr inbounds %struct.keys, %struct.keys* %143, i32 0, i32 1
  %145 = load i32**, i32*** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32*, i32** %145, i64 %147
  %149 = load i32*, i32** %148, align 8
  %150 = icmp eq i32* %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %142
  br label %172

152:                                              ; preds = %142
  %153 = load %struct.connection*, %struct.connection** %2, align 8
  %154 = load %struct.keys*, %struct.keys** %6, align 8
  %155 = getelementptr inbounds %struct.keys, %struct.keys* %154, i32 0, i32 1
  %156 = load i32**, i32*** %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32*, i32** %156, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = load %struct.keys*, %struct.keys** %6, align 8
  %162 = getelementptr inbounds %struct.keys, %struct.keys* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @login_negotiate_key(%struct.connection* %153, i32* %160, i32 %167)
  br label %169

169:                                              ; preds = %152
  %170 = load i32, i32* %8, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %8, align 4
  br label %138

172:                                              ; preds = %151, %138
  %173 = load %struct.keys*, %struct.keys** %6, align 8
  %174 = call i32 @keys_delete(%struct.keys* %173)
  store %struct.keys* null, %struct.keys** %6, align 8
  br label %175

175:                                              ; preds = %194, %172
  %176 = load %struct.pdu*, %struct.pdu** %4, align 8
  %177 = getelementptr inbounds %struct.pdu, %struct.pdu* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = inttoptr i64 %178 to %struct.iscsi_bhs_login_response*
  store %struct.iscsi_bhs_login_response* %179, %struct.iscsi_bhs_login_response** %7, align 8
  %180 = load %struct.iscsi_bhs_login_response*, %struct.iscsi_bhs_login_response** %7, align 8
  %181 = getelementptr inbounds %struct.iscsi_bhs_login_response, %struct.iscsi_bhs_login_response* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @BHSLR_FLAGS_TRANSIT, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %175
  br label %207

187:                                              ; preds = %175
  %188 = load i32, i32* %9, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %9, align 4
  %190 = load i32, i32* %9, align 4
  %191 = icmp sgt i32 %190, 5
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = call i32 (i8*, ...) @log_warnx(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.21, i64 0, i64 0))
  br label %207

194:                                              ; preds = %187
  %195 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.22, i64 0, i64 0))
  %196 = load %struct.pdu*, %struct.pdu** %4, align 8
  %197 = call i32 @pdu_delete(%struct.pdu* %196)
  %198 = load %struct.connection*, %struct.connection** %2, align 8
  %199 = load i32, i32* @BHSLR_STAGE_OPERATIONAL_NEGOTIATION, align 4
  %200 = call %struct.pdu* @login_new_request(%struct.connection* %198, i32 %199)
  store %struct.pdu* %200, %struct.pdu** %3, align 8
  %201 = load %struct.pdu*, %struct.pdu** %3, align 8
  %202 = call i32 @pdu_send(%struct.pdu* %201)
  %203 = load %struct.pdu*, %struct.pdu** %3, align 8
  %204 = call i32 @pdu_delete(%struct.pdu* %203)
  %205 = load %struct.connection*, %struct.connection** %2, align 8
  %206 = call %struct.pdu* @login_receive(%struct.connection* %205)
  store %struct.pdu* %206, %struct.pdu** %4, align 8
  br label %175

207:                                              ; preds = %192, %186
  %208 = load %struct.pdu*, %struct.pdu** %4, align 8
  %209 = call i64 @login_nsg(%struct.pdu* %208)
  %210 = load i64, i64* @BHSLR_STAGE_FULL_FEATURE_PHASE, align 8
  %211 = icmp ne i64 %209, %210
  br i1 %211, label %212, label %216

212:                                              ; preds = %207
  %213 = load %struct.pdu*, %struct.pdu** %4, align 8
  %214 = call i64 @login_nsg(%struct.pdu* %213)
  %215 = call i32 (i8*, ...) @log_warnx(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.23, i64 0, i64 0), i64 %214)
  br label %216

216:                                              ; preds = %212, %207
  %217 = load %struct.pdu*, %struct.pdu** %4, align 8
  %218 = call i32 @pdu_delete(%struct.pdu* %217)
  %219 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.24, i64 0, i64 0))
  ret void
}

declare dso_local i32 @log_debugx(i8*, ...) #1

declare dso_local %struct.pdu* @login_new_request(%struct.connection*, i32) #1

declare dso_local %struct.keys* @keys_new(...) #1

declare dso_local i32 @keys_add(%struct.keys*, i8*, i8*) #1

declare dso_local i32 @keys_add_int(%struct.keys*, i8*, i32) #1

declare dso_local i32 @keys_save(%struct.keys*, %struct.pdu*) #1

declare dso_local i32 @keys_delete(%struct.keys*) #1

declare dso_local i32 @pdu_send(%struct.pdu*) #1

declare dso_local i32 @pdu_delete(%struct.pdu*) #1

declare dso_local %struct.pdu* @login_receive(%struct.connection*) #1

declare dso_local i32 @keys_load(%struct.keys*, %struct.pdu*) #1

declare dso_local i32 @login_negotiate_key(%struct.connection*, i32*, i32) #1

declare dso_local i32 @log_warnx(i8*, ...) #1

declare dso_local i64 @login_nsg(%struct.pdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
