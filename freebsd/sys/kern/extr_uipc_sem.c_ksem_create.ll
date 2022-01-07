; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sem.c_ksem_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sem.c_ksem_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { %struct.filedesc* }
%struct.filedesc = type { i32 }
%struct.ksem = type { i32 }
%struct.file = type { i32 }

@SEM_VALUE_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ACCESSPERMS = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@KS_ANONYMOUS = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i64 0, align 8
@M_KSEM = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@FNV1_32_INIT = common dso_local global i32 0, align 4
@ksem_dict_lock = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@ENFILE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ksem_create error with a ksem\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"ksem_create w/o a ksem\00", align 1
@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@DTYPE_SEM = common dso_local global i32 0, align 4
@ksem_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i8*, i32*, i32, i32, i32, i32)* @ksem_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksem_create(%struct.thread* %0, i8* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.filedesc*, align 8
  %17 = alloca %struct.ksem*, align 8
  %18 = alloca %struct.file*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %25 = load i32, i32* %14, align 4
  %26 = call i32 @AUDIT_ARG_FFLAGS(i32 %25)
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @AUDIT_ARG_MODE(i32 %27)
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @AUDIT_ARG_VALUE(i32 %29)
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @SEM_VALUE_MAX, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %7
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %8, align 4
  br label %259

36:                                               ; preds = %7
  %37 = load %struct.thread*, %struct.thread** %9, align 8
  %38 = getelementptr inbounds %struct.thread, %struct.thread* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.filedesc*, %struct.filedesc** %40, align 8
  store %struct.filedesc* %41, %struct.filedesc** %16, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.filedesc*, %struct.filedesc** %16, align 8
  %44 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %42, %46
  %48 = load i32, i32* @ACCESSPERMS, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %12, align 4
  %50 = load %struct.thread*, %struct.thread** %9, align 8
  %51 = load i32, i32* @O_CLOEXEC, align 4
  %52 = call i32 @falloc(%struct.thread* %50, %struct.file** %18, i32* %24, i32 %51)
  store i32 %52, i32* %23, align 4
  %53 = load i32, i32* %23, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %36
  %56 = load i8*, i8** %10, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @ENOSPC, align 4
  store i32 %59, i32* %23, align 4
  br label %60

60:                                               ; preds = %58, %55
  %61 = load i32, i32* %23, align 4
  store i32 %61, i32* %8, align 4
  br label %259

62:                                               ; preds = %36
  %63 = load %struct.thread*, %struct.thread** %9, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* %24, align 4
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @ksem_create_copyout_semid(%struct.thread* %63, i32* %64, i32 %65, i32 %66)
  store i32 %67, i32* %23, align 4
  %68 = load i32, i32* %23, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %62
  %71 = load %struct.thread*, %struct.thread** %9, align 8
  %72 = load %struct.file*, %struct.file** %18, align 8
  %73 = load i32, i32* %24, align 4
  %74 = call i32 @fdclose(%struct.thread* %71, %struct.file* %72, i32 %73)
  %75 = load %struct.file*, %struct.file** %18, align 8
  %76 = load %struct.thread*, %struct.thread** %9, align 8
  %77 = call i32 @fdrop(%struct.file* %75, %struct.thread* %76)
  %78 = load i32, i32* %23, align 4
  store i32 %78, i32* %8, align 4
  br label %259

79:                                               ; preds = %62
  %80 = load i8*, i8** %10, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %100

82:                                               ; preds = %79
  %83 = load %struct.thread*, %struct.thread** %9, align 8
  %84 = getelementptr inbounds %struct.thread, %struct.thread* %83, i32 0, i32 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %13, align 4
  %88 = call %struct.ksem* @ksem_alloc(%struct.TYPE_8__* %85, i32 %86, i32 %87)
  store %struct.ksem* %88, %struct.ksem** %17, align 8
  %89 = load %struct.ksem*, %struct.ksem** %17, align 8
  %90 = icmp eq %struct.ksem* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %82
  %92 = load i32, i32* @ENOSPC, align 4
  store i32 %92, i32* %23, align 4
  br label %99

93:                                               ; preds = %82
  %94 = load i32, i32* @KS_ANONYMOUS, align 4
  %95 = load %struct.ksem*, %struct.ksem** %17, align 8
  %96 = getelementptr inbounds %struct.ksem, %struct.ksem* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %93, %91
  br label %228

100:                                              ; preds = %79
  %101 = load i64, i64* @MAXPATHLEN, align 8
  %102 = load i32, i32* @M_KSEM, align 4
  %103 = load i32, i32* @M_WAITOK, align 4
  %104 = call i8* @malloc(i64 %101, i32 %102, i32 %103)
  store i8* %104, i8** %19, align 8
  %105 = load %struct.thread*, %struct.thread** %9, align 8
  %106 = getelementptr inbounds %struct.thread, %struct.thread* %105, i32 0, i32 0
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %20, align 8
  %112 = load i8*, i8** %20, align 8
  %113 = call i64 @strcmp(i8* %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %100
  br label %121

116:                                              ; preds = %100
  %117 = load i8*, i8** %19, align 8
  %118 = load i8*, i8** %20, align 8
  %119 = load i64, i64* @MAXPATHLEN, align 8
  %120 = call i64 @strlcpy(i8* %117, i8* %118, i64 %119)
  br label %121

121:                                              ; preds = %116, %115
  %122 = phi i64 [ 0, %115 ], [ %120, %116 ]
  store i64 %122, i64* %21, align 8
  %123 = load i8*, i8** %10, align 8
  %124 = load i8*, i8** %19, align 8
  %125 = load i64, i64* %21, align 8
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  %127 = load i64, i64* @MAXPATHLEN, align 8
  %128 = load i64, i64* %21, align 8
  %129 = sub i64 %127, %128
  %130 = call i32 @copyinstr(i8* %123, i8* %126, i64 %129, i32* null)
  store i32 %130, i32* %23, align 4
  %131 = load i32, i32* %23, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %121
  %134 = load i8*, i8** %19, align 8
  %135 = load i64, i64* %21, align 8
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp ne i32 %138, 47
  br i1 %139, label %140, label %142

140:                                              ; preds = %133
  %141 = load i32, i32* @EINVAL, align 4
  store i32 %141, i32* %23, align 4
  br label %142

142:                                              ; preds = %140, %133, %121
  %143 = load i32, i32* %23, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %142
  %146 = load %struct.thread*, %struct.thread** %9, align 8
  %147 = load %struct.file*, %struct.file** %18, align 8
  %148 = load i32, i32* %24, align 4
  %149 = call i32 @fdclose(%struct.thread* %146, %struct.file* %147, i32 %148)
  %150 = load %struct.file*, %struct.file** %18, align 8
  %151 = load %struct.thread*, %struct.thread** %9, align 8
  %152 = call i32 @fdrop(%struct.file* %150, %struct.thread* %151)
  %153 = load i8*, i8** %19, align 8
  %154 = load i32, i32* @M_KSEM, align 4
  %155 = call i32 @free(i8* %153, i32 %154)
  %156 = load i32, i32* %23, align 4
  store i32 %156, i32* %8, align 4
  br label %259

157:                                              ; preds = %142
  %158 = load i8*, i8** %19, align 8
  %159 = call i32 @AUDIT_ARG_UPATH1_CANON(i8* %158)
  %160 = load i8*, i8** %19, align 8
  %161 = load i32, i32* @FNV1_32_INIT, align 4
  %162 = call i32 @fnv_32_str(i8* %160, i32 %161)
  store i32 %162, i32* %22, align 4
  %163 = call i32 @sx_xlock(i32* @ksem_dict_lock)
  %164 = load i8*, i8** %19, align 8
  %165 = load i32, i32* %22, align 4
  %166 = call %struct.ksem* @ksem_lookup(i8* %164, i32 %165)
  store %struct.ksem* %166, %struct.ksem** %17, align 8
  %167 = load %struct.ksem*, %struct.ksem** %17, align 8
  %168 = icmp eq %struct.ksem* %167, null
  br i1 %168, label %169, label %194

169:                                              ; preds = %157
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* @O_CREAT, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %191

174:                                              ; preds = %169
  %175 = load %struct.thread*, %struct.thread** %9, align 8
  %176 = getelementptr inbounds %struct.thread, %struct.thread* %175, i32 0, i32 0
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %176, align 8
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* %13, align 4
  %180 = call %struct.ksem* @ksem_alloc(%struct.TYPE_8__* %177, i32 %178, i32 %179)
  store %struct.ksem* %180, %struct.ksem** %17, align 8
  %181 = load %struct.ksem*, %struct.ksem** %17, align 8
  %182 = icmp eq %struct.ksem* %181, null
  br i1 %182, label %183, label %185

183:                                              ; preds = %174
  %184 = load i32, i32* @ENFILE, align 4
  store i32 %184, i32* %23, align 4
  br label %190

185:                                              ; preds = %174
  %186 = load i8*, i8** %19, align 8
  %187 = load i32, i32* %22, align 4
  %188 = load %struct.ksem*, %struct.ksem** %17, align 8
  %189 = call i32 @ksem_insert(i8* %186, i32 %187, %struct.ksem* %188)
  store i8* null, i8** %19, align 8
  br label %190

190:                                              ; preds = %185, %183
  br label %193

191:                                              ; preds = %169
  %192 = load i32, i32* @ENOENT, align 4
  store i32 %192, i32* %23, align 4
  br label %193

193:                                              ; preds = %191, %190
  br label %219

194:                                              ; preds = %157
  %195 = load i32, i32* %14, align 4
  %196 = load i32, i32* @O_CREAT, align 4
  %197 = load i32, i32* @O_EXCL, align 4
  %198 = or i32 %196, %197
  %199 = and i32 %195, %198
  %200 = load i32, i32* @O_CREAT, align 4
  %201 = load i32, i32* @O_EXCL, align 4
  %202 = or i32 %200, %201
  %203 = icmp eq i32 %199, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %194
  %205 = load i32, i32* @EEXIST, align 4
  store i32 %205, i32* %23, align 4
  br label %212

206:                                              ; preds = %194
  %207 = load %struct.ksem*, %struct.ksem** %17, align 8
  %208 = load %struct.thread*, %struct.thread** %9, align 8
  %209 = getelementptr inbounds %struct.thread, %struct.thread* %208, i32 0, i32 0
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %209, align 8
  %211 = call i32 @ksem_access(%struct.ksem* %207, %struct.TYPE_8__* %210)
  store i32 %211, i32* %23, align 4
  br label %212

212:                                              ; preds = %206, %204
  %213 = load i32, i32* %23, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = load %struct.ksem*, %struct.ksem** %17, align 8
  %217 = call i32 @ksem_hold(%struct.ksem* %216)
  br label %218

218:                                              ; preds = %215, %212
  br label %219

219:                                              ; preds = %218, %193
  %220 = call i32 @sx_xunlock(i32* @ksem_dict_lock)
  %221 = load i8*, i8** %19, align 8
  %222 = icmp ne i8* %221, null
  br i1 %222, label %223, label %227

223:                                              ; preds = %219
  %224 = load i8*, i8** %19, align 8
  %225 = load i32, i32* @M_KSEM, align 4
  %226 = call i32 @free(i8* %224, i32 %225)
  br label %227

227:                                              ; preds = %223, %219
  br label %228

228:                                              ; preds = %227, %99
  %229 = load i32, i32* %23, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %244

231:                                              ; preds = %228
  %232 = load %struct.ksem*, %struct.ksem** %17, align 8
  %233 = icmp eq %struct.ksem* %232, null
  %234 = zext i1 %233 to i32
  %235 = call i32 @KASSERT(i32 %234, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %236 = load %struct.thread*, %struct.thread** %9, align 8
  %237 = load %struct.file*, %struct.file** %18, align 8
  %238 = load i32, i32* %24, align 4
  %239 = call i32 @fdclose(%struct.thread* %236, %struct.file* %237, i32 %238)
  %240 = load %struct.file*, %struct.file** %18, align 8
  %241 = load %struct.thread*, %struct.thread** %9, align 8
  %242 = call i32 @fdrop(%struct.file* %240, %struct.thread* %241)
  %243 = load i32, i32* %23, align 4
  store i32 %243, i32* %8, align 4
  br label %259

244:                                              ; preds = %228
  %245 = load %struct.ksem*, %struct.ksem** %17, align 8
  %246 = icmp ne %struct.ksem* %245, null
  %247 = zext i1 %246 to i32
  %248 = call i32 @KASSERT(i32 %247, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %249 = load %struct.file*, %struct.file** %18, align 8
  %250 = load i32, i32* @FREAD, align 4
  %251 = load i32, i32* @FWRITE, align 4
  %252 = or i32 %250, %251
  %253 = load i32, i32* @DTYPE_SEM, align 4
  %254 = load %struct.ksem*, %struct.ksem** %17, align 8
  %255 = call i32 @finit(%struct.file* %249, i32 %252, i32 %253, %struct.ksem* %254, i32* @ksem_ops)
  %256 = load %struct.file*, %struct.file** %18, align 8
  %257 = load %struct.thread*, %struct.thread** %9, align 8
  %258 = call i32 @fdrop(%struct.file* %256, %struct.thread* %257)
  store i32 0, i32* %8, align 4
  br label %259

259:                                              ; preds = %244, %231, %145, %70, %60, %34
  %260 = load i32, i32* %8, align 4
  ret i32 %260
}

declare dso_local i32 @AUDIT_ARG_FFLAGS(i32) #1

declare dso_local i32 @AUDIT_ARG_MODE(i32) #1

declare dso_local i32 @AUDIT_ARG_VALUE(i32) #1

declare dso_local i32 @falloc(%struct.thread*, %struct.file**, i32*, i32) #1

declare dso_local i32 @ksem_create_copyout_semid(%struct.thread*, i32*, i32, i32) #1

declare dso_local i32 @fdclose(%struct.thread*, %struct.file*, i32) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local %struct.ksem* @ksem_alloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @copyinstr(i8*, i8*, i64, i32*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @AUDIT_ARG_UPATH1_CANON(i8*) #1

declare dso_local i32 @fnv_32_str(i8*, i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local %struct.ksem* @ksem_lookup(i8*, i32) #1

declare dso_local i32 @ksem_insert(i8*, i32, %struct.ksem*) #1

declare dso_local i32 @ksem_access(%struct.ksem*, %struct.TYPE_8__*) #1

declare dso_local i32 @ksem_hold(%struct.ksem*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @finit(%struct.file*, i32, i32, %struct.ksem*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
