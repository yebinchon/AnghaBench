; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/cache/extr_g_cache.c_g_cache_deliver.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/cache/extr_g_cache.c_g_cache_deliver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_cache_softc = type { i64, i32, i32, i32 }
%struct.bio = type { i64, i64, i32, i64, i64 }
%struct.g_cache_desc = type { i64, i64, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"wrong entry\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"extra data\00", align 1
@D_FLAG_USED = common dso_local global i32 0, align 4
@d_used = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_cache_softc*, %struct.bio*, %struct.g_cache_desc*, i32)* @g_cache_deliver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_cache_deliver(%struct.g_cache_softc* %0, %struct.bio* %1, %struct.g_cache_desc* %2, i32 %3) #0 {
  %5 = alloca %struct.g_cache_softc*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.g_cache_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.g_cache_softc* %0, %struct.g_cache_softc** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store %struct.g_cache_desc* %2, %struct.g_cache_desc** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.g_cache_softc*, %struct.g_cache_softc** %5, align 8
  %13 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %12, i32 0, i32 3
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = call i32 @mtx_assert(i32* %13, i32 %14)
  %16 = load %struct.bio*, %struct.bio** %6, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.g_cache_softc*, %struct.g_cache_softc** %5, align 8
  %20 = call i64 @OFF2BNO(i64 %18, %struct.g_cache_softc* %19)
  %21 = load %struct.g_cache_desc*, %struct.g_cache_desc** %7, align 8
  %22 = getelementptr inbounds %struct.g_cache_desc, %struct.g_cache_desc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sle i64 %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.bio*, %struct.bio** %6, align 8
  %28 = getelementptr inbounds %struct.bio, %struct.bio* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.bio*, %struct.bio** %6, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = sub nsw i64 %33, 1
  %35 = load %struct.g_cache_softc*, %struct.g_cache_softc** %5, align 8
  %36 = call i64 @OFF2BNO(i64 %34, %struct.g_cache_softc* %35)
  %37 = load %struct.g_cache_desc*, %struct.g_cache_desc** %7, align 8
  %38 = getelementptr inbounds %struct.g_cache_desc, %struct.g_cache_desc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %36, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @KASSERT(i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.g_cache_desc*, %struct.g_cache_desc** %7, align 8
  %44 = getelementptr inbounds %struct.g_cache_desc, %struct.g_cache_desc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.g_cache_softc*, %struct.g_cache_softc** %5, align 8
  %47 = call i64 @BNO2OFF(i64 %45, %struct.g_cache_softc* %46)
  store i64 %47, i64* %9, align 8
  %48 = load %struct.bio*, %struct.bio** %6, align 8
  %49 = getelementptr inbounds %struct.bio, %struct.bio* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i64 @MAX(i64 %50, i64 %51)
  store i64 %52, i64* %10, align 8
  %53 = load %struct.bio*, %struct.bio** %6, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.bio*, %struct.bio** %6, align 8
  %57 = getelementptr inbounds %struct.bio, %struct.bio* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.g_cache_softc*, %struct.g_cache_softc** %5, align 8
  %62 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = call i64 @MIN(i64 %59, i64 %64)
  %66 = load i64, i64* %10, align 8
  %67 = sub nsw i64 %65, %66
  store i64 %67, i64* %11, align 8
  %68 = load %struct.bio*, %struct.bio** %6, align 8
  %69 = getelementptr inbounds %struct.bio, %struct.bio* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %4
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.bio*, %struct.bio** %6, align 8
  %75 = getelementptr inbounds %struct.bio, %struct.bio* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %72, %4
  %77 = load %struct.bio*, %struct.bio** %6, align 8
  %78 = getelementptr inbounds %struct.bio, %struct.bio* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %76
  %82 = load %struct.g_cache_desc*, %struct.g_cache_desc** %7, align 8
  %83 = getelementptr inbounds %struct.g_cache_desc, %struct.g_cache_desc* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* %9, align 8
  %87 = sub nsw i64 %85, %86
  %88 = add nsw i64 %84, %87
  %89 = load %struct.bio*, %struct.bio** %6, align 8
  %90 = getelementptr inbounds %struct.bio, %struct.bio* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %10, align 8
  %93 = load %struct.bio*, %struct.bio** %6, align 8
  %94 = getelementptr inbounds %struct.bio, %struct.bio* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %92, %95
  %97 = add nsw i64 %91, %96
  %98 = load i64, i64* %11, align 8
  %99 = call i32 @bcopy(i64 %88, i64 %97, i64 %98)
  br label %100

100:                                              ; preds = %81, %76
  %101 = load i64, i64* %11, align 8
  %102 = load %struct.bio*, %struct.bio** %6, align 8
  %103 = getelementptr inbounds %struct.bio, %struct.bio* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, %101
  store i64 %105, i64* %103, align 8
  %106 = load %struct.bio*, %struct.bio** %6, align 8
  %107 = getelementptr inbounds %struct.bio, %struct.bio* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.bio*, %struct.bio** %6, align 8
  %110 = getelementptr inbounds %struct.bio, %struct.bio* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp sle i64 %108, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @KASSERT(i32 %113, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %115 = load %struct.bio*, %struct.bio** %6, align 8
  %116 = getelementptr inbounds %struct.bio, %struct.bio* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.bio*, %struct.bio** %6, align 8
  %119 = getelementptr inbounds %struct.bio, %struct.bio* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %117, %120
  br i1 %121, label %122, label %136

122:                                              ; preds = %100
  %123 = load %struct.bio*, %struct.bio** %6, align 8
  %124 = getelementptr inbounds %struct.bio, %struct.bio* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load %struct.bio*, %struct.bio** %6, align 8
  %129 = getelementptr inbounds %struct.bio, %struct.bio* %128, i32 0, i32 4
  store i64 0, i64* %129, align 8
  br label %130

130:                                              ; preds = %127, %122
  %131 = load %struct.bio*, %struct.bio** %6, align 8
  %132 = load %struct.bio*, %struct.bio** %6, align 8
  %133 = getelementptr inbounds %struct.bio, %struct.bio* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @g_io_deliver(%struct.bio* %131, i32 %134)
  br label %136

136:                                              ; preds = %130, %100
  %137 = load %struct.g_cache_desc*, %struct.g_cache_desc** %7, align 8
  %138 = getelementptr inbounds %struct.g_cache_desc, %struct.g_cache_desc* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @D_FLAG_USED, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %136
  %144 = load %struct.g_cache_softc*, %struct.g_cache_softc** %5, align 8
  %145 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %144, i32 0, i32 2
  %146 = load %struct.g_cache_desc*, %struct.g_cache_desc** %7, align 8
  %147 = load i32, i32* @d_used, align 4
  %148 = call i32 @TAILQ_REMOVE(i32* %145, %struct.g_cache_desc* %146, i32 %147)
  %149 = load %struct.g_cache_softc*, %struct.g_cache_softc** %5, align 8
  %150 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %149, i32 0, i32 2
  %151 = load %struct.g_cache_desc*, %struct.g_cache_desc** %7, align 8
  %152 = load i32, i32* @d_used, align 4
  %153 = call i32 @TAILQ_INSERT_TAIL(i32* %150, %struct.g_cache_desc* %151, i32 %152)
  br label %180

154:                                              ; preds = %136
  %155 = load i64, i64* %10, align 8
  %156 = load i64, i64* %11, align 8
  %157 = add nsw i64 %155, %156
  %158 = load %struct.g_cache_softc*, %struct.g_cache_softc** %5, align 8
  %159 = call i64 @OFF2BNO(i64 %157, %struct.g_cache_softc* %158)
  %160 = load %struct.g_cache_desc*, %struct.g_cache_desc** %7, align 8
  %161 = getelementptr inbounds %struct.g_cache_desc, %struct.g_cache_desc* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp sgt i64 %159, %162
  br i1 %163, label %164, label %179

164:                                              ; preds = %154
  %165 = load %struct.g_cache_softc*, %struct.g_cache_softc** %5, align 8
  %166 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %165, i32 0, i32 2
  %167 = load %struct.g_cache_desc*, %struct.g_cache_desc** %7, align 8
  %168 = load i32, i32* @d_used, align 4
  %169 = call i32 @TAILQ_INSERT_TAIL(i32* %166, %struct.g_cache_desc* %167, i32 %168)
  %170 = load %struct.g_cache_softc*, %struct.g_cache_softc** %5, align 8
  %171 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 8
  %174 = load i32, i32* @D_FLAG_USED, align 4
  %175 = load %struct.g_cache_desc*, %struct.g_cache_desc** %7, align 8
  %176 = getelementptr inbounds %struct.g_cache_desc, %struct.g_cache_desc* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %164, %154
  br label %180

180:                                              ; preds = %179, %143
  %181 = load i32, i32* @time_uptime, align 4
  %182 = load %struct.g_cache_desc*, %struct.g_cache_desc** %7, align 8
  %183 = getelementptr inbounds %struct.g_cache_desc, %struct.g_cache_desc* %182, i32 0, i32 3
  store i32 %181, i32* %183, align 4
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @OFF2BNO(i64, %struct.g_cache_softc*) #1

declare dso_local i64 @BNO2OFF(i64, %struct.g_cache_softc*) #1

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @bcopy(i64, i64, i64) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.g_cache_desc*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.g_cache_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
