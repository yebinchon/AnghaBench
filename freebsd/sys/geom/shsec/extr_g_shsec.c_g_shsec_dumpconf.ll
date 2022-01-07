; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/shsec/extr_g_shsec.c_g_shsec_dumpconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/shsec/extr_g_shsec.c_g_shsec_dumpconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.g_geom = type { %struct.g_shsec_softc* }
%struct.g_shsec_softc = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.g_consumer = type { i64 }
%struct.g_provider = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"%s<Number>%u</Number>\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%s<ID>%u</ID>\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"%s<Status>Total=%u, Online=%u</Status>\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%s<State>\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"</State>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbuf*, i8*, %struct.g_geom*, %struct.g_consumer*, %struct.g_provider*)* @g_shsec_dumpconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_shsec_dumpconf(%struct.sbuf* %0, i8* %1, %struct.g_geom* %2, %struct.g_consumer* %3, %struct.g_provider* %4) #0 {
  %6 = alloca %struct.sbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.g_geom*, align 8
  %9 = alloca %struct.g_consumer*, align 8
  %10 = alloca %struct.g_provider*, align 8
  %11 = alloca %struct.g_shsec_softc*, align 8
  store %struct.sbuf* %0, %struct.sbuf** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.g_geom* %2, %struct.g_geom** %8, align 8
  store %struct.g_consumer* %3, %struct.g_consumer** %9, align 8
  store %struct.g_provider* %4, %struct.g_provider** %10, align 8
  %12 = load %struct.g_geom*, %struct.g_geom** %8, align 8
  %13 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %12, i32 0, i32 0
  %14 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %13, align 8
  store %struct.g_shsec_softc* %14, %struct.g_shsec_softc** %11, align 8
  %15 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %11, align 8
  %16 = icmp eq %struct.g_shsec_softc* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  br label %73

18:                                               ; preds = %5
  %19 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %20 = icmp ne %struct.g_provider* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %73

22:                                               ; preds = %18
  %23 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %24 = icmp ne %struct.g_consumer* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %29 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %31)
  br label %72

33:                                               ; preds = %22
  %34 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %11, align 8
  %37 = getelementptr inbounds %struct.g_shsec_softc, %struct.g_shsec_softc* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %35, i32 %39)
  %41 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %11, align 8
  %44 = getelementptr inbounds %struct.g_shsec_softc, %struct.g_shsec_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %11, align 8
  %47 = call i32 @g_shsec_nvalid(%struct.g_shsec_softc* %46)
  %48 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %42, i32 %45, i32 %47)
  %49 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %50)
  %52 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %11, align 8
  %53 = getelementptr inbounds %struct.g_shsec_softc, %struct.g_shsec_softc* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = icmp ne %struct.TYPE_2__* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %33
  %57 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %11, align 8
  %58 = getelementptr inbounds %struct.g_shsec_softc, %struct.g_shsec_softc* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %65 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %69

66:                                               ; preds = %56, %33
  %67 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %68 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %63
  %70 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %71 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %25
  br label %73

73:                                               ; preds = %17, %72, %21
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local i32 @g_shsec_nvalid(%struct.g_shsec_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
