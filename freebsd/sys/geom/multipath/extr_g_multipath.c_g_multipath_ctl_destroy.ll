; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/multipath/extr_g_multipath.c_g_multipath_ctl_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/multipath/extr_g_multipath.c_g_multipath_ctl_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_geom = type { %struct.g_multipath_softc* }
%struct.g_multipath_softc = type { i64*, %struct.g_consumer* }
%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"No 'arg0' argument\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Device %s is invalid\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Can't open %s (%d)\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Can't erase metadata on %s (%d)\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"failed to destroy %s (err=%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*)* @g_multipath_ctl_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_multipath_ctl_destroy(%struct.gctl_req* %0, %struct.g_class* %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca %struct.g_class*, align 8
  %5 = alloca %struct.g_geom*, align 8
  %6 = alloca %struct.g_multipath_softc*, align 8
  %7 = alloca %struct.g_consumer*, align 8
  %8 = alloca %struct.g_provider*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store %struct.g_class* %1, %struct.g_class** %4, align 8
  %12 = call i32 (...) @g_topology_assert()
  %13 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %14 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %19 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %113

20:                                               ; preds = %2
  %21 = load %struct.g_class*, %struct.g_class** %4, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call %struct.g_geom* @g_multipath_find_geom(%struct.g_class* %21, i8* %22)
  store %struct.g_geom* %23, %struct.g_geom** %5, align 8
  %24 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %25 = icmp eq %struct.g_geom* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  br label %113

30:                                               ; preds = %20
  %31 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %32 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %31, i32 0, i32 0
  %33 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %32, align 8
  store %struct.g_multipath_softc* %33, %struct.g_multipath_softc** %6, align 8
  %34 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %6, align 8
  %35 = getelementptr inbounds %struct.g_multipath_softc, %struct.g_multipath_softc* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %98

40:                                               ; preds = %30
  %41 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %6, align 8
  %42 = getelementptr inbounds %struct.g_multipath_softc, %struct.g_multipath_softc* %41, i32 0, i32 1
  %43 = load %struct.g_consumer*, %struct.g_consumer** %42, align 8
  %44 = icmp ne %struct.g_consumer* %43, null
  br i1 %44, label %45, label %98

45:                                               ; preds = %40
  %46 = load %struct.g_multipath_softc*, %struct.g_multipath_softc** %6, align 8
  %47 = getelementptr inbounds %struct.g_multipath_softc, %struct.g_multipath_softc* %46, i32 0, i32 1
  %48 = load %struct.g_consumer*, %struct.g_consumer** %47, align 8
  store %struct.g_consumer* %48, %struct.g_consumer** %7, align 8
  %49 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %50 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %49, i32 0, i32 0
  %51 = load %struct.g_provider*, %struct.g_provider** %50, align 8
  store %struct.g_provider* %51, %struct.g_provider** %8, align 8
  %52 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %53 = call i32 @g_access(%struct.g_consumer* %52, i32 1, i32 1, i32 1)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %45
  %57 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %58 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %59 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %60, i32 %61)
  br label %99

63:                                               ; preds = %45
  %64 = call i32 (...) @g_topology_unlock()
  %65 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %66 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @M_WAITOK, align 4
  %69 = load i32, i32* @M_ZERO, align 4
  %70 = or i32 %68, %69
  %71 = call i32* @g_malloc(i64 %67, i32 %70)
  store i32* %71, i32** %10, align 8
  %72 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %73 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %74 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %77 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %75, %78
  %80 = load i32*, i32** %10, align 8
  %81 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %82 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @g_write_data(%struct.g_consumer* %72, i64 %79, i32* %80, i64 %83)
  store i32 %84, i32* %11, align 4
  %85 = call i32 (...) @g_topology_lock()
  %86 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %87 = call i32 @g_access(%struct.g_consumer* %86, i32 -1, i32 -1, i32 -1)
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %63
  %91 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %92 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %93 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %94, i32 %95)
  br label %97

97:                                               ; preds = %90, %63
  br label %98

98:                                               ; preds = %97, %40, %30
  br label %99

99:                                               ; preds = %98, %56
  %100 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %101 = call i32 @g_multipath_destroy(%struct.g_geom* %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @EINPROGRESS, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = load i32, i32* %11, align 4
  %112 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %109, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %110, i32 %111)
  br label %113

113:                                              ; preds = %17, %26, %108, %104, %99
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i8* @gctl_get_asciiparam(%struct.gctl_req*, i8*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local %struct.g_geom* @g_multipath_find_geom(%struct.g_class*, i8*) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32* @g_malloc(i64, i32) #1

declare dso_local i32 @g_write_data(%struct.g_consumer*, i64, i32*, i64) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @g_multipath_destroy(%struct.g_geom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
