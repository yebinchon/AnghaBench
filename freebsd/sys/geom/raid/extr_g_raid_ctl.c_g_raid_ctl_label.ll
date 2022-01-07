; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid_ctl.c_g_raid_ctl_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid_ctl.c_g_raid_ctl_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_geom = type { i64 }
%struct.g_raid_softc = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"No '%s' argument.\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid number of arguments.\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"No format received.\00", align 1
@G_RAID_MD_TASTE_FAIL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"Failed to create array with format '%s'.\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Command failed: %d.\00", align 1
@G_RAID_MD_TASTE_NEW = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"%s created\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"%s reused\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*)* @g_raid_ctl_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_ctl_label(%struct.gctl_req* %0, %struct.g_class* %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca %struct.g_class*, align 8
  %5 = alloca %struct.g_geom*, align 8
  %6 = alloca %struct.g_raid_softc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 16
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store %struct.g_class* %1, %struct.g_class** %4, align 8
  %12 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %13 = call i32* @gctl_get_paraml(%struct.gctl_req* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %18 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %100

19:                                               ; preds = %2
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %25 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %100

26:                                               ; preds = %19
  %27 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %28 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %33 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %100

34:                                               ; preds = %26
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %37 = call i32 @g_raid_create_node_format(i8* %35, %struct.gctl_req* %36, %struct.g_geom** %5)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @G_RAID_MD_TASTE_FAIL, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %43)
  br label %100

45:                                               ; preds = %34
  %46 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %47 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.g_raid_softc*
  store %struct.g_raid_softc* %49, %struct.g_raid_softc** %6, align 8
  %50 = call i32 (...) @g_topology_unlock()
  %51 = load %struct.g_raid_softc*, %struct.g_raid_softc** %6, align 8
  %52 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %51, i32 0, i32 1
  %53 = call i32 @sx_xlock(i32* %52)
  %54 = load %struct.g_raid_softc*, %struct.g_raid_softc** %6, align 8
  %55 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %58 = call i32 @G_RAID_MD_CTL(i32 %56, %struct.gctl_req* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %45
  %62 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @G_RAID_MD_TASTE_NEW, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load %struct.g_raid_softc*, %struct.g_raid_softc** %6, align 8
  %70 = call i32 @g_raid_destroy_node(%struct.g_raid_softc* %69, i32 0)
  br label %71

71:                                               ; preds = %68, %61
  br label %95

72:                                               ; preds = %45
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @G_RAID_MD_TASTE_NEW, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %78 = load %struct.g_raid_softc*, %struct.g_raid_softc** %6, align 8
  %79 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @snprintf(i8* %77, i32 64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %80)
  br label %88

82:                                               ; preds = %72
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %84 = load %struct.g_raid_softc*, %struct.g_raid_softc** %6, align 8
  %85 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @snprintf(i8* %83, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %82, %76
  %89 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %90 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %91 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %92 = call i64 @strlen(i8* %91)
  %93 = add nsw i64 %92, 1
  %94 = call i32 @gctl_set_param_err(%struct.gctl_req* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %90, i64 %93)
  br label %95

95:                                               ; preds = %88, %71
  %96 = load %struct.g_raid_softc*, %struct.g_raid_softc** %6, align 8
  %97 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %96, i32 0, i32 1
  %98 = call i32 @sx_xunlock(i32* %97)
  %99 = call i32 (...) @g_topology_lock()
  br label %100

100:                                              ; preds = %95, %41, %31, %23, %16
  ret void
}

declare dso_local i32* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i8* @gctl_get_asciiparam(%struct.gctl_req*, i8*) #1

declare dso_local i32 @g_raid_create_node_format(i8*, %struct.gctl_req*, %struct.g_geom**) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @G_RAID_MD_CTL(i32, %struct.gctl_req*) #1

declare dso_local i32 @g_raid_destroy_node(%struct.g_raid_softc*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @gctl_set_param_err(%struct.gctl_req*, i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @g_topology_lock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
