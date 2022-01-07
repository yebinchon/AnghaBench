; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gsstest.c_gsstest_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gsstest.c_gsstest_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i8* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_23__* }
%struct.thread = type { i32 }
%struct.TYPE_21__ = type { i8*, i32 }

@GSS_C_NO_CONTEXT = common dso_local global i64 0, align 8
@GSS_C_NO_CREDENTIAL = common dso_local global i64 0, align 8
@GSS_C_NO_NAME = common dso_local global i64 0, align 8
@gsstest_1.krb5_desc = internal global %struct.TYPE_23__ { i32 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [10 x i8] c"*\86H\86\F7\12\01\02\02\00", align 1
@GSS_C_NO_OID = common dso_local global i32 0, align 4
@gsstest_1.sbuf = internal global [512 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [5 x i8] c"nfs@\00", align 1
@GSS_C_NT_HOSTBASED_SERVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"gss_import_name failed\0A\00", align 1
@GSS_C_NO_OID_SET = common dso_local global %struct.TYPE_22__* null, align 8
@GSS_C_INITIATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"gss_acquire_cred (client) failed\0A\00", align 1
@ETYPE_DES_CBC_CRC = common dso_local global i32 0, align 4
@GSS_KRB5_SET_ALLOWABLE_ENCTYPES_X = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"gss_set_cred_option failed\0A\00", align 1
@GSS_C_MUTUAL_FLAG = common dso_local global i32 0, align 4
@GSS_C_CONF_FLAG = common dso_local global i32 0, align 4
@GSS_C_INTEG_FLAG = common dso_local global i32 0, align 4
@GSS_C_NO_CHANNEL_BINDINGS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"gss_init_sec_context failed\0A\00", align 1
@GSS_C_ACCEPT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"gss_acquire_cred (server) failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"gss_accept_sec_context failed\0A\00", align 1
@GSS_C_NO_BUFFER = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"Hello world\00", align 1
@GSS_C_QOP_DEFAULT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"gss_get_mic failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"gss_verify_mic failed\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"gss_wrap failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"gss_unwrap failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"unwrap result corrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*)* @gsstest_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsstest_1(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_21__, align 8
  %15 = alloca %struct.TYPE_21__, align 8
  %16 = alloca %struct.TYPE_21__, align 8
  %17 = alloca %struct.TYPE_21__, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [4 x i8], align 1
  %22 = alloca %struct.TYPE_22__, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  store i32 0, i32* %7, align 4
  %23 = load i64, i64* @GSS_C_NO_CONTEXT, align 8
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* @GSS_C_NO_CONTEXT, align 8
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* @GSS_C_NO_CREDENTIAL, align 8
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* @GSS_C_NO_CREDENTIAL, align 8
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* @GSS_C_NO_NAME, align 8
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* @GSS_C_NO_NAME, align 8
  store i64 %28, i64* %13, align 8
  %29 = load i32, i32* @GSS_C_NO_OID, align 4
  store i32 %29, i32* %18, align 4
  %30 = call i32 @memcpy(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @gsstest_1.sbuf, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %31 = load %struct.thread*, %struct.thread** %2, align 8
  %32 = getelementptr inbounds %struct.thread, %struct.thread* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @getcredhostname(i32 %33, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @gsstest_1.sbuf, i64 0, i64 4), i32 508)
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @gsstest_1.sbuf, i64 0, i64 0), i8** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* @strlen(i8* %37)
  %39 = ptrtoint i8* %38 to i32
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  store i32 %39, i32* %40, align 8
  %41 = load i32, i32* @GSS_C_NT_HOSTBASED_SERVICE, align 4
  %42 = call i64 @gss_import_name(i64* %4, %struct.TYPE_21__* %14, i32 %41, i64* %12)
  store i64 %42, i64* %3, align 8
  %43 = load i64, i64* %3, align 8
  %44 = call i64 @GSS_ERROR(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %1
  %47 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* %18, align 4
  %49 = load i64, i64* %3, align 8
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @report_error(i32 %48, i64 %49, i64 %50)
  br label %268

52:                                               ; preds = %1
  %53 = load i64, i64* @GSS_C_NO_NAME, align 8
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** @GSS_C_NO_OID_SET, align 8
  %55 = load i32, i32* @GSS_C_INITIATE, align 4
  %56 = call i64 @gss_acquire_cred(i64* %4, i64 %53, i32 0, %struct.TYPE_22__* %54, i32 %55, i64* %10, i32* null, i32* null)
  store i64 %56, i64* %3, align 8
  %57 = load i64, i64* %3, align 8
  %58 = call i64 @GSS_ERROR(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* %18, align 4
  %63 = load i64, i64* %3, align 8
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @report_error(i32 %62, i64 %63, i64 %64)
  br label %268

66:                                               ; preds = %52
  %67 = load i32, i32* @ETYPE_DES_CBC_CRC, align 4
  %68 = ashr i32 %67, 24
  %69 = and i32 %68, 255
  %70 = trunc i32 %69 to i8
  %71 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 0
  store i8 %70, i8* %71, align 1
  %72 = load i32, i32* @ETYPE_DES_CBC_CRC, align 4
  %73 = ashr i32 %72, 16
  %74 = and i32 %73, 255
  %75 = trunc i32 %74 to i8
  %76 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 1
  store i8 %75, i8* %76, align 1
  %77 = load i32, i32* @ETYPE_DES_CBC_CRC, align 4
  %78 = ashr i32 %77, 8
  %79 = and i32 %78, 255
  %80 = trunc i32 %79 to i8
  %81 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 2
  store i8 %80, i8* %81, align 1
  %82 = load i32, i32* @ETYPE_DES_CBC_CRC, align 4
  %83 = and i32 %82, 255
  %84 = trunc i32 %83 to i8
  %85 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 3
  store i8 %84, i8* %85, align 1
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 1
  store i32 4, i32* %86, align 8
  %87 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 0
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  store i8* %87, i8** %88, align 8
  %89 = load i32, i32* @GSS_KRB5_SET_ALLOWABLE_ENCTYPES_X, align 4
  %90 = call i64 @gss_set_cred_option(i64* %4, i64* %10, i32 %89, %struct.TYPE_21__* %17)
  store i64 %90, i64* %3, align 8
  %91 = load i64, i64* %3, align 8
  %92 = call i64 @GSS_ERROR(i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %66
  %95 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %96 = load i32, i32* %18, align 4
  %97 = load i64, i64* %3, align 8
  %98 = load i64, i64* %4, align 8
  %99 = call i32 @report_error(i32 %96, i64 %97, i64 %98)
  br label %268

100:                                              ; preds = %66
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 1
  store i32 0, i32* %101, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  store i8* null, i8** %102, align 8
  br label %103

103:                                              ; preds = %190, %100
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  br i1 %106, label %107, label %191

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  store i32 0, i32* %108, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  store i8* null, i8** %109, align 8
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* %12, align 8
  %112 = load i32, i32* %18, align 4
  %113 = load i32, i32* @GSS_C_MUTUAL_FLAG, align 4
  %114 = load i32, i32* @GSS_C_CONF_FLAG, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @GSS_C_INTEG_FLAG, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @GSS_C_NO_CHANNEL_BINDINGS, align 4
  %119 = call i64 @gss_init_sec_context(i64* %4, i64 %110, i64* %8, i64 %111, i32 %112, i32 %117, i32 0, i32 %118, %struct.TYPE_21__* %16, i32* %19, %struct.TYPE_21__* %15, i32* null, i32* null)
  store i64 %119, i64* %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %107
  %124 = call i32 @gss_release_buffer(i64* %6, %struct.TYPE_21__* %16)
  br label %125

125:                                              ; preds = %123, %107
  %126 = load i64, i64* %3, align 8
  %127 = call i64 @GSS_ERROR(i64 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %125
  %130 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %131 = load i32, i32* %18, align 4
  %132 = load i64, i64* %3, align 8
  %133 = load i64, i64* %4, align 8
  %134 = call i32 @report_error(i32 %131, i64 %132, i64 %133)
  br label %268

135:                                              ; preds = %125
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %173

139:                                              ; preds = %135
  %140 = load i64, i64* %11, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %158, label %142

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  store i32 1, i32* %143, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 1
  store %struct.TYPE_23__* @gsstest_1.krb5_desc, %struct.TYPE_23__** %144, align 8
  %145 = load i64, i64* %12, align 8
  %146 = load i32, i32* @GSS_C_ACCEPT, align 4
  %147 = call i64 @gss_acquire_cred(i64* %6, i64 %145, i32 0, %struct.TYPE_22__* %22, i32 %146, i64* %11, i32* null, i32* null)
  store i64 %147, i64* %5, align 8
  %148 = load i64, i64* %5, align 8
  %149 = call i64 @GSS_ERROR(i64 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %142
  %152 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %153 = load i32, i32* %20, align 4
  %154 = load i64, i64* %5, align 8
  %155 = load i64, i64* %6, align 8
  %156 = call i32 @report_error(i32 %153, i64 %154, i64 %155)
  br label %268

157:                                              ; preds = %142
  br label %158

158:                                              ; preds = %157, %139
  %159 = load i64, i64* %11, align 8
  %160 = load i32, i32* @GSS_C_NO_CHANNEL_BINDINGS, align 4
  %161 = call i64 @gss_accept_sec_context(i64* %6, i64* %9, i64 %159, %struct.TYPE_21__* %15, i32 %160, i64* %13, i32* %20, %struct.TYPE_21__* %16, i32* null, i32* null, i32* null)
  store i64 %161, i64* %5, align 8
  %162 = load i64, i64* %5, align 8
  %163 = call i64 @GSS_ERROR(i64 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %158
  %166 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %167 = load i32, i32* %20, align 4
  %168 = load i64, i64* %5, align 8
  %169 = load i64, i64* %6, align 8
  %170 = call i32 @report_error(i32 %167, i64 %168, i64 %169)
  br label %268

171:                                              ; preds = %158
  %172 = call i32 @gss_release_buffer(i64* %4, %struct.TYPE_21__* %15)
  br label %173

173:                                              ; preds = %171, %135
  %174 = load i64, i64* %3, align 8
  %175 = call i64 @GSS_ERROR(i64 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %173
  %178 = load i64, i64* %8, align 8
  %179 = load i64, i64* @GSS_C_NO_CONTEXT, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %177
  %182 = load i32, i32* @GSS_C_NO_BUFFER, align 4
  %183 = call i32 @gss_delete_sec_context(i64* %4, i64* %8, i32 %182)
  br label %184

184:                                              ; preds = %181, %177
  br label %191

185:                                              ; preds = %173
  %186 = load i64, i64* %3, align 8
  %187 = load i64, i64* @GSS_S_COMPLETE, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %185
  store i32 1, i32* %7, align 4
  br label %190

190:                                              ; preds = %189, %185
  br label %103

191:                                              ; preds = %184, %103
  %192 = call i8* @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %193 = ptrtoint i8* %192 to i32
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 1
  store i32 %193, i32* %194, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %195, align 8
  %196 = load i64, i64* %8, align 8
  %197 = load i32, i32* @GSS_C_QOP_DEFAULT, align 4
  %198 = call i64 @gss_get_mic(i64* %4, i64 %196, i32 %197, %struct.TYPE_21__* %17, %struct.TYPE_21__* %15)
  store i64 %198, i64* %3, align 8
  %199 = load i64, i64* %3, align 8
  %200 = call i64 @GSS_ERROR(i64 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %191
  %203 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %204 = load i32, i32* %20, align 4
  %205 = load i64, i64* %3, align 8
  %206 = load i64, i64* %4, align 8
  %207 = call i32 @report_error(i32 %204, i64 %205, i64 %206)
  br label %268

208:                                              ; preds = %191
  %209 = load i64, i64* %9, align 8
  %210 = call i64 @gss_verify_mic(i64* %4, i64 %209, %struct.TYPE_21__* %17, %struct.TYPE_21__* %15, i32* null)
  store i64 %210, i64* %3, align 8
  %211 = load i64, i64* %3, align 8
  %212 = call i64 @GSS_ERROR(i64 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %208
  %215 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %216 = load i32, i32* %20, align 4
  %217 = load i64, i64* %3, align 8
  %218 = load i64, i64* %4, align 8
  %219 = call i32 @report_error(i32 %216, i64 %217, i64 %218)
  br label %268

220:                                              ; preds = %208
  %221 = call i32 @gss_release_buffer(i64* %4, %struct.TYPE_21__* %15)
  %222 = load i64, i64* %8, align 8
  %223 = load i32, i32* @TRUE, align 4
  %224 = load i32, i32* @GSS_C_QOP_DEFAULT, align 4
  %225 = call i64 @gss_wrap(i64* %4, i64 %222, i32 %223, i32 %224, %struct.TYPE_21__* %17, i32* null, %struct.TYPE_21__* %15)
  store i64 %225, i64* %3, align 8
  %226 = load i64, i64* %3, align 8
  %227 = call i64 @GSS_ERROR(i64 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %220
  %230 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %231 = load i32, i32* %20, align 4
  %232 = load i64, i64* %3, align 8
  %233 = load i64, i64* %4, align 8
  %234 = call i32 @report_error(i32 %231, i64 %232, i64 %233)
  br label %268

235:                                              ; preds = %220
  %236 = load i64, i64* %9, align 8
  %237 = call i64 @gss_unwrap(i64* %4, i64 %236, %struct.TYPE_21__* %15, %struct.TYPE_21__* %16, i32* null, i32* null)
  store i64 %237, i64* %3, align 8
  %238 = load i64, i64* %3, align 8
  %239 = call i64 @GSS_ERROR(i64 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %235
  %242 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %243 = load i32, i32* %20, align 4
  %244 = load i64, i64* %3, align 8
  %245 = load i64, i64* %4, align 8
  %246 = call i32 @report_error(i32 %243, i64 %244, i64 %245)
  br label %268

247:                                              ; preds = %235
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = icmp ne i32 %249, %251
  br i1 %252, label %263, label %253

253:                                              ; preds = %247
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %255 = load i8*, i8** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %257 = load i8*, i8** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = sext i32 %259 to i64
  %261 = call i64 @memcmp(i8* %255, i8* %257, i64 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %265

263:                                              ; preds = %253, %247
  %264 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  br label %265

265:                                              ; preds = %263, %253
  %266 = call i32 @gss_release_buffer(i64* %4, %struct.TYPE_21__* %15)
  %267 = call i32 @gss_release_buffer(i64* %4, %struct.TYPE_21__* %16)
  br label %268

268:                                              ; preds = %265, %241, %229, %214, %202, %165, %151, %129, %94, %60, %46
  %269 = load i64, i64* %8, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %268
  %272 = load i32, i32* @GSS_C_NO_BUFFER, align 4
  %273 = call i32 @gss_delete_sec_context(i64* %4, i64* %8, i32 %272)
  br label %274

274:                                              ; preds = %271, %268
  %275 = load i64, i64* %9, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %274
  %278 = load i32, i32* @GSS_C_NO_BUFFER, align 4
  %279 = call i32 @gss_delete_sec_context(i64* %4, i64* %9, i32 %278)
  br label %280

280:                                              ; preds = %277, %274
  %281 = load i64, i64* %10, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %280
  %284 = call i32 @gss_release_cred(i64* %4, i64* %10)
  br label %285

285:                                              ; preds = %283, %280
  %286 = load i64, i64* %11, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %285
  %289 = call i32 @gss_release_cred(i64* %4, i64* %11)
  br label %290

290:                                              ; preds = %288, %285
  %291 = load i64, i64* %12, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %290
  %294 = call i32 @gss_release_name(i64* %4, i64* %12)
  br label %295

295:                                              ; preds = %293, %290
  %296 = load i64, i64* %13, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %295
  %299 = call i32 @gss_release_name(i64* %4, i64* %13)
  br label %300

300:                                              ; preds = %298, %295
  ret i32 0
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @getcredhostname(i32, i8*, i32) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i64 @gss_import_name(i64*, %struct.TYPE_21__*, i32, i64*) #1

declare dso_local i64 @GSS_ERROR(i64) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @report_error(i32, i64, i64) #1

declare dso_local i64 @gss_acquire_cred(i64*, i64, i32, %struct.TYPE_22__*, i32, i64*, i32*, i32*) #1

declare dso_local i64 @gss_set_cred_option(i64*, i64*, i32, %struct.TYPE_21__*) #1

declare dso_local i64 @gss_init_sec_context(i64*, i64, i64*, i64, i32, i32, i32, i32, %struct.TYPE_21__*, i32*, %struct.TYPE_21__*, i32*, i32*) #1

declare dso_local i32 @gss_release_buffer(i64*, %struct.TYPE_21__*) #1

declare dso_local i64 @gss_accept_sec_context(i64*, i64*, i64, %struct.TYPE_21__*, i32, i64*, i32*, %struct.TYPE_21__*, i32*, i32*, i32*) #1

declare dso_local i32 @gss_delete_sec_context(i64*, i64*, i32) #1

declare dso_local i64 @gss_get_mic(i64*, i64, i32, %struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i64 @gss_verify_mic(i64*, i64, %struct.TYPE_21__*, %struct.TYPE_21__*, i32*) #1

declare dso_local i64 @gss_wrap(i64*, i64, i32, i32, %struct.TYPE_21__*, i32*, %struct.TYPE_21__*) #1

declare dso_local i64 @gss_unwrap(i64*, i64, %struct.TYPE_21__*, %struct.TYPE_21__*, i32*, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @gss_release_cred(i64*, i64*) #1

declare dso_local i32 @gss_release_name(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
