; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_filter.c_set_hashfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_filter.c_set_hashfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32* }
%struct.t4_filter = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.l2t_entry = type { i32 }
%struct.smt_entry = type { i32 }
%struct.wrq_cookie = type { i32 }
%struct.filter_entry = type { i32, i32, i32, i64, %struct.TYPE_11__, %struct.smt_entry*, %struct.l2t_entry* }

@EEXIST = common dso_local global i32 0, align 4
@M_CXGBE = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.t4_filter*, i32, %struct.l2t_entry*, %struct.smt_entry*)* @set_hashfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_hashfilter(%struct.adapter* %0, %struct.t4_filter* %1, i32 %2, %struct.l2t_entry* %3, %struct.smt_entry* %4) #0 {
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.t4_filter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.l2t_entry*, align 8
  %10 = alloca %struct.smt_entry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.wrq_cookie, align 4
  %13 = alloca %struct.filter_entry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store %struct.t4_filter* %1, %struct.t4_filter** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.l2t_entry* %3, %struct.l2t_entry** %9, align 8
  store %struct.smt_entry* %4, %struct.smt_entry** %10, align 8
  store i32 -1, i32* %15, align 4
  %17 = load %struct.t4_filter*, %struct.t4_filter** %7, align 8
  %18 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @MPASS(i32 %20)
  %22 = load %struct.t4_filter*, %struct.t4_filter** %7, align 8
  %23 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.t4_filter*, %struct.t4_filter** %7, align 8
  %28 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %26, %31
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @MPASS(i32 %34)
  %36 = load %struct.t4_filter*, %struct.t4_filter** %7, align 8
  %37 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.t4_filter*, %struct.t4_filter** %7, align 8
  %42 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %40, %45
  %47 = icmp eq i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @MPASS(i32 %48)
  %50 = load %struct.t4_filter*, %struct.t4_filter** %7, align 8
  %51 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %50, i32 0, i32 1
  %52 = call i32 @hf_hashfn_4t(%struct.TYPE_11__* %51)
  store i32 %52, i32* %16, align 4
  %53 = load %struct.adapter*, %struct.adapter** %6, align 8
  %54 = getelementptr inbounds %struct.adapter, %struct.adapter* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = call i32 @mtx_lock(i32* %55)
  %57 = load %struct.adapter*, %struct.adapter** %6, align 8
  %58 = load %struct.t4_filter*, %struct.t4_filter** %7, align 8
  %59 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %58, i32 0, i32 1
  %60 = load i32, i32* %16, align 4
  %61 = call i32* @lookup_hf(%struct.adapter* %57, %struct.TYPE_11__* %59, i32 %60)
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %5
  %64 = load i32, i32* @EEXIST, align 4
  store i32 %64, i32* %14, align 4
  br label %212

65:                                               ; preds = %5
  %66 = load i32, i32* @M_CXGBE, align 4
  %67 = load i32, i32* @M_ZERO, align 4
  %68 = load i32, i32* @M_NOWAIT, align 4
  %69 = or i32 %67, %68
  %70 = call %struct.filter_entry* @malloc(i32 72, i32 %66, i32 %69)
  store %struct.filter_entry* %70, %struct.filter_entry** %13, align 8
  %71 = load %struct.filter_entry*, %struct.filter_entry** %13, align 8
  %72 = icmp eq %struct.filter_entry* %71, null
  %73 = zext i1 %72 to i32
  %74 = call i32 @__predict_false(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = load i32, i32* @ENOMEM, align 4
  store i32 %77, i32* %14, align 4
  br label %212

78:                                               ; preds = %65
  %79 = load %struct.filter_entry*, %struct.filter_entry** %13, align 8
  %80 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %79, i32 0, i32 4
  %81 = load %struct.t4_filter*, %struct.t4_filter** %7, align 8
  %82 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %81, i32 0, i32 1
  %83 = bitcast %struct.TYPE_11__* %80 to i8*
  %84 = bitcast %struct.TYPE_11__* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 8 %84, i64 32, i1 false)
  %85 = load %struct.l2t_entry*, %struct.l2t_entry** %9, align 8
  %86 = load %struct.filter_entry*, %struct.filter_entry** %13, align 8
  %87 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %86, i32 0, i32 6
  store %struct.l2t_entry* %85, %struct.l2t_entry** %87, align 8
  %88 = load %struct.smt_entry*, %struct.smt_entry** %10, align 8
  %89 = load %struct.filter_entry*, %struct.filter_entry** %13, align 8
  %90 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %89, i32 0, i32 5
  store %struct.smt_entry* %88, %struct.smt_entry** %90, align 8
  %91 = load %struct.adapter*, %struct.adapter** %6, align 8
  %92 = load %struct.filter_entry*, %struct.filter_entry** %13, align 8
  %93 = call i32 @alloc_atid(%struct.adapter* %91, %struct.filter_entry* %92)
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @__predict_false(i32 %94)
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %102

