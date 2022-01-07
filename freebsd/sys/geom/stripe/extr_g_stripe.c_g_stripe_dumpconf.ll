; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/stripe/extr_g_stripe.c_g_stripe_dumpconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/stripe/extr_g_stripe.c_g_stripe_dumpconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.g_geom = type { %struct.g_stripe_softc* }
%struct.g_stripe_softc = type { i32, %struct.TYPE_2__*, i32, i64, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.g_consumer = type { i64 }
%struct.g_provider = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"%s<Number>%u</Number>\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%s<ID>%u</ID>\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"%s<Stripesize>%ju</Stripesize>\0A\00", align 1
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbuf*, i8*, %struct.g_geom*, %struct.g_consumer*, %struct.g_provider*)* @g_stripe_dumpconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_stripe_dumpconf(%struct.sbuf* %0, i8* %1, %struct.g_geom* %2, %struct.g_consumer* %3, %struct.g_provider* %4) #0 {
  %6 = alloca %struct.sbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.g_geom*, align 8
  %9 = alloca %struct.g_consumer*, align 8
  %10 = alloca %struct.g_provider*, align 8
  %11 = alloca %struct.g_stripe_softc*, align 8
  store %struct.sbuf* %0, %struct.sbuf** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.g_geom* %2, %struct.g_geom** %8, align 8
  store %struct.g_consumer* %3, %struct.g_consumer** %9, align 8
  store %struct.g_provider* %4, %struct.g_provider** %10, align 8
  %12 = load %struct.g_geom*, %struct.g_geom** %8, align 8
  %13 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %12, i32 0, i32 0
  %14 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %13, align 8
  store %struct.g_stripe_softc* %14, %struct.g_stripe_softc** %11, align 8
  %15 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %11, align 8
  %16 = icmp eq %struct.g_stripe_softc* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  br label %98

18:                                               ; preds = %5
  %19 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %20 = icmp ne %struct.g_provider* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %98

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
  %32 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %31)
  br label %97

33:                                               ; preds = %22
  %34 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %11, align 8
  %37 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %35, i32 %39)
  %41 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %11, align 8
  %44 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %42, i32 %46)
  %48 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  %51 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %11, align 8
  %52 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %60 [
    i32 129, label %54
    i32 128, label %57
  ]

54:                                               ; preds = %33
  %55 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %56 = call i32 @sbuf_cat(%struct.sbuf* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %63

57:                                               ; preds = %33
  %58 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %59 = call i32 @sbuf_cat(%struct.sbuf* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %63

60:                                               ; preds = %33
  %61 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %62 = call i32 @sbuf_cat(%struct.sbuf* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %57, %54
  %64 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %65 = call i32 @sbuf_cat(%struct.sbuf* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %66 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %11, align 8
  %69 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %11, align 8
  %72 = call i32 @g_stripe_nvalid(%struct.g_stripe_softc* %71)
  %73 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %66, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i8* %67, i32 %70, i32 %72)
  %74 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %75)
  %77 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %11, align 8
  %78 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = icmp ne %struct.TYPE_2__* %79, null
  br i1 %80, label %81, label %91

81:                                               ; preds = %63
  %82 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %11, align 8
  %83 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %90 = call i32 @sbuf_cat(%struct.sbuf* %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %94

91:                                               ; preds = %81, %63
  %92 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %93 = call i32 @sbuf_cat(%struct.sbuf* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %88
  %95 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %96 = call i32 @sbuf_cat(%struct.sbuf* %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  br label %97

97:                                               ; preds = %94, %25
  br label %98

98:                                               ; preds = %17, %97, %21
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i8*, ...) #1

declare dso_local i32 @sbuf_cat(%struct.sbuf*, i8*) #1

declare dso_local i32 @g_stripe_nvalid(%struct.g_stripe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
