; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/cache/extr_g_cache.c_g_cache_ctl_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/cache/extr_g_cache.c_g_cache_ctl_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_cache_softc = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"No '%s' argument\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Missing device(s).\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"arg%d\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"No 'arg%d' argument\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Device %s is invalid.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*)* @g_cache_ctl_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_cache_ctl_reset(%struct.gctl_req* %0, %struct.g_class* %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca %struct.g_class*, align 8
  %5 = alloca %struct.g_cache_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [16 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store %struct.g_class* %1, %struct.g_class** %4, align 8
  %10 = call i32 (...) @g_topology_assert()
  %11 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %12 = call i32* @gctl_get_paraml(%struct.gctl_req* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %17 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %78

18:                                               ; preds = %2
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %24 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %78

25:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %75, %25
  %27 = load i32, i32* %8, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %78

31:                                               ; preds = %26
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @snprintf(i8* %32, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %37 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %35, i8* %36)
  store i8* %37, i8** %6, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  br label %78

44:                                               ; preds = %31
  %45 = load %struct.g_class*, %struct.g_class** %4, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call %struct.g_cache_softc* @g_cache_find_device(%struct.g_class* %45, i8* %46)
  store %struct.g_cache_softc* %47, %struct.g_cache_softc** %5, align 8
  %48 = load %struct.g_cache_softc*, %struct.g_cache_softc** %5, align 8
  %49 = icmp eq %struct.g_cache_softc* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @G_CACHE_DEBUG(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %51)
  %53 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %54)
  br label %78

56:                                               ; preds = %44
  %57 = load %struct.g_cache_softc*, %struct.g_cache_softc** %5, align 8
  %58 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %57, i32 0, i32 8
  store i64 0, i64* %58, align 8
  %59 = load %struct.g_cache_softc*, %struct.g_cache_softc** %5, align 8
  %60 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %59, i32 0, i32 7
  store i64 0, i64* %60, align 8
  %61 = load %struct.g_cache_softc*, %struct.g_cache_softc** %5, align 8
  %62 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %61, i32 0, i32 6
  store i64 0, i64* %62, align 8
  %63 = load %struct.g_cache_softc*, %struct.g_cache_softc** %5, align 8
  %64 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %63, i32 0, i32 5
  store i64 0, i64* %64, align 8
  %65 = load %struct.g_cache_softc*, %struct.g_cache_softc** %5, align 8
  %66 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %65, i32 0, i32 4
  store i64 0, i64* %66, align 8
  %67 = load %struct.g_cache_softc*, %struct.g_cache_softc** %5, align 8
  %68 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = load %struct.g_cache_softc*, %struct.g_cache_softc** %5, align 8
  %70 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load %struct.g_cache_softc*, %struct.g_cache_softc** %5, align 8
  %72 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = load %struct.g_cache_softc*, %struct.g_cache_softc** %5, align 8
  %74 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %56
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %26

78:                                               ; preds = %15, %22, %40, %50, %26
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @gctl_get_asciiparam(%struct.gctl_req*, i8*) #1

declare dso_local %struct.g_cache_softc* @g_cache_find_device(%struct.g_class*, i8*) #1

declare dso_local i32 @G_CACHE_DEBUG(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
