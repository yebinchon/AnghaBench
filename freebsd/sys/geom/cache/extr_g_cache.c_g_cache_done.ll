; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/cache/extr_g_cache.c_g_cache_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/cache/extr_g_cache.c_g_cache_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.g_cache_softc* }
%struct.g_cache_softc = type { i32, i32, i32, i32 }
%struct.g_cache_desc = type { i32, %struct.bio* }

@.str = private unnamed_addr constant [37 x i8] c"corrupt bio_caller in g_cache_done()\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"corrupt bio_driver in g_cache_done()\00", align 1
@D_FLAG_INVALID = common dso_local global i32 0, align 4
@d_next = common dso_local global i32 0, align 4
@D_FLAG_USED = common dso_local global i32 0, align 4
@d_used = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_cache_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_cache_done(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_cache_softc*, align 8
  %4 = alloca %struct.g_cache_desc*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.bio*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %7 = load %struct.bio*, %struct.bio** %2, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.g_cache_softc*, %struct.g_cache_softc** %12, align 8
  store %struct.g_cache_softc* %13, %struct.g_cache_softc** %3, align 8
  %14 = load %struct.bio*, %struct.bio** %2, align 8
  %15 = call %struct.g_cache_softc* @G_CACHE_DESC1(%struct.bio* %14)
  %16 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %17 = icmp eq %struct.g_cache_softc* %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.bio*, %struct.bio** %2, align 8
  %21 = call %struct.g_cache_desc* @G_CACHE_DESC2(%struct.bio* %20)
  store %struct.g_cache_desc* %21, %struct.g_cache_desc** %4, align 8
  %22 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %23 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %22, i32 0, i32 0
  %24 = call i32 @mtx_lock(i32* %23)
  %25 = load %struct.g_cache_desc*, %struct.g_cache_desc** %4, align 8
  %26 = getelementptr inbounds %struct.g_cache_desc, %struct.g_cache_desc* %25, i32 0, i32 1
  %27 = load %struct.bio*, %struct.bio** %26, align 8
  store %struct.bio* %27, %struct.bio** %5, align 8
  br label %28

28:                                               ; preds = %31, %1
  %29 = load %struct.bio*, %struct.bio** %5, align 8
  %30 = icmp ne %struct.bio* %29, null
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = load %struct.bio*, %struct.bio** %5, align 8
  %33 = call %struct.g_cache_softc* @G_CACHE_NEXT_BIO1(%struct.bio* %32)
  %34 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %35 = icmp eq %struct.g_cache_softc* %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @KASSERT(i32 %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.bio*, %struct.bio** %5, align 8
  %39 = call %struct.bio* @G_CACHE_NEXT_BIO2(%struct.bio* %38)
  store %struct.bio* %39, %struct.bio** %6, align 8
  %40 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %41 = load %struct.bio*, %struct.bio** %5, align 8
  %42 = load %struct.g_cache_desc*, %struct.g_cache_desc** %4, align 8
  %43 = load %struct.bio*, %struct.bio** %2, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @g_cache_deliver(%struct.g_cache_softc* %40, %struct.bio* %41, %struct.g_cache_desc* %42, i64 %45)
  %47 = load %struct.bio*, %struct.bio** %6, align 8
  store %struct.bio* %47, %struct.bio** %5, align 8
  br label %28

48:                                               ; preds = %28
  %49 = load %struct.g_cache_desc*, %struct.g_cache_desc** %4, align 8
  %50 = getelementptr inbounds %struct.g_cache_desc, %struct.g_cache_desc* %49, i32 0, i32 1
  store %struct.bio* null, %struct.bio** %50, align 8
  %51 = load %struct.g_cache_desc*, %struct.g_cache_desc** %4, align 8
  %52 = getelementptr inbounds %struct.g_cache_desc, %struct.g_cache_desc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @D_FLAG_INVALID, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %48
  %58 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %59 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %63 = load %struct.g_cache_desc*, %struct.g_cache_desc** %4, align 8
  %64 = call i32 @g_cache_free(%struct.g_cache_softc* %62, %struct.g_cache_desc* %63)
  br label %95

65:                                               ; preds = %48
  %66 = load %struct.bio*, %struct.bio** %2, align 8
  %67 = getelementptr inbounds %struct.bio, %struct.bio* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %94

70:                                               ; preds = %65
  %71 = load %struct.g_cache_desc*, %struct.g_cache_desc** %4, align 8
  %72 = load i32, i32* @d_next, align 4
  %73 = call i32 @LIST_REMOVE(%struct.g_cache_desc* %71, i32 %72)
  %74 = load %struct.g_cache_desc*, %struct.g_cache_desc** %4, align 8
  %75 = getelementptr inbounds %struct.g_cache_desc, %struct.g_cache_desc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @D_FLAG_USED, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %70
  %81 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %82 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %81, i32 0, i32 2
  %83 = load %struct.g_cache_desc*, %struct.g_cache_desc** %4, align 8
  %84 = load i32, i32* @d_used, align 4
  %85 = call i32 @TAILQ_REMOVE(i32* %82, %struct.g_cache_desc* %83, i32 %84)
  %86 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %87 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %80, %70
  %91 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %92 = load %struct.g_cache_desc*, %struct.g_cache_desc** %4, align 8
  %93 = call i32 @g_cache_free(%struct.g_cache_softc* %91, %struct.g_cache_desc* %92)
  br label %94

94:                                               ; preds = %90, %65
  br label %95

95:                                               ; preds = %94, %57
  %96 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %97 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %96, i32 0, i32 0
  %98 = call i32 @mtx_unlock(i32* %97)
  %99 = load %struct.bio*, %struct.bio** %2, align 8
  %100 = call i32 @g_destroy_bio(%struct.bio* %99)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.g_cache_softc* @G_CACHE_DESC1(%struct.bio*) #1

declare dso_local %struct.g_cache_desc* @G_CACHE_DESC2(%struct.bio*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.g_cache_softc* @G_CACHE_NEXT_BIO1(%struct.bio*) #1

declare dso_local %struct.bio* @G_CACHE_NEXT_BIO2(%struct.bio*) #1

declare dso_local i32 @g_cache_deliver(%struct.g_cache_softc*, %struct.bio*, %struct.g_cache_desc*, i64) #1

declare dso_local i32 @g_cache_free(%struct.g_cache_softc*, %struct.g_cache_desc*) #1

declare dso_local i32 @LIST_REMOVE(%struct.g_cache_desc*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.g_cache_desc*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
