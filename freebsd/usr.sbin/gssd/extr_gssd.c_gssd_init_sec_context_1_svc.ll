; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/gssd/extr_gssd.c_gssd_init_sec_context_1_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/gssd/extr_gssd.c_gssd_init_sec_context_1_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.svc_req = type { i32 }
%struct.TYPE_10__ = type { i32, i8* }

@GSS_C_NO_CREDENTIAL = common dso_local global i64 0, align 8
@GSS_C_NO_CONTEXT = common dso_local global i8* null, align 8
@GSS_C_NO_NAME = common dso_local global i8* null, align 8
@PATH_MAX = common dso_local global i32 0, align 4
@hostbased_initiator_cred = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"FILE:%s\00", align 1
@GSSD_CREDENTIAL_CACHE_FILE = common dso_local global i8* null, align 8
@ccfile_dirlist = common dso_local global i8* null, align 8
@GSS_S_CREDENTIALS_EXPIRED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [69 x i8] c"gssd_init_sec_context: -s no credential cache file found for uid=%d\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@debug_level = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"gss_init_sec_context: cred for non-root\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"gss_init_sec_context: cred for non-root\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"FILE:/tmp/krb5cc_%d\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"KRB5CCNAME\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"gssd_init_sec_context: cred resource not found\0A\00", align 1
@GSS_S_CONTEXT_EXPIRED = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [51 x i8] c"gssd_init_sec_context: context resource not found\0A\00", align 1
@GSS_S_BAD_NAME = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [48 x i8] c"gssd_init_sec_context: name resource not found\0A\00", align 1
@use_old_des = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [72 x i8] c"gssd_init_sec_context: get user cred failed uid=%d major=0x%x minor=%d\0A\00", align 1
@ETYPE_DES_CBC_CRC = common dso_local global i32 0, align 4
@GSS_KRB5_SET_ALLOWABLE_ENCTYPES_X = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [66 x i8] c"gssd_init_sec_context: set allowable enctype major=0x%x minor=%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"gssd_init_sec_context: done major=0x%x minor=%d uid=%d\0A\00", align 1
@GSS_S_CONTINUE_NEEDED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gssd_init_sec_context_1_svc(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, %struct.svc_req* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.svc_req*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_10__, align 8
  %19 = alloca [4 x i8], align 1
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store %struct.svc_req* %2, %struct.svc_req** %7, align 8
  %23 = load i64, i64* @GSS_C_NO_CREDENTIAL, align 8
  store i64 %23, i64* %8, align 8
  %24 = load i8*, i8** @GSS_C_NO_CONTEXT, align 8
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** @GSS_C_NO_NAME, align 8
  store i8* %25, i8** %10, align 8
  %26 = load i32, i32* @PATH_MAX, align 4
  %27 = add nsw i32 %26, 5
  %28 = add nsw i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %11, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %12, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = call i32 @memset(%struct.TYPE_8__* %32, i32 0, i32 40)
  %34 = load i64, i64* @hostbased_initiator_cred, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %3
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = trunc i64 %29 to i32
  %48 = load i8*, i8** @GSSD_CREDENTIAL_CACHE_FILE, align 8
  %49 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %48)
  br label %140

50:                                               ; preds = %41, %36, %3
  %51 = load i8*, i8** @ccfile_dirlist, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %112

56:                                               ; preds = %50
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %112

61:                                               ; preds = %56
  store i32 0, i32* %15, align 4
  %62 = load i8*, i8** @ccfile_dirlist, align 8
  store i8* %62, i8** %13, align 8
  br label %63

63:                                               ; preds = %95, %61
  %64 = load i8*, i8** %13, align 8
  %65 = call i8* @strchr(i8* %64, i8 signext 58)
  store i8* %65, i8** %14, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i8*, i8** %14, align 8
  store i8 0, i8* %69, align 1
  br label %70

70:                                               ; preds = %68, %63
  %71 = load i8*, i8** %13, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @find_ccache_file(i8* %71, i64 %74, i8* %31)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %97

79:                                               ; preds = %70
  %80 = load i8*, i8** %14, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i8*, i8** %14, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %14, align 8
  store i8 58, i8* %83, align 1
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i8*, i8** %14, align 8
  store i8* %86, i8** %13, align 8
  br label %87

87:                                               ; preds = %85
  %88 = load i8*, i8** %13, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i8*, i8** %13, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 0
  br label %95

95:                                               ; preds = %90, %87
  %96 = phi i1 [ false, %87 ], [ %94, %90 ]
  br i1 %96, label %63, label %97

