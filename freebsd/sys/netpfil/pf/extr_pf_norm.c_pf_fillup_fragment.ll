; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_norm.c_pf_fillup_fragment.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_norm.c_pf_fillup_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_fragment = type { i32, i32, i32, i32, i32, i32 }
%struct.pf_fragment_cmp = type { i64, i32 }
%struct.pf_frent = type { i32, i64, i32, i64 }
%struct.TYPE_2__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [20 x i8] c"bad fragment: len 0\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"bad fragment: mff and len %d\00", align 1
@IP_MAXPACKET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"bad fragment: max packet %d\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"reass frag %d @ %d-%d\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"reass frag %#08x @ %d-%d\00", align 1
@V_pf_frag_tree = common dso_local global i32 0, align 4
@V_pf_frag_z = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@PFRES_MEMORY = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i32 0, align 4
@pf_frag_tree = common dso_local global i32 0, align 4
@V_pf_fragqueue = common dso_local global i32 0, align 4
@frag_next = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"!TAILQ_EMPTY()->fr_queue\00", align 1
@pf_fragq = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"after != NULL\00", align 1
@fr_next = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"overlap -%d\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"adjust overlap %d\00", align 1
@V_pf_frent_z = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"fragment queue limit exceeded\00", align 1
@PFRES_FRAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pf_fragment* (%struct.pf_fragment_cmp*, %struct.pf_frent*, i32*)* @pf_fillup_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pf_fragment* @pf_fillup_fragment(%struct.pf_fragment_cmp* %0, %struct.pf_frent* %1, i32* %2) #0 {
  %4 = alloca %struct.pf_fragment*, align 8
  %5 = alloca %struct.pf_fragment_cmp*, align 8
  %6 = alloca %struct.pf_frent*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pf_frent*, align 8
  %9 = alloca %struct.pf_frent*, align 8
  %10 = alloca %struct.pf_frent*, align 8
  %11 = alloca %struct.pf_fragment*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.pf_fragment_cmp* %0, %struct.pf_fragment_cmp** %5, align 8
  store %struct.pf_frent* %1, %struct.pf_frent** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = call i32 (...) @PF_FRAG_ASSERT()
  %16 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %17 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = call i32 @DPFPRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %411

22:                                               ; preds = %3
  %23 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %24 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %29 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, 7
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %35 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @DPFPRINTF(i8* %38)
  br label %411

40:                                               ; preds = %27, %22
  %41 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %42 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %45 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %43, %47
  %49 = load i64, i64* @IP_MAXPACKET, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %40
  %52 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %53 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %56 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %54, %58
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 @DPFPRINTF(i8* %60)
  br label %411

62:                                               ; preds = %40
  %63 = load %struct.pf_fragment_cmp*, %struct.pf_fragment_cmp** %5, align 8
  %64 = getelementptr inbounds %struct.pf_fragment_cmp, %struct.pf_fragment_cmp* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @AF_INET, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0)
  %70 = load %struct.pf_fragment_cmp*, %struct.pf_fragment_cmp** %5, align 8
  %71 = getelementptr inbounds %struct.pf_fragment_cmp, %struct.pf_fragment_cmp* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %74 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %77 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %80 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %78, %82
  %84 = inttoptr i64 %83 to i8*
  %85 = call i32 @DPFPRINTF(i8* %84)
  %86 = load %struct.pf_fragment_cmp*, %struct.pf_fragment_cmp** %5, align 8
  %87 = call %struct.pf_fragment* @pf_find_fragment(%struct.pf_fragment_cmp* %86, i32* @V_pf_frag_tree)
  store %struct.pf_fragment* %87, %struct.pf_fragment** %11, align 8
  %88 = load %struct.pf_fragment*, %struct.pf_fragment** %11, align 8
  %89 = icmp eq %struct.pf_fragment* %88, null
  br i1 %89, label %90, label %145

90:                                               ; preds = %62
  %91 = load i32, i32* @V_pf_frag_z, align 4
  %92 = load i32, i32* @M_NOWAIT, align 4
  %93 = call %struct.pf_fragment* @uma_zalloc(i32 %91, i32 %92)
  store %struct.pf_fragment* %93, %struct.pf_fragment** %11, align 8
  %94 = load %struct.pf_fragment*, %struct.pf_fragment** %11, align 8
  %95 = icmp eq %struct.pf_fragment* %94, null
  br i1 %95, label %96, label %108

