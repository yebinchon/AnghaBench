; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_login.c_login.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_login.c_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i64, i8*, i8* }
%struct.pdu = type { i64 }
%struct.keys = type { i8**, i32* }
%struct.iscsi_bhs_login_response = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"beginning Login phase; sending Login PDU\00", align 1
@BHSLR_STAGE_SECURITY_NEGOTIATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"AuthMethod\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"CHAP\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"None,CHAP\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"InitiatorName\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"InitiatorAlias\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"SessionType\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"TargetName\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Discovery\00", align 1
@KEYS_MAX = common dso_local global i32 0, align 4
@BHSLR_FLAGS_TRANSIT = common dso_local global i32 0, align 4
@BHSLR_STAGE_OPERATIONAL_NEGOTIATION = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [93 x i8] c"target requested transition to operational parameter negotiation, but we require mutual CHAP\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"target requested transition to operational parameter negotiation\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"received response without AuthMethod\00", align 1
@.str.14 = private unnamed_addr constant [67 x i8] c"target does not require authantication, but we require mutual CHAP\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"target does not require authentication\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Unsupported AuthMethod\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"received response with unsupported AuthMethod \22%s\22\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"Authentication required\00", align 1
@.str.19 = private unnamed_addr constant [71 x i8] c"target requests CHAP authentication, but we don't have user and secret\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @login(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.pdu*, align 8
  %4 = alloca %struct.pdu*, align 8
  %5 = alloca %struct.keys*, align 8
  %6 = alloca %struct.keys*, align 8
  %7 = alloca %struct.iscsi_bhs_login_response*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %2, align 8
  %10 = call i32 @log_debugx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.connection*, %struct.connection** %2, align 8
  %12 = load i32, i32* @BHSLR_STAGE_SECURITY_NEGOTIATION, align 4
  %13 = call %struct.pdu* @login_new_request(%struct.connection* %11, i32 %12)
  store %struct.pdu* %13, %struct.pdu** %3, align 8
  %14 = call %struct.keys* (...) @keys_new()
  store %struct.keys* %14, %struct.keys** %5, align 8
  %15 = load %struct.connection*, %struct.connection** %2, align 8
  %16 = getelementptr inbounds %struct.connection, %struct.connection* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.keys*, %struct.keys** %5, align 8
  %25 = call i32 @keys_add(%struct.keys* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %42

26:                                               ; preds = %1
  %27 = load %struct.connection*, %struct.connection** %2, align 8
  %28 = getelementptr inbounds %struct.connection, %struct.connection* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load %struct.keys*, %struct.keys** %5, align 8
  %37 = call i32 @keys_add(%struct.keys* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %41

38:                                               ; preds = %26
  %39 = load %struct.keys*, %struct.keys** %5, align 8
  %40 = call i32 @keys_add(%struct.keys* %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %35
  br label %42

42:                                               ; preds = %41, %23
  %43 = load %struct.keys*, %struct.keys** %5, align 8
  %44 = load %struct.connection*, %struct.connection** %2, align 8
  %45 = getelementptr inbounds %struct.connection, %struct.connection* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @keys_add(%struct.keys* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %47)
  %49 = load %struct.connection*, %struct.connection** %2, align 8
  %50 = getelementptr inbounds %struct.connection, %struct.connection* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %42
  %58 = load %struct.keys*, %struct.keys** %5, align 8
  %59 = load %struct.connection*, %struct.connection** %2, align 8
  %60 = getelementptr inbounds %struct.connection, %struct.connection* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @keys_add(%struct.keys* %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %57, %42
  %65 = load %struct.connection*, %struct.connection** %2, align 8
  %66 = getelementptr inbounds %struct.connection, %struct.connection* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = load %struct.keys*, %struct.keys** %5, align 8
  %72 = call i32 @keys_add(%struct.keys* %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %73 = load %struct.keys*, %struct.keys** %5, align 8
  %74 = load %struct.connection*, %struct.connection** %2, align 8
  %75 = getelementptr inbounds %struct.connection, %struct.connection* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 5
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @keys_add(%struct.keys* %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* %77)
  br label %82

79:                                               ; preds = %64
  %80 = load %struct.keys*, %struct.keys** %5, align 8
  %81 = call i32 @keys_add(%struct.keys* %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %70
  %83 = load %struct.keys*, %struct.keys** %5, align 8
  %84 = load %struct.pdu*, %struct.pdu** %3, align 8
  %85 = call i32 @keys_save(%struct.keys* %83, %struct.pdu* %84)
  %86 = load %struct.keys*, %struct.keys** %5, align 8
  %87 = call i32 @keys_delete(%struct.keys* %86)
  %88 = load %struct.pdu*, %struct.pdu** %3, align 8
  %89 = call i32 @pdu_send(%struct.pdu* %88)
  %90 = load %struct.pdu*, %struct.pdu** %3, align 8
  %91 = call i32 @pdu_delete(%struct.pdu* %90)
  %92 = load %struct.connection*, %struct.connection** %2, align 8
  %93 = call %struct.pdu* @login_receive(%struct.connection* %92)
  store %struct.pdu* %93, %struct.pdu** %4, align 8
  %94 = call %struct.keys* (...) @keys_new()
  store %struct.keys* %94, %struct.keys** %6, align 8
  %95 = load %struct.keys*, %struct.keys** %6, align 8
  %96 = load %struct.pdu*, %struct.pdu** %4, align 8
  %97 = call i32 @keys_load(%struct.keys* %95, %struct.pdu* %96)
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %140, %82
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @KEYS_MAX, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %143

102:                                              ; preds = %98
  %103 = load %struct.keys*, %struct.keys** %6, align 8
  %104 = getelementptr inbounds %struct.keys, %struct.keys* %103, i32 0, i32 0
  %105 = load i8**, i8*** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  br label %143

112:                                              ; preds = %102
  %113 = load %struct.keys*, %struct.keys** %6, align 8
  %114 = getelementptr inbounds %struct.keys, %struct.keys* %113, i32 0, i32 0
  %115 = load i8**, i8*** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = call i64 @strcmp(i8* %119, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  br label %140

123:                                              ; preds = %112
  %124 = load %struct.connection*, %struct.connection** %2, align 8
  %125 = load %struct.keys*, %struct.keys** %6, align 8
  %126 = getelementptr inbounds %struct.keys, %struct.keys* %125, i32 0, i32 0
  %127 = load i8**, i8*** %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.keys*, %struct.keys** %6, align 8
  %133 = getelementptr inbounds %struct.keys, %struct.keys* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @login_negotiate_key(%struct.connection* %124, i8* %131, i32 %138)
  br label %140

140:                                              ; preds = %123, %122
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %9, align 4
  br label %98

143:                                              ; preds = %111, %98
  %144 = load %struct.pdu*, %struct.pdu** %4, align 8
  %145 = getelementptr inbounds %struct.pdu, %struct.pdu* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = inttoptr i64 %146 to %struct.iscsi_bhs_login_response*
  store %struct.iscsi_bhs_login_response* %147, %struct.iscsi_bhs_login_response** %7, align 8
  %148 = load %struct.iscsi_bhs_login_response*, %struct.iscsi_bhs_login_response** %7, align 8
  %149 = getelementptr inbounds %struct.iscsi_bhs_login_response, %struct.iscsi_bhs_login_response* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @BHSLR_FLAGS_TRANSIT, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %178

154:                                              ; preds = %143
  %155 = load %struct.pdu*, %struct.pdu** %4, align 8
  %156 = call i64 @login_nsg(%struct.pdu* %155)
  %157 = load i64, i64* @BHSLR_STAGE_OPERATIONAL_NEGOTIATION, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %178

159:                                              ; preds = %154
  %160 = load %struct.connection*, %struct.connection** %2, align 8
  %161 = getelementptr inbounds %struct.connection, %struct.connection* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 0
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %159
  %169 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.11, i64 0, i64 0))
  br label %170

170:                                              ; preds = %168, %159
  %171 = call i32 @log_debugx(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i64 0, i64 0))
  %172 = load %struct.keys*, %struct.keys** %6, align 8
  %173 = call i32 @keys_delete(%struct.keys* %172)
  %174 = load %struct.pdu*, %struct.pdu** %4, align 8
  %175 = call i32 @pdu_delete(%struct.pdu* %174)
  %176 = load %struct.connection*, %struct.connection** %2, align 8
  %177 = call i32 @login_negotiate(%struct.connection* %176)
  br label %248

178:                                              ; preds = %154, %143
  %179 = load %struct.keys*, %struct.keys** %6, align 8
  %180 = call i8* @keys_find(%struct.keys* %179, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i8* %180, i8** %8, align 8
  %181 = load i8*, i8** %8, align 8
  %182 = icmp eq i8* %181, null
  br i1 %182, label %183, label %185

183:                                              ; preds = %178
  %184 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  br label %185

185:                                              ; preds = %183, %178
  %186 = load i8*, i8** %8, align 8
  %187 = call i64 @strcmp(i8* %186, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %208

189:                                              ; preds = %185
  %190 = load %struct.connection*, %struct.connection** %2, align 8
  %191 = getelementptr inbounds %struct.connection, %struct.connection* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 0
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %189
  %199 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.14, i64 0, i64 0))
  br label %200

200:                                              ; preds = %198, %189
  %201 = call i32 @log_debugx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0))
  %202 = load %struct.keys*, %struct.keys** %6, align 8
  %203 = call i32 @keys_delete(%struct.keys* %202)
  %204 = load %struct.pdu*, %struct.pdu** %4, align 8
  %205 = call i32 @pdu_delete(%struct.pdu* %204)
  %206 = load %struct.connection*, %struct.connection** %2, align 8
  %207 = call i32 @login_negotiate(%struct.connection* %206)
  br label %248

208:                                              ; preds = %185
  %209 = load i8*, i8** %8, align 8
  %210 = call i64 @strcmp(i8* %209, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %208
  %213 = load %struct.connection*, %struct.connection** %2, align 8
  %214 = call i32 @fail(%struct.connection* %213, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0))
  %215 = load i8*, i8** %8, align 8
  %216 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.17, i64 0, i64 0), i8* %215)
  br label %217

