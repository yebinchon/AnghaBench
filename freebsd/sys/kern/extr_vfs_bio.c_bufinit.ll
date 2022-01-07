; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bufinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bufinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32, i64, i64, i64, i64, i32, i8*, i8*, i32 }
%struct.bufdomain = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@maxbcachebuf = common dso_local global i32 0, align 4
@MAXBSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"maxbcachebuf (%d) must be >= MAXBSIZE (%d)\0A\00", align 1
@bqempty = common dso_local global i32 0, align 4
@QUEUE_EMPTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"bufq empty lock\00", align 1
@rbreqlock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"runningbufspace lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@bdlock = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"buffer daemon lock\00", align 1
@bdirtylock = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"dirty buf lock\00", align 1
@MAXPHYS = common dso_local global i32 0, align 4
@unmapped_buf = common dso_local global i64 0, align 8
@nbuf = common dso_local global i32 0, align 4
@buf = common dso_local global %struct.buf* null, align 8
@B_INVAL = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i8* null, align 8
@QUEUE_NONE = common dso_local global i32 0, align 4
@mp_maxid = common dso_local global i64 0, align 8
@BKVASIZE = common dso_local global i64 0, align 8
@maxbufspace = common dso_local global i32 0, align 4
@hibufspace = common dso_local global i32 0, align 4
@lobufspace = common dso_local global i32 0, align 4
@bufspacethresh = common dso_local global i32 0, align 4
@hirunningspace = common dso_local global i32 0, align 4
@lorunningspace = common dso_local global i32 0, align 4
@maxbufmallocspace = common dso_local global i32 0, align 4
@hidirtybuffers = common dso_local global i32 0, align 4
@dirtybufthresh = common dso_local global i32 0, align 4
@lodirtybuffers = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@lofreebuffers = common dso_local global i32 0, align 4
@hifreebuffers = common dso_local global i32 0, align 4
@numfreebuffers = common dso_local global i32 0, align 4
@buffer_arena = common dso_local global i32 0, align 4
@bufkva_reclaim = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"buf free cache\00", align 1
@buf_import = common dso_local global i32 0, align 4
@buf_release = common dso_local global i32 0, align 4
@buf_zone = common dso_local global i32 0, align 4
@BUF_DOMAINS = common dso_local global i32 0, align 4
@buf_domains = common dso_local global i32 0, align 4
@bdomain = common dso_local global %struct.bufdomain* null, align 8
@M_WAITOK = common dso_local global i32 0, align 4
@getnewbufcalls = common dso_local global i8* null, align 8
@getnewbufrestarts = common dso_local global i8* null, align 8
@mappingrestarts = common dso_local global i8* null, align 8
@numbufallocfails = common dso_local global i8* null, align 8
@notbufdflushes = common dso_local global i8* null, align 8
@buffreekvacnt = common dso_local global i8* null, align 8
@bufdefragcnt = common dso_local global i8* null, align 8
@bufkvaspace = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bufinit() #0 {
  %1 = alloca %struct.buf*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.bufdomain*, align 8
  %4 = load i32, i32* @maxbcachebuf, align 4
  %5 = load i32, i32* @MAXBSIZE, align 4
  %6 = icmp sge i32 %4, %5
  %7 = zext i1 %6 to i32
  %8 = load i32, i32* @maxbcachebuf, align 4
  %9 = load i32, i32* @MAXBSIZE, align 4
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to i8*
  %12 = call i32 @KASSERT(i32 %7, i8* %11)
  %13 = load i32, i32* @QUEUE_EMPTY, align 4
  %14 = call i32 @bq_init(i32* @bqempty, i32 %13, i32 -1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @MTX_DEF, align 4
  %16 = call i32 @mtx_init(i32* @rbreqlock, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %15)
  %17 = load i32, i32* @MTX_DEF, align 4
  %18 = call i32 @mtx_init(i32* @bdlock, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %17)
  %19 = load i32, i32* @MTX_DEF, align 4
  %20 = call i32 @mtx_init(i32* @bdirtylock, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %19)
  %21 = load i32, i32* @MAXPHYS, align 4
  %22 = call i64 @kva_alloc(i32 %21)
  store i64 %22, i64* @unmapped_buf, align 8
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %66, %0
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @nbuf, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %69

27:                                               ; preds = %23
  %28 = load %struct.buf*, %struct.buf** @buf, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.buf, %struct.buf* %28, i64 %30
  store %struct.buf* %31, %struct.buf** %1, align 8
  %32 = load %struct.buf*, %struct.buf** %1, align 8
  %33 = call i32 @bzero(%struct.buf* %32, i32 72)
  %34 = load i32, i32* @B_INVAL, align 4
  %35 = load %struct.buf*, %struct.buf** %1, align 8
  %36 = getelementptr inbounds %struct.buf, %struct.buf* %35, i32 0, i32 9
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** @NOCRED, align 8
  %38 = load %struct.buf*, %struct.buf** %1, align 8
  %39 = getelementptr inbounds %struct.buf, %struct.buf* %38, i32 0, i32 8
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** @NOCRED, align 8
  %41 = load %struct.buf*, %struct.buf** %1, align 8
  %42 = getelementptr inbounds %struct.buf, %struct.buf* %41, i32 0, i32 7
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* @QUEUE_NONE, align 4
  %44 = load %struct.buf*, %struct.buf** %1, align 8
  %45 = getelementptr inbounds %struct.buf, %struct.buf* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 8
  %46 = load %struct.buf*, %struct.buf** %1, align 8
  %47 = getelementptr inbounds %struct.buf, %struct.buf* %46, i32 0, i32 0
  store i32 -1, i32* %47, align 8
  %48 = load i64, i64* @mp_maxid, align 8
  %49 = add nsw i64 %48, 1
  %50 = load %struct.buf*, %struct.buf** %1, align 8
  %51 = getelementptr inbounds %struct.buf, %struct.buf* %50, i32 0, i32 5
  store i64 %49, i64* %51, align 8
  %52 = load %struct.buf*, %struct.buf** %1, align 8
  %53 = getelementptr inbounds %struct.buf, %struct.buf* %52, i32 0, i32 4
  store i64 0, i64* %53, align 8
  %54 = load i64, i64* @unmapped_buf, align 8
  %55 = load %struct.buf*, %struct.buf** %1, align 8
  %56 = getelementptr inbounds %struct.buf, %struct.buf* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  %57 = load %struct.buf*, %struct.buf** %1, align 8
  %58 = getelementptr inbounds %struct.buf, %struct.buf* %57, i32 0, i32 3
  store i64 %54, i64* %58, align 8
  %59 = load %struct.buf*, %struct.buf** %1, align 8
  %60 = getelementptr inbounds %struct.buf, %struct.buf* %59, i32 0, i32 1
  %61 = call i32 @LIST_INIT(i32* %60)
  %62 = load %struct.buf*, %struct.buf** %1, align 8
  %63 = call i32 @BUF_LOCKINIT(%struct.buf* %62)
  %64 = load %struct.buf*, %struct.buf** %1, align 8
  %65 = call i32 @bq_insert(i32* @bqempty, %struct.buf* %64, i32 0)
  br label %66

66:                                               ; preds = %27
  %67 = load i32, i32* %2, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %2, align 4
  br label %23

69:                                               ; preds = %23
  %70 = load i32, i32* @nbuf, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* @BKVASIZE, align 8
  %73 = mul nsw i64 %71, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* @maxbufspace, align 4
  %75 = load i32, i32* @maxbufspace, align 4
  %76 = mul nsw i32 3, %75
  %77 = sdiv i32 %76, 4
  %78 = load i32, i32* @maxbufspace, align 4
  %79 = load i32, i32* @maxbcachebuf, align 4
  %80 = mul nsw i32 %79, 10
  %81 = sub nsw i32 %78, %80
  %82 = call i32 @lmax(i32 %77, i32 %81)
  store i32 %82, i32* @hibufspace, align 4
  %83 = load i32, i32* @hibufspace, align 4
  %84 = sdiv i32 %83, 20
  %85 = mul nsw i32 %84, 19
  store i32 %85, i32* @lobufspace, align 4
  %86 = load i32, i32* @lobufspace, align 4
  %87 = load i32, i32* @hibufspace, align 4
  %88 = load i32, i32* @lobufspace, align 4
  %89 = sub nsw i32 %87, %88
  %90 = sdiv i32 %89, 2
  %91 = add nsw i32 %86, %90
  store i32 %91, i32* @bufspacethresh, align 4
  %92 = load i32, i32* @hibufspace, align 4
  %93 = sdiv i32 %92, 64
  %94 = load i32, i32* @maxbcachebuf, align 4
  %95 = call i32 @roundup(i32 %93, i32 %94)
  %96 = call i32 @lmin(i32 %95, i32 16777216)
  %97 = call i32 @lmax(i32 %96, i32 1048576)
  store i32 %97, i32* @hirunningspace, align 4
  %98 = load i32, i32* @hirunningspace, align 4
  %99 = mul nsw i32 %98, 2
  %100 = sdiv i32 %99, 3
  %101 = load i32, i32* @maxbcachebuf, align 4
  %102 = call i32 @roundup(i32 %100, i32 %101)
  store i32 %102, i32* @lorunningspace, align 4
  %103 = load i32, i32* @hibufspace, align 4
  %104 = sdiv i32 %103, 20
  store i32 %104, i32* @maxbufmallocspace, align 4
  %105 = load i32, i32* @nbuf, align 4
  %106 = sdiv i32 %105, 4
  %107 = add nsw i32 %106, 20
  store i32 %107, i32* @hidirtybuffers, align 4
  %108 = load i32, i32* @hidirtybuffers, align 4
  %109 = mul nsw i32 %108, 9
  %110 = sdiv i32 %109, 10
  store i32 %110, i32* @dirtybufthresh, align 4
  br label %111

111:                                              ; preds = %121, %69
  %112 = load i32, i32* @hidirtybuffers, align 4
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* @BKVASIZE, align 8
  %115 = mul nsw i64 %113, %114
  %116 = load i32, i32* @hibufspace, align 4
  %117 = mul nsw i32 3, %116
  %118 = sdiv i32 %117, 4
  %119 = sext i32 %118 to i64
  %120 = icmp sgt i64 %115, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %111
  %122 = load i32, i32* @hidirtybuffers, align 4
  %123 = ashr i32 %122, 1
  store i32 %123, i32* @hidirtybuffers, align 4
  br label %111

124:                                              ; preds = %111
  %125 = load i32, i32* @hidirtybuffers, align 4
  %126 = sdiv i32 %125, 2
  store i32 %126, i32* @lodirtybuffers, align 4
  %127 = load i32, i32* @nbuf, align 4
  %128 = sdiv i32 %127, 25
  %129 = load i32, i32* @mp_ncpus, align 4
  %130 = mul nsw i32 20, %129
  %131 = add nsw i32 %128, %130
  %132 = load i32, i32* @mp_ncpus, align 4
  %133 = mul nsw i32 128, %132
  %134 = call i32 @MIN(i32 %131, i32 %133)
  store i32 %134, i32* @lofreebuffers, align 4
  %135 = load i32, i32* @lofreebuffers, align 4
  %136 = mul nsw i32 3, %135
  %137 = sdiv i32 %136, 2
  store i32 %137, i32* @hifreebuffers, align 4
  %138 = load i32, i32* @nbuf, align 4
  store i32 %138, i32* @numfreebuffers, align 4
  %139 = load i32, i32* @buffer_arena, align 4
  %140 = load i32, i32* @bufkva_reclaim, align 4
  %141 = call i32 @vmem_set_reclaim(i32 %139, i32 %140)
  %142 = load i32, i32* @buf_import, align 4
  %143 = load i32, i32* @buf_release, align 4
  %144 = call i32 @uma_zcache_create(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 72, i32* null, i32* null, i32* null, i32* null, i32 %142, i32 %143, i32* null, i32 0)
  store i32 %144, i32* @buf_zone, align 4
  %145 = load i32, i32* @maxbufspace, align 4
  %146 = call i32 @howmany(i32 %145, i32 268435456)
  %147 = load i32, i32* @BUF_DOMAINS, align 4
  %148 = call i32 @MIN(i32 %146, i32 %147)
  store i32 %148, i32* @buf_domains, align 4
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %222, %124
  %150 = load i32, i32* %2, align 4
  %151 = load i32, i32* @buf_domains, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %225

153:                                              ; preds = %149
  %154 = load %struct.bufdomain*, %struct.bufdomain** @bdomain, align 8
  %155 = load i32, i32* %2, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %154, i64 %156
  store %struct.bufdomain* %157, %struct.bufdomain** %3, align 8
  %158 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %159 = call i32 @bd_init(%struct.bufdomain* %158)
  %160 = load i32, i32* @nbuf, align 4
  %161 = load i32, i32* @buf_domains, align 4
  %162 = sdiv i32 %160, %161
  %163 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %164 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load i32, i32* @hifreebuffers, align 4
  %166 = load i32, i32* @buf_domains, align 4
  %167 = sdiv i32 %165, %166
  %168 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %169 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* @lofreebuffers, align 4
  %171 = load i32, i32* @buf_domains, align 4
  %172 = sdiv i32 %170, %171
  %173 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %174 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 8
  %175 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %176 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %175, i32 0, i32 12
  store i64 0, i64* %176, align 8
  %177 = load i32, i32* @maxbufspace, align 4
  %178 = load i32, i32* @buf_domains, align 4
  %179 = sdiv i32 %177, %178
  %180 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %181 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %180, i32 0, i32 3
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* @hibufspace, align 4
  %183 = load i32, i32* @buf_domains, align 4
  %184 = sdiv i32 %182, %183
  %185 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %186 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %185, i32 0, i32 4
  store i32 %184, i32* %186, align 8
  %187 = load i32, i32* @lobufspace, align 4
  %188 = load i32, i32* @buf_domains, align 4
  %189 = sdiv i32 %187, %188
  %190 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %191 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %190, i32 0, i32 5
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* @bufspacethresh, align 4
  %193 = load i32, i32* @buf_domains, align 4
  %194 = sdiv i32 %192, %193
  %195 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %196 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %195, i32 0, i32 6
  store i32 %194, i32* %196, align 8
  %197 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %198 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %197, i32 0, i32 11
  store i64 0, i64* %198, align 8
  %199 = load i32, i32* @hidirtybuffers, align 4
  %200 = load i32, i32* @buf_domains, align 4
  %201 = sdiv i32 %199, %200
  %202 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %203 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %202, i32 0, i32 7
  store i32 %201, i32* %203, align 4
  %204 = load i32, i32* @lodirtybuffers, align 4
  %205 = load i32, i32* @buf_domains, align 4
  %206 = sdiv i32 %204, %205
  %207 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %208 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %207, i32 0, i32 8
  store i32 %206, i32* %208, align 8
  %209 = load i32, i32* @dirtybufthresh, align 4
  %210 = load i32, i32* @buf_domains, align 4
  %211 = sdiv i32 %209, %210
  %212 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %213 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %212, i32 0, i32 9
  store i32 %211, i32* %213, align 4
  %214 = load i32, i32* @nbuf, align 4
  %215 = load i32, i32* @buf_domains, align 4
  %216 = sdiv i32 %214, %215
  %217 = sdiv i32 %216, 50
  %218 = load i32, i32* @mp_ncpus, align 4
  %219 = sdiv i32 %217, %218
  %220 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %221 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %220, i32 0, i32 10
  store i32 %219, i32* %221, align 8
  br label %222

222:                                              ; preds = %153
  %223 = load i32, i32* %2, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %2, align 4
  br label %149

225:                                              ; preds = %149
  %226 = load i32, i32* @M_WAITOK, align 4
  %227 = call i8* @counter_u64_alloc(i32 %226)
  store i8* %227, i8** @getnewbufcalls, align 8
  %228 = load i32, i32* @M_WAITOK, align 4
  %229 = call i8* @counter_u64_alloc(i32 %228)
  store i8* %229, i8** @getnewbufrestarts, align 8
  %230 = load i32, i32* @M_WAITOK, align 4
  %231 = call i8* @counter_u64_alloc(i32 %230)
  store i8* %231, i8** @mappingrestarts, align 8
  %232 = load i32, i32* @M_WAITOK, align 4
  %233 = call i8* @counter_u64_alloc(i32 %232)
  store i8* %233, i8** @numbufallocfails, align 8
  %234 = load i32, i32* @M_WAITOK, align 4
  %235 = call i8* @counter_u64_alloc(i32 %234)
  store i8* %235, i8** @notbufdflushes, align 8
  %236 = load i32, i32* @M_WAITOK, align 4
  %237 = call i8* @counter_u64_alloc(i32 %236)
  store i8* %237, i8** @buffreekvacnt, align 8
  %238 = load i32, i32* @M_WAITOK, align 4
  %239 = call i8* @counter_u64_alloc(i32 %238)
  store i8* %239, i8** @bufdefragcnt, align 8
  %240 = load i32, i32* @M_WAITOK, align 4
  %241 = call i8* @counter_u64_alloc(i32 %240)
  store i8* %241, i8** @bufkvaspace, align 8
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bq_init(i32*, i32, i32, i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i64 @kva_alloc(i32) #1

declare dso_local i32 @bzero(%struct.buf*, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @BUF_LOCKINIT(%struct.buf*) #1

declare dso_local i32 @bq_insert(i32*, %struct.buf*, i32) #1

declare dso_local i32 @lmax(i32, i32) #1

declare dso_local i32 @lmin(i32, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @vmem_set_reclaim(i32, i32) #1

declare dso_local i32 @uma_zcache_create(i8*, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @bd_init(%struct.bufdomain*) #1

declare dso_local i8* @counter_u64_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