97:                                               ; preds = %78
  %98 = load %struct.filter_entry*, %struct.filter_entry** %13, align 8
  %99 = load i32, i32* @M_CXGBE, align 4
  %100 = call i32 @free(%struct.filter_entry* %98, i32 %99)
  %101 = load i32, i32* @EAGAIN, align 4
  store i32 %101, i32* %14, align 4
  br label %212

102:                                              ; preds = %78
  %103 = load i32, i32* %15, align 4
  %104 = icmp sge i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @MPASS(i32 %105)
  %107 = load %struct.adapter*, %struct.adapter** %6, align 8
  %108 = getelementptr inbounds %struct.adapter, %struct.adapter* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load %struct.adapter*, %struct.adapter** %6, align 8
  %113 = load %struct.filter_entry*, %struct.filter_entry** %13, align 8
  %114 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @act_open_cpl_len16(%struct.adapter* %112, i64 %116)
  %118 = call i8* @start_wrq_wr(i32* %111, i32 %117, %struct.wrq_cookie* %12)
  store i8* %118, i8** %11, align 8
  %119 = load i8*, i8** %11, align 8
  %120 = icmp eq i8* %119, null
  br i1 %120, label %121, label %129

121:                                              ; preds = %102
  %122 = load %struct.adapter*, %struct.adapter** %6, align 8
  %123 = load i32, i32* %15, align 4
  %124 = call i32 @free_atid(%struct.adapter* %122, i32 %123)
  %125 = load %struct.filter_entry*, %struct.filter_entry** %13, align 8
  %126 = load i32, i32* @M_CXGBE, align 4
  %127 = call i32 @free(%struct.filter_entry* %125, i32 %126)
  %128 = load i32, i32* @ENOMEM, align 4
  store i32 %128, i32* %14, align 4
  br label %212

129:                                              ; preds = %102
  %130 = load %struct.filter_entry*, %struct.filter_entry** %13, align 8
  %131 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %129
  %136 = load %struct.adapter*, %struct.adapter** %6, align 8
  %137 = load %struct.filter_entry*, %struct.filter_entry** %13, align 8
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* %8, align 4
  %140 = load i8*, i8** %11, align 8
  %141 = call i32 @mk_act_open_req6(%struct.adapter* %136, %struct.filter_entry* %137, i32 %138, i32 %139, i8* %140)
  br label %149

142:                                              ; preds = %129
  %143 = load %struct.adapter*, %struct.adapter** %6, align 8
  %144 = load %struct.filter_entry*, %struct.filter_entry** %13, align 8
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load i8*, i8** %11, align 8
  %148 = call i32 @mk_act_open_req(%struct.adapter* %143, %struct.filter_entry* %144, i32 %145, i32 %146, i8* %147)
  br label %149

149:                                              ; preds = %142, %135
  %150 = load %struct.filter_entry*, %struct.filter_entry** %13, align 8
  %151 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %150, i32 0, i32 0
  store i32 1, i32* %151, align 8
  %152 = load %struct.filter_entry*, %struct.filter_entry** %13, align 8
  %153 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %152, i32 0, i32 1
  store i32 1, i32* %153, align 4
  %154 = load %struct.filter_entry*, %struct.filter_entry** %13, align 8
  %155 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %154, i32 0, i32 2
  store i32 -1, i32* %155, align 8
  %156 = load %struct.adapter*, %struct.adapter** %6, align 8
  %157 = load %struct.filter_entry*, %struct.filter_entry** %13, align 8
  %158 = load i32, i32* %16, align 4
  %159 = call i32 @insert_hf(%struct.adapter* %156, %struct.filter_entry* %157, i32 %158)
  %160 = load %struct.adapter*, %struct.adapter** %6, align 8
  %161 = getelementptr inbounds %struct.adapter, %struct.adapter* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  %165 = load i8*, i8** %11, align 8
  %166 = call i32 @commit_wrq_wr(i32* %164, i8* %165, %struct.wrq_cookie* %12)
  br label %167

