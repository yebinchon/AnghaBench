; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_login.c_login.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_login.c_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64, %struct.TYPE_5__*, i32, %struct.TYPE_6__*, i8*, i32*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i8*, i32, %struct.auth_group* }
%struct.auth_group = type { i64, i32* }
%struct.TYPE_6__ = type { %struct.auth_group*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { %struct.portal_group* }
%struct.portal_group = type { i32, %struct.auth_group* }
%struct.pdu = type { i64 }
%struct.iscsi_bhs_login_request = type { i64, i32, i32 }
%struct.keys = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"beginning Login Phase; waiting for Login PDU\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"received Login PDU with non-zero TSIH\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"InitiatorName\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"received Login PDU without InitiatorName\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"received Login PDU with invalid InitiatorName\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"initiator redirected; exiting\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"InitiatorAlias\00", align 1
@CONN_SESSION_TYPE_NONE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"SessionType\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@CONN_SESSION_TYPE_NORMAL = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c"Discovery\00", align 1
@CONN_SESSION_TYPE_DISCOVERY = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [49 x i8] c"received Login PDU with invalid SessionType \22%s\22\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"TargetName\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"received Login PDU without TargetName\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"requested target \22%s\22 not found\00", align 1
@.str.15 = private unnamed_addr constant [62 x i8] c"initiator requests to connect to target \22%s\22; auth-group \22%s\22\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"initiator requests to connect to target \22%s\22\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"initiator requests discovery session; auth-group \22%s\22\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"initiator requests discovery session\00", align 1
@AG_TYPE_DENY = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [20 x i8] c"auth-type is \22deny\22\00", align 1
@AG_TYPE_UNKNOWN = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [34 x i8] c"auth-type not set, denying access\00", align 1
@.str.21 = private unnamed_addr constant [49 x i8] c"initiator does not match allowed initiator names\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"initiator does not match allowed initiator portals\00", align 1
@BHSLR_STAGE_OPERATIONAL_NEGOTIATION = common dso_local global i64 0, align 8
@AG_TYPE_NO_AUTHENTICATION = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [69 x i8] c"initiator skipped the authentication, but authentication is required\00", align 1
@.str.24 = private unnamed_addr constant [88 x i8] c"initiator skipped the authentication, and we don't need it; proceeding with negotiation\00", align 1
@BHSLR_FLAGS_TRANSIT = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [11 x i8] c"AuthMethod\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"authentication not required\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.28 = private unnamed_addr constant [53 x i8] c"initiator requests AuthMethod \22%s\22 instead of \22None\22\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"Reject\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"CHAP authentication required\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"CHAP\00", align 1
@.str.32 = private unnamed_addr constant [65 x i8] c"initiator requests unsupported AuthMethod \22%s\22 instead of \22CHAP\22\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"TargetAlias\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"TargetPortalGroupTag\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"sent reject for AuthMethod; exiting\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @login(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.pdu*, align 8
  %4 = alloca %struct.pdu*, align 8
  %5 = alloca %struct.iscsi_bhs_login_request*, align 8
  %6 = alloca %struct.keys*, align 8
  %7 = alloca %struct.keys*, align 8
  %8 = alloca %struct.auth_group*, align 8
  %9 = alloca %struct.portal_group*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %2, align 8
  %18 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.connection*, %struct.connection** %2, align 8
  %20 = call %struct.pdu* @login_receive(%struct.connection* %19, i32 1)
  store %struct.pdu* %20, %struct.pdu** %3, align 8
  %21 = load %struct.pdu*, %struct.pdu** %3, align 8
  %22 = getelementptr inbounds %struct.pdu, %struct.pdu* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.iscsi_bhs_login_request*
  store %struct.iscsi_bhs_login_request* %24, %struct.iscsi_bhs_login_request** %5, align 8
  %25 = load %struct.iscsi_bhs_login_request*, %struct.iscsi_bhs_login_request** %5, align 8
  %26 = getelementptr inbounds %struct.iscsi_bhs_login_request, %struct.iscsi_bhs_login_request* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load %struct.pdu*, %struct.pdu** %3, align 8
  %31 = call i32 @login_send_error(%struct.pdu* %30, i32 2, i32 10)
  %32 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %1
  %34 = load %struct.connection*, %struct.connection** %2, align 8
  %35 = getelementptr inbounds %struct.connection, %struct.connection* %34, i32 0, i32 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.portal_group*, %struct.portal_group** %37, align 8
  store %struct.portal_group* %38, %struct.portal_group** %9, align 8
  %39 = load %struct.connection*, %struct.connection** %2, align 8
  %40 = getelementptr inbounds %struct.connection, %struct.connection* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.iscsi_bhs_login_request*, %struct.iscsi_bhs_login_request** %5, align 8
  %43 = getelementptr inbounds %struct.iscsi_bhs_login_request, %struct.iscsi_bhs_login_request* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @memcpy(i32 %41, i32 %44, i32 4)
  %46 = call %struct.keys* (...) @keys_new()
  store %struct.keys* %46, %struct.keys** %6, align 8
  %47 = load %struct.keys*, %struct.keys** %6, align 8
  %48 = load %struct.pdu*, %struct.pdu** %3, align 8
  %49 = call i32 @keys_load(%struct.keys* %47, %struct.pdu* %48)
  %50 = load %struct.connection*, %struct.connection** %2, align 8
  %51 = getelementptr inbounds %struct.connection, %struct.connection* %50, i32 0, i32 5
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.keys*, %struct.keys** %6, align 8
  %57 = call i8* @keys_find(%struct.keys* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i8* %57, i8** %10, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %33
  %61 = load %struct.pdu*, %struct.pdu** %3, align 8
  %62 = call i32 @login_send_error(%struct.pdu* %61, i32 2, i32 7)
  %63 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %64

64:                                               ; preds = %60, %33
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @valid_iscsi_name(i8* %65)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load %struct.pdu*, %struct.pdu** %3, align 8
  %70 = call i32 @login_send_error(%struct.pdu* %69, i32 2, i32 0)
  %71 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i8*, i8** %10, align 8
  %74 = call i8* @checked_strdup(i8* %73)
  %75 = bitcast i8* %74 to i32*
  %76 = load %struct.connection*, %struct.connection** %2, align 8
  %77 = getelementptr inbounds %struct.connection, %struct.connection* %76, i32 0, i32 5
  store i32* %75, i32** %77, align 8
  %78 = load %struct.connection*, %struct.connection** %2, align 8
  %79 = getelementptr inbounds %struct.connection, %struct.connection* %78, i32 0, i32 5
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @log_set_peer_name(i32* %80)
  %82 = load %struct.connection*, %struct.connection** %2, align 8
  %83 = getelementptr inbounds %struct.connection, %struct.connection* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.connection*, %struct.connection** %2, align 8
  %86 = getelementptr inbounds %struct.connection, %struct.connection* %85, i32 0, i32 5
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @setproctitle(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %84, i32* %87)
  %89 = load %struct.connection*, %struct.connection** %2, align 8
  %90 = load %struct.pdu*, %struct.pdu** %3, align 8
  %91 = call i32 @login_portal_redirect(%struct.connection* %89, %struct.pdu* %90)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %72
  %95 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %96 = call i32 @exit(i32 0) #3
  unreachable

97:                                               ; preds = %72
  %98 = load %struct.keys*, %struct.keys** %6, align 8
  %99 = call i8* @keys_find(%struct.keys* %98, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  store i8* %99, i8** %11, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i8*, i8** %11, align 8
  %104 = call i8* @checked_strdup(i8* %103)
  %105 = load %struct.connection*, %struct.connection** %2, align 8
  %106 = getelementptr inbounds %struct.connection, %struct.connection* %105, i32 0, i32 4
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %102, %97
  %108 = load %struct.connection*, %struct.connection** %2, align 8
  %109 = getelementptr inbounds %struct.connection, %struct.connection* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @CONN_SESSION_TYPE_NONE, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = load %struct.keys*, %struct.keys** %6, align 8
  %116 = call i8* @keys_find(%struct.keys* %115, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  store i8* %116, i8** %12, align 8
  %117 = load i8*, i8** %12, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %142

119:                                              ; preds = %107
  %120 = load i8*, i8** %12, align 8
  %121 = call i64 @strcmp(i8* %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i64, i64* @CONN_SESSION_TYPE_NORMAL, align 8
  %125 = load %struct.connection*, %struct.connection** %2, align 8
  %126 = getelementptr inbounds %struct.connection, %struct.connection* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  br label %141

127:                                              ; preds = %119
  %128 = load i8*, i8** %12, align 8
  %129 = call i64 @strcmp(i8* %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load i64, i64* @CONN_SESSION_TYPE_DISCOVERY, align 8
  %133 = load %struct.connection*, %struct.connection** %2, align 8
  %134 = getelementptr inbounds %struct.connection, %struct.connection* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  br label %140

135:                                              ; preds = %127
  %136 = load %struct.pdu*, %struct.pdu** %3, align 8
  %137 = call i32 @login_send_error(%struct.pdu* %136, i32 2, i32 0)
  %138 = load i8*, i8** %12, align 8
  %139 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i8* %138)
  br label %140

140:                                              ; preds = %135, %131
  br label %141

141:                                              ; preds = %140, %123
  br label %146

142:                                              ; preds = %107
  %143 = load i64, i64* @CONN_SESSION_TYPE_NORMAL, align 8
  %144 = load %struct.connection*, %struct.connection** %2, align 8
  %145 = getelementptr inbounds %struct.connection, %struct.connection* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  br label %146

146:                                              ; preds = %142, %141
  %147 = load %struct.connection*, %struct.connection** %2, align 8
  %148 = getelementptr inbounds %struct.connection, %struct.connection* %147, i32 0, i32 1
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = icmp eq %struct.TYPE_5__* %149, null
  %151 = zext i1 %150 to i32
  %152 = call i32 @assert(i32 %151)
  %153 = load %struct.connection*, %struct.connection** %2, align 8
  %154 = getelementptr inbounds %struct.connection, %struct.connection* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @CONN_SESSION_TYPE_NORMAL, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %190

158:                                              ; preds = %146
  %159 = load %struct.keys*, %struct.keys** %6, align 8
  %160 = call i8* @keys_find(%struct.keys* %159, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  store i8* %160, i8** %13, align 8
  %161 = load i8*, i8** %13, align 8
  %162 = icmp eq i8* %161, null
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  %164 = load %struct.pdu*, %struct.pdu** %3, align 8
  %165 = call i32 @login_send_error(%struct.pdu* %164, i32 2, i32 7)
  %166 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0))
  br label %167

167:                                              ; preds = %163, %158
  %168 = load %struct.portal_group*, %struct.portal_group** %9, align 8
  %169 = load i8*, i8** %13, align 8
  %170 = call %struct.TYPE_6__* @port_find_in_pg(%struct.portal_group* %168, i8* %169)
  %171 = load %struct.connection*, %struct.connection** %2, align 8
  %172 = getelementptr inbounds %struct.connection, %struct.connection* %171, i32 0, i32 3
  store %struct.TYPE_6__* %170, %struct.TYPE_6__** %172, align 8
  %173 = load %struct.connection*, %struct.connection** %2, align 8
  %174 = getelementptr inbounds %struct.connection, %struct.connection* %173, i32 0, i32 3
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = icmp eq %struct.TYPE_6__* %175, null
  br i1 %176, label %177, label %182

177:                                              ; preds = %167
  %178 = load %struct.pdu*, %struct.pdu** %3, align 8
  %179 = call i32 @login_send_error(%struct.pdu* %178, i32 2, i32 3)
  %180 = load i8*, i8** %13, align 8
  %181 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i8* %180)
  br label %182

182:                                              ; preds = %177, %167
  %183 = load %struct.connection*, %struct.connection** %2, align 8
  %184 = getelementptr inbounds %struct.connection, %struct.connection* %183, i32 0, i32 3
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %186, align 8
  %188 = load %struct.connection*, %struct.connection** %2, align 8
  %189 = getelementptr inbounds %struct.connection, %struct.connection* %188, i32 0, i32 1
  store %struct.TYPE_5__* %187, %struct.TYPE_5__** %189, align 8
  br label %190

190:                                              ; preds = %182, %146
  %191 = load %struct.connection*, %struct.connection** %2, align 8
  %192 = getelementptr inbounds %struct.connection, %struct.connection* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @CONN_SESSION_TYPE_NORMAL, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %233

196:                                              ; preds = %190
  %197 = load %struct.connection*, %struct.connection** %2, align 8
  %198 = getelementptr inbounds %struct.connection, %struct.connection* %197, i32 0, i32 3
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load %struct.auth_group*, %struct.auth_group** %200, align 8
  store %struct.auth_group* %201, %struct.auth_group** %8, align 8
  %202 = load %struct.auth_group*, %struct.auth_group** %8, align 8
  %203 = icmp eq %struct.auth_group* %202, null
  br i1 %203, label %204, label %210

204:                                              ; preds = %196
  %205 = load %struct.connection*, %struct.connection** %2, align 8
  %206 = getelementptr inbounds %struct.connection, %struct.connection* %205, i32 0, i32 1
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 2
  %209 = load %struct.auth_group*, %struct.auth_group** %208, align 8
  store %struct.auth_group* %209, %struct.auth_group** %8, align 8
  br label %210

210:                                              ; preds = %204, %196
  %211 = load %struct.auth_group*, %struct.auth_group** %8, align 8
  %212 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = icmp ne i32* %213, null
  br i1 %214, label %215, label %225

215:                                              ; preds = %210
  %216 = load %struct.connection*, %struct.connection** %2, align 8
  %217 = getelementptr inbounds %struct.connection, %struct.connection* %216, i32 0, i32 1
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.auth_group*, %struct.auth_group** %8, align 8
  %222 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.15, i64 0, i64 0), i32 %220, i32* %223)
  br label %232

225:                                              ; preds = %210
  %226 = load %struct.connection*, %struct.connection** %2, align 8
  %227 = getelementptr inbounds %struct.connection, %struct.connection* %226, i32 0, i32 1
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0), i32 %230)
  br label %232

