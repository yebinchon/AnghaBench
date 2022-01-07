; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/nop/extr_g_nop.c_g_nop_dumpconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/nop/extr_g_nop.c_g_nop_dumpconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.g_geom = type { %struct.g_nop_softc* }
%struct.g_nop_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.g_consumer = type { i32 }
%struct.g_provider = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"%s<Offset>%jd</Offset>\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"%s<ReadFailProb>%u</ReadFailProb>\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"%s<WriteFailProb>%u</WriteFailProb>\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"%s<ReadDelayedProb>%u</ReadDelayedProb>\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"%s<WriteDelayedProb>%u</WriteDelayedProb>\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"%s<Delay>%d</Delay>\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"%s<CountUntilFail>%u</CountUntilFail>\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"%s<Error>%d</Error>\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"%s<Reads>%ju</Reads>\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"%s<Writes>%ju</Writes>\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"%s<Deletes>%ju</Deletes>\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"%s<Getattrs>%ju</Getattrs>\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"%s<Flushes>%ju</Flushes>\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"%s<Cmd0s>%ju</Cmd0s>\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"%s<Cmd1s>%ju</Cmd1s>\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"%s<Cmd2s>%ju</Cmd2s>\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"%s<ReadBytes>%ju</ReadBytes>\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"%s<WroteBytes>%ju</WroteBytes>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbuf*, i8*, %struct.g_geom*, %struct.g_consumer*, %struct.g_provider*)* @g_nop_dumpconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_nop_dumpconf(%struct.sbuf* %0, i8* %1, %struct.g_geom* %2, %struct.g_consumer* %3, %struct.g_provider* %4) #0 {
  %6 = alloca %struct.sbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.g_geom*, align 8
  %9 = alloca %struct.g_consumer*, align 8
  %10 = alloca %struct.g_provider*, align 8
  %11 = alloca %struct.g_nop_softc*, align 8
  store %struct.sbuf* %0, %struct.sbuf** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.g_geom* %2, %struct.g_geom** %8, align 8
  store %struct.g_consumer* %3, %struct.g_consumer** %9, align 8
  store %struct.g_provider* %4, %struct.g_provider** %10, align 8
  %12 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %13 = icmp ne %struct.g_provider* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %16 = icmp ne %struct.g_consumer* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %5
  br label %131

18:                                               ; preds = %14
  %19 = load %struct.g_geom*, %struct.g_geom** %8, align 8
  %20 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %19, i32 0, i32 0
  %21 = load %struct.g_nop_softc*, %struct.g_nop_softc** %20, align 8
  store %struct.g_nop_softc* %21, %struct.g_nop_softc** %11, align 8
  %22 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.g_nop_softc*, %struct.g_nop_softc** %11, align 8
  %25 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %24, i32 0, i32 17
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @sbuf_printf(%struct.sbuf* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %27)
  %29 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.g_nop_softc*, %struct.g_nop_softc** %11, align 8
  %32 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %31, i32 0, i32 16
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @sbuf_printf(%struct.sbuf* %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %30, i32 %33)
  %35 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.g_nop_softc*, %struct.g_nop_softc** %11, align 8
  %38 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %37, i32 0, i32 15
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @sbuf_printf(%struct.sbuf* %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %36, i32 %39)
  %41 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.g_nop_softc*, %struct.g_nop_softc** %11, align 8
  %44 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %43, i32 0, i32 14
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @sbuf_printf(%struct.sbuf* %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %42, i32 %45)
  %47 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load %struct.g_nop_softc*, %struct.g_nop_softc** %11, align 8
  %50 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %49, i32 0, i32 13
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @sbuf_printf(%struct.sbuf* %47, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %48, i32 %51)
  %53 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load %struct.g_nop_softc*, %struct.g_nop_softc** %11, align 8
  %56 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %55, i32 0, i32 12
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @sbuf_printf(%struct.sbuf* %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %54, i32 %57)
  %59 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load %struct.g_nop_softc*, %struct.g_nop_softc** %11, align 8
  %62 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %61, i32 0, i32 11
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @sbuf_printf(%struct.sbuf* %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* %60, i32 %63)
  %65 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load %struct.g_nop_softc*, %struct.g_nop_softc** %11, align 8
  %68 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %67, i32 0, i32 10
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @sbuf_printf(%struct.sbuf* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %66, i32 %69)
  %71 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = load %struct.g_nop_softc*, %struct.g_nop_softc** %11, align 8
  %74 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %73, i32 0, i32 9
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @sbuf_printf(%struct.sbuf* %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %72, i32 %75)
  %77 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = load %struct.g_nop_softc*, %struct.g_nop_softc** %11, align 8
  %80 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %79, i32 0, i32 8
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @sbuf_printf(%struct.sbuf* %77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* %78, i32 %81)
  %83 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = load %struct.g_nop_softc*, %struct.g_nop_softc** %11, align 8
  %86 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @sbuf_printf(%struct.sbuf* %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* %84, i32 %87)
  %89 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = load %struct.g_nop_softc*, %struct.g_nop_softc** %11, align 8
  %92 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @sbuf_printf(%struct.sbuf* %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i8* %90, i32 %93)
  %95 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = load %struct.g_nop_softc*, %struct.g_nop_softc** %11, align 8
  %98 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @sbuf_printf(%struct.sbuf* %95, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i8* %96, i32 %99)
  %101 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = load %struct.g_nop_softc*, %struct.g_nop_softc** %11, align 8
  %104 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @sbuf_printf(%struct.sbuf* %101, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i8* %102, i32 %105)
  %107 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = load %struct.g_nop_softc*, %struct.g_nop_softc** %11, align 8
  %110 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @sbuf_printf(%struct.sbuf* %107, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i8* %108, i32 %111)
  %113 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %114 = load i8*, i8** %7, align 8
  %115 = load %struct.g_nop_softc*, %struct.g_nop_softc** %11, align 8
  %116 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @sbuf_printf(%struct.sbuf* %113, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i8* %114, i32 %117)
  %119 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %120 = load i8*, i8** %7, align 8
  %121 = load %struct.g_nop_softc*, %struct.g_nop_softc** %11, align 8
  %122 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @sbuf_printf(%struct.sbuf* %119, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i8* %120, i32 %123)
  %125 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %126 = load i8*, i8** %7, align 8
  %127 = load %struct.g_nop_softc*, %struct.g_nop_softc** %11, align 8
  %128 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @sbuf_printf(%struct.sbuf* %125, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i8* %126, i32 %129)
  br label %131

131:                                              ; preds = %18, %17
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
