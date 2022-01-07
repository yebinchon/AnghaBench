; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/nfsstat/extr_nfsstat.c_exp_sidewaysintpr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/nfsstat/extr_nfsstat.c_exp_sidewaysintpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsstatsv1 = type { i8* }
%struct.timespec = type { x86_fp80, i64, [8 x i8] }

@NFSSTATS_V1 = common dso_local global i8* null, align 8
@NFSSVC_GETSTATS = common dso_local global i32 0, align 4
@NFSSVC_NEWSTRUCT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Can't get stats\00", align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"%s %6ju %6ju %6ju %6ju %6ju %6ju %6ju %6ju\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Client:\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rpccnt = common dso_local global i32* null, align 8
@NFSPROC_GETATTR = common dso_local global i64 0, align 8
@NFSPROC_LOOKUP = common dso_local global i64 0, align 8
@NFSPROC_READLINK = common dso_local global i64 0, align 8
@NFSPROC_READ = common dso_local global i64 0, align 8
@NFSPROC_WRITE = common dso_local global i64 0, align 8
@NFSPROC_RENAME = common dso_local global i64 0, align 8
@NFSPROC_ACCESS = common dso_local global i64 0, align 8
@NFSPROC_READDIR = common dso_local global i64 0, align 8
@NFSPROC_READDIRPLUS = common dso_local global i64 0, align 8
@widemode = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c" %s %s %s %s %s %s\00", align 1
@attrcache_hits = common dso_local global i32 0, align 4
@attrcache_misses = common dso_local global i32 0, align 4
@lookupcache_hits = common dso_local global i32 0, align 4
@lookupcache_misses = common dso_local global i32 0, align 4
@biocache_reads = common dso_local global i32 0, align 4
@read_bios = common dso_local global i32 0, align 4
@biocache_writes = common dso_local global i32 0, align 4
@write_bios = common dso_local global i32 0, align 4
@accesscache_hits = common dso_local global i32 0, align 4
@accesscache_misses = common dso_local global i32 0, align 4
@biocache_readdirs = common dso_local global i32 0, align 4
@readdir_bios = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@NUM_STAT_TYPES = common dso_local global i32 0, align 4
@STAT_TYPE_COMMIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"%2.0Lf %7.2Lf \00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"%5.2Lf %5.0Lf %7.2Lf \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%5.2Lf \00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"%5.2Lf %5.0Lf %7.2Lf %5.2Lf %3ju %3.0Lf\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Server:\00", align 1
@srvrpccnt = common dso_local global i32* null, align 8
@NFSV4OP_GETATTR = common dso_local global i64 0, align 8
@NFSV4OP_LOOKUP = common dso_local global i64 0, align 8
@NFSV4OP_READLINK = common dso_local global i64 0, align 8
@NFSV4OP_READ = common dso_local global i64 0, align 8
@NFSV4OP_WRITE = common dso_local global i64 0, align 8
@NFSV4OP_RENAME = common dso_local global i64 0, align 8
@NFSV4OP_ACCESS = common dso_local global i64 0, align 8
@NFSV4OP_READDIR = common dso_local global i64 0, align 8
@NFSV4OP_READDIRPLUS = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @exp_sidewaysintpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exp_sidewaysintpr(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfsstatsv1, align 8
  %10 = alloca %struct.nfsstatsv1, align 8
  %11 = alloca %struct.nfsstatsv1*, align 8
  %12 = alloca %struct.nfsstatsv1, align 8
  %13 = alloca %struct.nfsstatsv1, align 8
  %14 = alloca %struct.timespec, align 16
  %15 = alloca %struct.timespec, align 16
  %16 = alloca i32, align 4
  %17 = alloca x86_fp80, align 16
  %18 = alloca x86_fp80, align 16
  %19 = alloca x86_fp80, align 16
  %20 = alloca x86_fp80, align 16
  %21 = alloca x86_fp80, align 16
  %22 = alloca x86_fp80, align 16
  %23 = alloca x86_fp80, align 16
  %24 = alloca i32, align 4
  %25 = alloca x86_fp80, align 16
  %26 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %16, align 4
  store %struct.nfsstatsv1* %10, %struct.nfsstatsv1** %11, align 8
  %27 = load i8*, i8** @NFSSTATS_V1, align 8
  %28 = load %struct.nfsstatsv1*, %struct.nfsstatsv1** %11, align 8
  %29 = getelementptr inbounds %struct.nfsstatsv1, %struct.nfsstatsv1* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* @NFSSVC_GETSTATS, align 4
  %31 = load i32, i32* @NFSSVC_NEWSTRUCT, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.nfsstatsv1*, %struct.nfsstatsv1** %11, align 8
  %34 = call i64 @nfssvc(i32 %32, %struct.nfsstatsv1* %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %4
  %39 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %40 = call i32 @clock_gettime(i32 %39, %struct.timespec* %15)
  %41 = load %struct.nfsstatsv1*, %struct.nfsstatsv1** %11, align 8
  %42 = call i32 @compute_totals(%struct.nfsstatsv1* %13, %struct.nfsstatsv1* %41)
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @sleep(i32 %43)
  br label %45

45:                                               ; preds = %328, %38
  store %struct.nfsstatsv1* %9, %struct.nfsstatsv1** %11, align 8
  %46 = load i8*, i8** @NFSSTATS_V1, align 8
  %47 = load %struct.nfsstatsv1*, %struct.nfsstatsv1** %11, align 8
  %48 = getelementptr inbounds %struct.nfsstatsv1, %struct.nfsstatsv1* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* @NFSSVC_GETSTATS, align 4
  %50 = load i32, i32* @NFSSVC_NEWSTRUCT, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.nfsstatsv1*, %struct.nfsstatsv1** %11, align 8
  %53 = call i64 @nfssvc(i32 %51, %struct.nfsstatsv1* %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %45
  %58 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %59 = call i32 @clock_gettime(i32 %58, %struct.timespec* %14)
  %60 = load i32, i32* %16, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %16, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @printhdr(i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store i32 20, i32* %16, align 4
  br label %80

71:                                               ; preds = %63
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 10, i32* %16, align 4
  br label %79

78:                                               ; preds = %74, %71
  store i32 20, i32* %16, align 4
  br label %79

79:                                               ; preds = %78, %77
  br label %80

80:                                               ; preds = %79, %70
  br label %81

81:                                               ; preds = %80, %57
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %188

84:                                               ; preds = %81
  %85 = load i32, i32* %8, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %188

87:                                               ; preds = %84
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br label %93

93:                                               ; preds = %90, %87
  %94 = phi i1 [ false, %87 ], [ %92, %90 ]
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %97 = load i32*, i32** @rpccnt, align 8
  %98 = load i64, i64* @NFSPROC_GETATTR, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @DELTA(i32 %100)
  %102 = trunc i64 %101 to i32
  %103 = load i32*, i32** @rpccnt, align 8
  %104 = load i64, i64* @NFSPROC_LOOKUP, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @DELTA(i32 %106)
  %108 = trunc i64 %107 to i32
  %109 = load i32*, i32** @rpccnt, align 8
  %110 = load i64, i64* @NFSPROC_READLINK, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @DELTA(i32 %112)
  %114 = trunc i64 %113 to i32
  %115 = load i32*, i32** @rpccnt, align 8
  %116 = load i64, i64* @NFSPROC_READ, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @DELTA(i32 %118)
  %120 = trunc i64 %119 to i32
  %121 = load i32*, i32** @rpccnt, align 8
  %122 = load i64, i64* @NFSPROC_WRITE, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @DELTA(i32 %124)
  %126 = trunc i64 %125 to i32
  %127 = load i32*, i32** @rpccnt, align 8
  %128 = load i64, i64* @NFSPROC_RENAME, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @DELTA(i32 %130)
  %132 = trunc i64 %131 to i32
  %133 = load i32*, i32** @rpccnt, align 8
  %134 = load i64, i64* @NFSPROC_ACCESS, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @DELTA(i32 %136)
  %138 = trunc i64 %137 to i32
  %139 = load i32*, i32** @rpccnt, align 8
  %140 = load i64, i64* @NFSPROC_READDIR, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @DELTA(i32 %142)
  %144 = load i32*, i32** @rpccnt, align 8
  %145 = load i64, i64* @NFSPROC_READDIRPLUS, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @DELTA(i32 %147)
  %149 = add nsw i64 %143, %148
  %150 = trunc i64 %149 to i32
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %96, i32 %102, i32 %108, i32 %114, i32 %120, i32 %126, i32 %132, i32 %138, i32 %150)
  %152 = load i64, i64* @widemode, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %186

154:                                              ; preds = %93
  %155 = load i32, i32* @attrcache_hits, align 4
  %156 = call i64 @DELTA(i32 %155)
  %157 = load i32, i32* @attrcache_misses, align 4
  %158 = call i64 @DELTA(i32 %157)
  %159 = call i8* @sperc1(i64 %156, i64 %158)
  %160 = load i32, i32* @lookupcache_hits, align 4
  %161 = call i64 @DELTA(i32 %160)
  %162 = load i32, i32* @lookupcache_misses, align 4
  %163 = call i64 @DELTA(i32 %162)
  %164 = call i8* @sperc1(i64 %161, i64 %163)
  %165 = load i32, i32* @biocache_reads, align 4
  %166 = call i64 @DELTA(i32 %165)
  %167 = load i32, i32* @read_bios, align 4
  %168 = call i64 @DELTA(i32 %167)
  %169 = call i8* @sperc2(i64 %166, i64 %168)
  %170 = load i32, i32* @biocache_writes, align 4
  %171 = call i64 @DELTA(i32 %170)
  %172 = load i32, i32* @write_bios, align 4
  %173 = call i64 @DELTA(i32 %172)
  %174 = call i8* @sperc2(i64 %171, i64 %173)
  %175 = load i32, i32* @accesscache_hits, align 4
  %176 = call i64 @DELTA(i32 %175)
  %177 = load i32, i32* @accesscache_misses, align 4
  %178 = call i64 @DELTA(i32 %177)
  %179 = call i8* @sperc1(i64 %176, i64 %178)
  %180 = load i32, i32* @biocache_readdirs, align 4
  %181 = call i64 @DELTA(i32 %180)
  %182 = load i32, i32* @readdir_bios, align 4
  %183 = call i64 @DELTA(i32 %182)
  %184 = call i8* @sperc2(i64 %181, i64 %183)
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %159, i8* %164, i8* %169, i8* %174, i8* %179, i8* %184)
  br label %186

186:                                              ; preds = %154, %93
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %188

188:                                              ; preds = %186, %84, %81
  %189 = load i32, i32* %7, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %258

191:                                              ; preds = %188
  %192 = load i32, i32* %8, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %258

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 0
  %196 = load x86_fp80, x86_fp80* %195, align 16
  %197 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 1
  %198 = load i64, i64* %197, align 16
  %199 = sitofp i64 %198 to x86_fp80
  %200 = fdiv x86_fp80 %199, 0xK401CEE6B280000000000
  %201 = fadd x86_fp80 %196, %200
  store x86_fp80 %201, x86_fp80* %17, align 16
  %202 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i32 0, i32 0
  %203 = load x86_fp80, x86_fp80* %202, align 16
  %204 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i32 0, i32 1
  %205 = load i64, i64* %204, align 16
  %206 = sitofp i64 %205 to x86_fp80
  %207 = fdiv x86_fp80 %206, 0xK401CEE6B280000000000
  %208 = fadd x86_fp80 %203, %207
  store x86_fp80 %208, x86_fp80* %18, align 16
  %209 = load x86_fp80, x86_fp80* %17, align 16
  %210 = load x86_fp80, x86_fp80* %18, align 16
  %211 = fsub x86_fp80 %209, %210
  store x86_fp80 %211, x86_fp80* %19, align 16
  %212 = call i32 @compute_totals(%struct.nfsstatsv1* %12, %struct.nfsstatsv1* %9)
  store i32 0, i32* %26, align 4
  br label %213

213:                                              ; preds = %245, %194
  %214 = load i32, i32* %26, align 4
  %215 = load i32, i32* @NUM_STAT_TYPES, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %248

217:                                              ; preds = %213
  %218 = load i32, i32* %26, align 4
  %219 = call i32 @STAT_TYPE_TO_NFS(i32 %218)
  %220 = load x86_fp80, x86_fp80* %19, align 16
  %221 = call i32 @compute_new_stats(%struct.nfsstatsv1* %9, %struct.nfsstatsv1* %10, i32 %219, x86_fp80 %220, x86_fp80* %20, x86_fp80* %21, x86_fp80* %22, x86_fp80* %23, i32* %24, x86_fp80* %25)
  %222 = load i32, i32* %26, align 4
  %223 = load i32, i32* @STAT_TYPE_COMMIT, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %233

225:                                              ; preds = %217
  %226 = load i64, i64* @widemode, align 8
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %225
  br label %245

229:                                              ; preds = %225
  %230 = load x86_fp80, x86_fp80* %22, align 16
  %231 = load x86_fp80, x86_fp80* %23, align 16
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), x86_fp80 %230, x86_fp80 %231)
  br label %244