232:                                              ; preds = %225, %215
  br label %256

233:                                              ; preds = %190
  %234 = load %struct.connection*, %struct.connection** %2, align 8
  %235 = getelementptr inbounds %struct.connection, %struct.connection* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @CONN_SESSION_TYPE_DISCOVERY, align 8
  %238 = icmp eq i64 %236, %237
  %239 = zext i1 %238 to i32
  %240 = call i32 @assert(i32 %239)
  %241 = load %struct.portal_group*, %struct.portal_group** %9, align 8
  %242 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %241, i32 0, i32 1
  %243 = load %struct.auth_group*, %struct.auth_group** %242, align 8
  store %struct.auth_group* %243, %struct.auth_group** %8, align 8
  %244 = load %struct.auth_group*, %struct.auth_group** %8, align 8
  %245 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %244, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = icmp ne i32* %246, null
  br i1 %247, label %248, label %253

248:                                              ; preds = %233
  %249 = load %struct.auth_group*, %struct.auth_group** %8, align 8
  %250 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.17, i64 0, i64 0), i32* %251)
  br label %255

253:                                              ; preds = %233
  %254 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0))
  br label %255

255:                                              ; preds = %253, %248
  br label %256

256:                                              ; preds = %255, %232
  %257 = load %struct.auth_group*, %struct.auth_group** %8, align 8
  %258 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @AG_TYPE_DENY, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %266

