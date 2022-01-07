; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_pipe.c_audit_pipe_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_pipe.c_audit_pipe_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.auditpipe_ioctl_preselect = type { i32, i32 }
%struct.audit_pipe = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32 }

@AUDIT_PIPE_NBIO = common dso_local global i32 0, align 4
@AUDIT_PIPE_ASYNC = common dso_local global i32 0, align 4
@AUDIT_PIPE_QLIMIT_MIN = common dso_local global i32 0, align 4
@AUDIT_PIPE_QLIMIT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@MAXAUDITDATA = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @audit_pipe_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audit_pipe_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.auditpipe_ioctl_preselect*, align 8
  %13 = alloca %struct.audit_pipe*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %18 = bitcast %struct.audit_pipe** %13 to i8**
  %19 = call i32 @devfs_get_cdevpriv(i8** %18)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %15, align 4
  store i32 %23, i32* %6, align 4
  br label %285

24:                                               ; preds = %5
  %25 = load i32, i32* %8, align 4
  switch i32 %25, label %281 [
    i32 130, label %26
    i32 129, label %49
    i32 132, label %63
    i32 128, label %86
    i32 131, label %93
    i32 145, label %99
    i32 144, label %105
    i32 133, label %111
    i32 142, label %132
    i32 143, label %136
    i32 148, label %140
    i32 136, label %151
    i32 146, label %162
    i32 134, label %173
    i32 149, label %184
    i32 137, label %194
    i32 155, label %205
    i32 153, label %212
    i32 147, label %215
    i32 135, label %225
    i32 154, label %241
    i32 150, label %256
    i32 151, label %260
    i32 141, label %266
    i32 152, label %272
    i32 140, label %278
  ]

26:                                               ; preds = %24
  %27 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %28 = call i32 @AUDIT_PIPE_LOCK(%struct.audit_pipe* %27)
  %29 = load i64, i64* %9, align 8
  %30 = inttoptr i64 %29 to i32*
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load i32, i32* @AUDIT_PIPE_NBIO, align 4
  %35 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %36 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %35, i32 0, i32 11
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %46

39:                                               ; preds = %26
  %40 = load i32, i32* @AUDIT_PIPE_NBIO, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %43 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %42, i32 0, i32 11
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %39, %33
  %47 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %48 = call i32 @AUDIT_PIPE_UNLOCK(%struct.audit_pipe* %47)
  store i32 0, i32* %15, align 4
  br label %283

49:                                               ; preds = %24
  %50 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %51 = call i32 @AUDIT_PIPE_LOCK(%struct.audit_pipe* %50)
  %52 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %53 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %56 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %54, %57
  %59 = load i64, i64* %9, align 8
  %60 = inttoptr i64 %59 to i32*
  store i32 %58, i32* %60, align 4
  %61 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %62 = call i32 @AUDIT_PIPE_UNLOCK(%struct.audit_pipe* %61)
  store i32 0, i32* %15, align 4
  br label %283

63:                                               ; preds = %24
  %64 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %65 = call i32 @AUDIT_PIPE_LOCK(%struct.audit_pipe* %64)
  %66 = load i64, i64* %9, align 8
  %67 = inttoptr i64 %66 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load i32, i32* @AUDIT_PIPE_ASYNC, align 4
  %72 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %73 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %72, i32 0, i32 11
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %83

76:                                               ; preds = %63
  %77 = load i32, i32* @AUDIT_PIPE_ASYNC, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %80 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %79, i32 0, i32 11
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %76, %70
  %84 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %85 = call i32 @AUDIT_PIPE_UNLOCK(%struct.audit_pipe* %84)
  store i32 0, i32* %15, align 4
  br label %283

86:                                               ; preds = %24
  %87 = load i64, i64* %9, align 8
  %88 = inttoptr i64 %87 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %91 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %90, i32 0, i32 10
  %92 = call i32 @fsetown(i32 %89, i32* %91)
  store i32 %92, i32* %15, align 4
  br label %283

93:                                               ; preds = %24
  %94 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %95 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %94, i32 0, i32 10
  %96 = call i32 @fgetown(i32* %95)
  %97 = load i64, i64* %9, align 8
  %98 = inttoptr i64 %97 to i32*
  store i32 %96, i32* %98, align 4
  store i32 0, i32* %15, align 4
  br label %283

