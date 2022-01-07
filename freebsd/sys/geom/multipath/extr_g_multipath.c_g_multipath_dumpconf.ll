; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/multipath/extr_g_multipath.c_g_multipath_dumpconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/multipath/extr_g_multipath.c_g_multipath_dumpconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.g_geom = type { %struct.g_multipath_softc* }
%struct.g_multipath_softc = type { i32, i32, i8*, %struct.g_consumer* }
%struct.g_consumer = type { i32 }
%struct.g_provider = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"%s<State>%s</State>\0A\00", align 1
@MP_NEW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"NEW\00", align 1
@MP_LOST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"LOST\00", align 1
@MP_FAIL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ACTIVE\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"PASSIVE\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"BROKEN\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"DEGRADED\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"OPTIMAL\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"%s<UUID>%s</UUID>\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"%s<Mode>Active/%s</Mode>\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"Read\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"Active\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"Passive\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"%s<Type>%s</Type>\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"MANUAL\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"AUTOMATIC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbuf*, i8*, %struct.g_geom*, %struct.g_consumer*, %struct.g_provider*)* @g_multipath_dumpconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_multipath_dumpconf(%struct.sbuf* %0, i8* %1, %struct.g_geom* %2, %struct.g_consumer* %3, %struct.g_provider* %4) #0 {
  %6 = alloca %struct.sbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.g_geom*, align 8
  %9 = alloca %struct.g_consumer*, align 8
  %10 = alloca %struct.g_provider*, align 8
  %11 = alloca %struct.g_multipath_softc*, align 8
  %12 = alloca i32, align 4
  store %struct.sbuf* %0, %struct.sbuf** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.g_geom* %2, %struct.g_geom** %8, align 8
  store %struct.g_consumer* %3, %struct.g_consumer** %9, align 8
  store %struct.g_provider* %4, %struct.g_provider** %10, align 8
  %13 = call i32 (...) @g_topology_assert()
  %14 = load %struct.g_geom*, %struct.g_geom** %8, align 8
  %15 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %14, i32 0, i32 0
  %16 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %15, align 8
  store %struct.g_multipath_softc* %16, %struct.g_multipath_softc** %11, align 8
  %17 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %11, align 8
  %18 = icmp eq %struct.g_multipath_softc* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %145

20:                                               ; preds = %5
  %21 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %22 = icmp ne %struct.g_consumer* %21, null
  br i1 %22, label %23, label %77

23:                                               ; preds = %20
  %24 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %27 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MP_NEW, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %74

33:                                               ; preds = %23
  %34 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %35 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MP_LOST, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %72

41:                                               ; preds = %33
  %42 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %43 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MP_FAIL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %70

49:                                               ; preds = %41
  %50 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %11, align 8
  %51 = getelementptr inbounds %struct.g_multipath_softc, %struct.g_multipath_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %60, label %54

54:                                               ; preds = %49
  %55 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %11, align 8
  %56 = getelementptr inbounds %struct.g_multipath_softc, %struct.g_multipath_softc* %55, i32 0, i32 3
  %57 = load %struct.g_consumer*, %struct.g_consumer** %56, align 8
  %58 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %59 = icmp eq %struct.g_consumer* %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54, %49
  br label %68

61:                                               ; preds = %54
  %62 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %11, align 8
  %63 = getelementptr inbounds %struct.g_multipath_softc, %struct.g_multipath_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 2
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  br label %68

68:                                               ; preds = %61, %60
  %69 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %60 ], [ %67, %61 ]
  br label %70

70:                                               ; preds = %68, %48
  %71 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %48 ], [ %69, %68 ]
  br label %72

72:                                               ; preds = %70, %40
  %73 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %40 ], [ %71, %70 ]
  br label %74

74:                                               ; preds = %72, %32
  %75 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %32 ], [ %73, %72 ]
  %76 = call i32 @sbuf_printf(%struct.sbuf* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %75)
  br label %103

77:                                               ; preds = %20
  %78 = load %struct.g_geom*, %struct.g_geom** %8, align 8
  %79 = call i32 @g_multipath_good(%struct.g_geom* %78)
  store i32 %79, i32* %12, align 4
  %80 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* %12, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %100

85:                                               ; preds = %77
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %11, align 8
  %88 = getelementptr inbounds %struct.g_multipath_softc, %struct.g_multipath_softc* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %86, %89
  br i1 %90, label %96, label %91

91:                                               ; preds = %85
  %92 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %11, align 8
  %93 = getelementptr inbounds %struct.g_multipath_softc, %struct.g_multipath_softc* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 1
  br label %96

96:                                               ; preds = %91, %85
  %97 = phi i1 [ true, %85 ], [ %95, %91 ]
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)
  br label %100

100:                                              ; preds = %96, %84
  %101 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), %84 ], [ %99, %96 ]
  %102 = call i32 @sbuf_printf(%struct.sbuf* %80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %81, i8* %101)
  br label %103

103:                                              ; preds = %100, %74
  %104 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %105 = icmp eq %struct.g_consumer* %104, null
  br i1 %105, label %106, label %145

106:                                              ; preds = %103
  %107 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %108 = icmp eq %struct.g_provider* %107, null
  br i1 %108, label %109, label %145

109:                                              ; preds = %106
  %110 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %11, align 8
  %113 = getelementptr inbounds %struct.g_multipath_softc, %struct.g_multipath_softc* %112, i32 0, i32 2
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @sbuf_printf(%struct.sbuf* %110, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %111, i8* %114)
  %116 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %11, align 8
  %119 = getelementptr inbounds %struct.g_multipath_softc, %struct.g_multipath_softc* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 2
  br i1 %121, label %122, label %123

122:                                              ; preds = %109
  br label %130

123:                                              ; preds = %109
  %124 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %11, align 8
  %125 = getelementptr inbounds %struct.g_multipath_softc, %struct.g_multipath_softc* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %126, 1
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0)
  br label %130

130:                                              ; preds = %123, %122
  %131 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), %122 ], [ %129, %123 ]
  %132 = call i32 @sbuf_printf(%struct.sbuf* %116, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i8* %117, i8* %131)
  %133 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %134 = load i8*, i8** %7, align 8
  %135 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %11, align 8
  %136 = getelementptr inbounds %struct.g_multipath_softc, %struct.g_multipath_softc* %135, i32 0, i32 2
  %137 = load i8*, i8** %136, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 0
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0)
  %144 = call i32 @sbuf_printf(%struct.sbuf* %133, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i8* %134, i8* %143)
  br label %145

145:                                              ; preds = %19, %130, %106, %103
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i8*, i8*) #1

declare dso_local i32 @g_multipath_good(%struct.g_geom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