262:                                              ; preds = %256
  %263 = load %struct.pdu*, %struct.pdu** %3, align 8
  %264 = call i32 @login_send_error(%struct.pdu* %263, i32 2, i32 1)
  %265 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0))
  br label %266

266:                                              ; preds = %262, %256
  %267 = load %struct.auth_group*, %struct.auth_group** %8, align 8
  %268 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @AG_TYPE_UNKNOWN, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %276

272:                                              ; preds = %266
  %273 = load %struct.pdu*, %struct.pdu** %3, align 8
  %274 = call i32 @login_send_error(%struct.pdu* %273, i32 2, i32 1)
  %275 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0))
  br label %276

276:                                              ; preds = %272, %266
  %277 = load %struct.auth_group*, %struct.auth_group** %8, align 8
  %278 = load i8*, i8** %10, align 8
  %279 = call i64 @auth_name_check(%struct.auth_group* %277, i8* %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %285

281:                                              ; preds = %276
  %282 = load %struct.pdu*, %struct.pdu** %3, align 8
  %283 = call i32 @login_send_error(%struct.pdu* %282, i32 2, i32 2)
  %284 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.21, i64 0, i64 0))
  br label %285

285:                                              ; preds = %281, %276
  %286 = load %struct.auth_group*, %struct.auth_group** %8, align 8
  %287 = load %struct.connection*, %struct.connection** %2, align 8
  %288 = getelementptr inbounds %struct.connection, %struct.connection* %287, i32 0, i32 2
  %289 = call i64 @auth_portal_check(%struct.auth_group* %286, i32* %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %285
  %292 = load %struct.pdu*, %struct.pdu** %3, align 8
  %293 = call i32 @login_send_error(%struct.pdu* %292, i32 2, i32 2)
  %294 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.22, i64 0, i64 0))
  br label %295