96:                                               ; preds = %90
  %97 = call i32 (...) @pf_flush_fragments()
  %98 = load i32, i32* @V_pf_frag_z, align 4
  %99 = load i32, i32* @M_NOWAIT, align 4
  %100 = call %struct.pf_fragment* @uma_zalloc(i32 %98, i32 %99)
  store %struct.pf_fragment* %100, %struct.pf_fragment** %11, align 8
  %101 = load %struct.pf_fragment*, %struct.pf_fragment** %11, align 8
  %102 = icmp eq %struct.pf_fragment* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* @PFRES_MEMORY, align 4
  %106 = call i32 @REASON_SET(i32* %104, i32 %105)
  br label %415

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %107, %90
  %109 = load %struct.pf_fragment*, %struct.pf_fragment** %11, align 8
  %110 = bitcast %struct.pf_fragment* %109 to %struct.pf_fragment_cmp*
  %111 = load %struct.pf_fragment_cmp*, %struct.pf_fragment_cmp** %5, align 8
  %112 = bitcast %struct.pf_fragment_cmp* %110 to i8*
  %113 = bitcast %struct.pf_fragment_cmp* %111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %112, i8* align 8 %113, i64 16, i1 false)
  %114 = load %struct.pf_fragment*, %struct.pf_fragment** %11, align 8
  %115 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @memset(i32 %116, i32 0, i32 4)
  %118 = load %struct.pf_fragment*, %struct.pf_fragment** %11, align 8
  %119 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @memset(i32 %120, i32 0, i32 4)
  %122 = load i32, i32* @time_uptime, align 4
  %123 = load %struct.pf_fragment*, %struct.pf_fragment** %11, align 8
  %124 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  %125 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %126 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.pf_fragment*, %struct.pf_fragment** %11, align 8
  %129 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 4
  %130 = load %struct.pf_fragment*, %struct.pf_fragment** %11, align 8
  %131 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %130, i32 0, i32 1
  store i32 1, i32* %131, align 4
  %132 = load %struct.pf_fragment*, %struct.pf_fragment** %11, align 8
  %133 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %132, i32 0, i32 2
  %134 = call i32 @TAILQ_INIT(i32* %133)
  %135 = load i32, i32* @pf_frag_tree, align 4
  %136 = load %struct.pf_fragment*, %struct.pf_fragment** %11, align 8
  %137 = call i32 @RB_INSERT(i32 %135, i32* @V_pf_frag_tree, %struct.pf_fragment* %136)
  %138 = load %struct.pf_fragment*, %struct.pf_fragment** %11, align 8
  %139 = load i32, i32* @frag_next, align 4
  %140 = call i32 @TAILQ_INSERT_HEAD(i32* @V_pf_fragqueue, %struct.pf_fragment* %138, i32 %139)
  %141 = load %struct.pf_fragment*, %struct.pf_fragment** %11, align 8
  %142 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %143 = call i64 @pf_frent_insert(%struct.pf_fragment* %141, %struct.pf_frent* %142, %struct.pf_frent* null)
  %144 = load %struct.pf_fragment*, %struct.pf_fragment** %11, align 8
  store %struct.pf_fragment* %144, %struct.pf_fragment** %4, align 8
  br label %419