233:                                              ; preds = %217
  %234 = load x86_fp80, x86_fp80* %21, align 16
  %235 = load x86_fp80, x86_fp80* %22, align 16
  %236 = load x86_fp80, x86_fp80* %20, align 16
  %237 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), x86_fp80 %234, x86_fp80 %235, x86_fp80 %236)
  %238 = load i64, i64* @widemode, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %233
  %241 = load x86_fp80, x86_fp80* %23, align 16
  %242 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), x86_fp80 %241)
  br label %243

243:                                              ; preds = %240, %233
  br label %244

244:                                              ; preds = %243, %229
  br label %245

245:                                              ; preds = %244, %228
  %246 = load i32, i32* %26, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %26, align 4
  br label %213

248:                                              ; preds = %213
  %249 = load x86_fp80, x86_fp80* %19, align 16
  %250 = call i32 @compute_new_stats(%struct.nfsstatsv1* %12, %struct.nfsstatsv1* %13, i32 0, x86_fp80 %249, x86_fp80* %20, x86_fp80* %21, x86_fp80* %22, x86_fp80* %23, i32* %24, x86_fp80* %25)
  %251 = load x86_fp80, x86_fp80* %21, align 16
  %252 = load x86_fp80, x86_fp80* %22, align 16
  %253 = load x86_fp80, x86_fp80* %20, align 16
  %254 = load x86_fp80, x86_fp80* %23, align 16
  %255 = load i32, i32* %24, align 4
  %256 = load x86_fp80, x86_fp80* %25, align 16
  %257 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), x86_fp80 %251, x86_fp80 %252, x86_fp80 %253, x86_fp80 %254, i32 %255, x86_fp80 %256)
  br label %328

