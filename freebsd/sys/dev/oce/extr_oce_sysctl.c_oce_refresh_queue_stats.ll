; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_sysctl.c_oce_refresh_queue_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_sysctl.c_oce_refresh_queue_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__**, %struct.TYPE_9__**, %struct.oce_drv_stats }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i64, i64 }
%struct.oce_drv_stats = type { %struct.TYPE_13__, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oce_refresh_queue_stats(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.oce_drv_stats*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 4
  store %struct.oce_drv_stats* %6, %struct.oce_drv_stats** %3, align 8
  %7 = load %struct.oce_drv_stats*, %struct.oce_drv_stats** %3, align 8
  %8 = getelementptr inbounds %struct.oce_drv_stats, %struct.oce_drv_stats* %7, i32 0, i32 1
  %9 = call i32 @bzero(%struct.TYPE_13__* %8, i32 4)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %119, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %122

16:                                               ; preds = %10
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %19, i64 %21
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.oce_drv_stats*, %struct.oce_drv_stats** %3, align 8
  %28 = getelementptr inbounds %struct.oce_drv_stats, %struct.oce_drv_stats* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 12
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %26
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %36, i64 %38
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.oce_drv_stats*, %struct.oce_drv_stats** %3, align 8
  %45 = getelementptr inbounds %struct.oce_drv_stats, %struct.oce_drv_stats* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 11
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %43
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %53, i64 %55
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.oce_drv_stats*, %struct.oce_drv_stats** %3, align 8
  %62 = getelementptr inbounds %struct.oce_drv_stats, %struct.oce_drv_stats* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 10
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %60
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %70, i64 %72
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.oce_drv_stats*, %struct.oce_drv_stats** %3, align 8
  %79 = getelementptr inbounds %struct.oce_drv_stats, %struct.oce_drv_stats* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 9
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %77
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %80, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %87, i64 %89
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.oce_drv_stats*, %struct.oce_drv_stats** %3, align 8
  %96 = getelementptr inbounds %struct.oce_drv_stats, %struct.oce_drv_stats* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %94
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %97, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %104, i64 %106
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.oce_drv_stats*, %struct.oce_drv_stats** %3, align 8
  %113 = getelementptr inbounds %struct.oce_drv_stats, %struct.oce_drv_stats* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %111
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %114, align 4
  br label %119

119:                                              ; preds = %16
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %4, align 4
  br label %10

122:                                              ; preds = %10
  %123 = load %struct.oce_drv_stats*, %struct.oce_drv_stats** %3, align 8
  %124 = getelementptr inbounds %struct.oce_drv_stats, %struct.oce_drv_stats* %123, i32 0, i32 0
  %125 = call i32 @bzero(%struct.TYPE_13__* %124, i32 4)
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %252, %122
  %127 = load i32, i32* %4, align 4
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %255

132:                                              ; preds = %126
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %134, align 8
  %136 = load i32, i32* %4, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %135, i64 %137
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 6
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.oce_drv_stats*, %struct.oce_drv_stats** %3, align 8
  %144 = getelementptr inbounds %struct.oce_drv_stats, %struct.oce_drv_stats* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %147, %142
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %145, align 4
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %151, align 8
  %153 = load i32, i32* %4, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %152, i64 %154
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 5
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.oce_drv_stats*, %struct.oce_drv_stats** %3, align 8
  %161 = getelementptr inbounds %struct.oce_drv_stats, %struct.oce_drv_stats* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %164, %159
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %162, align 4
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %168, align 8
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %169, i64 %171
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 4
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.oce_drv_stats*, %struct.oce_drv_stats** %3, align 8
  %178 = getelementptr inbounds %struct.oce_drv_stats, %struct.oce_drv_stats* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %181, %176
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %179, align 4
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %185, align 8
  %187 = load i32, i32* %4, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %186, i64 %188
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.oce_drv_stats*, %struct.oce_drv_stats** %3, align 8
  %195 = getelementptr inbounds %struct.oce_drv_stats, %struct.oce_drv_stats* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = sext i32 %197 to i64
  %199 = add nsw i64 %198, %193
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %196, align 4
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 2
  %203 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %202, align 8
  %204 = load i32, i32* %4, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %203, i64 %205
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.oce_drv_stats*, %struct.oce_drv_stats** %3, align 8
  %212 = getelementptr inbounds %struct.oce_drv_stats, %struct.oce_drv_stats* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = sext i32 %214 to i64
  %216 = add nsw i64 %215, %210
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %213, align 4
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 2
  %220 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %219, align 8
  %221 = load i32, i32* %4, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %220, i64 %222
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.oce_drv_stats*, %struct.oce_drv_stats** %3, align 8
  %229 = getelementptr inbounds %struct.oce_drv_stats, %struct.oce_drv_stats* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  %233 = add nsw i64 %232, %227
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %230, align 4
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 2
  %237 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %236, align 8
  %238 = load i32, i32* %4, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %237, i64 %239
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.oce_drv_stats*, %struct.oce_drv_stats** %3, align 8
  %246 = getelementptr inbounds %struct.oce_drv_stats, %struct.oce_drv_stats* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = sext i32 %248 to i64
  %250 = add nsw i64 %249, %244
  %251 = trunc i64 %250 to i32
  store i32 %251, i32* %247, align 4
  br label %252

252:                                              ; preds = %132
  %253 = load i32, i32* %4, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %4, align 4
  br label %126

255:                                              ; preds = %126
  ret void
}

declare dso_local i32 @bzero(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
