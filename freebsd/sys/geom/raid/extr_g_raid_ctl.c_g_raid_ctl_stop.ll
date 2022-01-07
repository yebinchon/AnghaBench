; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid_ctl.c_g_raid_ctl_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid_ctl.c_g_raid_ctl_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_raid_softc = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"No '%s' argument.\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid number of arguments.\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"No array name received.\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Array '%s' not found.\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@G_RAID_DESTROY_HARD = common dso_local global i32 0, align 4
@G_RAID_DESTROY_SOFT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"Array is busy.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*)* @g_raid_ctl_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_ctl_stop(%struct.gctl_req* %0, %struct.g_class* %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca %struct.g_class*, align 8
  %5 = alloca %struct.g_raid_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store %struct.g_class* %1, %struct.g_class** %4, align 8
  %11 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %12 = call i32* @gctl_get_paraml(%struct.gctl_req* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %17 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %71

18:                                               ; preds = %2
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %24 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %71

25:                                               ; preds = %18
  %26 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %27 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %32 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %71

33:                                               ; preds = %25
  %34 = load %struct.g_class*, %struct.g_class** %4, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call %struct.g_raid_softc* @g_raid_find_node(%struct.g_class* %34, i8* %35)
  store %struct.g_raid_softc* %36, %struct.g_raid_softc** %5, align 8
  %37 = load %struct.g_raid_softc*, %struct.g_raid_softc** %5, align 8
  %38 = icmp eq %struct.g_raid_softc* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %41)
  br label %71

43:                                               ; preds = %33
  %44 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %45 = call i32* @gctl_get_paraml(%struct.gctl_req* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 4)
  store i32* %45, i32** %8, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @G_RAID_DESTROY_HARD, align 4
  store i32 %53, i32* %10, align 4
  br label %56

54:                                               ; preds = %48, %43
  %55 = load i32, i32* @G_RAID_DESTROY_SOFT, align 4
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = call i32 (...) @g_topology_unlock()
  %58 = load %struct.g_raid_softc*, %struct.g_raid_softc** %5, align 8
  %59 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %58, i32 0, i32 0
  %60 = call i32 @sx_xlock(i32* %59)
  %61 = load %struct.g_raid_softc*, %struct.g_raid_softc** %5, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @g_raid_destroy(%struct.g_raid_softc* %61, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %68 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %56
  %70 = call i32 (...) @g_topology_lock()
  br label %71

71:                                               ; preds = %69, %39, %30, %22, %15
  ret void
}

declare dso_local i32* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i8* @gctl_get_asciiparam(%struct.gctl_req*, i8*) #1

declare dso_local %struct.g_raid_softc* @g_raid_find_node(%struct.g_class*, i8*) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @g_raid_destroy(%struct.g_raid_softc*, i32) #1

declare dso_local i32 @g_topology_lock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
