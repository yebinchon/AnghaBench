; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_sched_dumpconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_sched_dumpconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.g_geom = type { %struct.g_sched_softc* }
%struct.g_sched_softc = type { %struct.g_gsched* }
%struct.g_gsched = type { i8*, i32 (%struct.sbuf*, i8*, %struct.g_geom.0*, %struct.g_consumer*, %struct.g_provider*)* }
%struct.g_geom.0 = type opaque
%struct.g_consumer = type opaque
%struct.g_consumer.1 = type { i32 }
%struct.g_provider = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c" algo %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbuf*, i8*, %struct.g_geom*, %struct.g_consumer.1*, %struct.g_provider*)* @g_sched_dumpconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_sched_dumpconf(%struct.sbuf* %0, i8* %1, %struct.g_geom* %2, %struct.g_consumer.1* %3, %struct.g_provider* %4) #0 {
  %6 = alloca %struct.sbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.g_geom*, align 8
  %9 = alloca %struct.g_consumer.1*, align 8
  %10 = alloca %struct.g_provider*, align 8
  %11 = alloca %struct.g_sched_softc*, align 8
  %12 = alloca %struct.g_gsched*, align 8
  store %struct.sbuf* %0, %struct.sbuf** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.g_geom* %2, %struct.g_geom** %8, align 8
  store %struct.g_consumer.1* %3, %struct.g_consumer.1** %9, align 8
  store %struct.g_provider* %4, %struct.g_provider** %10, align 8
  %13 = load %struct.g_geom*, %struct.g_geom** %8, align 8
  %14 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %13, i32 0, i32 0
  %15 = load %struct.g_sched_softc*, %struct.g_sched_softc** %14, align 8
  store %struct.g_sched_softc* %15, %struct.g_sched_softc** %11, align 8
  %16 = load %struct.g_sched_softc*, %struct.g_sched_softc** %11, align 8
  %17 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %16, i32 0, i32 0
  %18 = load %struct.g_gsched*, %struct.g_gsched** %17, align 8
  store %struct.g_gsched* %18, %struct.g_gsched** %12, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %5
  %22 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %23 = load %struct.g_gsched*, %struct.g_gsched** %12, align 8
  %24 = icmp ne %struct.g_gsched* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.g_gsched*, %struct.g_gsched** %12, align 8
  %27 = getelementptr inbounds %struct.g_gsched, %struct.g_gsched* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  br label %30

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i8* [ %28, %25 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %29 ]
  %32 = call i32 @sbuf_printf(%struct.sbuf* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %30, %5
  %34 = load %struct.g_gsched*, %struct.g_gsched** %12, align 8
  %35 = icmp ne %struct.g_gsched* %34, null
  br i1 %35, label %36, label %53

36:                                               ; preds = %33
  %37 = load %struct.g_gsched*, %struct.g_gsched** %12, align 8
  %38 = getelementptr inbounds %struct.g_gsched, %struct.g_gsched* %37, i32 0, i32 1
  %39 = load i32 (%struct.sbuf*, i8*, %struct.g_geom.0*, %struct.g_consumer*, %struct.g_provider*)*, i32 (%struct.sbuf*, i8*, %struct.g_geom.0*, %struct.g_consumer*, %struct.g_provider*)** %38, align 8
  %40 = icmp ne i32 (%struct.sbuf*, i8*, %struct.g_geom.0*, %struct.g_consumer*, %struct.g_provider*)* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load %struct.g_gsched*, %struct.g_gsched** %12, align 8
  %43 = getelementptr inbounds %struct.g_gsched, %struct.g_gsched* %42, i32 0, i32 1
  %44 = load i32 (%struct.sbuf*, i8*, %struct.g_geom.0*, %struct.g_consumer*, %struct.g_provider*)*, i32 (%struct.sbuf*, i8*, %struct.g_geom.0*, %struct.g_consumer*, %struct.g_provider*)** %43, align 8
  %45 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.g_geom*, %struct.g_geom** %8, align 8
  %48 = bitcast %struct.g_geom* %47 to %struct.g_geom.0*
  %49 = load %struct.g_consumer.1*, %struct.g_consumer.1** %9, align 8
  %50 = bitcast %struct.g_consumer.1* %49 to %struct.g_consumer*
  %51 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %52 = call i32 %44(%struct.sbuf* %45, i8* %46, %struct.g_geom.0* %48, %struct.g_consumer* %50, %struct.g_provider* %51)
  br label %53

53:                                               ; preds = %41, %36, %33
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