258:                                              ; preds = %191, %188
  %259 = load i32, i32* %7, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %327

261:                                              ; preds = %258
  %262 = load i32, i32* %6, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %261
  %265 = load i32, i32* %7, align 4
  %266 = icmp ne i32 %265, 0
  br label %267

267:                                              ; preds = %264, %261
  %268 = phi i1 [ false, %261 ], [ %266, %264 ]
  %269 = zext i1 %268 to i64
  %270 = select i1 %268, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %271 = load i32*, i32** @srvrpccnt, align 8
  %272 = load i64, i64* @NFSV4OP_GETATTR, align 8
  %273 = getelementptr inbounds i32, i32* %271, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = call i64 @DELTA(i32 %274)
  %276 = trunc i64 %275 to i32
  %277 = load i32*, i32** @srvrpccnt, align 8
  %278 = load i64, i64* @NFSV4OP_LOOKUP, align 8
  %279 = getelementptr inbounds i32, i32* %277, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = call i64 @DELTA(i32 %280)
  %282 = trunc i64 %281 to i32
  %283 = load i32*, i32** @srvrpccnt, align 8
  %284 = load i64, i64* @NFSV4OP_READLINK, align 8
  %285 = getelementptr inbounds i32, i32* %283, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = call i64 @DELTA(i32 %286)
  %288 = trunc i64 %287 to i32
  %289 = load i32*, i32** @srvrpccnt, align 8
  %290 = load i64, i64* @NFSV4OP_READ, align 8
  %291 = getelementptr inbounds i32, i32* %289, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = call i64 @DELTA(i32 %292)
  %294 = trunc i64 %293 to i32
  %295 = load i32*, i32** @srvrpccnt, align 8
  %296 = load i64, i64* @NFSV4OP_WRITE, align 8
  %297 = getelementptr inbounds i32, i32* %295, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = call i64 @DELTA(i32 %298)
  %300 = trunc i64 %299 to i32
  %301 = load i32*, i32** @srvrpccnt, align 8
  %302 = load i64, i64* @NFSV4OP_RENAME, align 8
  %303 = getelementptr inbounds i32, i32* %301, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = call i64 @DELTA(i32 %304)
  %306 = trunc i64 %305 to i32
  %307 = load i32*, i32** @srvrpccnt, align 8
  %308 = load i64, i64* @NFSV4OP_ACCESS, align 8
  %309 = getelementptr inbounds i32, i32* %307, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = call i64 @DELTA(i32 %310)
  %312 = trunc i64 %311 to i32
  %313 = load i32*, i32** @srvrpccnt, align 8
  %314 = load i64, i64* @NFSV4OP_READDIR, align 8
  %315 = getelementptr inbounds i32, i32* %313, i64 %314
  %316 = load i32, i32* %315, align 4
  %317 = call i64 @DELTA(i32 %316)
  %318 = load i32*, i32** @srvrpccnt, align 8
  %319 = load i64, i64* @NFSV4OP_READDIRPLUS, align 8
  %320 = getelementptr inbounds i32, i32* %318, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = call i64 @DELTA(i32 %321)
  %323 = add nsw i64 %317, %322
  %324 = trunc i64 %323 to i32
  %325 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %270, i32 %276, i32 %282, i32 %288, i32 %294, i32 %300, i32 %306, i32 %312, i32 %324)
  %326 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %327

