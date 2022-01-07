; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clkdtrace.c_dtnfsclient_provide.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clkdtrace.c_dtnfsclient_provide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i8*, i8*, i32*, i8*, i8*, i32*, i8*, i8* }

@dtnfsclient_id = common dso_local global i32 0, align 4
@dtnfsclient_accesscache_str = common dso_local global i32 0, align 4
@dtnfsclient_flush_str = common dso_local global i32* null, align 8
@dtnfsclient_done_str = common dso_local global i32 0, align 4
@nfscl_accesscache_flush_done_id = common dso_local global i8* null, align 8
@dtnfsclient_get_str = common dso_local global i32* null, align 8
@dtnfsclient_hit_str = common dso_local global i32 0, align 4
@nfscl_accesscache_get_hit_id = common dso_local global i8* null, align 8
@dtnfsclient_miss_str = common dso_local global i32 0, align 4
@nfscl_accesscache_get_miss_id = common dso_local global i8* null, align 8
@dtnfsclient_load_str = common dso_local global i32* null, align 8
@nfscl_accesscache_load_done_id = common dso_local global i8* null, align 8
@dtnfsclient_attrcache_str = common dso_local global i32 0, align 4
@nfscl_attrcache_flush_done_id = common dso_local global i8* null, align 8
@nfscl_attrcache_get_hit_id = common dso_local global i8* null, align 8
@nfscl_attrcache_get_miss_id = common dso_local global i8* null, align 8
@nfscl_attrcache_load_done_id = common dso_local global i8* null, align 8
@NFSV41_NPROCS = common dso_local global i32 0, align 4
@dtnfsclient_rpcs = common dso_local global %struct.TYPE_2__* null, align 8
@dtnfsclient_nfs2_str = common dso_local global i32 0, align 4
@dtnfsclient_start_str = common dso_local global i32 0, align 4
@nfscl_nfs2_start_probes = common dso_local global i32* null, align 8
@nfscl_nfs2_done_probes = common dso_local global i32* null, align 8
@dtnfsclient_nfs3_str = common dso_local global i32 0, align 4
@nfscl_nfs3_start_probes = common dso_local global i32* null, align 8
@nfscl_nfs3_done_probes = common dso_local global i32* null, align 8
@dtnfsclient_nfs4_str = common dso_local global i32 0, align 4
@nfscl_nfs4_start_probes = common dso_local global i32* null, align 8
@nfscl_nfs4_done_probes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @dtnfsclient_provide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtnfsclient_provide(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %367

9:                                                ; preds = %2
  %10 = load i32, i32* @dtnfsclient_id, align 4
  %11 = load i32, i32* @dtnfsclient_accesscache_str, align 4
  %12 = load i32*, i32** @dtnfsclient_flush_str, align 8
  %13 = load i32, i32* @dtnfsclient_done_str, align 4
  %14 = call i64 @dtrace_probe_lookup(i32 %10, i32 %11, i32* %12, i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %9
  %17 = load i32, i32* @dtnfsclient_id, align 4
  %18 = load i32, i32* @dtnfsclient_accesscache_str, align 4
  %19 = load i32*, i32** @dtnfsclient_flush_str, align 8
  %20 = load i32, i32* @dtnfsclient_done_str, align 4
  %21 = call i8* @dtrace_probe_create(i32 %17, i32 %18, i32* %19, i32 %20, i32 0, i32* null)
  store i8* %21, i8** @nfscl_accesscache_flush_done_id, align 8
  br label %22

22:                                               ; preds = %16, %9
  %23 = load i32, i32* @dtnfsclient_id, align 4
  %24 = load i32, i32* @dtnfsclient_accesscache_str, align 4
  %25 = load i32*, i32** @dtnfsclient_get_str, align 8
  %26 = load i32, i32* @dtnfsclient_hit_str, align 4
  %27 = call i64 @dtrace_probe_lookup(i32 %23, i32 %24, i32* %25, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load i32, i32* @dtnfsclient_id, align 4
  %31 = load i32, i32* @dtnfsclient_accesscache_str, align 4
  %32 = load i32*, i32** @dtnfsclient_get_str, align 8
  %33 = load i32, i32* @dtnfsclient_hit_str, align 4
  %34 = call i8* @dtrace_probe_create(i32 %30, i32 %31, i32* %32, i32 %33, i32 0, i32* null)
  store i8* %34, i8** @nfscl_accesscache_get_hit_id, align 8
  br label %35

35:                                               ; preds = %29, %22
  %36 = load i32, i32* @dtnfsclient_id, align 4
  %37 = load i32, i32* @dtnfsclient_accesscache_str, align 4
  %38 = load i32*, i32** @dtnfsclient_get_str, align 8
  %39 = load i32, i32* @dtnfsclient_miss_str, align 4
  %40 = call i64 @dtrace_probe_lookup(i32 %36, i32 %37, i32* %38, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load i32, i32* @dtnfsclient_id, align 4
  %44 = load i32, i32* @dtnfsclient_accesscache_str, align 4
  %45 = load i32*, i32** @dtnfsclient_get_str, align 8
  %46 = load i32, i32* @dtnfsclient_miss_str, align 4
  %47 = call i8* @dtrace_probe_create(i32 %43, i32 %44, i32* %45, i32 %46, i32 0, i32* null)
  store i8* %47, i8** @nfscl_accesscache_get_miss_id, align 8
  br label %48

48:                                               ; preds = %42, %35
  %49 = load i32, i32* @dtnfsclient_id, align 4
  %50 = load i32, i32* @dtnfsclient_accesscache_str, align 4
  %51 = load i32*, i32** @dtnfsclient_load_str, align 8
  %52 = load i32, i32* @dtnfsclient_done_str, align 4
  %53 = call i64 @dtrace_probe_lookup(i32 %49, i32 %50, i32* %51, i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load i32, i32* @dtnfsclient_id, align 4
  %57 = load i32, i32* @dtnfsclient_accesscache_str, align 4
  %58 = load i32*, i32** @dtnfsclient_load_str, align 8
  %59 = load i32, i32* @dtnfsclient_done_str, align 4
  %60 = call i8* @dtrace_probe_create(i32 %56, i32 %57, i32* %58, i32 %59, i32 0, i32* null)
  store i8* %60, i8** @nfscl_accesscache_load_done_id, align 8
  br label %61

61:                                               ; preds = %55, %48
  %62 = load i32, i32* @dtnfsclient_id, align 4
  %63 = load i32, i32* @dtnfsclient_attrcache_str, align 4
  %64 = load i32*, i32** @dtnfsclient_flush_str, align 8
  %65 = load i32, i32* @dtnfsclient_done_str, align 4
  %66 = call i64 @dtrace_probe_lookup(i32 %62, i32 %63, i32* %64, i32 %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load i32, i32* @dtnfsclient_id, align 4
  %70 = load i32, i32* @dtnfsclient_attrcache_str, align 4
  %71 = load i32*, i32** @dtnfsclient_flush_str, align 8
  %72 = load i32, i32* @dtnfsclient_done_str, align 4
  %73 = call i8* @dtrace_probe_create(i32 %69, i32 %70, i32* %71, i32 %72, i32 0, i32* null)
  store i8* %73, i8** @nfscl_attrcache_flush_done_id, align 8
  br label %74

74:                                               ; preds = %68, %61
  %75 = load i32, i32* @dtnfsclient_id, align 4
  %76 = load i32, i32* @dtnfsclient_attrcache_str, align 4
  %77 = load i32*, i32** @dtnfsclient_get_str, align 8
  %78 = load i32, i32* @dtnfsclient_hit_str, align 4
  %79 = call i64 @dtrace_probe_lookup(i32 %75, i32 %76, i32* %77, i32 %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load i32, i32* @dtnfsclient_id, align 4
  %83 = load i32, i32* @dtnfsclient_attrcache_str, align 4
  %84 = load i32*, i32** @dtnfsclient_get_str, align 8
  %85 = load i32, i32* @dtnfsclient_hit_str, align 4
  %86 = call i8* @dtrace_probe_create(i32 %82, i32 %83, i32* %84, i32 %85, i32 0, i32* null)
  store i8* %86, i8** @nfscl_attrcache_get_hit_id, align 8
  br label %87

87:                                               ; preds = %81, %74
  %88 = load i32, i32* @dtnfsclient_id, align 4
  %89 = load i32, i32* @dtnfsclient_attrcache_str, align 4
  %90 = load i32*, i32** @dtnfsclient_get_str, align 8
  %91 = load i32, i32* @dtnfsclient_miss_str, align 4
  %92 = call i64 @dtrace_probe_lookup(i32 %88, i32 %89, i32* %90, i32 %91)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %87
  %95 = load i32, i32* @dtnfsclient_id, align 4
  %96 = load i32, i32* @dtnfsclient_attrcache_str, align 4
  %97 = load i32*, i32** @dtnfsclient_get_str, align 8
  %98 = load i32, i32* @dtnfsclient_miss_str, align 4
  %99 = call i8* @dtrace_probe_create(i32 %95, i32 %96, i32* %97, i32 %98, i32 0, i32* null)
  store i8* %99, i8** @nfscl_attrcache_get_miss_id, align 8
  br label %100

100:                                              ; preds = %94, %87
  %101 = load i32, i32* @dtnfsclient_id, align 4
  %102 = load i32, i32* @dtnfsclient_attrcache_str, align 4
  %103 = load i32*, i32** @dtnfsclient_load_str, align 8
  %104 = load i32, i32* @dtnfsclient_done_str, align 4
  %105 = call i64 @dtrace_probe_lookup(i32 %101, i32 %102, i32* %103, i32 %104)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load i32, i32* @dtnfsclient_id, align 4
  %109 = load i32, i32* @dtnfsclient_attrcache_str, align 4
  %110 = load i32*, i32** @dtnfsclient_load_str, align 8
  %111 = load i32, i32* @dtnfsclient_done_str, align 4
  %112 = call i8* @dtrace_probe_create(i32 %108, i32 %109, i32* %110, i32 %111, i32 0, i32* null)
  store i8* %112, i8** @nfscl_attrcache_load_done_id, align 8
  br label %113

113:                                              ; preds = %107, %100
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %200, %113
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @NFSV41_NPROCS, align 4
  %117 = add nsw i32 %116, 1
  %118 = icmp slt i32 %115, %117
  br i1 %118, label %119, label %203

119:                                              ; preds = %114
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dtnfsclient_rpcs, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 6
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %159

127:                                              ; preds = %119
  %128 = load i32, i32* @dtnfsclient_id, align 4
  %129 = load i32, i32* @dtnfsclient_nfs2_str, align 4
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dtnfsclient_rpcs, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 6
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* @dtnfsclient_start_str, align 4
  %137 = call i64 @dtrace_probe_lookup(i32 %128, i32 %129, i32* %135, i32 %136)
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %159

139:                                              ; preds = %127
  %140 = load i32, i32* @dtnfsclient_id, align 4
  %141 = load i32, i32* @dtnfsclient_nfs2_str, align 4
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dtnfsclient_rpcs, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 6
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* @dtnfsclient_start_str, align 4
  %149 = load i32*, i32** @nfscl_nfs2_start_probes, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = call i8* @dtrace_probe_create(i32 %140, i32 %141, i32* %147, i32 %148, i32 0, i32* %152)
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dtnfsclient_rpcs, align 8
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 8
  store i8* %153, i8** %158, align 8
  br label %159

159:                                              ; preds = %139, %127, %119
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dtnfsclient_rpcs, align 8
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 6
  %165 = load i32*, i32** %164, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %199

167:                                              ; preds = %159
  %168 = load i32, i32* @dtnfsclient_id, align 4
  %169 = load i32, i32* @dtnfsclient_nfs2_str, align 4
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dtnfsclient_rpcs, align 8
  %171 = load i32, i32* %5, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 6
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* @dtnfsclient_done_str, align 4
  %177 = call i64 @dtrace_probe_lookup(i32 %168, i32 %169, i32* %175, i32 %176)
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %199

179:                                              ; preds = %167
  %180 = load i32, i32* @dtnfsclient_id, align 4
  %181 = load i32, i32* @dtnfsclient_nfs2_str, align 4
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dtnfsclient_rpcs, align 8
  %183 = load i32, i32* %5, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 6
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* @dtnfsclient_done_str, align 4
  %189 = load i32*, i32** @nfscl_nfs2_done_probes, align 8
  %190 = load i32, i32* %5, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = call i8* @dtrace_probe_create(i32 %180, i32 %181, i32* %187, i32 %188, i32 0, i32* %192)
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dtnfsclient_rpcs, align 8
  %195 = load i32, i32* %5, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 7
  store i8* %193, i8** %198, align 8
  br label %199

199:                                              ; preds = %179, %167, %159
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %5, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %5, align 4
  br label %114

203:                                              ; preds = %114
  store i32 0, i32* %5, align 4
  br label %204

204:                                              ; preds = %290, %203
  %205 = load i32, i32* %5, align 4
  %206 = load i32, i32* @NFSV41_NPROCS, align 4
  %207 = add nsw i32 %206, 1
  %208 = icmp slt i32 %205, %207
  br i1 %208, label %209, label %293

209:                                              ; preds = %204
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dtnfsclient_rpcs, align 8
  %211 = load i32, i32* %5, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 3
  %215 = load i32*, i32** %214, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %217, label %249

217:                                              ; preds = %209
  %218 = load i32, i32* @dtnfsclient_id, align 4
  %219 = load i32, i32* @dtnfsclient_nfs3_str, align 4
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dtnfsclient_rpcs, align 8
  %221 = load i32, i32* %5, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 3
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* @dtnfsclient_start_str, align 4
  %227 = call i64 @dtrace_probe_lookup(i32 %218, i32 %219, i32* %225, i32 %226)
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %249

229:                                              ; preds = %217
  %230 = load i32, i32* @dtnfsclient_id, align 4
  %231 = load i32, i32* @dtnfsclient_nfs3_str, align 4
  %232 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dtnfsclient_rpcs, align 8
  %233 = load i32, i32* %5, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 3
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* @dtnfsclient_start_str, align 4
  %239 = load i32*, i32** @nfscl_nfs3_start_probes, align 8
  %240 = load i32, i32* %5, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = call i8* @dtrace_probe_create(i32 %230, i32 %231, i32* %237, i32 %238, i32 0, i32* %242)
  %244 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dtnfsclient_rpcs, align 8
  %245 = load i32, i32* %5, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 5
  store i8* %243, i8** %248, align 8
  br label %249

249:                                              ; preds = %229, %217, %209
  %250 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dtnfsclient_rpcs, align 8
  %251 = load i32, i32* %5, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 3
  %255 = load i32*, i32** %254, align 8
  %256 = icmp ne i32* %255, null
  br i1 %256, label %257, label %289

257:                                              ; preds = %249
  %258 = load i32, i32* @dtnfsclient_id, align 4
  %259 = load i32, i32* @dtnfsclient_nfs3_str, align 4
  %260 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dtnfsclient_rpcs, align 8
  %261 = load i32, i32* %5, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 3
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* @dtnfsclient_done_str, align 4
  %267 = call i64 @dtrace_probe_lookup(i32 %258, i32 %259, i32* %265, i32 %266)
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %289

269:                                              ; preds = %257
  %270 = load i32, i32* @dtnfsclient_id, align 4
  %271 = load i32, i32* @dtnfsclient_nfs3_str, align 4
  %272 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dtnfsclient_rpcs, align 8
  %273 = load i32, i32* %5, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 3
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* @dtnfsclient_done_str, align 4
  %279 = load i32*, i32** @nfscl_nfs3_done_probes, align 8
  %280 = load i32, i32* %5, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = call i8* @dtrace_probe_create(i32 %270, i32 %271, i32* %277, i32 %278, i32 0, i32* %282)
  %284 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dtnfsclient_rpcs, align 8
  %285 = load i32, i32* %5, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 4
  store i8* %283, i8** %288, align 8
  br label %289

289:                                              ; preds = %269, %257, %249
  br label %290

290:                                              ; preds = %289
  %291 = load i32, i32* %5, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %5, align 4
  br label %204

293:                                              ; preds = %204
  store i32 0, i32* %5, align 4
  br label %294

294:                                              ; preds = %364, %293
  %295 = load i32, i32* %5, align 4
  %296 = load i32, i32* @NFSV41_NPROCS, align 4
  %297 = add nsw i32 %296, 1
  %298 = icmp slt i32 %295, %297
  br i1 %298, label %299, label %367

299:                                              ; preds = %294
  %300 = load i32, i32* @dtnfsclient_id, align 4
  %301 = load i32, i32* @dtnfsclient_nfs4_str, align 4
  %302 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dtnfsclient_rpcs, align 8
  %303 = load i32, i32* %5, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %305, i32 0, i32 0
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* @dtnfsclient_start_str, align 4
  %309 = call i64 @dtrace_probe_lookup(i32 %300, i32 %301, i32* %307, i32 %308)
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %311, label %331

311:                                              ; preds = %299
  %312 = load i32, i32* @dtnfsclient_id, align 4
  %313 = load i32, i32* @dtnfsclient_nfs4_str, align 4
  %314 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dtnfsclient_rpcs, align 8
  %315 = load i32, i32* %5, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %314, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %317, i32 0, i32 0
  %319 = load i32*, i32** %318, align 8
  %320 = load i32, i32* @dtnfsclient_start_str, align 4
  %321 = load i32*, i32** @nfscl_nfs4_start_probes, align 8
  %322 = load i32, i32* %5, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  %325 = call i8* @dtrace_probe_create(i32 %312, i32 %313, i32* %319, i32 %320, i32 0, i32* %324)
  %326 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dtnfsclient_rpcs, align 8
  %327 = load i32, i32* %5, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %326, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %329, i32 0, i32 2
  store i8* %325, i8** %330, align 8
  br label %331

331:                                              ; preds = %311, %299
  %332 = load i32, i32* @dtnfsclient_id, align 4
  %333 = load i32, i32* @dtnfsclient_nfs4_str, align 4
  %334 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dtnfsclient_rpcs, align 8
  %335 = load i32, i32* %5, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %334, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %337, i32 0, i32 0
  %339 = load i32*, i32** %338, align 8
  %340 = load i32, i32* @dtnfsclient_done_str, align 4
  %341 = call i64 @dtrace_probe_lookup(i32 %332, i32 %333, i32* %339, i32 %340)
  %342 = icmp eq i64 %341, 0
  br i1 %342, label %343, label %363

343:                                              ; preds = %331
  %344 = load i32, i32* @dtnfsclient_id, align 4
  %345 = load i32, i32* @dtnfsclient_nfs4_str, align 4
  %346 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dtnfsclient_rpcs, align 8
  %347 = load i32, i32* %5, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %346, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %349, i32 0, i32 0
  %351 = load i32*, i32** %350, align 8
  %352 = load i32, i32* @dtnfsclient_done_str, align 4
  %353 = load i32*, i32** @nfscl_nfs4_done_probes, align 8
  %354 = load i32, i32* %5, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %353, i64 %355
  %357 = call i8* @dtrace_probe_create(i32 %344, i32 %345, i32* %351, i32 %352, i32 0, i32* %356)
  %358 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dtnfsclient_rpcs, align 8
  %359 = load i32, i32* %5, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %358, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %361, i32 0, i32 1
  store i8* %357, i8** %362, align 8
  br label %363

363:                                              ; preds = %343, %331
  br label %364

364:                                              ; preds = %363
  %365 = load i32, i32* %5, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %5, align 4
  br label %294

367:                                              ; preds = %8, %294
  ret void
}

declare dso_local i64 @dtrace_probe_lookup(i32, i32, i32*, i32) #1

declare dso_local i8* @dtrace_probe_create(i32, i32, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
