; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/gssd/extr_gssd.c_gssd_acquire_cred_1_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/gssd/extr_gssd.c_gssd_acquire_cred_1_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i8*, i64, i32, i32 }
%struct.svc_req = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@GSS_C_NO_NAME = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@GSS_S_BAD_NAME = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"gssd_acquire_cred: no desired name found\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@hostbased_initiator_cred = common dso_local global i64 0, align 8
@GSS_C_INITIATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"FILE:%s\00", align 1
@GSSD_CREDENTIAL_CACHE_FILE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"KRB5CCNAME\00", align 1
@.str.3 = private unnamed_addr constant [83 x i8] c"gssd_acquire_cred: desired name for host based initiator cred major=0x%x minor=%d\0A\00", align 1
@GSS_S_COMPLETE = common dso_local global i8* null, align 8
@GSS_S_FAILURE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [63 x i8] c"gssd_acquire_cred: using keytab entry for %s, kerberos ret=%d\0A\00", align 1
@ccfile_dirlist = common dso_local global i8* null, align 8
@GSS_S_CREDENTIALS_EXPIRED = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [45 x i8] c"gssd_acquire_cred: no cred cache file found\0A\00", align 1
@debug_level = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"gss_acquire_cred: principal_name for non-root\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [47 x i8] c"gss_acquire_cred: principal_name for non-root\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"FILE:/tmp/krb5cc_%d\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"gssd_acquire_cred: done major=0x%x minor=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gssd_acquire_cred_1_svc(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, %struct.svc_req* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.svc_req*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store %struct.svc_req* %2, %struct.svc_req** %7, align 8
  %19 = load i32, i32* @GSS_C_NO_NAME, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @PATH_MAX, align 4
  %21 = add nsw i32 %20, 5
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %10, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = call i32 @memset(%struct.TYPE_10__* %26, i32 0, i32 32)
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %3
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @gssd_find_resource(i64 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %32
  %40 = load i8*, i8** @GSS_S_BAD_NAME, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = call i32 (i8*, ...) @gssd_verbose_out(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %270

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %3
  %47 = load i64, i64* @hostbased_initiator_cred, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %137

49:                                               ; preds = %46
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %137

54:                                               ; preds = %49
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %137

59:                                               ; preds = %54
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @GSS_C_INITIATE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %137

65:                                               ; preds = %59
  %66 = trunc i64 %23 to i32
  %67 = load i8*, i8** @GSSD_CREDENTIAL_CACHE_FILE, align 8
  %68 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %25, i32 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %67)
  %69 = load i32, i32* @TRUE, align 4
  %70 = call i32 @setenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %25, i32 %69)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 2
  %73 = load i32, i32* %8, align 4
  %74 = call i8* @gss_display_name(i64* %72, i32 %73, %struct.TYPE_9__* %15, i32* null)
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 (i8*, ...) @gssd_verbose_out(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0), i32 %80, i32 %84)
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load i8*, i8** @GSS_S_COMPLETE, align 8
  %90 = icmp ne i8* %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %65
  %92 = load i32, i32* @TRUE, align 4
  store i32 %92, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %270

93:                                               ; preds = %65
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @PATH_MAX, align 4
  %97 = add nsw i32 %96, 5
  %98 = icmp sgt i32 %95, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 2
  store i64 0, i64* %101, align 8
  %102 = load i8*, i8** @GSS_S_FAILURE, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* @TRUE, align 4
  store i32 %105, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %270

106:                                              ; preds = %93
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @memcpy(i8* %25, i32 %108, i32 %110)
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %25, i64 %114
  store i8 0, i8* %115, align 1
  %116 = call i8* @strchr(i8* %25, i8 signext 64)
  store i8* %116, i8** %12, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %106
  %119 = load i8*, i8** %12, align 8
  store i8 47, i8* %119, align 1
  br label %120

120:                                              ; preds = %118, %106
  %121 = call i64 @gssd_get_cc_from_keytab(i8* %25)
  store i64 %121, i64* %17, align 8
  %122 = load i64, i64* %17, align 8
  %123 = trunc i64 %122 to i32
  %124 = call i32 (i8*, ...) @gssd_verbose_out(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i8* %25, i32 %123)
  %125 = call i32 @gss_release_buffer(i32* %16, %struct.TYPE_9__* %15)
  %126 = load i64, i64* %17, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %120
  %129 = load i64, i64* %17, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 2
  store i64 %129, i64* %131, align 8
  %132 = load i8*, i8** @GSS_S_FAILURE, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  %135 = load i32, i32* @TRUE, align 4
  store i32 %135, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %270

136:                                              ; preds = %120
  br label %226

137:                                              ; preds = %59, %54, %49, %46
  %138 = load i8*, i8** @ccfile_dirlist, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 0
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %196

143:                                              ; preds = %137
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %196

148:                                              ; preds = %143
  store i32 0, i32* %14, align 4
  %149 = load i8*, i8** @ccfile_dirlist, align 8
  store i8* %149, i8** %12, align 8
  br label %150