167:                                              ; preds = %210, %149
  %168 = load %struct.filter_entry*, %struct.filter_entry** %13, align 8
  %169 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @MPASS(i32 %170)
  %172 = load %struct.filter_entry*, %struct.filter_entry** %13, align 8
  %173 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %197

176:                                              ; preds = %167
  %177 = load %struct.filter_entry*, %struct.filter_entry** %13, align 8
  %178 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %176
  store i32 0, i32* %14, align 4
  %182 = load %struct.filter_entry*, %struct.filter_entry** %13, align 8
  %183 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %182, i32 0, i32 0
  store i32 0, i32* %183, align 8
  %184 = load %struct.filter_entry*, %struct.filter_entry** %13, align 8
  %185 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.t4_filter*, %struct.t4_filter** %7, align 8
  %188 = getelementptr inbounds %struct.t4_filter, %struct.t4_filter* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 8
  br label %196

189:                                              ; preds = %176
  %190 = load %struct.filter_entry*, %struct.filter_entry** %13, align 8
  %191 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  store i32 %192, i32* %14, align 4
  %193 = load %struct.filter_entry*, %struct.filter_entry** %13, align 8
  %194 = load i32, i32* @M_CXGBE, align 4
  %195 = call i32 @free(%struct.filter_entry* %193, i32 %194)
  br label %196

196:                                              ; preds = %189, %181
  br label %211

197:                                              ; preds = %167
  %198 = load %struct.adapter*, %struct.adapter** %6, align 8
  %199 = getelementptr inbounds %struct.adapter, %struct.adapter* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 1
  %201 = load %struct.adapter*, %struct.adapter** %6, align 8
  %202 = getelementptr inbounds %struct.adapter, %struct.adapter* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  %204 = call i64 @cv_wait_sig(i32* %200, i32* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %197
  %207 = load %struct.filter_entry*, %struct.filter_entry** %13, align 8
  %208 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %207, i32 0, i32 0
  store i32 0, i32* %208, align 8
  %209 = load i32, i32* @EINPROGRESS, align 4
  store i32 %209, i32* %14, align 4
  br label %211

210:                                              ; preds = %197
  br label %167

211:                                              ; preds = %206, %196
  br label %212

212:                                              ; preds = %211, %121, %97, %76, %63
  %213 = load %struct.adapter*, %struct.adapter** %6, align 8
  %214 = getelementptr inbounds %struct.adapter, %struct.adapter* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = call i32 @mtx_unlock(i32* %215)
  %217 = load i32, i32* %14, align 4
  ret i32 %217
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @hf_hashfn_4t(%struct.TYPE_11__*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32* @lookup_hf(%struct.adapter*, %struct.TYPE_11__*, i32) #1

declare dso_local %struct.filter_entry* @malloc(i32, i32, i32) #1

declare dso_local i32 @__predict_false(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @alloc_atid(%struct.adapter*, %struct.filter_entry*) #1

declare dso_local i32 @free(%struct.filter_entry*, i32) #1

declare dso_local i8* @start_wrq_wr(i32*, i32, %struct.wrq_cookie*) #1

declare dso_local i32 @act_open_cpl_len16(%struct.adapter*, i64) #1

declare dso_local i32 @free_atid(%struct.adapter*, i32) #1

declare dso_local i32 @mk_act_open_req6(%struct.adapter*, %struct.filter_entry*, i32, i32, i8*) #1

declare dso_local i32 @mk_act_open_req(%struct.adapter*, %struct.filter_entry*, i32, i32, i8*) #1

declare dso_local i32 @insert_hf(%struct.adapter*, %struct.filter_entry*, i32) #1

declare dso_local i32 @commit_wrq_wr(i32*, i8*, %struct.wrq_cookie*) #1

declare dso_local i64 @cv_wait_sig(i32*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