295:                                              ; preds = %291, %285
  %296 = load %struct.pdu*, %struct.pdu** %3, align 8
  %297 = call i64 @login_csg(%struct.pdu* %296)
  %298 = load i64, i64* @BHSLR_STAGE_OPERATIONAL_NEGOTIATION, align 8
  %299 = icmp eq i64 %297, %298
  br i1 %299, label %300, label %317

300:                                              ; preds = %295
  %301 = load %struct.auth_group*, %struct.auth_group** %8, align 8
  %302 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = load i64, i64* @AG_TYPE_NO_AUTHENTICATION, align 8
  %305 = icmp ne i64 %303, %304
  br i1 %305, label %306, label %310

306:                                              ; preds = %300
  %307 = load %struct.pdu*, %struct.pdu** %3, align 8
  %308 = call i32 @login_send_error(%struct.pdu* %307, i32 2, i32 1)
  %309 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.23, i64 0, i64 0))
  br label %310

310:                                              ; preds = %306, %300
  %311 = load %struct.keys*, %struct.keys** %6, align 8
  %312 = call i32 @keys_delete(%struct.keys* %311)
  %313 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.24, i64 0, i64 0))
  %314 = load %struct.connection*, %struct.connection** %2, align 8
  %315 = load %struct.pdu*, %struct.pdu** %3, align 8
  %316 = call i32 @login_negotiate(%struct.connection* %314, %struct.pdu* %315)
  br label %444

