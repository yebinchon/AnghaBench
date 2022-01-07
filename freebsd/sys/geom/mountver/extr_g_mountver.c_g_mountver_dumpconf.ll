; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mountver/extr_g_mountver.c_g_mountver_dumpconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mountver/extr_g_mountver.c_g_mountver_dumpconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.g_geom = type { %struct.g_mountver_softc* }
%struct.g_mountver_softc = type { i8*, i8*, i64 }
%struct.g_consumer = type { i32 }
%struct.g_provider = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"%s<State>%s</State>\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"OFFLINE\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ONLINE\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"%s<Provider-Name>%s</Provider-Name>\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"%s<Disk-Ident>%s</Disk-Ident>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbuf*, i8*, %struct.g_geom*, %struct.g_consumer*, %struct.g_provider*)* @g_mountver_dumpconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_mountver_dumpconf(%struct.sbuf* %0, i8* %1, %struct.g_geom* %2, %struct.g_consumer* %3, %struct.g_provider* %4) #0 {
  %6 = alloca %struct.sbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.g_geom*, align 8
  %9 = alloca %struct.g_consumer*, align 8
  %10 = alloca %struct.g_provider*, align 8
  %11 = alloca %struct.g_mountver_softc*, align 8
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
  br label %43

18:                                               ; preds = %14
  %19 = load %struct.g_geom*, %struct.g_geom** %8, align 8
  %20 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %19, i32 0, i32 0
  %21 = load %struct.g_mountver_softc*, %struct.g_mountver_softc** %20, align 8
  store %struct.g_mountver_softc* %21, %struct.g_mountver_softc** %11, align 8
  %22 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.g_mountver_softc*, %struct.g_mountver_softc** %11, align 8
  %25 = getelementptr inbounds %struct.g_mountver_softc, %struct.g_mountver_softc* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %30 = call i32 @sbuf_printf(%struct.sbuf* %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %29)
  %31 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.g_mountver_softc*, %struct.g_mountver_softc** %11, align 8
  %34 = getelementptr inbounds %struct.g_mountver_softc, %struct.g_mountver_softc* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @sbuf_printf(%struct.sbuf* %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %32, i8* %35)
  %37 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.g_mountver_softc*, %struct.g_mountver_softc** %11, align 8
  %40 = getelementptr inbounds %struct.g_mountver_softc, %struct.g_mountver_softc* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @sbuf_printf(%struct.sbuf* %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %38, i8* %41)
  br label %43

43:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