145:                                              ; preds = %62
  %146 = load %struct.pf_fragment*, %struct.pf_fragment** %11, align 8
  %147 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %146, i32 0, i32 2
  %148 = call i32 @TAILQ_EMPTY(i32* %147)
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = call i32 @KASSERT(i32 %151, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %153 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %154 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.pf_fragment*, %struct.pf_fragment** %11, align 8
  %157 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp sgt i32 %155, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %145
  %161 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %162 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.pf_fragment*, %struct.pf_fragment** %11, align 8
  %165 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %160, %145
  %167 = load %struct.pf_fragment*, %struct.pf_fragment** %11, align 8
  %168 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %167, i32 0, i32 2
  %169 = load i32, i32* @pf_fragq, align 4
  %170 = call %struct.TYPE_2__* @TAILQ_LAST(i32* %168, i32 %169)
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.pf_fragment*, %struct.pf_fragment** %11, align 8
  %174 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %173, i32 0, i32 2
  %175 = load i32, i32* @pf_fragq, align 4
  %176 = call %struct.TYPE_2__* @TAILQ_LAST(i32* %174, i32 %175)
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %172, %178
  store i64 %179, i64* %12, align 8
  %180 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %181 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %184 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %182, %186
  %188 = load i64, i64* %12, align 8
  %189 = icmp slt i64 %187, %188
  br i1 %189, label %190, label %196

190:                                              ; preds = %166
  %191 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %192 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %190
  br label %411

196:                                              ; preds = %190, %166
  %197 = load %struct.pf_fragment*, %struct.pf_fragment** %11, align 8
  %198 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %197, i32 0, i32 2
  %199 = load i32, i32* @pf_fragq, align 4
  %200 = call %struct.TYPE_2__* @TAILQ_LAST(i32* %198, i32 %199)
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %233, label %204

204:                                              ; preds = %196
  %205 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %206 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %209 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = sext i32 %210 to i64
  %212 = add nsw i64 %207, %211
  %213 = load i64, i64* %12, align 8
  %214 = icmp sgt i64 %212, %213
  br i1 %214, label %231, label %215

215:                                              ; preds = %204
  %216 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %217 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %220 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = sext i32 %221 to i64
  %223 = add nsw i64 %218, %222
  %224 = load i64, i64* %12, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %232

226:                                              ; preds = %215
  %227 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %228 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %227, i32 0, i32 3
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %226, %204
  br label %411

232:                                              ; preds = %226, %215
  br label %251

233:                                              ; preds = %196
  %234 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %235 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %238 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = sext i32 %239 to i64
  %241 = add nsw i64 %236, %240
  %242 = load i64, i64* %12, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %250

244:                                              ; preds = %233
  %245 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %246 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %245, i32 0, i32 3
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %244
  br label %411

250:                                              ; preds = %244, %233
  br label %251

251:                                              ; preds = %250, %232
  %252 = load %struct.pf_fragment*, %struct.pf_fragment** %11, align 8
  %253 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %254 = call %struct.pf_frent* @pf_frent_previous(%struct.pf_fragment* %252, %struct.pf_frent* %253)
  store %struct.pf_frent* %254, %struct.pf_frent** %10, align 8
  %255 = load %struct.pf_frent*, %struct.pf_frent** %10, align 8
  %256 = icmp eq %struct.pf_frent* %255, null
  br i1 %256, label %257, label %265

257:                                              ; preds = %251
  %258 = load %struct.pf_fragment*, %struct.pf_fragment** %11, align 8
  %259 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %258, i32 0, i32 2
  %260 = call %struct.pf_frent* @TAILQ_FIRST(i32* %259)
  store %struct.pf_frent* %260, %struct.pf_frent** %8, align 8
  %261 = load %struct.pf_frent*, %struct.pf_frent** %8, align 8
  %262 = icmp ne %struct.pf_frent* %261, null
  %263 = zext i1 %262 to i32
  %264 = call i32 @KASSERT(i32 %263, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %269

265:                                              ; preds = %251
  %266 = load %struct.pf_frent*, %struct.pf_frent** %10, align 8
  %267 = load i32, i32* @fr_next, align 4
  %268 = call %struct.pf_frent* @TAILQ_NEXT(%struct.pf_frent* %266, i32 %267)
  store %struct.pf_frent* %268, %struct.pf_frent** %8, align 8
  br label %269

269:                                              ; preds = %265, %257
  %270 = load %struct.pf_frent*, %struct.pf_frent** %10, align 8
  %271 = icmp ne %struct.pf_frent* %270, null
  br i1 %271, label %272, label %326

272:                                              ; preds = %269
  %273 = load %struct.pf_frent*, %struct.pf_frent** %10, align 8
  %274 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = load %struct.pf_frent*, %struct.pf_frent** %10, align 8
  %277 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = sext i32 %278 to i64
  %280 = add nsw i64 %275, %279
  %281 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %282 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = icmp sgt i64 %280, %283
  br i1 %284, label %285, label %326

285:                                              ; preds = %272
  %286 = load %struct.pf_frent*, %struct.pf_frent** %10, align 8
  %287 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = load %struct.pf_frent*, %struct.pf_frent** %10, align 8
  %290 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = sext i32 %291 to i64
  %293 = add nsw i64 %288, %292
  %294 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %295 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %294, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = sub nsw i64 %293, %296
  store i64 %297, i64* %13, align 8
  %298 = load i64, i64* %13, align 8
  %299 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %300 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = sext i32 %301 to i64
  %303 = icmp sge i64 %298, %302
  br i1 %303, label %304, label %305

304:                                              ; preds = %285
  br label %411

305:                                              ; preds = %285
  %306 = load i64, i64* %13, align 8
  %307 = inttoptr i64 %306 to i8*
  %308 = call i32 @DPFPRINTF(i8* %307)
  %309 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %310 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = load i64, i64* %13, align 8
  %313 = call i32 @m_adj(i32 %311, i64 %312)
  %314 = load i64, i64* %13, align 8
  %315 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %316 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %315, i32 0, i32 1
  %317 = load i64, i64* %316, align 8
  %318 = add nsw i64 %317, %314
  store i64 %318, i64* %316, align 8
  %319 = load i64, i64* %13, align 8
  %320 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %321 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = sext i32 %322 to i64
  %324 = sub nsw i64 %323, %319
  %325 = trunc i64 %324 to i32
  store i32 %325, i32* %321, align 8
  br label %326

326:                                              ; preds = %305, %272, %269
  br label %327

327:                                              ; preds = %399, %326
  %328 = load %struct.pf_frent*, %struct.pf_frent** %8, align 8
  %329 = icmp ne %struct.pf_frent* %328, null
  br i1 %329, label %330, label %343

330:                                              ; preds = %327
  %331 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %332 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %331, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %335 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = sext i32 %336 to i64
  %338 = add nsw i64 %333, %337
  %339 = load %struct.pf_frent*, %struct.pf_frent** %8, align 8
  %340 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %339, i32 0, i32 1
  %341 = load i64, i64* %340, align 8
  %342 = icmp sgt i64 %338, %341
  br label %343

343:                                              ; preds = %330, %327
  %344 = phi i1 [ false, %327 ], [ %342, %330 ]
  br i1 %344, label %345, label %401

345:                                              ; preds = %343
  %346 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %347 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %350 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = sext i32 %351 to i64
  %353 = add nsw i64 %348, %352
  %354 = load %struct.pf_frent*, %struct.pf_frent** %8, align 8
  %355 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %354, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  %357 = sub nsw i64 %353, %356
  store i64 %357, i64* %14, align 8
  %358 = load i64, i64* %14, align 8
  %359 = inttoptr i64 %358 to i8*
  %360 = call i32 @DPFPRINTF(i8* %359)
  %361 = load i64, i64* %14, align 8
  %362 = load %struct.pf_frent*, %struct.pf_frent** %8, align 8
  %363 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = sext i32 %364 to i64
  %366 = icmp slt i64 %361, %365
  br i1 %366, label %367, label %385

367:                                              ; preds = %345
  %368 = load %struct.pf_frent*, %struct.pf_frent** %8, align 8
  %369 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %368, i32 0, i32 2
  %370 = load i32, i32* %369, align 8
  %371 = load i64, i64* %14, align 8
  %372 = call i32 @m_adj(i32 %370, i64 %371)
  %373 = load i64, i64* %14, align 8
  %374 = load %struct.pf_frent*, %struct.pf_frent** %8, align 8
  %375 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %374, i32 0, i32 1
  %376 = load i64, i64* %375, align 8
  %377 = add nsw i64 %376, %373
  store i64 %377, i64* %375, align 8
  %378 = load i64, i64* %14, align 8
  %379 = load %struct.pf_frent*, %struct.pf_frent** %8, align 8
  %380 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = sext i32 %381 to i64
  %383 = sub nsw i64 %382, %378
  %384 = trunc i64 %383 to i32
  store i32 %384, i32* %380, align 8
  br label %401

385:                                              ; preds = %345
  %386 = load %struct.pf_frent*, %struct.pf_frent** %8, align 8
  %387 = load i32, i32* @fr_next, align 4
  %388 = call %struct.pf_frent* @TAILQ_NEXT(%struct.pf_frent* %386, i32 %387)
  store %struct.pf_frent* %388, %struct.pf_frent** %9, align 8
  %389 = load %struct.pf_fragment*, %struct.pf_fragment** %11, align 8
  %390 = load %struct.pf_frent*, %struct.pf_frent** %8, align 8
  %391 = call i32 @pf_frent_remove(%struct.pf_fragment* %389, %struct.pf_frent* %390)
  %392 = load %struct.pf_frent*, %struct.pf_frent** %8, align 8
  %393 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %392, i32 0, i32 2
  %394 = load i32, i32* %393, align 8
  %395 = call i32 @m_freem(i32 %394)
  %396 = load i32, i32* @V_pf_frent_z, align 4
  %397 = load %struct.pf_frent*, %struct.pf_frent** %8, align 8
  %398 = call i32 @uma_zfree(i32 %396, %struct.pf_frent* %397)
  br label %399

399:                                              ; preds = %385
  %400 = load %struct.pf_frent*, %struct.pf_frent** %9, align 8
  store %struct.pf_frent* %400, %struct.pf_frent** %8, align 8
  br label %327

401:                                              ; preds = %367, %343
  %402 = load %struct.pf_fragment*, %struct.pf_fragment** %11, align 8
  %403 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %404 = load %struct.pf_frent*, %struct.pf_frent** %10, align 8
  %405 = call i64 @pf_frent_insert(%struct.pf_fragment* %402, %struct.pf_frent* %403, %struct.pf_frent* %404)
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %407, label %409

407:                                              ; preds = %401
  %408 = call i32 @DPFPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %411

409:                                              ; preds = %401
  %410 = load %struct.pf_fragment*, %struct.pf_fragment** %11, align 8
  store %struct.pf_fragment* %410, %struct.pf_fragment** %4, align 8
  br label %419

411:                                              ; preds = %407, %304, %249, %231, %195, %51, %33, %20
  %412 = load i32*, i32** %7, align 8
  %413 = load i32, i32* @PFRES_FRAG, align 4
  %414 = call i32 @REASON_SET(i32* %412, i32 %413)
  br label %415

415:                                              ; preds = %411, %103
  %416 = load i32, i32* @V_pf_frent_z, align 4
  %417 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %418 = call i32 @uma_zfree(i32 %416, %struct.pf_frent* %417)
  store %struct.pf_fragment* null, %struct.pf_fragment** %4, align 8
  br label %419

419:                                              ; preds = %415, %409, %108
  %420 = load %struct.pf_fragment*, %struct.pf_fragment** %4, align 8
  ret %struct.pf_fragment* %420
}

declare dso_local i32 @PF_FRAG_ASSERT(...) #1

declare dso_local i32 @DPFPRINTF(i8*) #1

declare dso_local %struct.pf_fragment* @pf_find_fragment(%struct.pf_fragment_cmp*, i32*) #1

declare dso_local %struct.pf_fragment* @uma_zalloc(i32, i32) #1

declare dso_local i32 @pf_flush_fragments(...) #1

declare dso_local i32 @REASON_SET(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.pf_fragment*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.pf_fragment*, i32) #1

declare dso_local i64 @pf_frent_insert(%struct.pf_fragment*, %struct.pf_frent*, %struct.pf_frent*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.TYPE_2__* @TAILQ_LAST(i32*, i32) #1

declare dso_local %struct.pf_frent* @pf_frent_previous(%struct.pf_fragment*, %struct.pf_frent*) #1

declare dso_local %struct.pf_frent* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.pf_frent* @TAILQ_NEXT(%struct.pf_frent*, i32) #1

declare dso_local i32 @m_adj(i32, i64) #1

declare dso_local i32 @pf_frent_remove(%struct.pf_fragment*, %struct.pf_frent*) #1

declare dso_local i32 @m_freem(i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.pf_frent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
