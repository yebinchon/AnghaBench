; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/concat/extr_g_concat.c_g_concat_dumpconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/concat/extr_g_concat.c_g_concat_dumpconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.g_geom = type { %struct.g_concat_softc* }
%struct.g_concat_softc = type { i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.g_consumer = type { %struct.g_concat_disk* }
%struct.g_concat_disk = type { i64, i64 }
%struct.g_provider = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s<End>%jd</End>\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s<Start>%jd</Start>\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s<ID>%u</ID>\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s<Type>\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"AUTOMATIC\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"MANUAL\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"</Type>\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"%s<Status>Total=%u, Online=%u</Status>\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"%s<State>\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"</State>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbuf*, i8*, %struct.g_geom*, %struct.g_consumer*, %struct.g_provider*)* @g_concat_dumpconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_concat_dumpconf(%struct.sbuf* %0, i8* %1, %struct.g_geom* %2, %struct.g_consumer* %3, %struct.g_provider* %4) #0 {
  %6 = alloca %struct.sbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.g_geom*, align 8
  %9 = alloca %struct.g_consumer*, align 8
  %10 = alloca %struct.g_provider*, align 8
  %11 = alloca %struct.g_concat_softc*, align 8
  %12 = alloca %struct.g_concat_disk*, align 8
  store %struct.sbuf* %0, %struct.sbuf** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.g_geom* %2, %struct.g_geom** %8, align 8
  store %struct.g_consumer* %3, %struct.g_consumer** %9, align 8
  store %struct.g_provider* %4, %struct.g_provider** %10, align 8
  %13 = call i32 (...) @g_topology_assert()
  %14 = load %struct.g_geom*, %struct.g_geom** %8, align 8
  %15 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %14, i32 0, i32 0
  %16 = load %struct.g_concat_softc*, %struct.g_concat_softc** %15, align 8
  store %struct.g_concat_softc* %16, %struct.g_concat_softc** %11, align 8
  %17 = load %struct.g_concat_softc*, %struct.g_concat_softc** %11, align 8
  %18 = icmp eq %struct.g_concat_softc* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %107

20:                                               ; preds = %5
  %21 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %22 = icmp ne %struct.g_provider* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %107

24:                                               ; preds = %20
  %25 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %26 = icmp ne %struct.g_consumer* %25, null
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  %28 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %29 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %28, i32 0, i32 0
  %30 = load %struct.g_concat_disk*, %struct.g_concat_disk** %29, align 8
  store %struct.g_concat_disk* %30, %struct.g_concat_disk** %12, align 8
  %31 = load %struct.g_concat_disk*, %struct.g_concat_disk** %12, align 8
  %32 = icmp eq %struct.g_concat_disk* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %107

34:                                               ; preds = %27
  %35 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.g_concat_disk*, %struct.g_concat_disk** %12, align 8
  %38 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %36, i32 %40)
  %42 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.g_concat_disk*, %struct.g_concat_disk** %12, align 8
  %45 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %43, i32 %47)
  br label %106

49:                                               ; preds = %24
  %50 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.g_concat_softc*, %struct.g_concat_softc** %11, align 8
  %53 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %51, i32 %55)
  %57 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  %60 = load %struct.g_concat_softc*, %struct.g_concat_softc** %11, align 8
  %61 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  switch i32 %62, label %69 [
    i32 129, label %63
    i32 128, label %66
  ]

63:                                               ; preds = %49
  %64 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %65 = call i32 @sbuf_cat(%struct.sbuf* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %72

66:                                               ; preds = %49
  %67 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %68 = call i32 @sbuf_cat(%struct.sbuf* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %72

69:                                               ; preds = %49
  %70 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %71 = call i32 @sbuf_cat(%struct.sbuf* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %66, %63
  %73 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %74 = call i32 @sbuf_cat(%struct.sbuf* %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %75 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load %struct.g_concat_softc*, %struct.g_concat_softc** %11, align 8
  %78 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.g_concat_softc*, %struct.g_concat_softc** %11, align 8
  %81 = call i32 @g_concat_nvalid(%struct.g_concat_softc* %80)
  %82 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i8* %76, i32 %79, i32 %81)
  %83 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %84)
  %86 = load %struct.g_concat_softc*, %struct.g_concat_softc** %11, align 8
  %87 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = icmp ne %struct.TYPE_2__* %88, null
  br i1 %89, label %90, label %100

90:                                               ; preds = %72
  %91 = load %struct.g_concat_softc*, %struct.g_concat_softc** %11, align 8
  %92 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %99 = call i32 @sbuf_cat(%struct.sbuf* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %103

100:                                              ; preds = %90, %72
  %101 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %102 = call i32 @sbuf_cat(%struct.sbuf* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %97
  %104 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %105 = call i32 @sbuf_cat(%struct.sbuf* %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %34
  br label %107

107:                                              ; preds = %19, %33, %106, %23
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i8*, ...) #1

declare dso_local i32 @sbuf_cat(%struct.sbuf*, i8*) #1

declare dso_local i32 @g_concat_nvalid(%struct.g_concat_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