97:                                               ; preds = %95, %78
  %98 = load i32, i32* %15, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %97
  %101 = load i8*, i8** @GSS_S_CREDENTIALS_EXPIRED, align 8
  %102 = ptrtoint i8* %101 to i64
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = call i32 (i8*, ...) @gssd_verbose_out(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @TRUE, align 4
  store i32 %110, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %363

111:                                              ; preds = %97
  br label %139

112:                                              ; preds = %56, %50
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %112
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %117
  %123 = load i64, i64* @debug_level, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32, i32* @LOG_ERR, align 4
  %127 = call i32 @syslog(i32 %126, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %131

128:                                              ; preds = %122
  %129 = load i32, i32* @stderr, align 4
  %130 = call i32 @fprintf(i32 %129, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %125
  br label %132

132:                                              ; preds = %131, %117, %112
  %133 = trunc i64 %29 to i32
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 %133, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %132, %111
  br label %140

140:                                              ; preds = %139, %46
  %141 = load i32, i32* @TRUE, align 4
  %142 = call i32 @setenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %31, i32 %141)
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %163

147:                                              ; preds = %140
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i8* @gssd_find_resource(i64 %150)
  %152 = ptrtoint i8* %151 to i64
  store i64 %152, i64* %8, align 8
  %153 = load i64, i64* %8, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %147
  %156 = load i8*, i8** @GSS_S_CREDENTIALS_EXPIRED, align 8
  %157 = ptrtoint i8* %156 to i64
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  %160 = call i32 (i8*, ...) @gssd_verbose_out(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  %161 = load i32, i32* @TRUE, align 4
  store i32 %161, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %363

162:                                              ; preds = %147
  br label %163

163:                                              ; preds = %162, %140
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %182

168:                                              ; preds = %163
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = call i8* @gssd_find_resource(i64 %171)
  store i8* %172, i8** %9, align 8
  %173 = load i8*, i8** %9, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %181, label %175

175:                                              ; preds = %168
  %176 = load i64, i64* @GSS_S_CONTEXT_EXPIRED, align 8
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  store i64 %176, i64* %178, align 8
  %179 = call i32 (i8*, ...) @gssd_verbose_out(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  %180 = load i32, i32* @TRUE, align 4
  store i32 %180, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %363

181:                                              ; preds = %168
  br label %182

182:                                              ; preds = %181, %163
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %201

187:                                              ; preds = %182
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = call i8* @gssd_find_resource(i64 %190)
  store i8* %191, i8** %10, align 8
  %192 = load i8*, i8** %10, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %200, label %194

194:                                              ; preds = %187
  %195 = load i64, i64* @GSS_S_BAD_NAME, align 8
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  store i64 %195, i64* %197, align 8
  %198 = call i32 (i8*, ...) @gssd_verbose_out(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0))
  %199 = load i32, i32* @TRUE, align 4
  store i32 %199, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %363

200:                                              ; preds = %187
  br label %201

201:                                              ; preds = %200, %182
  store i32 0, i32* %16, align 4
  %202 = load i64, i64* @use_old_des, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %285

204:                                              ; preds = %201
  %205 = load i64, i64* %8, align 8
  %206 = load i64, i64* @GSS_C_NO_CREDENTIAL, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %228

208:                                              ; preds = %204
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = call i64 @gssd_get_user_cred(i64* %17, i64 %211, i64* %8)
  store i64 %212, i64* %21, align 8
  %213 = load i64, i64* %21, align 8
  %214 = load i64, i64* @GSS_S_COMPLETE, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %208
  store i32 1, i32* %16, align 4
  br label %227

217:                                              ; preds = %208
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = trunc i64 %220 to i32
  %222 = load i64, i64* %21, align 8
  %223 = trunc i64 %222 to i32
  %224 = load i64, i64* %17, align 8
  %225 = trunc i64 %224 to i32
  %226 = call i32 (i8*, ...) @gssd_verbose_out(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.9, i64 0, i64 0), i32 %221, i32 %223, i32 %225)
  br label %227

227:                                              ; preds = %217, %216
  br label %228

228:                                              ; preds = %227, %204
  %229 = load i64, i64* %8, align 8
  %230 = load i64, i64* @GSS_C_NO_CREDENTIAL, align 8
  %231 = icmp ne i64 %229, %230
  br i1 %231, label %232, label %284

232:                                              ; preds = %228
  %233 = load i32, i32* @ETYPE_DES_CBC_CRC, align 4
  store i32 %233, i32* %20, align 4
  %234 = load i32, i32* %20, align 4
  %235 = ashr i32 %234, 24
  %236 = and i32 %235, 255
  %237 = trunc i32 %236 to i8
  %238 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 0
  store i8 %237, i8* %238, align 1
  %239 = load i32, i32* %20, align 4
  %240 = ashr i32 %239, 16
  %241 = and i32 %240, 255
  %242 = trunc i32 %241 to i8
  %243 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 1
  store i8 %242, i8* %243, align 1
  %244 = load i32, i32* %20, align 4
  %245 = ashr i32 %244, 8
  %246 = and i32 %245, 255
  %247 = trunc i32 %246 to i8
  %248 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 2
  store i8 %247, i8* %248, align 1
  %249 = load i32, i32* %20, align 4
  %250 = and i32 %249, 255
  %251 = trunc i32 %250 to i8
  %252 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 3
  store i8 %251, i8* %252, align 1
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  store i32 4, i32* %253, align 8
  %254 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 0
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  store i8* %254, i8** %255, align 8
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 2
  %258 = load i32, i32* @GSS_KRB5_SET_ALLOWABLE_ENCTYPES_X, align 4
  %259 = call i64 @gss_set_cred_option(i64* %257, i64* %8, i32 %258, %struct.TYPE_10__* %18)
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  store i64 %259, i64* %261, align 8
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = trunc i64 %264 to i32
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 2
  %268 = load i64, i64* %267, align 8
  %269 = trunc i64 %268 to i32
  %270 = call i32 (i8*, ...) @gssd_verbose_out(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.10, i64 0, i64 0), i32 %265, i32 %269)
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @GSS_S_COMPLETE, align 8
  %275 = icmp ne i64 %273, %274
  br i1 %275, label %276, label %283

276:                                              ; preds = %232
  %277 = load i32, i32* %16, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %276
  %280 = call i32 @gss_release_cred(i64* %17, i64* %8)
  br label %281

281:                                              ; preds = %279, %276
  %282 = load i32, i32* @TRUE, align 4
  store i32 %282, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %363

283:                                              ; preds = %232
  br label %284

284:                                              ; preds = %283, %228
  br label %285

285:                                              ; preds = %284, %201
  %286 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 2
  %288 = load i64, i64* %8, align 8
  %289 = load i8*, i8** %10, align 8
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 8
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i32 0, i32 7
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 6
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 5
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i32 0, i32 4
  %304 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 6
  %306 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 5
  %308 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 4
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 3
  %312 = call i64 @gss_init_sec_context(i64* %287, i64 %288, i8** %9, i8* %289, i32 %292, i32 %295, i32 %298, i32 %301, i32* %303, i32* %305, i32* %307, i32* %309, i32* %311)
  %313 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 0
  store i64 %312, i64* %314, align 8
  %315 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = trunc i64 %317 to i32
  %319 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 2
  %321 = load i64, i64* %320, align 8
  %322 = trunc i64 %321 to i32
  %323 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = trunc i64 %325 to i32
  %327 = call i32 (i8*, ...) @gssd_verbose_out(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i64 0, i64 0), i32 %318, i32 %322, i32 %326)
  %328 = load i32, i32* %16, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %332

