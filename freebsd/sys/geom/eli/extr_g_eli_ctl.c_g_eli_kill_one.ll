; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_ctl.c_g_eli_kill_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_ctl.c_g_eli_kill_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_eli_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.g_provider = type { i32, i64, i64 }
%struct.g_consumer = type { %struct.g_provider* }

@ENOENT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@G_ELI_FLAG_RO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"WARNING: Metadata won't be erased on read-only provider: %s.\00", align 1
@M_ELI = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@g_eli_overwrites = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Cannot erase metadata on %s (error=%d).\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%s has been killed.\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_eli_softc*)* @g_eli_kill_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_eli_kill_one(%struct.g_eli_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.g_eli_softc*, align 8
  %4 = alloca %struct.g_provider*, align 8
  %5 = alloca %struct.g_consumer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.g_eli_softc* %0, %struct.g_eli_softc** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = call i32 (...) @g_topology_assert()
  %11 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %12 = icmp eq %struct.g_eli_softc* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOENT, align 4
  store i32 %14, i32* %2, align 4
  br label %122

15:                                               ; preds = %1
  %16 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %17 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = call i8* @LIST_FIRST(i32* %19)
  %21 = bitcast i8* %20 to %struct.g_provider*
  store %struct.g_provider* %21, %struct.g_provider** %4, align 8
  %22 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %23 = load i32, i32* @ENXIO, align 4
  %24 = call i32 @g_error_provider(%struct.g_provider* %22, i32 %23)
  %25 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %26 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i8* @LIST_FIRST(i32* %28)
  %30 = bitcast i8* %29 to %struct.g_consumer*
  store %struct.g_consumer* %30, %struct.g_consumer** %5, align 8
  %31 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %32 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %31, i32 0, i32 0
  %33 = load %struct.g_provider*, %struct.g_provider** %32, align 8
  store %struct.g_provider* %33, %struct.g_provider** %4, align 8
  %34 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %35 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @G_ELI_FLAG_RO, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %15
  %41 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %42 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i32, i8*, i32, ...) @G_ELI_DEBUG(i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %109

45:                                               ; preds = %15
  %46 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %47 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @M_ELI, align 4
  %50 = load i32, i32* @M_WAITOK, align 4
  %51 = call i32* @malloc(i64 %48, i32 %49, i32 %50)
  store i32* %51, i32** %7, align 8
  store i64 0, i64* %8, align 8
  br label %52

52:                                               ; preds = %102, %45
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* @g_eli_overwrites, align 8
  %55 = icmp sle i64 %53, %54
  br i1 %55, label %56, label %105

56:                                               ; preds = %52
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* @g_eli_overwrites, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i32*, i32** %7, align 8
  %62 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %63 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @bzero(i32* %61, i64 %64)
  br label %72

66:                                               ; preds = %56
  %67 = load i32*, i32** %7, align 8
  %68 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %69 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @arc4rand(i32* %67, i64 %70, i32 0)
  br label %72

72:                                               ; preds = %66, %60
  %73 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %74 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %75 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %78 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %76, %79
  %81 = load i32*, i32** %7, align 8
  %82 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %83 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @g_write_data(%struct.g_consumer* %73, i64 %80, i32* %81, i64 %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %72
  %89 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %90 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 (i32, i8*, i32, ...) @G_ELI_DEBUG(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load i32, i32* %6, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %96, %88
  br label %99

99:                                               ; preds = %98, %72
  %100 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %101 = call i32 @g_io_flush(%struct.g_consumer* %100)
  br label %102

102:                                              ; preds = %99
  %103 = load i64, i64* %8, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %8, align 8
  br label %52

105:                                              ; preds = %52
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* @M_ELI, align 4
  %108 = call i32 @free(i32* %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %40
  %110 = load i32, i32* %6, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %114 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 (i32, i8*, i32, ...) @G_ELI_DEBUG(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %112, %109
  %118 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %119 = load i32, i32* @TRUE, align 4
  %120 = call i32 @g_eli_destroy(%struct.g_eli_softc* %118, i32 %119)
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %117, %13
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i8* @LIST_FIRST(i32*) #1

declare dso_local i32 @g_error_provider(%struct.g_provider*, i32) #1

declare dso_local i32 @G_ELI_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i32* @malloc(i64, i32, i32) #1

declare dso_local i32 @bzero(i32*, i64) #1

declare dso_local i32 @arc4rand(i32*, i64, i32) #1

declare dso_local i32 @g_write_data(%struct.g_consumer*, i64, i32*, i64) #1

declare dso_local i32 @g_io_flush(%struct.g_consumer*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @g_eli_destroy(%struct.g_eli_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