99:                                               ; preds = %24
  %100 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %101 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %100, i32 0, i32 9
  %102 = load i32, i32* %101, align 4
  %103 = load i64, i64* %9, align 8
  %104 = inttoptr i64 %103 to i32*
  store i32 %102, i32* %104, align 4
  store i32 0, i32* %15, align 4
  br label %283

105:                                              ; preds = %24
  %106 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %107 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 8
  %109 = load i64, i64* %9, align 8
  %110 = inttoptr i64 %109 to i32*
  store i32 %108, i32* %110, align 4
  store i32 0, i32* %15, align 4
  br label %283

111:                                              ; preds = %24
  %112 = load i64, i64* %9, align 8
  %113 = inttoptr i64 %112 to i32*
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @AUDIT_PIPE_QLIMIT_MIN, align 4
  %116 = icmp sge i32 %114, %115
  br i1 %116, label %117, label %129

117:                                              ; preds = %111
  %118 = load i64, i64* %9, align 8
  %119 = inttoptr i64 %118 to i32*
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @AUDIT_PIPE_QLIMIT_MAX, align 4
  %122 = icmp sle i32 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %117
  %124 = load i64, i64* %9, align 8
  %125 = inttoptr i64 %124 to i32*
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %128 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %127, i32 0, i32 8
  store i32 %126, i32* %128, align 8
  store i32 0, i32* %15, align 4
  br label %131

129:                                              ; preds = %117, %111
  %130 = load i32, i32* @EINVAL, align 4
  store i32 %130, i32* %15, align 4
  br label %131

131:                                              ; preds = %129, %123
  br label %283

132:                                              ; preds = %24
  %133 = load i32, i32* @AUDIT_PIPE_QLIMIT_MIN, align 4
  %134 = load i64, i64* %9, align 8
  %135 = inttoptr i64 %134 to i32*
  store i32 %133, i32* %135, align 4
  store i32 0, i32* %15, align 4
  br label %283

136:                                              ; preds = %24
  %137 = load i32, i32* @AUDIT_PIPE_QLIMIT_MAX, align 4
  %138 = load i64, i64* %9, align 8
  %139 = inttoptr i64 %138 to i32*
  store i32 %137, i32* %139, align 4
  store i32 0, i32* %15, align 4
  br label %283

140:                                              ; preds = %24
  %141 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %142 = call i32 @AUDIT_PIPE_LOCK(%struct.audit_pipe* %141)
  %143 = load i64, i64* %9, align 8
  %144 = inttoptr i64 %143 to i8**
  store i8** %144, i8*** %14, align 8
  %145 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %146 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %145, i32 0, i32 7
  %147 = load i8*, i8** %146, align 8
  %148 = load i8**, i8*** %14, align 8
  store i8* %147, i8** %148, align 8
  %149 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %150 = call i32 @AUDIT_PIPE_UNLOCK(%struct.audit_pipe* %149)
  store i32 0, i32* %15, align 4
  br label %283

151:                                              ; preds = %24
  %152 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %153 = call i32 @AUDIT_PIPE_LOCK(%struct.audit_pipe* %152)
  %154 = load i64, i64* %9, align 8
  %155 = inttoptr i64 %154 to i8**
  store i8** %155, i8*** %14, align 8
  %156 = load i8**, i8*** %14, align 8
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %159 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %158, i32 0, i32 7
  store i8* %157, i8** %159, align 8
  %160 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %161 = call i32 @AUDIT_PIPE_UNLOCK(%struct.audit_pipe* %160)
  store i32 0, i32* %15, align 4
  br label %283

162:                                              ; preds = %24
  %163 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %164 = call i32 @AUDIT_PIPE_LOCK(%struct.audit_pipe* %163)
  %165 = load i64, i64* %9, align 8
  %166 = inttoptr i64 %165 to i8**
  store i8** %166, i8*** %14, align 8
  %167 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %168 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %167, i32 0, i32 6
  %169 = load i8*, i8** %168, align 8
  %170 = load i8**, i8*** %14, align 8
  store i8* %169, i8** %170, align 8
  %171 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %172 = call i32 @AUDIT_PIPE_UNLOCK(%struct.audit_pipe* %171)
  store i32 0, i32* %15, align 4
  br label %283

