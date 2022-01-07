; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3_ctl.c_g_raid3_ctl_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3_ctl.c_g_raid3_ctl_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_raid3_softc = type { i64, i32, %struct.g_raid3_disk* }
%struct.g_raid3_disk = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"No '%s' argument.\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid number of arguments.\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"No 'arg%u' argument.\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"No such device: %s.\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Invalid component number.\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Cannot replace component number %jd.\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Cannot clear metadata on %s.\00", align 1
@G_RAID3_DISK_STATE_DISCONNECTED = common dso_local global i32 0, align 4
@G_RAID3_EVENT_DONTWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*)* @g_raid3_ctl_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid3_ctl_remove(%struct.gctl_req* %0, %struct.g_class* %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca %struct.g_class*, align 8
  %5 = alloca %struct.g_raid3_softc*, align 8
  %6 = alloca %struct.g_raid3_disk*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store %struct.g_class* %1, %struct.g_class** %4, align 8
  %10 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %11 = call i8* @gctl_get_paraml(%struct.gctl_req* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %17 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %113

18:                                               ; preds = %2
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %24 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %113

25:                                               ; preds = %18
  %26 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %27 = call i8* @gctl_get_paraml(%struct.gctl_req* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %28 = bitcast i8* %27 to i64*
  store i64* %28, i64** %8, align 8
  %29 = load i64*, i64** %8, align 8
  %30 = icmp eq i64* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %33 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %113

34:                                               ; preds = %25
  %35 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %36 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %41 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 0)
  br label %113

42:                                               ; preds = %34
  %43 = load %struct.g_class*, %struct.g_class** %4, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call %struct.g_raid3_softc* @g_raid3_find_device(%struct.g_class* %43, i8* %44)
  store %struct.g_raid3_softc* %45, %struct.g_raid3_softc** %5, align 8
  %46 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %47 = icmp eq %struct.g_raid3_softc* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %50)
  br label %113

52:                                               ; preds = %42
  %53 = load i64*, i64** %8, align 8
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %56 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp uge i64 %54, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %61 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %60, i32 0, i32 1
  %62 = call i32 @sx_xunlock(i32* %61)
  %63 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %64 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %113

65:                                               ; preds = %52
  %66 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %67 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %66, i32 0, i32 2
  %68 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %67, align 8
  %69 = load i64*, i64** %8, align 8
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %68, i64 %70
  store %struct.g_raid3_disk* %71, %struct.g_raid3_disk** %6, align 8
  %72 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %6, align 8
  %73 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %104 [
    i32 131, label %75
    i32 129, label %88
    i32 128, label %88
    i32 130, label %103
  ]

75:                                               ; preds = %65
  %76 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %77 = call i64 @g_raid3_ndisks(%struct.g_raid3_softc* %76, i32 131)
  %78 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %79 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ult i64 %77, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %84 = load i64*, i64** %8, align 8
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %83, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i64 %85)
  br label %109

87:                                               ; preds = %75
  br label %88

88:                                               ; preds = %65, %65, %87
  %89 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %6, align 8
  %90 = call i32 @g_raid3_clear_metadata(%struct.g_raid3_disk* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %94 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %6, align 8
  %95 = call i64 @g_raid3_get_diskname(%struct.g_raid3_disk* %94)
  %96 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %93, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i64 %95)
  br label %102

97:                                               ; preds = %88
  %98 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %6, align 8
  %99 = load i32, i32* @G_RAID3_DISK_STATE_DISCONNECTED, align 4
  %100 = load i32, i32* @G_RAID3_EVENT_DONTWAIT, align 4
  %101 = call i32 @g_raid3_event_send(%struct.g_raid3_disk* %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %97, %92
  br label %109

103:                                              ; preds = %65
  br label %109

104:                                              ; preds = %65
  %105 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %106 = load i64*, i64** %8, align 8
  %107 = load i64, i64* %106, align 8
  %108 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %105, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i64 %107)
  br label %109

109:                                              ; preds = %104, %103, %102, %82
  %110 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %111 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %110, i32 0, i32 1
  %112 = call i32 @sx_xunlock(i32* %111)
  br label %113

113:                                              ; preds = %109, %59, %48, %39, %31, %22, %15
  ret void
}

declare dso_local i8* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i8* @gctl_get_asciiparam(%struct.gctl_req*, i8*) #1

declare dso_local %struct.g_raid3_softc* @g_raid3_find_device(%struct.g_class*, i8*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i64 @g_raid3_ndisks(%struct.g_raid3_softc*, i32) #1

declare dso_local i32 @g_raid3_clear_metadata(%struct.g_raid3_disk*) #1

declare dso_local i64 @g_raid3_get_diskname(%struct.g_raid3_disk*) #1

declare dso_local i32 @g_raid3_event_send(%struct.g_raid3_disk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