330:                                              ; preds = %285
  %331 = call i32 @gss_release_cred(i64* %17, i64* %8)
  br label %332

332:                                              ; preds = %330, %285
  %333 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @GSS_S_COMPLETE, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %344, label %338

338:                                              ; preds = %332
  %339 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* @GSS_S_CONTINUE_NEEDED, align 8
  %343 = icmp eq i64 %341, %342
  br i1 %343, label %344, label %361

344:                                              ; preds = %338, %332
  %345 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %345, i32 0, i32 2
  %347 = load i64, i64* %346, align 8
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %355

349:                                              ; preds = %344
  %350 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %350, i32 0, i32 2
  %352 = load i64, i64* %351, align 8
  %353 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %354 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %353, i32 0, i32 1
  store i64 %352, i64* %354, align 8
  br label %360

355:                                              ; preds = %344
  %356 = load i8*, i8** %9, align 8
  %357 = call i64 @gssd_make_resource(i8* %356)
  %358 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %358, i32 0, i32 1
  store i64 %357, i64* %359, align 8
  br label %360

360:                                              ; preds = %355, %349
  br label %361

361:                                              ; preds = %360, %338
  %362 = load i32, i32* @TRUE, align 4
  store i32 %362, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %363

363:                                              ; preds = %361, %281, %194, %175, %155, %100
  %364 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %364)
  %365 = load i32, i32* %4, align 4
  ret i32 %365
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @find_ccache_file(i8*, i64, i8*) #2

declare dso_local i32 @gssd_verbose_out(i8*, ...) #2

declare dso_local i32 @syslog(i32, i8*) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32 @setenv(i8*, i8*, i32) #2

declare dso_local i8* @gssd_find_resource(i64) #2

declare dso_local i64 @gssd_get_user_cred(i64*, i64, i64*) #2

declare dso_local i64 @gss_set_cred_option(i64*, i64*, i32, %struct.TYPE_10__*) #2

declare dso_local i32 @gss_release_cred(i64*, i64*) #2

declare dso_local i64 @gss_init_sec_context(i64*, i64, i8**, i8*, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @gssd_make_resource(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