173:                                              ; preds = %24
  %174 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %175 = call i32 @AUDIT_PIPE_LOCK(%struct.audit_pipe* %174)
  %176 = load i64, i64* %9, align 8
  %177 = inttoptr i64 %176 to i8**
  store i8** %177, i8*** %14, align 8
  %178 = load i8**, i8*** %14, align 8
  %179 = load i8*, i8** %178, align 8
  %180 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %181 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %180, i32 0, i32 6
  store i8* %179, i8** %181, align 8
  %182 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %183 = call i32 @AUDIT_PIPE_UNLOCK(%struct.audit_pipe* %182)
  store i32 0, i32* %15, align 4
  br label %283

184:                                              ; preds = %24
  %185 = load i64, i64* %9, align 8
  %186 = inttoptr i64 %185 to %struct.auditpipe_ioctl_preselect*
  store %struct.auditpipe_ioctl_preselect* %186, %struct.auditpipe_ioctl_preselect** %12, align 8
  %187 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %188 = load %struct.auditpipe_ioctl_preselect*, %struct.auditpipe_ioctl_preselect** %12, align 8
  %189 = getelementptr inbounds %struct.auditpipe_ioctl_preselect, %struct.auditpipe_ioctl_preselect* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.auditpipe_ioctl_preselect*, %struct.auditpipe_ioctl_preselect** %12, align 8
  %192 = getelementptr inbounds %struct.auditpipe_ioctl_preselect, %struct.auditpipe_ioctl_preselect* %191, i32 0, i32 0
  %193 = call i32 @audit_pipe_preselect_get(%struct.audit_pipe* %187, i32 %190, i32* %192)
  store i32 %193, i32* %15, align 4
  br label %283

194:                                              ; preds = %24
  %195 = load i64, i64* %9, align 8
  %196 = inttoptr i64 %195 to %struct.auditpipe_ioctl_preselect*
  store %struct.auditpipe_ioctl_preselect* %196, %struct.auditpipe_ioctl_preselect** %12, align 8
  %197 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %198 = load %struct.auditpipe_ioctl_preselect*, %struct.auditpipe_ioctl_preselect** %12, align 8
  %199 = getelementptr inbounds %struct.auditpipe_ioctl_preselect, %struct.auditpipe_ioctl_preselect* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.auditpipe_ioctl_preselect*, %struct.auditpipe_ioctl_preselect** %12, align 8
  %202 = getelementptr inbounds %struct.auditpipe_ioctl_preselect, %struct.auditpipe_ioctl_preselect* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @audit_pipe_preselect_set(%struct.audit_pipe* %197, i32 %200, i32 %203)
  store i32 0, i32* %15, align 4
  br label %283

205:                                              ; preds = %24
  %206 = load i64, i64* %9, align 8
  %207 = inttoptr i64 %206 to i32*
  %208 = load i32, i32* %207, align 4
  store i32 %208, i32* %17, align 4
  %209 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %210 = load i32, i32* %17, align 4
  %211 = call i32 @audit_pipe_preselect_delete(%struct.audit_pipe* %209, i32 %210)
  store i32 %211, i32* %15, align 4
  br label %283

212:                                              ; preds = %24
  %213 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %214 = call i32 @audit_pipe_preselect_flush(%struct.audit_pipe* %213)
  store i32 0, i32* %15, align 4
  br label %283

215:                                              ; preds = %24
  %216 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %217 = call i32 @AUDIT_PIPE_LOCK(%struct.audit_pipe* %216)
  %218 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %219 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = load i64, i64* %9, align 8
  %222 = inttoptr i64 %221 to i32*
  store i32 %220, i32* %222, align 4
  %223 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %224 = call i32 @AUDIT_PIPE_UNLOCK(%struct.audit_pipe* %223)
  store i32 0, i32* %15, align 4
  br label %283

225:                                              ; preds = %24
  %226 = load i64, i64* %9, align 8
  %227 = inttoptr i64 %226 to i32*
  %228 = load i32, i32* %227, align 4
  store i32 %228, i32* %16, align 4
  %229 = load i32, i32* %16, align 4
  switch i32 %229, label %238 [
    i32 138, label %230
    i32 139, label %230
  ]

230:                                              ; preds = %225, %225
  %231 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %232 = call i32 @AUDIT_PIPE_LOCK(%struct.audit_pipe* %231)
  %233 = load i32, i32* %16, align 4
  %234 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %235 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %234, i32 0, i32 2
  store i32 %233, i32* %235, align 8
  %236 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %237 = call i32 @AUDIT_PIPE_UNLOCK(%struct.audit_pipe* %236)
  store i32 0, i32* %15, align 4
  br label %240

