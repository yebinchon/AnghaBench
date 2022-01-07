; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/cache/extr_g_cache.c_g_cache_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/cache/extr_g_cache.c_g_cache_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.g_geom* }
%struct.g_geom = type { i32, %struct.g_cache_softc* }
%struct.g_cache_softc = type { i64, i32, i64, i32, i32, i64, i64, i32 }
%struct.g_cache_desc = type { i32* }

@.str = private unnamed_addr constant [18 x i8] c"Request received.\00", align 1
@g_cache_enable = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@g_std_done = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Sending request.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_cache_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_cache_start(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_cache_softc*, align 8
  %4 = alloca %struct.g_geom*, align 8
  %5 = alloca %struct.g_cache_desc*, align 8
  %6 = alloca %struct.bio*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %7 = load %struct.bio*, %struct.bio** %2, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.g_geom*, %struct.g_geom** %10, align 8
  store %struct.g_geom* %11, %struct.g_geom** %4, align 8
  %12 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %13 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %12, i32 0, i32 1
  %14 = load %struct.g_cache_softc*, %struct.g_cache_softc** %13, align 8
  store %struct.g_cache_softc* %14, %struct.g_cache_softc** %3, align 8
  %15 = load %struct.bio*, %struct.bio** %2, align 8
  %16 = call i32 @G_CACHE_LOGREQ(%struct.bio* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.bio*, %struct.bio** %2, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %187 [
    i32 129, label %20
    i32 128, label %172
  ]

20:                                               ; preds = %1
  %21 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %22 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = load %struct.bio*, %struct.bio** %2, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %29 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %28, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, %27
  store i64 %31, i64* %29, align 8
  %32 = load i32, i32* @g_cache_enable, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %20
  br label %187

35:                                               ; preds = %20
  %36 = load %struct.bio*, %struct.bio** %2, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.bio*, %struct.bio** %2, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %44 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %187

48:                                               ; preds = %35
  %49 = load %struct.bio*, %struct.bio** %2, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %53 = call i32 @OFF2BNO(i64 %51, %struct.g_cache_softc* %52)
  %54 = load %struct.bio*, %struct.bio** %2, align 8
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.bio*, %struct.bio** %2, align 8
  %58 = getelementptr inbounds %struct.bio, %struct.bio* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = sub nsw i64 %60, 1
  %62 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %63 = call i32 @OFF2BNO(i64 %61, %struct.g_cache_softc* %62)
  %64 = icmp eq i32 %53, %63
  br i1 %64, label %65, label %94

65:                                               ; preds = %48
  %66 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %67 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = load %struct.bio*, %struct.bio** %2, align 8
  %71 = getelementptr inbounds %struct.bio, %struct.bio* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %74 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, %72
  store i64 %76, i64* %74, align 8
  %77 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %78 = load %struct.bio*, %struct.bio** %2, align 8
  %79 = call i32 @g_cache_read(%struct.g_cache_softc* %77, %struct.bio* %78)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %65
  br label %207

82:                                               ; preds = %65
  %83 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %84 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %84, align 8
  %87 = load %struct.bio*, %struct.bio** %2, align 8
  %88 = getelementptr inbounds %struct.bio, %struct.bio* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %91 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %92, %89
  store i64 %93, i64* %91, align 8
  br label %187

94:                                               ; preds = %48
  %95 = load %struct.bio*, %struct.bio** %2, align 8
  %96 = getelementptr inbounds %struct.bio, %struct.bio* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %99 = call i32 @OFF2BNO(i64 %97, %struct.g_cache_softc* %98)
  %100 = add nsw i32 %99, 1
  %101 = load %struct.bio*, %struct.bio** %2, align 8
  %102 = getelementptr inbounds %struct.bio, %struct.bio* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.bio*, %struct.bio** %2, align 8
  %105 = getelementptr inbounds %struct.bio, %struct.bio* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %103, %106
  %108 = sub nsw i64 %107, 1
  %109 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %110 = call i32 @OFF2BNO(i64 %108, %struct.g_cache_softc* %109)
  %111 = icmp eq i32 %100, %110
  br i1 %111, label %112, label %170

112:                                              ; preds = %94
  %113 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %114 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %113, i32 0, i32 4
  %115 = call i32 @mtx_lock(i32* %114)
  %116 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %117 = load %struct.bio*, %struct.bio** %2, align 8
  %118 = getelementptr inbounds %struct.bio, %struct.bio* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %121 = call i32 @OFF2BNO(i64 %119, %struct.g_cache_softc* %120)
  %122 = call %struct.g_cache_desc* @g_cache_lookup(%struct.g_cache_softc* %116, i32 %121)
  store %struct.g_cache_desc* %122, %struct.g_cache_desc** %5, align 8
  %123 = load %struct.g_cache_desc*, %struct.g_cache_desc** %5, align 8
  %124 = icmp eq %struct.g_cache_desc* %123, null
  br i1 %124, label %130, label %125

125:                                              ; preds = %112
  %126 = load %struct.g_cache_desc*, %struct.g_cache_desc** %5, align 8
  %127 = getelementptr inbounds %struct.g_cache_desc, %struct.g_cache_desc* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %134

130:                                              ; preds = %125, %112
  %131 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %132 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %131, i32 0, i32 4
  %133 = call i32 @mtx_unlock(i32* %132)
  br label %187

134:                                              ; preds = %125
  %135 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %136 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 8
  %139 = load %struct.bio*, %struct.bio** %2, align 8
  %140 = getelementptr inbounds %struct.bio, %struct.bio* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %143 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, %141
  store i64 %145, i64* %143, align 8
  %146 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %147 = load %struct.bio*, %struct.bio** %2, align 8
  %148 = load %struct.g_cache_desc*, %struct.g_cache_desc** %5, align 8
  %149 = call i32 @g_cache_deliver(%struct.g_cache_softc* %146, %struct.bio* %147, %struct.g_cache_desc* %148, i32 0)
  %150 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %151 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %150, i32 0, i32 4
  %152 = call i32 @mtx_unlock(i32* %151)
  %153 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %154 = load %struct.bio*, %struct.bio** %2, align 8
  %155 = call i32 @g_cache_read(%struct.g_cache_softc* %153, %struct.bio* %154)
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %134
  br label %207

158:                                              ; preds = %134
  %159 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %160 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %160, align 8
  %163 = load %struct.bio*, %struct.bio** %2, align 8
  %164 = getelementptr inbounds %struct.bio, %struct.bio* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %167 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = sub nsw i64 %168, %165
  store i64 %169, i64* %167, align 8
  br label %187

170:                                              ; preds = %94
  br label %171

171:                                              ; preds = %170
  br label %187

172:                                              ; preds = %1
  %173 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %174 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 8
  %177 = load %struct.bio*, %struct.bio** %2, align 8
  %178 = getelementptr inbounds %struct.bio, %struct.bio* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %181 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %182, %179
  store i64 %183, i64* %181, align 8
  %184 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %185 = load %struct.bio*, %struct.bio** %2, align 8
  %186 = call i32 @g_cache_invalidate(%struct.g_cache_softc* %184, %struct.bio* %185)
  br label %187

187:                                              ; preds = %1, %172, %171, %158, %130, %82, %47, %34
  %188 = load %struct.bio*, %struct.bio** %2, align 8
  %189 = call %struct.bio* @g_clone_bio(%struct.bio* %188)
  store %struct.bio* %189, %struct.bio** %6, align 8
  %190 = load %struct.bio*, %struct.bio** %6, align 8
  %191 = icmp eq %struct.bio* %190, null
  br i1 %191, label %192, label %196

192:                                              ; preds = %187
  %193 = load %struct.bio*, %struct.bio** %2, align 8
  %194 = load i32, i32* @ENOMEM, align 4
  %195 = call i32 @g_io_deliver(%struct.bio* %193, i32 %194)
  br label %207

196:                                              ; preds = %187
  %197 = load i32, i32* @g_std_done, align 4
  %198 = load %struct.bio*, %struct.bio** %6, align 8
  %199 = getelementptr inbounds %struct.bio, %struct.bio* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  %200 = load %struct.bio*, %struct.bio** %6, align 8
  %201 = call i32 @G_CACHE_LOGREQ(%struct.bio* %200, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %202 = load %struct.bio*, %struct.bio** %6, align 8
  %203 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %204 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %203, i32 0, i32 0
  %205 = call i32 @LIST_FIRST(i32* %204)
  %206 = call i32 @g_io_request(%struct.bio* %202, i32 %205)
  br label %207

207:                                              ; preds = %196, %192, %157, %81
  ret void
}

declare dso_local i32 @G_CACHE_LOGREQ(%struct.bio*, i8*) #1

declare dso_local i32 @OFF2BNO(i64, %struct.g_cache_softc*) #1

declare dso_local i32 @g_cache_read(%struct.g_cache_softc*, %struct.bio*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.g_cache_desc* @g_cache_lookup(%struct.g_cache_softc*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @g_cache_deliver(%struct.g_cache_softc*, %struct.bio*, %struct.g_cache_desc*, i32) #1

declare dso_local i32 @g_cache_invalidate(%struct.g_cache_softc*, %struct.bio*) #1

declare dso_local %struct.bio* @g_clone_bio(%struct.bio*) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

declare dso_local i32 @g_io_request(%struct.bio*, i32) #1

declare dso_local i32 @LIST_FIRST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
