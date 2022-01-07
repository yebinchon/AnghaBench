; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/virstor/extr_g_virstor.c_virstor_ctl_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/virstor/extr_g_virstor.c_virstor_ctl_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_virstor_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Error fetching argument '%s'\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Invalid number of arguments\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"arg%d\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"No 'arg%d' argument\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Don't know anything about '%s'\00", align 1
@LVL_INFO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"Stopping %s by the userland command\00", align 1
@TRUE = common dso_local global i32 0, align 4
@LVL_ERROR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"Cannot destroy %s: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*)* @virstor_ctl_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virstor_ctl_stop(%struct.gctl_req* %0, %struct.g_class* %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca %struct.g_class*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [8 x i8], align 1
  %9 = alloca i8*, align 8
  %10 = alloca %struct.g_virstor_softc*, align 8
  %11 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store %struct.g_class* %1, %struct.g_class** %4, align 8
  %12 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %13 = call i32* @gctl_get_paraml(%struct.gctl_req* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %18 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %96

19:                                               ; preds = %2
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %25 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %96

26:                                               ; preds = %19
  %27 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %28 = call i32* @gctl_get_paraml(%struct.gctl_req* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 4)
  store i32* %28, i32** %5, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %33 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %96

34:                                               ; preds = %26
  %35 = call i32 (...) @g_topology_lock()
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %91, %34
  %37 = load i32, i32* %7, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %94

41:                                               ; preds = %36
  %42 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @sprintf(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %43)
  %45 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %46 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %47 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %45, i8* %46)
  store i8* %47, i8** %9, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %52)
  %54 = call i32 (...) @g_topology_unlock()
  br label %96

55:                                               ; preds = %41
  %56 = load %struct.g_class*, %struct.g_class** %4, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = call %struct.g_virstor_softc* @virstor_find_geom(%struct.g_class* %56, i8* %57)
  store %struct.g_virstor_softc* %58, %struct.g_virstor_softc** %10, align 8
  %59 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %10, align 8
  %60 = icmp eq %struct.g_virstor_softc* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %63)
  %65 = call i32 (...) @g_topology_unlock()
  br label %96

66:                                               ; preds = %55
  %67 = load i32, i32* @LVL_INFO, align 4
  %68 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %10, align 8
  %69 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i32, i8*, i32, ...) @LOG_MSG(i32 %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %72)
  %74 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %10, align 8
  %75 = call i32 @update_metadata(%struct.g_virstor_softc* %74)
  %76 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %10, align 8
  %77 = load i32, i32* @TRUE, align 4
  %78 = load i32, i32* @TRUE, align 4
  %79 = call i32 @virstor_geom_destroy(%struct.g_virstor_softc* %76, i32 %77, i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %66
  %82 = load i32, i32* @LVL_ERROR, align 4
  %83 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %10, align 8
  %84 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 (i32, i8*, i32, ...) @LOG_MSG(i32 %82, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %81, %66
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %36

94:                                               ; preds = %36
  %95 = call i32 (...) @g_topology_unlock()
  br label %96

96:                                               ; preds = %94, %61, %50, %31, %23, %16
  ret void
}

declare dso_local i32* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i8* @gctl_get_asciiparam(%struct.gctl_req*, i8*) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local %struct.g_virstor_softc* @virstor_find_geom(%struct.g_class*, i8*) #1

declare dso_local i32 @LOG_MSG(i32, i8*, i32, ...) #1

declare dso_local i32 @update_metadata(%struct.g_virstor_softc*) #1

declare dso_local i32 @virstor_geom_destroy(%struct.g_virstor_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
