; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/security/cap_test/extr_cap_test_capabilities.c_test_capabilities.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/security/cap_test/extr_cap_test_capabilities.c_test_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PASSED = common dso_local global i32 0, align 4
@__const.test_capabilities.file = private unnamed_addr constant [25 x i8] c"/tmp/cap_test.XXXXXXXXXX\00", align 16
@__const.test_capabilities.dir = private unnamed_addr constant [25 x i8] c"/tmp/cap_test.XXXXXXXXXX\00", align 16
@.str = private unnamed_addr constant [8 x i8] c"mkstemp\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"mkdtemp\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_DIRECTORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"cap_enter\00", align 1
@CAP_READ = common dso_local global i32 0, align 4
@CAP_WRITE = common dso_local global i32 0, align 4
@CAP_SEEK = common dso_local global i32 0, align 4
@CAP_PREAD = common dso_local global i32 0, align 4
@CAP_PWRITE = common dso_local global i32 0, align 4
@CAP_MMAP = common dso_local global i32 0, align 4
@CAP_MMAP_R = common dso_local global i32 0, align 4
@CAP_MMAP_W = common dso_local global i32 0, align 4
@CAP_MMAP_X = common dso_local global i32 0, align 4
@CAP_MMAP_RW = common dso_local global i32 0, align 4
@CAP_MMAP_RX = common dso_local global i32 0, align 4
@CAP_MMAP_WX = common dso_local global i32 0, align 4
@CAP_MMAP_RWX = common dso_local global i32 0, align 4
@CAP_CREATE = common dso_local global i32 0, align 4
@CAP_LOOKUP = common dso_local global i32 0, align 4
@CAP_FSYNC = common dso_local global i32 0, align 4
@CAP_FTRUNCATE = common dso_local global i32 0, align 4
@CAP_FCHFLAGS = common dso_local global i32 0, align 4
@CAP_FCHOWN = common dso_local global i32 0, align 4
@CAP_FCHMOD = common dso_local global i32 0, align 4
@CAP_FCNTL = common dso_local global i32 0, align 4
@CAP_FPATHCONF = common dso_local global i32 0, align 4
@CAP_FSTAT = common dso_local global i32 0, align 4
@CAP_FSTATFS = common dso_local global i32 0, align 4
@CAP_FUTIMES = common dso_local global i32 0, align 4
@CAP_LINKAT = common dso_local global i32 0, align 4
@CAP_MKDIRAT = common dso_local global i32 0, align 4
@CAP_MKFIFOAT = common dso_local global i32 0, align 4
@CAP_MKNODAT = common dso_local global i32 0, align 4
@CAP_SYMLINKAT = common dso_local global i32 0, align 4
@CAP_UNLINKAT = common dso_local global i32 0, align 4
@CAP_RENAMEAT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"/tmp/\00", align 1
@AT_REMOVEDIR = common dso_local global i32 0, align 4
@CAP_ACCEPT = common dso_local global i32 0, align 4
@CAP_ACL_CHECK = common dso_local global i32 0, align 4
@CAP_ACL_DELETE = common dso_local global i32 0, align 4
@CAP_ACL_GET = common dso_local global i32 0, align 4
@CAP_ACL_SET = common dso_local global i32 0, align 4
@CAP_BIND = common dso_local global i32 0, align 4
@CAP_CONNECT = common dso_local global i32 0, align 4
@CAP_EVENT = common dso_local global i32 0, align 4
@CAP_EXTATTR_DELETE = common dso_local global i32 0, align 4
@CAP_EXTATTR_GET = common dso_local global i32 0, align 4
@CAP_EXTATTR_LIST = common dso_local global i32 0, align 4
@CAP_EXTATTR_SET = common dso_local global i32 0, align 4
@CAP_FCHDIR = common dso_local global i32 0, align 4
@CAP_FEXECVE = common dso_local global i32 0, align 4
@CAP_FLOCK = common dso_local global i32 0, align 4
@CAP_FSCK = common dso_local global i32 0, align 4
@CAP_GETPEERNAME = common dso_local global i32 0, align 4
@CAP_GETSOCKNAME = common dso_local global i32 0, align 4
@CAP_GETSOCKOPT = common dso_local global i32 0, align 4
@CAP_IOCTL = common dso_local global i32 0, align 4
@CAP_LISTEN = common dso_local global i32 0, align 4
@CAP_MAC_GET = common dso_local global i32 0, align 4
@CAP_MAC_SET = common dso_local global i32 0, align 4
@CAP_PDGETPID = common dso_local global i32 0, align 4
@CAP_PDKILL = common dso_local global i32 0, align 4
@CAP_PDWAIT = common dso_local global i32 0, align 4
@CAP_PEELOFF = common dso_local global i32 0, align 4
@CAP_POST_EVENT = common dso_local global i32 0, align 4
@CAP_RECV = common dso_local global i32 0, align 4
@CAP_SEM_GETVALUE = common dso_local global i32 0, align 4
@CAP_SEM_POST = common dso_local global i32 0, align 4
@CAP_SEM_WAIT = common dso_local global i32 0, align 4
@CAP_SEND = common dso_local global i32 0, align 4
@CAP_SETSOCKOPT = common dso_local global i32 0, align 4
@CAP_SHUTDOWN = common dso_local global i32 0, align 4
@CAP_TTYHOOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_capabilities() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [25 x i8], align 16
  %6 = alloca [25 x i8], align 16
  %7 = load i32, i32* @PASSED, align 4
  store i32 %7, i32* %4, align 4
  %8 = bitcast [25 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 getelementptr inbounds ([25 x i8], [25 x i8]* @__const.test_capabilities.file, i32 0, i32 0), i64 25, i1 false)
  %9 = bitcast [25 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 getelementptr inbounds ([25 x i8], [25 x i8]* @__const.test_capabilities.dir, i32 0, i32 0), i64 25, i1 false)
  %10 = getelementptr inbounds [25 x i8], [25 x i8]* %5, i64 0, i64 0
  %11 = call i32 @mkstemp(i8* %10)
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = call i32 @err(i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %0
  %17 = getelementptr inbounds [25 x i8], [25 x i8]* %6, i64 0, i64 0
  %18 = call i32* @mkdtemp(i8* %17)
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = getelementptr inbounds [25 x i8], [25 x i8]* %5, i64 0, i64 0
  %22 = call i32 @unlink(i8* %21)
  %23 = call i32 @KEEP_ERRNO(i32 %22)
  %24 = call i32 @err(i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %20, %16
  %26 = getelementptr inbounds [25 x i8], [25 x i8]* %6, i64 0, i64 0
  %27 = load i32, i32* @O_RDONLY, align 4
  %28 = load i32, i32* @O_DIRECTORY, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @open(i8* %26, i32 %29)
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = getelementptr inbounds [25 x i8], [25 x i8]* %5, i64 0, i64 0
  %35 = call i32 @unlink(i8* %34)
  %36 = call i32 @KEEP_ERRNO(i32 %35)
  %37 = getelementptr inbounds [25 x i8], [25 x i8]* %6, i64 0, i64 0
  %38 = call i32 @rmdir(i8* %37)
  %39 = call i32 @KEEP_ERRNO(i32 %38)
  %40 = call i32 @err(i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %33, %25
  %42 = load i32, i32* @O_RDONLY, align 4
  %43 = load i32, i32* @O_DIRECTORY, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @open(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = getelementptr inbounds [25 x i8], [25 x i8]* %5, i64 0, i64 0
  %50 = call i32 @unlink(i8* %49)
  %51 = call i32 @KEEP_ERRNO(i32 %50)
  %52 = getelementptr inbounds [25 x i8], [25 x i8]* %6, i64 0, i64 0
  %53 = call i32 @rmdir(i8* %52)
  %54 = call i32 @KEEP_ERRNO(i32 %53)
  %55 = call i32 @err(i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %48, %41
  %57 = call i32 (...) @cap_enter()
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = getelementptr inbounds [25 x i8], [25 x i8]* %5, i64 0, i64 0
  %61 = call i32 @unlink(i8* %60)
  %62 = call i32 @KEEP_ERRNO(i32 %61)
  %63 = getelementptr inbounds [25 x i8], [25 x i8]* %6, i64 0, i64 0
  %64 = call i32 @rmdir(i8* %63)
  %65 = call i32 @KEEP_ERRNO(i32 %64)
  %66 = call i32 @err(i32 -1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %67

67:                                               ; preds = %59, %56
  %68 = load i32, i32* @CAP_READ, align 4
  %69 = call i32 @TRY(i32 %68)
  %70 = load i32, i32* @CAP_WRITE, align 4
  %71 = call i32 @TRY(i32 %70)
  %72 = load i32, i32* @CAP_SEEK, align 4
  %73 = call i32 @TRY(i32 %72)
  %74 = load i32, i32* @CAP_PREAD, align 4
  %75 = call i32 @TRY(i32 %74)
  %76 = load i32, i32* @CAP_PWRITE, align 4
  %77 = call i32 @TRY(i32 %76)
  %78 = load i32, i32* @CAP_READ, align 4
  %79 = load i32, i32* @CAP_WRITE, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @TRY(i32 %80)
  %82 = load i32, i32* @CAP_PREAD, align 4
  %83 = load i32, i32* @CAP_PWRITE, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @TRY(i32 %84)
  %86 = load i32, i32* @CAP_MMAP, align 4
  %87 = call i32 @TRY(i32 %86)
  %88 = load i32, i32* @CAP_MMAP_R, align 4
  %89 = call i32 @TRY(i32 %88)
  %90 = load i32, i32* @CAP_MMAP_W, align 4
  %91 = call i32 @TRY(i32 %90)
  %92 = load i32, i32* @CAP_MMAP_X, align 4
  %93 = call i32 @TRY(i32 %92)
  %94 = load i32, i32* @CAP_MMAP_RW, align 4
  %95 = call i32 @TRY(i32 %94)
  %96 = load i32, i32* @CAP_MMAP_RX, align 4
  %97 = call i32 @TRY(i32 %96)
  %98 = load i32, i32* @CAP_MMAP_WX, align 4
  %99 = call i32 @TRY(i32 %98)
  %100 = load i32, i32* @CAP_MMAP_RWX, align 4
  %101 = call i32 @TRY(i32 %100)
  %102 = load i32, i32* @CAP_CREATE, align 4
  %103 = load i32, i32* @CAP_READ, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @CAP_LOOKUP, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @TRY(i32 %106)
  %108 = load i32, i32* @CAP_CREATE, align 4
  %109 = load i32, i32* @CAP_WRITE, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @CAP_LOOKUP, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @TRY(i32 %112)
  %114 = load i32, i32* @CAP_CREATE, align 4
  %115 = load i32, i32* @CAP_READ, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @CAP_WRITE, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @CAP_LOOKUP, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @TRY(i32 %120)
  %122 = load i32, i32* @CAP_FSYNC, align 4
  %123 = call i32 @TRY(i32 %122)
  %124 = load i32, i32* @CAP_FSYNC, align 4
  %125 = load i32, i32* @CAP_READ, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @CAP_LOOKUP, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @TRY(i32 %128)
  %130 = load i32, i32* @CAP_FSYNC, align 4
  %131 = load i32, i32* @CAP_WRITE, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @CAP_LOOKUP, align 4
  %134 = or i32 %132, %133
  %135 = call i32 @TRY(i32 %134)
  %136 = load i32, i32* @CAP_FSYNC, align 4
  %137 = load i32, i32* @CAP_READ, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @CAP_WRITE, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @CAP_LOOKUP, align 4
  %142 = or i32 %140, %141
  %143 = call i32 @TRY(i32 %142)
  %144 = load i32, i32* @CAP_FTRUNCATE, align 4
  %145 = call i32 @TRY(i32 %144)
  %146 = load i32, i32* @CAP_FTRUNCATE, align 4
  %147 = load i32, i32* @CAP_READ, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @CAP_LOOKUP, align 4
  %150 = or i32 %148, %149
  %151 = call i32 @TRY(i32 %150)
  %152 = load i32, i32* @CAP_FTRUNCATE, align 4
  %153 = load i32, i32* @CAP_WRITE, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @CAP_LOOKUP, align 4
  %156 = or i32 %154, %155
  %157 = call i32 @TRY(i32 %156)
  %158 = load i32, i32* @CAP_FTRUNCATE, align 4
  %159 = load i32, i32* @CAP_READ, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @CAP_WRITE, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @CAP_LOOKUP, align 4
  %164 = or i32 %162, %163
  %165 = call i32 @TRY(i32 %164)
  %166 = load i32, i32* @CAP_FCHFLAGS, align 4
  %167 = call i32 @TRY(i32 %166)
  %168 = load i32, i32* @CAP_FCHOWN, align 4
  %169 = call i32 @TRY(i32 %168)
  %170 = load i32, i32* @CAP_FCHOWN, align 4
  %171 = load i32, i32* @CAP_LOOKUP, align 4
  %172 = or i32 %170, %171
  %173 = call i32 @TRY(i32 %172)
  %174 = load i32, i32* @CAP_FCHMOD, align 4
  %175 = load i32, i32* @CAP_LOOKUP, align 4
  %176 = or i32 %174, %175
  %177 = call i32 @TRY(i32 %176)
  %178 = load i32, i32* @CAP_FCNTL, align 4
  %179 = call i32 @TRY(i32 %178)
  %180 = load i32, i32* @CAP_FPATHCONF, align 4
  %181 = call i32 @TRY(i32 %180)
  %182 = load i32, i32* @CAP_FSTAT, align 4
  %183 = load i32, i32* @CAP_LOOKUP, align 4
  %184 = or i32 %182, %183
  %185 = call i32 @TRY(i32 %184)
  %186 = load i32, i32* @CAP_FSTATFS, align 4
  %187 = call i32 @TRY(i32 %186)
  %188 = load i32, i32* @CAP_FUTIMES, align 4
  %189 = load i32, i32* @CAP_LOOKUP, align 4
  %190 = or i32 %188, %189
  %191 = call i32 @TRY(i32 %190)
  %192 = load i32, i32* @CAP_LINKAT, align 4
  %193 = load i32, i32* @CAP_LOOKUP, align 4
  %194 = or i32 %192, %193
  %195 = call i32 @TRY(i32 %194)
  %196 = load i32, i32* @CAP_MKDIRAT, align 4
  %197 = load i32, i32* @CAP_LOOKUP, align 4
  %198 = or i32 %196, %197
  %199 = call i32 @TRY(i32 %198)
  %200 = load i32, i32* @CAP_MKFIFOAT, align 4
  %201 = load i32, i32* @CAP_LOOKUP, align 4
  %202 = or i32 %200, %201
  %203 = call i32 @TRY(i32 %202)
  %204 = load i32, i32* @CAP_MKNODAT, align 4
  %205 = load i32, i32* @CAP_LOOKUP, align 4
  %206 = or i32 %204, %205
  %207 = call i32 @TRY(i32 %206)
  %208 = load i32, i32* @CAP_SYMLINKAT, align 4
  %209 = load i32, i32* @CAP_LOOKUP, align 4
  %210 = or i32 %208, %209
  %211 = call i32 @TRY(i32 %210)
  %212 = load i32, i32* @CAP_UNLINKAT, align 4
  %213 = load i32, i32* @CAP_LOOKUP, align 4
  %214 = or i32 %212, %213
  %215 = call i32 @TRY(i32 %214)
  %216 = load i32, i32* @CAP_RENAMEAT, align 4
  %217 = load i32, i32* @CAP_UNLINKAT, align 4
  %218 = or i32 %216, %217
  %219 = load i32, i32* @CAP_LOOKUP, align 4
  %220 = or i32 %218, %219
  %221 = call i32 @TRY(i32 %220)
  %222 = load i32, i32* %3, align 4
  %223 = getelementptr inbounds [25 x i8], [25 x i8]* %5, i64 0, i64 0
  %224 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %223, i64 %225
  %227 = call i32 @unlinkat(i32 %222, i8* %226, i32 0)
  %228 = load i32, i32* %3, align 4
  %229 = getelementptr inbounds [25 x i8], [25 x i8]* %6, i64 0, i64 0
  %230 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %229, i64 %231
  %233 = load i32, i32* @AT_REMOVEDIR, align 4
  %234 = call i32 @unlinkat(i32 %228, i8* %232, i32 %233)
  %235 = load i32, i32* %4, align 4
  ret i32 %235
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mkstemp(i8*) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32* @mkdtemp(i8*) #2

declare dso_local i32 @KEEP_ERRNO(i32) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @rmdir(i8*) #2

declare dso_local i32 @cap_enter(...) #2

declare dso_local i32 @TRY(i32) #2

declare dso_local i32 @unlinkat(i32, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