317:                                              ; preds = %295
  store i32 0, i32* %16, align 4
  %318 = load %struct.pdu*, %struct.pdu** %3, align 8
  %319 = call %struct.pdu* @login_new_response(%struct.pdu* %318)
  store %struct.pdu* %319, %struct.pdu** %4, align 8
  %320 = call %struct.keys* (...) @keys_new()
  store %struct.keys* %320, %struct.keys** %7, align 8
  %321 = load %struct.iscsi_bhs_login_request*, %struct.iscsi_bhs_login_request** %5, align 8
  %322 = getelementptr inbounds %struct.iscsi_bhs_login_request, %struct.iscsi_bhs_login_request* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* @BHSLR_FLAGS_TRANSIT, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  %327 = zext i1 %326 to i32
  store i32 %327, i32* %17, align 4
  %328 = load %struct.keys*, %struct.keys** %6, align 8
  %329 = call i8* @keys_find(%struct.keys* %328, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0))
  store i8* %329, i8** %14, align 8
  %330 = load %struct.auth_group*, %struct.auth_group** %8, align 8
  %331 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* @AG_TYPE_NO_AUTHENTICATION, align 8
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %335, label %359

335:                                              ; preds = %317
  %336 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i64 0, i64 0))
  %337 = load i8*, i8** %14, align 8
  %338 = icmp eq i8* %337, null
  br i1 %338, label %343, label %339

339:                                              ; preds = %335
  %340 = load i8*, i8** %14, align 8
  %341 = call i64 @login_list_contains(i8* %340, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0))
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %346

343:                                              ; preds = %339, %335
  %344 = load %struct.keys*, %struct.keys** %7, align 8
  %345 = call i32 @keys_add(%struct.keys* %344, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0))
  br label %351

