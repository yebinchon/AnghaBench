; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/kgssapi/extr_gsstest.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/kgssapi/extr_gsstest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_stat = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.gsstest_2_args = type { i32, %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i8*, i8* }
%struct.TYPE_17__ = type { i32, i8* }
%struct.gsstest_2_res = type { %struct.TYPE_19__, i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"gsstest_syscall\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: kernel support not present\0A\00", align 1
@GSS_C_NO_CONTEXT = common dso_local global i32 0, align 4
@GSS_C_NO_OID = common dso_local global i32 0, align 4
@ETYPE_DES_CBC_CRC = common dso_local global i32 0, align 4
@ETYPE_ARCFOUR_HMAC_MD5 = common dso_local global i32 0, align 4
@ETYPE_ARCFOUR_HMAC_MD5_56 = common dso_local global i32 0, align 4
@ETYPE_AES256_CTS_HMAC_SHA1_96 = common dso_local global i32 0, align 4
@ETYPE_AES128_CTS_HMAC_SHA1_96 = common dso_local global i32 0, align 4
@ETYPE_DES3_CBC_SHA1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"testing etype %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"nfs@%s\00", align 1
@GSS_C_NT_HOSTBASED_SERVICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"gss_import_name failed\0A\00", align 1
@GSS_C_NO_NAME = common dso_local global i32 0, align 4
@GSS_C_NO_OID_SET = common dso_local global i32 0, align 4
@GSS_C_INITIATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"gss_acquire_cred (client) failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"gss_krb5_set_allowable_enctypes failed\0A\00", align 1
@GSS_C_MUTUAL_FLAG = common dso_local global i32 0, align 4
@GSS_C_CONF_FLAG = common dso_local global i32 0, align 4
@GSS_C_INTEG_FLAG = common dso_local global i32 0, align 4
@GSS_C_SEQUENCE_FLAG = common dso_local global i32 0, align 4
@GSS_C_REPLAY_FLAG = common dso_local global i32 0, align 4
@GSS_C_NO_CHANNEL_BINDINGS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"gss_init_sec_context failed\0A\00", align 1
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@GSS_S_CONTINUE_NEEDED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"gss_accept_sec_context (kernel) failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Hello world\00", align 1
@GSS_C_QOP_DEFAULT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"gss_get_mic failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"kernel gss_verify_mic failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"gss_verify_mic failed\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"gss_wrap failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"kernel gss_unwrap failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"gss_unwrap failed\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@GSS_C_NO_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.module_stat, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gsstest_2_args, align 8
  %10 = alloca %struct.gsstest_2_res, align 4
  %11 = alloca [512 x i8], align 16
  %12 = alloca [8192 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_18__, align 8
  %19 = alloca %struct.TYPE_18__, align 8
  %20 = alloca i32, align 4
  %21 = alloca [6 x i32], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %25 = getelementptr inbounds %struct.module_stat, %struct.module_stat* %6, i32 0, i32 0
  store i32 8, i32* %25, align 4
  %26 = call i32 @modfind(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %2
  %30 = load i32, i32* @stderr, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = call i32 @exit(i32 1) #3
  unreachable

36:                                               ; preds = %2
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @modstat(i32 %37, %struct.module_stat* %6)
  %39 = getelementptr inbounds %struct.module_stat, %struct.module_stat* %6, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @atoi(i8* %44)
  switch i32 %45, label %361 [
    i32 1, label %46
    i32 2, label %49
    i32 3, label %355
    i32 4, label %358
  ]

46:                                               ; preds = %36
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @syscall(i32 %47, i32 1, %struct.gsstest_2_args* null, %struct.gsstest_2_res* null)
  br label %361

49:                                               ; preds = %36
  %50 = load i32, i32* @GSS_C_NO_CONTEXT, align 4
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* @GSS_C_NO_OID, align 4
  store i32 %51, i32* %17, align 4
  %52 = getelementptr inbounds [6 x i32], [6 x i32]* %21, i64 0, i64 0
  %53 = load i32, i32* @ETYPE_DES_CBC_CRC, align 4
  store i32 %53, i32* %52, align 4
  %54 = getelementptr inbounds i32, i32* %52, i64 1
  %55 = load i32, i32* @ETYPE_ARCFOUR_HMAC_MD5, align 4
  store i32 %55, i32* %54, align 4
  %56 = getelementptr inbounds i32, i32* %54, i64 1
  %57 = load i32, i32* @ETYPE_ARCFOUR_HMAC_MD5_56, align 4
  store i32 %57, i32* %56, align 4
  %58 = getelementptr inbounds i32, i32* %56, i64 1
  %59 = load i32, i32* @ETYPE_AES256_CTS_HMAC_SHA1_96, align 4
  store i32 %59, i32* %58, align 4
  %60 = getelementptr inbounds i32, i32* %58, i64 1
  %61 = load i32, i32* @ETYPE_AES128_CTS_HMAC_SHA1_96, align 4
  store i32 %61, i32* %60, align 4
  %62 = getelementptr inbounds i32, i32* %60, i64 1
  %63 = load i32, i32* @ETYPE_DES3_CBC_SHA1, align 4
  store i32 %63, i32* %62, align 4
  store i32 6, i32* %22, align 4
  store i32 0, i32* %24, align 4
  br label %64

64:                                               ; preds = %351, %49
  %65 = load i32, i32* %24, align 4
  %66 = load i32, i32* %22, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %354

68:                                               ; preds = %64
  %69 = load i32, i32* %24, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [6 x i32], [6 x i32]* %21, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = getelementptr inbounds %struct.gsstest_2_args, %struct.gsstest_2_args* %9, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  store i32 8192, i32* %75, align 8
  %76 = getelementptr inbounds [8192 x i8], [8192 x i8]* %12, i64 0, i64 0
  %77 = getelementptr inbounds %struct.gsstest_2_args, %struct.gsstest_2_args* %9, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %80 = call i32 @gethostname(i8* %79, i32 512)
  %81 = getelementptr inbounds [8192 x i8], [8192 x i8]* %12, i64 0, i64 0
  %82 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %83 = call i32 @snprintf(i8* %81, i32 8192, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  %84 = getelementptr inbounds [8192 x i8], [8192 x i8]* %12, i64 0, i64 0
  %85 = call i8* @strlen(i8* %84)
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 1
  store i8* %85, i8** %86, align 8
  %87 = getelementptr inbounds [8192 x i8], [8192 x i8]* %12, i64 0, i64 0
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  store i8* %87, i8** %88, align 8
  %89 = load i32, i32* @GSS_C_NT_HOSTBASED_SERVICE, align 4
  %90 = call i32 @gss_import_name(i32* %14, %struct.TYPE_18__* %18, i32 %89, i32* %20)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @GSS_ERROR(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %68
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @report_error(i32 %96, i32 %97, i32 %98)
  br label %362

100:                                              ; preds = %68
  %101 = load i32, i32* @GSS_C_NO_NAME, align 4
  %102 = load i32, i32* @GSS_C_NO_OID_SET, align 4
  %103 = load i32, i32* @GSS_C_INITIATE, align 4
  %104 = call i32 @gss_acquire_cred(i32* %14, i32 %101, i32 0, i32 %102, i32 %103, i32* %16, i32* null, i32* null)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @GSS_ERROR(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %100
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @report_error(i32 %110, i32 %111, i32 %112)
  br label %362

114:                                              ; preds = %100
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* %24, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [6 x i32], [6 x i32]* %21, i64 0, i64 %117
  %119 = call i32 @gss_krb5_set_allowable_enctypes(i32* %14, i32 %115, i32 1, i32* %118)
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @GSS_ERROR(i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %114
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %14, align 4
  %128 = call i32 @report_error(i32 %125, i32 %126, i32 %127)
  br label %362

129:                                              ; preds = %114
  %130 = getelementptr inbounds %struct.gsstest_2_res, %struct.gsstest_2_res* %10, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 1
  store i32 0, i32* %131, align 4
  %132 = getelementptr inbounds %struct.gsstest_2_res, %struct.gsstest_2_res* %10, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 0
  store i32 0, i32* %133, align 4
  store i32 0, i32* %23, align 4
  br label %134

134:                                              ; preds = %198, %129
  %135 = load i32, i32* %23, align 4
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  br i1 %137, label %138, label %199

138:                                              ; preds = %134
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* %20, align 4
  %141 = load i32, i32* @GSS_C_NO_OID, align 4
  %142 = load i32, i32* @GSS_C_MUTUAL_FLAG, align 4
  %143 = load i32, i32* @GSS_C_CONF_FLAG, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @GSS_C_INTEG_FLAG, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @GSS_C_SEQUENCE_FLAG, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @GSS_C_REPLAY_FLAG, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @GSS_C_NO_CHANNEL_BINDINGS, align 4
  %152 = getelementptr inbounds %struct.gsstest_2_res, %struct.gsstest_2_res* %10, i32 0, i32 0
  %153 = getelementptr inbounds %struct.gsstest_2_args, %struct.gsstest_2_args* %9, i32 0, i32 1
  %154 = call i32 @gss_init_sec_context(i32* %14, i32 %139, i32* %15, i32 %140, i32 %141, i32 %150, i32 0, i32 %151, %struct.TYPE_19__* %152, i32* %17, %struct.TYPE_18__* %153, i32* null, i32* null)
  store i32 %154, i32* %13, align 4
  %155 = load i32, i32* %13, align 4
  %156 = call i32 @GSS_ERROR(i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %138
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* %14, align 4
  %163 = call i32 @report_error(i32 %160, i32 %161, i32 %162)
  br label %362

164:                                              ; preds = %138
  %165 = getelementptr inbounds %struct.gsstest_2_args, %struct.gsstest_2_args* %9, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 1
  %167 = load i8*, i8** %166, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %193

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.gsstest_2_args, %struct.gsstest_2_args* %9, i32 0, i32 0
  store i32 1, i32* %170, align 8
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @syscall(i32 %171, i32 2, %struct.gsstest_2_args* %9, %struct.gsstest_2_res* %10)
  %173 = getelementptr inbounds %struct.gsstest_2_args, %struct.gsstest_2_args* %9, i32 0, i32 1
  %174 = call i32 @gss_release_buffer(i32* %14, %struct.TYPE_18__* %173)
  %175 = getelementptr inbounds %struct.gsstest_2_res, %struct.gsstest_2_res* %10, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @GSS_S_COMPLETE, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %192

179:                                              ; preds = %169
  %180 = getelementptr inbounds %struct.gsstest_2_res, %struct.gsstest_2_res* %10, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @GSS_S_CONTINUE_NEEDED, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %184, label %192

184:                                              ; preds = %179
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  %186 = load i32, i32* %17, align 4
  %187 = getelementptr inbounds %struct.gsstest_2_res, %struct.gsstest_2_res* %10, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = getelementptr inbounds %struct.gsstest_2_res, %struct.gsstest_2_res* %10, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @report_error(i32 %186, i32 %188, i32 %190)
  br label %362

192:                                              ; preds = %179, %169
  br label %193

193:                                              ; preds = %192, %164
  %194 = load i32, i32* %13, align 4
  %195 = load i32, i32* @GSS_S_COMPLETE, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %193
  store i32 1, i32* %23, align 4
  br label %198

198:                                              ; preds = %197, %193
  br label %134

199:                                              ; preds = %134
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %200, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = call i8* @strlen(i8* %202)
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  store i8* %203, i8** %204, align 8
  %205 = load i32, i32* %15, align 4
  %206 = load i32, i32* @GSS_C_QOP_DEFAULT, align 4
  %207 = getelementptr inbounds %struct.gsstest_2_args, %struct.gsstest_2_args* %9, i32 0, i32 1
  %208 = call i32 @gss_get_mic(i32* %14, i32 %205, i32 %206, %struct.TYPE_18__* %19, %struct.TYPE_18__* %207)
  store i32 %208, i32* %13, align 4
  %209 = load i32, i32* %13, align 4
  %210 = call i32 @GSS_ERROR(i32 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %199
  %213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %214 = load i32, i32* %17, align 4
  %215 = load i32, i32* %13, align 4
  %216 = load i32, i32* %14, align 4
  %217 = call i32 @report_error(i32 %214, i32 %215, i32 %216)
  br label %362

218:                                              ; preds = %199
  %219 = getelementptr inbounds %struct.gsstest_2_args, %struct.gsstest_2_args* %9, i32 0, i32 0
  store i32 2, i32* %219, align 8
  %220 = load i32, i32* %8, align 4
  %221 = call i32 @syscall(i32 %220, i32 2, %struct.gsstest_2_args* %9, %struct.gsstest_2_res* %10)
  %222 = getelementptr inbounds %struct.gsstest_2_args, %struct.gsstest_2_args* %9, i32 0, i32 1
  %223 = call i32 @gss_release_buffer(i32* %14, %struct.TYPE_18__* %222)
  %224 = getelementptr inbounds %struct.gsstest_2_res, %struct.gsstest_2_res* %10, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @GSS_ERROR(i32 %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %236

228:                                              ; preds = %218
  %229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  %230 = load i32, i32* %17, align 4
  %231 = getelementptr inbounds %struct.gsstest_2_res, %struct.gsstest_2_res* %10, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = getelementptr inbounds %struct.gsstest_2_res, %struct.gsstest_2_res* %10, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @report_error(i32 %230, i32 %232, i32 %234)
  br label %362

236:                                              ; preds = %218
  %237 = load i32, i32* %15, align 4
  %238 = getelementptr inbounds %struct.gsstest_2_res, %struct.gsstest_2_res* %10, i32 0, i32 0
  %239 = call i32 @gss_verify_mic(i32* %14, i32 %237, %struct.TYPE_18__* %19, %struct.TYPE_19__* %238, i32* null)
  store i32 %239, i32* %13, align 4
  %240 = load i32, i32* %13, align 4
  %241 = call i32 @GSS_ERROR(i32 %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %236
  %244 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %245 = load i32, i32* %17, align 4
  %246 = load i32, i32* %13, align 4
  %247 = load i32, i32* %14, align 4
  %248 = call i32 @report_error(i32 %245, i32 %246, i32 %247)
  br label %362

249:                                              ; preds = %236
  %250 = load i32, i32* %15, align 4
  %251 = load i32, i32* @TRUE, align 4
  %252 = load i32, i32* @GSS_C_QOP_DEFAULT, align 4
  %253 = getelementptr inbounds %struct.gsstest_2_args, %struct.gsstest_2_args* %9, i32 0, i32 1
  %254 = call i32 @gss_wrap(i32* %14, i32 %250, i32 %251, i32 %252, %struct.TYPE_18__* %19, i32* null, %struct.TYPE_18__* %253)
  store i32 %254, i32* %13, align 4
  %255 = load i32, i32* %13, align 4
  %256 = call i32 @GSS_ERROR(i32 %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %249
  %259 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  %260 = load i32, i32* %17, align 4
  %261 = load i32, i32* %13, align 4
  %262 = load i32, i32* %14, align 4
  %263 = call i32 @report_error(i32 %260, i32 %261, i32 %262)
  br label %362

264:                                              ; preds = %249
  %265 = getelementptr inbounds %struct.gsstest_2_args, %struct.gsstest_2_args* %9, i32 0, i32 0
  store i32 3, i32* %265, align 8
  %266 = load i32, i32* %8, align 4
  %267 = call i32 @syscall(i32 %266, i32 2, %struct.gsstest_2_args* %9, %struct.gsstest_2_res* %10)
  %268 = getelementptr inbounds %struct.gsstest_2_args, %struct.gsstest_2_args* %9, i32 0, i32 1
  %269 = call i32 @gss_release_buffer(i32* %14, %struct.TYPE_18__* %268)
  %270 = getelementptr inbounds %struct.gsstest_2_res, %struct.gsstest_2_res* %10, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @GSS_ERROR(i32 %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %282

274:                                              ; preds = %264
  %275 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  %276 = load i32, i32* %17, align 4
  %277 = getelementptr inbounds %struct.gsstest_2_res, %struct.gsstest_2_res* %10, i32 0, i32 2
  %278 = load i32, i32* %277, align 4
  %279 = getelementptr inbounds %struct.gsstest_2_res, %struct.gsstest_2_res* %10, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @report_error(i32 %276, i32 %278, i32 %280)
  br label %362

282:                                              ; preds = %264
  %283 = load i32, i32* %15, align 4
  %284 = getelementptr inbounds %struct.gsstest_2_res, %struct.gsstest_2_res* %10, i32 0, i32 0
  %285 = call i32 @gss_unwrap(i32* %14, i32 %283, %struct.TYPE_19__* %284, %struct.TYPE_18__* %19, i32* null, i32* null)
  store i32 %285, i32* %13, align 4
  %286 = load i32, i32* %13, align 4
  %287 = call i32 @GSS_ERROR(i32 %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %295

289:                                              ; preds = %282
  %290 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  %291 = load i32, i32* %17, align 4
  %292 = load i32, i32* %13, align 4
  %293 = load i32, i32* %14, align 4
  %294 = call i32 @report_error(i32 %291, i32 %292, i32 %293)
  br label %362

295:                                              ; preds = %282
  %296 = call i32 @gss_release_buffer(i32* %14, %struct.TYPE_18__* %19)
  %297 = load i32, i32* %15, align 4
  %298 = load i32, i32* @FALSE, align 4
  %299 = load i32, i32* @GSS_C_QOP_DEFAULT, align 4
  %300 = getelementptr inbounds %struct.gsstest_2_args, %struct.gsstest_2_args* %9, i32 0, i32 1
  %301 = call i32 @gss_wrap(i32* %14, i32 %297, i32 %298, i32 %299, %struct.TYPE_18__* %19, i32* null, %struct.TYPE_18__* %300)
  store i32 %301, i32* %13, align 4
  %302 = load i32, i32* %13, align 4
  %303 = call i32 @GSS_ERROR(i32 %302)
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %311

305:                                              ; preds = %295
  %306 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  %307 = load i32, i32* %17, align 4
  %308 = load i32, i32* %13, align 4
  %309 = load i32, i32* %14, align 4
  %310 = call i32 @report_error(i32 %307, i32 %308, i32 %309)
  br label %362

311:                                              ; preds = %295
  %312 = getelementptr inbounds %struct.gsstest_2_args, %struct.gsstest_2_args* %9, i32 0, i32 0
  store i32 4, i32* %312, align 8
  %313 = load i32, i32* %8, align 4
  %314 = call i32 @syscall(i32 %313, i32 2, %struct.gsstest_2_args* %9, %struct.gsstest_2_res* %10)
  %315 = getelementptr inbounds %struct.gsstest_2_args, %struct.gsstest_2_args* %9, i32 0, i32 1
  %316 = call i32 @gss_release_buffer(i32* %14, %struct.TYPE_18__* %315)
  %317 = getelementptr inbounds %struct.gsstest_2_res, %struct.gsstest_2_res* %10, i32 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @GSS_ERROR(i32 %318)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %329

321:                                              ; preds = %311
  %322 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  %323 = load i32, i32* %17, align 4
  %324 = getelementptr inbounds %struct.gsstest_2_res, %struct.gsstest_2_res* %10, i32 0, i32 2
  %325 = load i32, i32* %324, align 4
  %326 = getelementptr inbounds %struct.gsstest_2_res, %struct.gsstest_2_res* %10, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @report_error(i32 %323, i32 %325, i32 %327)
  br label %362

329:                                              ; preds = %311
  %330 = load i32, i32* %15, align 4
  %331 = getelementptr inbounds %struct.gsstest_2_res, %struct.gsstest_2_res* %10, i32 0, i32 0
  %332 = call i32 @gss_unwrap(i32* %14, i32 %330, %struct.TYPE_19__* %331, %struct.TYPE_18__* %19, i32* null, i32* null)
  store i32 %332, i32* %13, align 4
  %333 = load i32, i32* %13, align 4
  %334 = call i32 @GSS_ERROR(i32 %333)
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %342

336:                                              ; preds = %329
  %337 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  %338 = load i32, i32* %17, align 4
  %339 = load i32, i32* %13, align 4
  %340 = load i32, i32* %14, align 4
  %341 = call i32 @report_error(i32 %338, i32 %339, i32 %340)
  br label %362

342:                                              ; preds = %329
  %343 = call i32 @gss_release_buffer(i32* %14, %struct.TYPE_18__* %19)
  %344 = getelementptr inbounds %struct.gsstest_2_args, %struct.gsstest_2_args* %9, i32 0, i32 0
  store i32 5, i32* %344, align 8
  %345 = load i32, i32* %8, align 4
  %346 = call i32 @syscall(i32 %345, i32 2, %struct.gsstest_2_args* %9, %struct.gsstest_2_res* %10)
  %347 = call i32 @gss_release_name(i32* %14, i32* %20)
  %348 = call i32 @gss_release_cred(i32* %14, i32* %16)
  %349 = load i32, i32* @GSS_C_NO_BUFFER, align 4
  %350 = call i32 @gss_delete_sec_context(i32* %14, i32* %15, i32 %349)
  br label %351

351:                                              ; preds = %342
  %352 = load i32, i32* %24, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %24, align 4
  br label %64

354:                                              ; preds = %64
  br label %361

355:                                              ; preds = %36
  %356 = load i32, i32* %8, align 4
  %357 = call i32 @syscall(i32 %356, i32 3, %struct.gsstest_2_args* null, %struct.gsstest_2_res* null)
  br label %361

358:                                              ; preds = %36
  %359 = load i32, i32* %8, align 4
  %360 = call i32 @syscall(i32 %359, i32 4, %struct.gsstest_2_args* null, %struct.gsstest_2_res* null)
  br label %361

361:                                              ; preds = %36, %358, %355, %354, %46
  store i32 0, i32* %3, align 4
  br label %363

362:                                              ; preds = %336, %321, %305, %289, %274, %258, %243, %228, %212, %184, %158, %123, %108, %94
  store i32 1, i32* %3, align 4
  br label %363

363:                                              ; preds = %362, %361
  %364 = load i32, i32* %3, align 4
  ret i32 %364
}

declare dso_local i32 @modfind(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @modstat(i32, %struct.module_stat*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @syscall(i32, i32, %struct.gsstest_2_args*, %struct.gsstest_2_res*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @gethostname(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i32 @gss_import_name(i32*, %struct.TYPE_18__*, i32, i32*) #1

declare dso_local i32 @GSS_ERROR(i32) #1

declare dso_local i32 @report_error(i32, i32, i32) #1

declare dso_local i32 @gss_acquire_cred(i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @gss_krb5_set_allowable_enctypes(i32*, i32, i32, i32*) #1

declare dso_local i32 @gss_init_sec_context(i32*, i32, i32*, i32, i32, i32, i32, i32, %struct.TYPE_19__*, i32*, %struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i32 @gss_release_buffer(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @gss_get_mic(i32*, i32, i32, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @gss_verify_mic(i32*, i32, %struct.TYPE_18__*, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @gss_wrap(i32*, i32, i32, i32, %struct.TYPE_18__*, i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @gss_unwrap(i32*, i32, %struct.TYPE_19__*, %struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i32 @gss_release_name(i32*, i32*) #1

declare dso_local i32 @gss_release_cred(i32*, i32*) #1

declare dso_local i32 @gss_delete_sec_context(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