150:                                              ; preds = %182, %148
  %151 = load i8*, i8** %12, align 8
  %152 = call i8* @strchr(i8* %151, i8 signext 58)
  store i8* %152, i8** %13, align 8
  %153 = load i8*, i8** %13, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = load i8*, i8** %13, align 8
  store i8 0, i8* %156, align 1
  br label %157

157:                                              ; preds = %155, %150
  %158 = load i8*, i8** %12, align 8
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @find_ccache_file(i8* %158, i64 %161, i8* %25)
  store i32 %162, i32* %14, align 4
  %163 = load i32, i32* %14, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %157
  br label %184

166:                                              ; preds = %157
  %167 = load i8*, i8** %13, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load i8*, i8** %13, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %13, align 8
  store i8 58, i8* %170, align 1
  br label %172

172:                                              ; preds = %169, %166
  %173 = load i8*, i8** %13, align 8
  store i8* %173, i8** %12, align 8
  br label %174

174:                                              ; preds = %172
  %175 = load i8*, i8** %12, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %182

177:                                              ; preds = %174
  %178 = load i8*, i8** %12, align 8
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp ne i32 %180, 0
  br label %182

182:                                              ; preds = %177, %174
  %183 = phi i1 [ false, %174 ], [ %181, %177 ]
  br i1 %183, label %150, label %184

184:                                              ; preds = %182, %165
  %185 = load i32, i32* %14, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %184
  %188 = load i8*, i8** @GSS_S_CREDENTIALS_EXPIRED, align 8
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 1
  store i8* %188, i8** %190, align 8
  %191 = call i32 (i8*, ...) @gssd_verbose_out(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %192 = load i32, i32* @TRUE, align 4
  store i32 %192, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %270

193:                                              ; preds = %184
  %194 = load i32, i32* @TRUE, align 4
  %195 = call i32 @setenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %25, i32 %194)
  br label %225

196:                                              ; preds = %143, %137
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %216

201:                                              ; preds = %196
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %216

206:                                              ; preds = %201
  %207 = load i64, i64* @debug_level, align 8
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %206
  %210 = load i32, i32* @LOG_ERR, align 4
  %211 = call i32 @syslog(i32 %210, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  br label %215

212:                                              ; preds = %206
  %213 = load i32, i32* @stderr, align 4
  %214 = call i32 @fprintf(i32 %213, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  br label %215

215:                                              ; preds = %212, %209
  br label %216

216:                                              ; preds = %215, %201, %196
  %217 = trunc i64 %23 to i32
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = trunc i64 %220 to i32
  %222 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %25, i32 %217, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %221)
  %223 = load i32, i32* @TRUE, align 4
  %224 = call i32 @setenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %25, i32 %223)
  br label %225

225:                                              ; preds = %216, %193
  br label %226

226:                                              ; preds = %225, %136
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 2
  %229 = load i32, i32* %8, align 4
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 4
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 3
  %243 = call i8* @gss_acquire_cred(i64* %228, i32 %229, i32 %232, i32 %235, i32 %238, i32* %9, i32* %240, i32* %242)
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 1
  store i8* %243, i8** %245, align 8
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 1
  %248 = load i8*, i8** %247, align 8
  %249 = ptrtoint i8* %248 to i32
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 2
  %252 = load i64, i64* %251, align 8
  %253 = trunc i64 %252 to i32
  %254 = call i32 (i8*, ...) @gssd_verbose_out(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 %249, i32 %253)
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 1
  %257 = load i8*, i8** %256, align 8
  %258 = load i8*, i8** @GSS_S_COMPLETE, align 8
  %259 = icmp eq i8* %257, %258
  br i1 %259, label %260, label %265

260:                                              ; preds = %226
  %261 = load i32, i32* %9, align 4
  %262 = call i32 @gssd_make_resource(i32 %261)
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 0
  store i32 %262, i32* %264, align 8
  br label %268

265:                                              ; preds = %226
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 0
  store i32 0, i32* %267, align 8
  br label %268

268:                                              ; preds = %265, %260
  %269 = load i32, i32* @TRUE, align 4
  store i32 %269, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %270

270:                                              ; preds = %268, %187, %128, %99, %91, %39
  %271 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %271)
  %272 = load i32, i32* %4, align 4
  ret i32 %272
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #2

declare dso_local i32 @gssd_find_resource(i64) #2

declare dso_local i32 @gssd_verbose_out(i8*, ...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @setenv(i8*, i8*, i32) #2

declare dso_local i8* @gss_display_name(i64*, i32, %struct.TYPE_9__*, i32*) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @gssd_get_cc_from_keytab(i8*) #2

declare dso_local i32 @gss_release_buffer(i32*, %struct.TYPE_9__*) #2

declare dso_local i32 @find_ccache_file(i8*, i64, i8*) #2

declare dso_local i32 @syslog(i32, i8*) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i8* @gss_acquire_cred(i64*, i32, i32, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @gssd_make_resource(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