346:                                              ; preds = %339
  %347 = load i8*, i8** %14, align 8
  %348 = call i32 @log_warnx(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.28, i64 0, i64 0), i8* %347)
  %349 = load %struct.keys*, %struct.keys** %7, align 8
  %350 = call i32 @keys_add(%struct.keys* %349, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0))
  br label %351

351:                                              ; preds = %346, %343
  %352 = load i32, i32* %17, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %358

354:                                              ; preds = %351
  %355 = load %struct.pdu*, %struct.pdu** %4, align 8
  %356 = load i64, i64* @BHSLR_STAGE_OPERATIONAL_NEGOTIATION, align 8
  %357 = call i32 @login_set_nsg(%struct.pdu* %355, i64 %356)
  br label %358

358:                                              ; preds = %354, %351
  br label %376

359:                                              ; preds = %317
  %360 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i64 0, i64 0))
  %361 = load i8*, i8** %14, align 8
  %362 = icmp eq i8* %361, null
  br i1 %362, label %367, label %363

363:                                              ; preds = %359
  %364 = load i8*, i8** %14, align 8
  %365 = call i64 @login_list_contains(i8* %364, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %370

367:                                              ; preds = %363, %359
  %368 = load %struct.keys*, %struct.keys** %7, align 8
  %369 = call i32 @keys_add(%struct.keys* %368, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  br label %375

370:                                              ; preds = %363
  %371 = load i8*, i8** %14, align 8
  %372 = call i32 @log_warnx(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.32, i64 0, i64 0), i8* %371)
  %373 = load %struct.keys*, %struct.keys** %7, align 8
  %374 = call i32 @keys_add(%struct.keys* %373, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %375

375:                                              ; preds = %370, %367
  br label %376

376:                                              ; preds = %375, %358
  %377 = load %struct.connection*, %struct.connection** %2, align 8
  %378 = getelementptr inbounds %struct.connection, %struct.connection* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = load i64, i64* @CONN_SESSION_TYPE_NORMAL, align 8
  %381 = icmp eq i64 %379, %380
  br i1 %381, label %382, label %403

382:                                              ; preds = %376
  %383 = load %struct.connection*, %struct.connection** %2, align 8
  %384 = getelementptr inbounds %struct.connection, %struct.connection* %383, i32 0, i32 1
  %385 = load %struct.TYPE_5__*, %struct.TYPE_5__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %385, i32 0, i32 0
  %387 = load i8*, i8** %386, align 8
  %388 = icmp ne i8* %387, null
  br i1 %388, label %389, label %397

389:                                              ; preds = %382
  %390 = load %struct.keys*, %struct.keys** %7, align 8
  %391 = load %struct.connection*, %struct.connection** %2, align 8
  %392 = getelementptr inbounds %struct.connection, %struct.connection* %391, i32 0, i32 1
  %393 = load %struct.TYPE_5__*, %struct.TYPE_5__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %393, i32 0, i32 0
  %395 = load i8*, i8** %394, align 8
  %396 = call i32 @keys_add(%struct.keys* %390, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i8* %395)
  br label %397

397:                                              ; preds = %389, %382
  %398 = load %struct.keys*, %struct.keys** %7, align 8
  %399 = load %struct.portal_group*, %struct.portal_group** %9, align 8
  %400 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = call i32 @keys_add_int(%struct.keys* %398, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i64 0, i64 0), i32 %401)
  br label %403

403:                                              ; preds = %397, %376
  %404 = load %struct.keys*, %struct.keys** %7, align 8
  %405 = load %struct.pdu*, %struct.pdu** %4, align 8
  %406 = call i32 @keys_save(%struct.keys* %404, %struct.pdu* %405)
  %407 = load %struct.pdu*, %struct.pdu** %4, align 8
  %408 = call i32 @pdu_send(%struct.pdu* %407)
  %409 = load %struct.pdu*, %struct.pdu** %4, align 8
  %410 = call i32 @pdu_delete(%struct.pdu* %409)
  %411 = load %struct.keys*, %struct.keys** %7, align 8
  %412 = call i32 @keys_delete(%struct.keys* %411)
  %413 = load %struct.pdu*, %struct.pdu** %3, align 8
  %414 = call i32 @pdu_delete(%struct.pdu* %413)
  %415 = load %struct.keys*, %struct.keys** %6, align 8
  %416 = call i32 @keys_delete(%struct.keys* %415)
  %417 = load i32, i32* %16, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %422

419:                                              ; preds = %403
  %420 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i64 0, i64 0))
  %421 = call i32 @exit(i32 1) #3
  unreachable

