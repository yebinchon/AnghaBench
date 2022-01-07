; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/gate/extr_g_gate.c_g_gate_dumpconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/gate/extr_g_gate.c_g_gate_dumpconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.g_geom = type { %struct.g_gate_softc* }
%struct.g_gate_softc = type { i8*, i32, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.g_consumer = type { i32 }
%struct.g_provider = type { i32 }

@G_GATE_FLAG_READONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s<access>%s</access>\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"read-only\00", align 1
@G_GATE_FLAG_WRITEONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"write-only\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"read-write\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"%s<read_offset>%jd</read_offset>\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"%s<read_provider>%s</read_provider>\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"%s<timeout>%u</timeout>\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"%s<info>%s</info>\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"%s<queue_count>%u</queue_count>\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"%s<queue_size>%u</queue_size>\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"%s<ref>%u</ref>\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"%s<unit>%d</unit>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbuf*, i8*, %struct.g_geom*, %struct.g_consumer*, %struct.g_provider*)* @g_gate_dumpconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_gate_dumpconf(%struct.sbuf* %0, i8* %1, %struct.g_geom* %2, %struct.g_consumer* %3, %struct.g_provider* %4) #0 {
  %6 = alloca %struct.sbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.g_geom*, align 8
  %9 = alloca %struct.g_consumer*, align 8
  %10 = alloca %struct.g_provider*, align 8
  %11 = alloca %struct.g_gate_softc*, align 8
  store %struct.sbuf* %0, %struct.sbuf** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.g_geom* %2, %struct.g_geom** %8, align 8
  store %struct.g_consumer* %3, %struct.g_consumer** %9, align 8
  store %struct.g_provider* %4, %struct.g_provider** %10, align 8
  %12 = load %struct.g_geom*, %struct.g_geom** %8, align 8
  %13 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %12, i32 0, i32 0
  %14 = load %struct.g_gate_softc*, %struct.g_gate_softc** %13, align 8
  store %struct.g_gate_softc* %14, %struct.g_gate_softc** %11, align 8
  %15 = load %struct.g_gate_softc*, %struct.g_gate_softc** %11, align 8
  %16 = icmp eq %struct.g_gate_softc* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %5
  %18 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %19 = icmp ne %struct.g_provider* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %22 = icmp ne %struct.g_consumer* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %17, %5
  br label %123

24:                                               ; preds = %20
  %25 = load %struct.g_gate_softc*, %struct.g_gate_softc** %11, align 8
  %26 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call %struct.g_gate_softc* @g_gate_hold(i8* %27, i32* null)
  store %struct.g_gate_softc* %28, %struct.g_gate_softc** %11, align 8
  %29 = load %struct.g_gate_softc*, %struct.g_gate_softc** %11, align 8
  %30 = icmp eq %struct.g_gate_softc* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %123

32:                                               ; preds = %24
  %33 = load %struct.g_gate_softc*, %struct.g_gate_softc** %11, align 8
  %34 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @G_GATE_FLAG_READONLY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @sbuf_printf(%struct.sbuf* %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %59

43:                                               ; preds = %32
  %44 = load %struct.g_gate_softc*, %struct.g_gate_softc** %11, align 8
  %45 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @G_GATE_FLAG_WRITEONLY, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @sbuf_printf(%struct.sbuf* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %58

54:                                               ; preds = %43
  %55 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @sbuf_printf(%struct.sbuf* %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %54, %50
  br label %59

59:                                               ; preds = %58, %39
  %60 = load %struct.g_gate_softc*, %struct.g_gate_softc** %11, align 8
  %61 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %60, i32 0, i32 7
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = icmp ne %struct.TYPE_4__* %62, null
  br i1 %63, label %64, label %82

64:                                               ; preds = %59
  %65 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load %struct.g_gate_softc*, %struct.g_gate_softc** %11, align 8
  %68 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %67, i32 0, i32 8
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 @sbuf_printf(%struct.sbuf* %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %66, i8* %70)
  %72 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load %struct.g_gate_softc*, %struct.g_gate_softc** %11, align 8
  %75 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %74, i32 0, i32 7
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @sbuf_printf(%struct.sbuf* %72, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %73, i8* %80)
  br label %82

82:                                               ; preds = %64, %59
  %83 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = load %struct.g_gate_softc*, %struct.g_gate_softc** %11, align 8
  %86 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @sbuf_printf(%struct.sbuf* %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %84, i8* %87)
  %89 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = load %struct.g_gate_softc*, %struct.g_gate_softc** %11, align 8
  %92 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %91, i32 0, i32 3
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @sbuf_printf(%struct.sbuf* %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %90, i8* %93)
  %95 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = load %struct.g_gate_softc*, %struct.g_gate_softc** %11, align 8
  %98 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %97, i32 0, i32 4
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @sbuf_printf(%struct.sbuf* %95, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* %96, i8* %99)
  %101 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = load %struct.g_gate_softc*, %struct.g_gate_softc** %11, align 8
  %104 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %103, i32 0, i32 5
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @sbuf_printf(%struct.sbuf* %101, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* %102, i8* %105)
  %107 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = load %struct.g_gate_softc*, %struct.g_gate_softc** %11, align 8
  %110 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %109, i32 0, i32 6
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @sbuf_printf(%struct.sbuf* %107, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* %108, i8* %111)
  %113 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %114 = load i8*, i8** %7, align 8
  %115 = load %struct.g_gate_softc*, %struct.g_gate_softc** %11, align 8
  %116 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @sbuf_printf(%struct.sbuf* %113, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* %114, i8* %117)
  %119 = call i32 (...) @g_topology_unlock()
  %120 = load %struct.g_gate_softc*, %struct.g_gate_softc** %11, align 8
  %121 = call i32 @g_gate_release(%struct.g_gate_softc* %120)
  %122 = call i32 (...) @g_topology_lock()
  br label %123

123:                                              ; preds = %82, %31, %23
  ret void
}

declare dso_local %struct.g_gate_softc* @g_gate_hold(i8*, i32*) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i8*, i8*) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @g_gate_release(%struct.g_gate_softc*) #1

declare dso_local i32 @g_topology_lock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
