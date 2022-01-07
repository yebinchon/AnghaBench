; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3_ctl.c_g_raid3_ctl_rebuild.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3_ctl.c_g_raid3_ctl_rebuild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_raid3_metadata = type { i32 }
%struct.g_raid3_softc = type { i64, i32, i32 }
%struct.g_raid3_disk = type { i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.g_provider* }
%struct.g_provider = type { i8* }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"No '%s' argument.\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid number of arguments.\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"No 'arg%u' argument.\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"No such device: %s.\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"arg1\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"No such provider: %s.\00", align 1
@G_RAID3_DISK_STATE_ACTIVE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [33 x i8] c"There is one stale disk already.\00", align 1
@G_RAID3_DEVICE_FLAG_NOAUTOSYNC = common dso_local global i32 0, align 4
@G_RAID3_DISK_FLAG_FORCE_SYNC = common dso_local global i32 0, align 4
@G_RAID3_DISK_STATE_DISCONNECTED = common dso_local global i32 0, align 4
@G_RAID3_EVENT_WAIT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"Cannot read metadata from %s.\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Cannot reconnect component %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*)* @g_raid3_ctl_rebuild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid3_ctl_rebuild(%struct.gctl_req* %0, %struct.g_class* %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca %struct.g_class*, align 8
  %5 = alloca %struct.g_raid3_metadata, align 4
  %6 = alloca %struct.g_raid3_softc*, align 8
  %7 = alloca %struct.g_raid3_disk*, align 8
  %8 = alloca %struct.g_provider*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store %struct.g_class* %1, %struct.g_class** %4, align 8
  %12 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %13 = call i32* @gctl_get_paraml(%struct.gctl_req* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32* %13, i32** %11, align 8
  %14 = load i32*, i32** %11, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %18 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %149

19:                                               ; preds = %2
  %20 = load i32*, i32** %11, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 2
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %25 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %149

26:                                               ; preds = %19
  %27 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %28 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %33 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 0)
  br label %149

34:                                               ; preds = %26
  %35 = load %struct.g_class*, %struct.g_class** %4, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call %struct.g_raid3_softc* @g_raid3_find_device(%struct.g_class* %35, i8* %36)
  store %struct.g_raid3_softc* %37, %struct.g_raid3_softc** %6, align 8
  %38 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %39 = icmp eq %struct.g_raid3_softc* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %42)
  br label %149

44:                                               ; preds = %34
  %45 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %46 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i8* %46, i8** %9, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %51 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %52 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %53 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %52, i32 0, i32 2
  %54 = call i32 @sx_xunlock(i32* %53)
  br label %149

55:                                               ; preds = %44
  %56 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = call %struct.g_raid3_disk* @g_raid3_find_disk(%struct.g_raid3_softc* %56, i8* %57)
  store %struct.g_raid3_disk* %58, %struct.g_raid3_disk** %7, align 8
  %59 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %7, align 8
  %60 = icmp eq %struct.g_raid3_disk* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %63)
  %65 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %66 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %65, i32 0, i32 2
  %67 = call i32 @sx_xunlock(i32* %66)
  br label %149

68:                                               ; preds = %55
  %69 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %7, align 8
  %70 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @G_RAID3_DISK_STATE_ACTIVE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %68
  %75 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %76 = load i64, i64* @G_RAID3_DISK_STATE_ACTIVE, align 8
  %77 = call i64 @g_raid3_ndisks(%struct.g_raid3_softc* %75, i64 %76)
  %78 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %79 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %77, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %74
  %83 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %84 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %83, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %85 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %86 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %85, i32 0, i32 2
  %87 = call i32 @sx_xunlock(i32* %86)
  br label %149

88:                                               ; preds = %74, %68
  %89 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %7, align 8
  %90 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  %92 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %93 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @G_RAID3_DEVICE_FLAG_NOAUTOSYNC, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %88
  %99 = load i32, i32* @G_RAID3_DISK_FLAG_FORCE_SYNC, align 4
  %100 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %7, align 8
  %101 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %98, %88
  %105 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %7, align 8
  %106 = call i32 @g_raid3_update_metadata(%struct.g_raid3_disk* %105)
  %107 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %7, align 8
  %108 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load %struct.g_provider*, %struct.g_provider** %110, align 8
  store %struct.g_provider* %111, %struct.g_provider** %8, align 8
  %112 = call i32 (...) @g_topology_lock()
  %113 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %7, align 8
  %114 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %113, i32 0, i32 1
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = call i32 @g_raid3_read_metadata(%struct.TYPE_4__* %115, %struct.g_raid3_metadata* %5)
  store i32 %116, i32* %10, align 4
  %117 = call i32 (...) @g_topology_unlock()
  %118 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %7, align 8
  %119 = load i32, i32* @G_RAID3_DISK_STATE_DISCONNECTED, align 4
  %120 = load i32, i32* @G_RAID3_EVENT_WAIT, align 4
  %121 = call i32 @g_raid3_event_send(%struct.g_raid3_disk* %118, i32 %119, i32 %120)
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %104
  %125 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %126 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %127 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %125, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %128)
  %130 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %131 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %130, i32 0, i32 2
  %132 = call i32 @sx_xunlock(i32* %131)
  br label %149

133:                                              ; preds = %104
  %134 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %135 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %136 = call i32 @g_raid3_add_disk(%struct.g_raid3_softc* %134, %struct.g_provider* %135, %struct.g_raid3_metadata* %5)
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %133
  %140 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %141 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %142 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %140, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i8* %143)
  br label %145

145:                                              ; preds = %139, %133
  %146 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %147 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %146, i32 0, i32 2
  %148 = call i32 @sx_xunlock(i32* %147)
  br label %149

149:                                              ; preds = %145, %124, %82, %61, %49, %40, %31, %23, %16
  ret void
}

declare dso_local i32* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i8* @gctl_get_asciiparam(%struct.gctl_req*, i8*) #1

declare dso_local %struct.g_raid3_softc* @g_raid3_find_device(%struct.g_class*, i8*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local %struct.g_raid3_disk* @g_raid3_find_disk(%struct.g_raid3_softc*, i8*) #1

declare dso_local i64 @g_raid3_ndisks(%struct.g_raid3_softc*, i64) #1

declare dso_local i32 @g_raid3_update_metadata(%struct.g_raid3_disk*) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @g_raid3_read_metadata(%struct.TYPE_4__*, %struct.g_raid3_metadata*) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @g_raid3_event_send(%struct.g_raid3_disk*, i32, i32) #1

declare dso_local i32 @g_raid3_add_disk(%struct.g_raid3_softc*, %struct.g_provider*, %struct.g_raid3_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