238:                                              ; preds = %225
  %239 = load i32, i32* @EINVAL, align 4
  store i32 %239, i32* %15, align 4
  br label %240

240:                                              ; preds = %238, %230
  br label %283

241:                                              ; preds = %24
  %242 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %243 = call i32 @AUDIT_PIPE_SX_XLOCK_SIG(%struct.audit_pipe* %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %241
  %246 = load i32, i32* @EINTR, align 4
  store i32 %246, i32* %6, align 4
  br label %285

247:                                              ; preds = %241
  %248 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %249 = call i32 @AUDIT_PIPE_LOCK(%struct.audit_pipe* %248)
  %250 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %251 = call i32 @audit_pipe_flush(%struct.audit_pipe* %250)
  %252 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %253 = call i32 @AUDIT_PIPE_UNLOCK(%struct.audit_pipe* %252)
  %254 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %255 = call i32 @AUDIT_PIPE_SX_XUNLOCK(%struct.audit_pipe* %254)
  store i32 0, i32* %15, align 4
  br label %283

256:                                              ; preds = %24
  %257 = load i32, i32* @MAXAUDITDATA, align 4
  %258 = load i64, i64* %9, align 8
  %259 = inttoptr i64 %258 to i32*
  store i32 %257, i32* %259, align 4
  store i32 0, i32* %15, align 4
  br label %283

260:                                              ; preds = %24
  %261 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %262 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %261, i32 0, i32 5
  %263 = load i32, i32* %262, align 4
  %264 = load i64, i64* %9, align 8
  %265 = inttoptr i64 %264 to i32*
  store i32 %263, i32* %265, align 4
  store i32 0, i32* %15, align 4
  br label %283

266:                                              ; preds = %24
  %267 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %268 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 8
  %270 = load i64, i64* %9, align 8
  %271 = inttoptr i64 %270 to i32*
  store i32 %269, i32* %271, align 4
  store i32 0, i32* %15, align 4
  br label %283

272:                                              ; preds = %24
  %273 = load %struct.audit_pipe*, %struct.audit_pipe** %13, align 8
  %274 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  %276 = load i64, i64* %9, align 8
  %277 = inttoptr i64 %276 to i32*
  store i32 %275, i32* %277, align 4
  store i32 0, i32* %15, align 4
  br label %283

278:                                              ; preds = %24
  %279 = load i64, i64* %9, align 8
  %280 = inttoptr i64 %279 to i32*
  store i32 0, i32* %280, align 4
  store i32 0, i32* %15, align 4
  br label %283

281:                                              ; preds = %24
  %282 = load i32, i32* @ENOTTY, align 4
  store i32 %282, i32* %15, align 4
  br label %283

283:                                              ; preds = %281, %278, %272, %266, %260, %256, %247, %240, %215, %212, %205, %194, %184, %173, %162, %151, %140, %136, %132, %131, %105, %99, %93, %86, %83, %49, %46
  %284 = load i32, i32* %15, align 4
  store i32 %284, i32* %6, align 4
  br label %285

285:                                              ; preds = %283, %245, %22
  %286 = load i32, i32* %6, align 4
  ret i32 %286
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @AUDIT_PIPE_LOCK(%struct.audit_pipe*) #1

declare dso_local i32 @AUDIT_PIPE_UNLOCK(%struct.audit_pipe*) #1

declare dso_local i32 @fsetown(i32, i32*) #1

declare dso_local i32 @fgetown(i32*) #1

declare dso_local i32 @audit_pipe_preselect_get(%struct.audit_pipe*, i32, i32*) #1

declare dso_local i32 @audit_pipe_preselect_set(%struct.audit_pipe*, i32, i32) #1

declare dso_local i32 @audit_pipe_preselect_delete(%struct.audit_pipe*, i32) #1

declare dso_local i32 @audit_pipe_preselect_flush(%struct.audit_pipe*) #1

declare dso_local i32 @AUDIT_PIPE_SX_XLOCK_SIG(%struct.audit_pipe*) #1

declare dso_local i32 @audit_pipe_flush(%struct.audit_pipe*) #1

declare dso_local i32 @AUDIT_PIPE_SX_XUNLOCK(%struct.audit_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