422:                                              ; preds = %403
  %423 = load %struct.auth_group*, %struct.auth_group** %8, align 8
  %424 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %423, i32 0, i32 0
  %425 = load i64, i64* %424, align 8
  %426 = load i64, i64* @AG_TYPE_NO_AUTHENTICATION, align 8
  %427 = icmp ne i64 %425, %426
  br i1 %427, label %428, label %434

428:                                              ; preds = %422
  %429 = load %struct.connection*, %struct.connection** %2, align 8
  %430 = load %struct.auth_group*, %struct.auth_group** %8, align 8
  %431 = call i32 @login_chap(%struct.connection* %429, %struct.auth_group* %430)
  %432 = load %struct.connection*, %struct.connection** %2, align 8
  %433 = call i32 @login_negotiate(%struct.connection* %432, %struct.pdu* null)
  br label %444

434:                                              ; preds = %422
  %435 = load i32, i32* %17, align 4
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %440

437:                                              ; preds = %434
  %438 = load %struct.connection*, %struct.connection** %2, align 8
  %439 = call i32 @login_negotiate(%struct.connection* %438, %struct.pdu* null)
  br label %443

440:                                              ; preds = %434
  %441 = load %struct.connection*, %struct.connection** %2, align 8
  %442 = call i32 @login_wait_transition(%struct.connection* %441)
  br label %443

443:                                              ; preds = %440, %437
  br label %444

444:                                              ; preds = %310, %443, %428
  ret void
}

declare dso_local i32 @log_debugx(i8*, ...) #1

declare dso_local %struct.pdu* @login_receive(%struct.connection*, i32) #1

declare dso_local i32 @login_send_error(%struct.pdu*, i32, i32) #1

declare dso_local i32 @log_errx(i32, i8*, ...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.keys* @keys_new(...) #1

declare dso_local i32 @keys_load(%struct.keys*, %struct.pdu*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @keys_find(%struct.keys*, i8*) #1

declare dso_local i32 @valid_iscsi_name(i8*) #1

declare dso_local i8* @checked_strdup(i8*) #1

declare dso_local i32 @log_set_peer_name(i32*) #1

declare dso_local i32 @setproctitle(i8*, i32, i32*) #1

declare dso_local i32 @login_portal_redirect(%struct.connection*, %struct.pdu*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_6__* @port_find_in_pg(%struct.portal_group*, i8*) #1

declare dso_local i64 @auth_name_check(%struct.auth_group*, i8*) #1

declare dso_local i64 @auth_portal_check(%struct.auth_group*, i32*) #1

declare dso_local i64 @login_csg(%struct.pdu*) #1

declare dso_local i32 @keys_delete(%struct.keys*) #1

declare dso_local i32 @login_negotiate(%struct.connection*, %struct.pdu*) #1

declare dso_local %struct.pdu* @login_new_response(%struct.pdu*) #1

declare dso_local i64 @login_list_contains(i8*, i8*) #1

declare dso_local i32 @keys_add(%struct.keys*, i8*, i8*) #1

declare dso_local i32 @log_warnx(i8*, i8*) #1

declare dso_local i32 @login_set_nsg(%struct.pdu*, i64) #1

declare dso_local i32 @keys_add_int(%struct.keys*, i8*, i32) #1

declare dso_local i32 @keys_save(%struct.keys*, %struct.pdu*) #1

declare dso_local i32 @pdu_send(%struct.pdu*) #1

declare dso_local i32 @pdu_delete(%struct.pdu*) #1

declare dso_local i32 @login_chap(%struct.connection*, %struct.auth_group*) #1

declare dso_local i32 @login_wait_transition(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
