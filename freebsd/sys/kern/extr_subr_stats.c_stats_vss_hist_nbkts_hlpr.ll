; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_vss_hist_nbkts_hlpr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_vss_hist_nbkts_hlpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vss_hist_hlpr_info = type { i64, i32, i32, %struct.voistatdata_numeric, %struct.TYPE_9__, %struct.voistatdata_numeric }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.voistatdata_numeric }
%struct.voistatdata_numeric = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@BKT_USR = common dso_local global i64 0, align 8
@VSD_HIST_LBOUND_INF = common dso_local global i32 0, align 4
@VSD_HIST_UBOUND_INF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vss_hist_hlpr_info*)* @stats_vss_hist_nbkts_hlpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stats_vss_hist_nbkts_hlpr(%struct.vss_hist_hlpr_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vss_hist_hlpr_info*, align 8
  %4 = alloca %struct.voistatdata_numeric, align 4
  %5 = alloca %struct.voistatdata_numeric, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vss_hist_hlpr_info* %0, %struct.vss_hist_hlpr_info** %3, align 8
  %8 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %3, align 8
  %9 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BKT_USR, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %1
  %14 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %3, align 8
  %15 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %14, i32 0, i32 5
  %16 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %3, align 8
  %17 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = bitcast %struct.voistatdata_numeric* %15 to i8*
  %23 = bitcast %struct.voistatdata_numeric* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 4 %23, i64 40, i1 false)
  %24 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %3, align 8
  %25 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %24, i32 0, i32 3
  %26 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %3, align 8
  %27 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %3, align 8
  %31 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = bitcast %struct.voistatdata_numeric* %25 to i8*
  %39 = bitcast %struct.voistatdata_numeric* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 4 %39, i64 40, i1 false)
  br label %40

40:                                               ; preds = %13, %1
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %41 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %3, align 8
  %42 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %41, i32 0, i32 5
  %43 = bitcast %struct.voistatdata_numeric* %5 to i8*
  %44 = bitcast %struct.voistatdata_numeric* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 8 %44, i64 40, i1 false)
  br label %45

45:                                               ; preds = %181, %40
  %46 = bitcast %struct.voistatdata_numeric* %4 to i8*
  %47 = bitcast %struct.voistatdata_numeric* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 40, i1 false)
  %48 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  %51 = call i64 @stats_vss_hist_bkt_hlpr(%struct.vss_hist_hlpr_info* %48, i32 %49, %struct.voistatdata_numeric* %4, %struct.voistatdata_numeric* %5)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %207

54:                                               ; preds = %45
  %55 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %3, align 8
  %56 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @BKT_USR, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %3, align 8
  %63 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %61, %65
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %7, align 4
  br label %180

68:                                               ; preds = %54
  %69 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %3, align 8
  %70 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  switch i32 %71, label %178 [
    i32 137, label %72
    i32 134, label %83
    i32 136, label %94
    i32 133, label %105
    i32 135, label %116
    i32 132, label %127
    i32 131, label %138
    i32 129, label %148
    i32 130, label %158
    i32 128, label %168
  ]

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %5, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %3, align 8
  %77 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %75, %80
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %7, align 4
  br label %179

83:                                               ; preds = %68
  %84 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %5, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %3, align 8
  %88 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp sgt i32 %86, %91
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %7, align 4
  br label %179

94:                                               ; preds = %68
  %95 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %5, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %3, align 8
  %99 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp sgt i32 %97, %102
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %7, align 4
  br label %179

105:                                              ; preds = %68
  %106 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %5, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %3, align 8
  %110 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp sgt i32 %108, %113
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %7, align 4
  br label %179

116:                                              ; preds = %68
  %117 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %5, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %3, align 8
  %121 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp sgt i32 %119, %124
  %126 = zext i1 %125 to i32
  store i32 %126, i32* %7, align 4
  br label %179

127:                                              ; preds = %68
  %128 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %5, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %3, align 8
  %132 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp sgt i32 %130, %135
  %137 = zext i1 %136 to i32
  store i32 %137, i32* %7, align 4
  br label %179

138:                                              ; preds = %68
  %139 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %5, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %3, align 8
  %143 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @Q_QGTQ(i32 %141, i32 %146)
  store i32 %147, i32* %7, align 4
  br label %179

148:                                              ; preds = %68
  %149 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %5, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %3, align 8
  %153 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @Q_QGTQ(i32 %151, i32 %156)
  store i32 %157, i32* %7, align 4
  br label %179

158:                                              ; preds = %68
  %159 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %5, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %3, align 8
  %163 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @Q_QGTQ(i32 %161, i32 %166)
  store i32 %167, i32* %7, align 4
  br label %179

168:                                              ; preds = %68
  %169 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %5, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %3, align 8
  %173 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @Q_QGTQ(i32 %171, i32 %176)
  store i32 %177, i32* %7, align 4
  br label %179

178:                                              ; preds = %68
  store i32 0, i32* %2, align 4
  br label %207

179:                                              ; preds = %168, %158, %148, %138, %127, %116, %105, %94, %83, %72
  br label %180

180:                                              ; preds = %179, %60
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %7, align 4
  %183 = icmp ne i32 %182, 0
  %184 = xor i1 %183, true
  br i1 %184, label %45, label %185

185:                                              ; preds = %181
  %186 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %3, align 8
  %187 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @VSD_HIST_LBOUND_INF, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %185
  %193 = load i32, i32* %6, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %6, align 4
  br label %195

195:                                              ; preds = %192, %185
  %196 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %3, align 8
  %197 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @VSD_HIST_UBOUND_INF, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %195
  %203 = load i32, i32* %6, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %6, align 4
  br label %205

205:                                              ; preds = %202, %195
  %206 = load i32, i32* %6, align 4
  store i32 %206, i32* %2, align 4
  br label %207

207:                                              ; preds = %205, %178, %53
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @stats_vss_hist_bkt_hlpr(%struct.vss_hist_hlpr_info*, i32, %struct.voistatdata_numeric*, %struct.voistatdata_numeric*) #2

declare dso_local i32 @Q_QGTQ(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
