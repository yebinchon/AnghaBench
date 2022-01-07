; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_provider = type { i32, i32, %struct.g_raid_volume*, %struct.TYPE_2__* }
%struct.g_raid_volume = type { i64, i64, i64 }
%struct.TYPE_2__ = type { %struct.g_raid_softc* }
%struct.g_raid_softc = type { i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"NULL softc (provider=%s).\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"NULL volume (provider=%s).\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Access request for %s: r%dw%de%d.\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@G_RAID_DESTROY_DELAYED = common dso_local global i64 0, align 8
@G_RAID_DESTROY_HARD = common dso_local global i64 0, align 8
@G_RAID_NODE_E_WAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_provider*, i32, i32, i32)* @g_raid_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_access(%struct.g_provider* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.g_provider*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.g_raid_volume*, align 8
  %10 = alloca %struct.g_raid_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.g_provider* %0, %struct.g_provider** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %13, align 4
  %14 = call i32 (...) @g_topology_assert()
  %15 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %16 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.g_raid_softc*, %struct.g_raid_softc** %18, align 8
  store %struct.g_raid_softc* %19, %struct.g_raid_softc** %10, align 8
  %20 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %21 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %20, i32 0, i32 2
  %22 = load %struct.g_raid_volume*, %struct.g_raid_volume** %21, align 8
  store %struct.g_raid_volume* %22, %struct.g_raid_volume** %9, align 8
  %23 = load %struct.g_raid_softc*, %struct.g_raid_softc** %10, align 8
  %24 = icmp ne %struct.g_raid_softc* %23, null
  %25 = zext i1 %24 to i32
  %26 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %27 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @KASSERT(i32 %25, i8* %30)
  %32 = load %struct.g_raid_volume*, %struct.g_raid_volume** %9, align 8
  %33 = icmp ne %struct.g_raid_volume* %32, null
  %34 = zext i1 %33 to i32
  %35 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %36 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @KASSERT(i32 %34, i8* %39)
  %41 = load %struct.g_raid_softc*, %struct.g_raid_softc** %10, align 8
  %42 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %43 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @G_RAID_DEBUG1(i32 2, %struct.g_raid_softc* %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %50 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %11, align 4
  %54 = call i32 (...) @g_topology_unlock()
  %55 = load %struct.g_raid_softc*, %struct.g_raid_softc** %10, align 8
  %56 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %55, i32 0, i32 1
  %57 = call i32 @sx_xlock(i32* %56)
  %58 = load %struct.g_raid_softc*, %struct.g_raid_softc** %10, align 8
  %59 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %4
  %63 = load i32, i32* %6, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %8, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68, %65, %62
  %72 = load i32, i32* @ENXIO, align 4
  store i32 %72, i32* %13, align 4
  br label %138

73:                                               ; preds = %68, %4
  %74 = load %struct.g_raid_volume*, %struct.g_raid_volume** %9, align 8
  %75 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i32, i32* %7, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* @EROFS, align 4
  store i32 %82, i32* %13, align 4
  br label %138

83:                                               ; preds = %78, %73
  %84 = load i32, i32* %11, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load %struct.g_raid_volume*, %struct.g_raid_volume** %9, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @g_raid_clean(%struct.g_raid_volume* %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %83
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %91, %92
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = load %struct.g_raid_volume*, %struct.g_raid_volume** %9, align 8
  %98 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, %96
  store i64 %100, i64* %98, align 8
  %101 = load %struct.g_raid_softc*, %struct.g_raid_softc** %10, align 8
  %102 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @G_RAID_DESTROY_DELAYED, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %124

106:                                              ; preds = %90
  %107 = load %struct.g_raid_volume*, %struct.g_raid_volume** %9, align 8
  %108 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %106
  %112 = load %struct.g_raid_softc*, %struct.g_raid_softc** %10, align 8
  %113 = call i32 @g_raid_nopens(%struct.g_raid_softc* %112)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %111
  %117 = load i64, i64* @G_RAID_DESTROY_HARD, align 8
  %118 = load %struct.g_raid_softc*, %struct.g_raid_softc** %10, align 8
  %119 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  %120 = load %struct.g_raid_softc*, %struct.g_raid_softc** %10, align 8
  %121 = load i32, i32* @G_RAID_NODE_E_WAKE, align 4
  %122 = call i32 @g_raid_event_send(%struct.g_raid_softc* %120, i32 %121, i32 0)
  br label %123

123:                                              ; preds = %116, %111
  br label %124

124:                                              ; preds = %123, %106, %90
  %125 = load %struct.g_raid_volume*, %struct.g_raid_volume** %9, align 8
  %126 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %124
  %130 = load %struct.g_raid_volume*, %struct.g_raid_volume** %9, align 8
  %131 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load %struct.g_raid_volume*, %struct.g_raid_volume** %9, align 8
  %136 = call i32 @g_raid_destroy_volume(%struct.g_raid_volume* %135)
  br label %137

137:                                              ; preds = %134, %129, %124
  br label %138

138:                                              ; preds = %137, %81, %71
  %139 = load %struct.g_raid_softc*, %struct.g_raid_softc** %10, align 8
  %140 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %139, i32 0, i32 1
  %141 = call i32 @sx_xunlock(i32* %140)
  %142 = call i32 (...) @g_topology_lock()
  %143 = load i32, i32* %13, align 4
  ret i32 %143
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @G_RAID_DEBUG1(i32, %struct.g_raid_softc*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @g_raid_clean(%struct.g_raid_volume*, i32) #1

declare dso_local i32 @g_raid_nopens(%struct.g_raid_softc*) #1

declare dso_local i32 @g_raid_event_send(%struct.g_raid_softc*, i32, i32) #1

declare dso_local i32 @g_raid_destroy_volume(%struct.g_raid_volume*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @g_topology_lock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
