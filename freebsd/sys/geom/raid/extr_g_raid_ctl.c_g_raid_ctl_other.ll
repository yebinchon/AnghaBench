; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid_ctl.c_g_raid_ctl_other.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid_ctl.c_g_raid_ctl_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_raid_softc = type { i32, i32* }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"No '%s' argument.\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid number of arguments.\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"No array name received.\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Array '%s' not found.\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Command failed: %d.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*)* @g_raid_ctl_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_ctl_other(%struct.gctl_req* %0, %struct.g_class* %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca %struct.g_class*, align 8
  %5 = alloca %struct.g_raid_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store %struct.g_class* %1, %struct.g_class** %4, align 8
  %9 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %10 = call i32* @gctl_get_paraml(%struct.gctl_req* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %15 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %68

16:                                               ; preds = %2
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %22 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %68

23:                                               ; preds = %16
  %24 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %25 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %30 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %68

31:                                               ; preds = %23
  %32 = load %struct.g_class*, %struct.g_class** %4, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call %struct.g_raid_softc* @g_raid_find_node(%struct.g_class* %32, i8* %33)
  store %struct.g_raid_softc* %34, %struct.g_raid_softc** %5, align 8
  %35 = load %struct.g_raid_softc*, %struct.g_raid_softc** %5, align 8
  %36 = icmp eq %struct.g_raid_softc* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %39)
  br label %68

41:                                               ; preds = %31
  %42 = call i32 (...) @g_topology_unlock()
  %43 = load %struct.g_raid_softc*, %struct.g_raid_softc** %5, align 8
  %44 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %43, i32 0, i32 0
  %45 = call i32 @sx_xlock(i32* %44)
  %46 = load %struct.g_raid_softc*, %struct.g_raid_softc** %5, align 8
  %47 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %41
  %51 = load %struct.g_raid_softc*, %struct.g_raid_softc** %5, align 8
  %52 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %55 = call i32 @G_RAID_MD_CTL(i32* %53, %struct.gctl_req* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %59, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %58, %50
  br label %63

63:                                               ; preds = %62, %41
  %64 = load %struct.g_raid_softc*, %struct.g_raid_softc** %5, align 8
  %65 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %64, i32 0, i32 0
  %66 = call i32 @sx_xunlock(i32* %65)
  %67 = call i32 (...) @g_topology_lock()
  br label %68

68:                                               ; preds = %63, %37, %28, %20, %13
  ret void
}

declare dso_local i32* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i8* @gctl_get_asciiparam(%struct.gctl_req*, i8*) #1

declare dso_local %struct.g_raid_softc* @g_raid_find_node(%struct.g_class*, i8*) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @G_RAID_MD_CTL(i32*, %struct.gctl_req*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @g_topology_lock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