327:                                              ; preds = %267, %258
  br label %328

328:                                              ; preds = %327, %248
  %329 = call i32 @bcopy(%struct.nfsstatsv1* %9, %struct.nfsstatsv1* %10, i32 8)
  %330 = call i32 @bcopy(%struct.nfsstatsv1* %12, %struct.nfsstatsv1* %13, i32 8)
  %331 = bitcast %struct.timespec* %15 to i8*
  %332 = bitcast %struct.timespec* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %331, i8* align 16 %332, i64 32, i1 false)
  %333 = load i32, i32* @stdout, align 4
  %334 = call i32 @fflush(i32 %333)
  %335 = load i32, i32* %5, align 4
  %336 = call i32 @sleep(i32 %335)
  br label %45
}

declare dso_local i64 @nfssvc(i32, %struct.nfsstatsv1*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @compute_totals(%struct.nfsstatsv1*, %struct.nfsstatsv1*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @printhdr(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @DELTA(i32) #1

declare dso_local i8* @sperc1(i64, i64) #1

declare dso_local i8* @sperc2(i64, i64) #1

declare dso_local i32 @compute_new_stats(%struct.nfsstatsv1*, %struct.nfsstatsv1*, i32, x86_fp80, x86_fp80*, x86_fp80*, x86_fp80*, x86_fp80*, i32*, x86_fp80*) #1

declare dso_local i32 @STAT_TYPE_TO_NFS(i32) #1

declare dso_local i32 @bcopy(%struct.nfsstatsv1*, %struct.nfsstatsv1*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
