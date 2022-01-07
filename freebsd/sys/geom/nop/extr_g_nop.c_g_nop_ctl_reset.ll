; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/nop/extr_g_nop.c_g_nop_ctl_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/nop/extr_g_nop.c_g_nop_ctl_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_nop_softc = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.g_provider = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.g_nop_softc*, %struct.g_class* }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"No '%s' argument\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Missing device(s).\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"arg%d\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"No 'arg%d' argument\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Provider %s is invalid.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*)* @g_nop_ctl_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_nop_ctl_reset(%struct.gctl_req* %0, %struct.g_class* %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca %struct.g_class*, align 8
  %5 = alloca %struct.g_nop_softc*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [16 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store %struct.g_class* %1, %struct.g_class** %4, align 8
  %11 = call i32 (...) @g_topology_assert()
  %12 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %13 = call i32* @gctl_get_paraml(%struct.gctl_req* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %18 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %103

19:                                               ; preds = %2
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %25 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %103

26:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %100, %26
  %28 = load i32, i32* %9, align 4
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %103

32:                                               ; preds = %27
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @snprintf(i8* %33, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %38 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %36, i8* %37)
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %43)
  br label %103

45:                                               ; preds = %32
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %48 = call i64 @strncmp(i8* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %52 = load i8*, i8** %7, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %7, align 8
  br label %55

55:                                               ; preds = %50, %45
  %56 = load i8*, i8** %7, align 8
  %57 = call %struct.g_provider* @g_provider_by_name(i8* %56)
  store %struct.g_provider* %57, %struct.g_provider** %6, align 8
  %58 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %59 = icmp eq %struct.g_provider* %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %55
  %61 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %62 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load %struct.g_class*, %struct.g_class** %64, align 8
  %66 = load %struct.g_class*, %struct.g_class** %4, align 8
  %67 = icmp ne %struct.g_class* %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %60, %55
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @G_NOP_DEBUG(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %69)
  %71 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %72)
  br label %103

74:                                               ; preds = %60
  %75 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %76 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load %struct.g_nop_softc*, %struct.g_nop_softc** %78, align 8
  store %struct.g_nop_softc* %79, %struct.g_nop_softc** %5, align 8
  %80 = load %struct.g_nop_softc*, %struct.g_nop_softc** %5, align 8
  %81 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %80, i32 0, i32 9
  store i64 0, i64* %81, align 8
  %82 = load %struct.g_nop_softc*, %struct.g_nop_softc** %5, align 8
  %83 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %82, i32 0, i32 8
  store i64 0, i64* %83, align 8
  %84 = load %struct.g_nop_softc*, %struct.g_nop_softc** %5, align 8
  %85 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %84, i32 0, i32 7
  store i64 0, i64* %85, align 8
  %86 = load %struct.g_nop_softc*, %struct.g_nop_softc** %5, align 8
  %87 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %86, i32 0, i32 6
  store i64 0, i64* %87, align 8
  %88 = load %struct.g_nop_softc*, %struct.g_nop_softc** %5, align 8
  %89 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %88, i32 0, i32 5
  store i64 0, i64* %89, align 8
  %90 = load %struct.g_nop_softc*, %struct.g_nop_softc** %5, align 8
  %91 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %90, i32 0, i32 4
  store i64 0, i64* %91, align 8
  %92 = load %struct.g_nop_softc*, %struct.g_nop_softc** %5, align 8
  %93 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %92, i32 0, i32 3
  store i64 0, i64* %93, align 8
  %94 = load %struct.g_nop_softc*, %struct.g_nop_softc** %5, align 8
  %95 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %94, i32 0, i32 2
  store i64 0, i64* %95, align 8
  %96 = load %struct.g_nop_softc*, %struct.g_nop_softc** %5, align 8
  %97 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %96, i32 0, i32 1
  store i64 0, i64* %97, align 8
  %98 = load %struct.g_nop_softc*, %struct.g_nop_softc** %5, align 8
  %99 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  br label %100

100:                                              ; preds = %74
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %27

103:                                              ; preds = %16, %23, %41, %68, %27
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @gctl_get_asciiparam(%struct.gctl_req*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.g_provider* @g_provider_by_name(i8*) #1

declare dso_local i32 @G_NOP_DEBUG(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