217:                                              ; preds = %212, %208
  %218 = load %struct.connection*, %struct.connection** %2, align 8
  %219 = getelementptr inbounds %struct.connection, %struct.connection* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 1
  %221 = load i8*, i8** %220, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 0
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %235, label %226

226:                                              ; preds = %217
  %227 = load %struct.connection*, %struct.connection** %2, align 8
  %228 = getelementptr inbounds %struct.connection, %struct.connection* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 6
  %230 = load i8*, i8** %229, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 0
  %232 = load i8, i8* %231, align 1
  %233 = sext i8 %232 to i32
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %226, %217
  %236 = load %struct.connection*, %struct.connection** %2, align 8
  %237 = call i32 @fail(%struct.connection* %236, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0))
  %238 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.19, i64 0, i64 0))
  br label %239

239:                                              ; preds = %235, %226
  %240 = load %struct.keys*, %struct.keys** %6, align 8
  %241 = call i32 @keys_delete(%struct.keys* %240)
  store %struct.keys* null, %struct.keys** %6, align 8
  %242 = load %struct.pdu*, %struct.pdu** %4, align 8
  %243 = call i32 @pdu_delete(%struct.pdu* %242)
  store %struct.pdu* null, %struct.pdu** %4, align 8
  %244 = load %struct.connection*, %struct.connection** %2, align 8
  %245 = call i32 @login_chap(%struct.connection* %244)
  %246 = load %struct.connection*, %struct.connection** %2, align 8
  %247 = call i32 @login_negotiate(%struct.connection* %246)
  br label %248

248:                                              ; preds = %239, %200, %170
  ret void
}

declare dso_local i32 @log_debugx(i8*) #1

declare dso_local %struct.pdu* @login_new_request(%struct.connection*, i32) #1

declare dso_local %struct.keys* @keys_new(...) #1

declare dso_local i32 @keys_add(%struct.keys*, i8*, i8*) #1

declare dso_local i32 @keys_save(%struct.keys*, %struct.pdu*) #1

declare dso_local i32 @keys_delete(%struct.keys*) #1

declare dso_local i32 @pdu_send(%struct.pdu*) #1

declare dso_local i32 @pdu_delete(%struct.pdu*) #1

declare dso_local %struct.pdu* @login_receive(%struct.connection*) #1

declare dso_local i32 @keys_load(%struct.keys*, %struct.pdu*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @login_negotiate_key(%struct.connection*, i8*, i32) #1

declare dso_local i64 @login_nsg(%struct.pdu*) #1

declare dso_local i32 @log_errx(i32, i8*, ...) #1

declare dso_local i32 @login_negotiate(%struct.connection*) #1

declare dso_local i8* @keys_find(%struct.keys*, i8*) #1

declare dso_local i32 @fail(%struct.connection*, i8*) #1

declare dso_local i32 @login_chap(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
