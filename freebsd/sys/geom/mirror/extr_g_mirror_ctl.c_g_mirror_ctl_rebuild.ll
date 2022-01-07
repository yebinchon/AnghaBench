; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror_ctl.c_g_mirror_ctl_rebuild.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror_ctl.c_g_mirror_ctl_rebuild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_mirror_metadata = type { i32 }
%struct.g_mirror_softc = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.g_mirror_disk = type { i64, %struct.TYPE_6__*, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.g_provider* }
%struct.g_provider = type { i8* }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"No '%s' argument.\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Too few arguments.\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"No 'arg%u' argument.\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"No such device: %s.\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"arg%u\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"No such provider: %s.\00", align 1
@G_MIRROR_DISK_STATE_ACTIVE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [47 x i8] c"Provider %s is the last active provider in %s.\00", align 1
@G_MIRROR_DEVICE_FLAG_NOAUTOSYNC = common dso_local global i32 0, align 4
@G_MIRROR_DISK_FLAG_FORCE_SYNC = common dso_local global i32 0, align 4
@G_MIRROR_DISK_STATE_DISCONNECTED = common dso_local global i32 0, align 4
@G_MIRROR_EVENT_WAIT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"Cannot read metadata from %s.\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Cannot reconnect component %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*)* @g_mirror_ctl_rebuild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_mirror_ctl_rebuild(%struct.gctl_req* %0, %struct.g_class* %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca %struct.g_class*, align 8
  %5 = alloca %struct.g_mirror_metadata, align 4
  %6 = alloca %struct.g_mirror_softc*, align 8
  %7 = alloca %struct.g_mirror_disk*, align 8
  %8 = alloca %struct.g_provider*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [16 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store %struct.g_class* %1, %struct.g_class** %4, align 8
  %14 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %15 = call i32* @gctl_get_paraml(%struct.gctl_req* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32* %15, i32** %12, align 8
  %16 = load i32*, i32** %12, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %20 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %157

21:                                               ; preds = %2
  %22 = load i32*, i32** %12, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %27 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %157

28:                                               ; preds = %21
  %29 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %30 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %35 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 0)
  br label %157

36:                                               ; preds = %28
  %37 = load %struct.g_class*, %struct.g_class** %4, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call %struct.g_mirror_softc* @g_mirror_find_device(%struct.g_class* %37, i8* %38)
  store %struct.g_mirror_softc* %39, %struct.g_mirror_softc** %6, align 8
  %40 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %6, align 8
  %41 = icmp eq %struct.g_mirror_softc* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %44)
  br label %157

46:                                               ; preds = %36
  store i32 1, i32* %13, align 4
  br label %47

47:                                               ; preds = %150, %46
  %48 = load i32, i32* %13, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %153

52:                                               ; preds = %47
  %53 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @snprintf(i8* %53, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %54)
  %56 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %57 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %58 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %56, i8* %57)
  store i8* %58, i8** %9, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  br label %150

65:                                               ; preds = %52
  %66 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %6, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = call %struct.g_mirror_disk* @g_mirror_find_disk(%struct.g_mirror_softc* %66, i8* %67)
  store %struct.g_mirror_disk* %68, %struct.g_mirror_disk** %7, align 8
  %69 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %7, align 8
  %70 = icmp eq %struct.g_mirror_disk* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %73)
  br label %150

75:                                               ; preds = %65
  %76 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %6, align 8
  %77 = load i64, i64* @G_MIRROR_DISK_STATE_ACTIVE, align 8
  %78 = call i32 @g_mirror_ndisks(%struct.g_mirror_softc* %76, i64 %77)
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %95

80:                                               ; preds = %75
  %81 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %7, align 8
  %82 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @G_MIRROR_DISK_STATE_ACTIVE, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %80
  %87 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %6, align 8
  %90 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %89, i32 0, i32 2
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %87, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i8* %88, i32 %93)
  br label %153

95:                                               ; preds = %80, %75
  %96 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %7, align 8
  %97 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  store i64 0, i64* %98, align 8
  %99 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %6, align 8
  %100 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @G_MIRROR_DEVICE_FLAG_NOAUTOSYNC, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %95
  %106 = load i32, i32* @G_MIRROR_DISK_FLAG_FORCE_SYNC, align 4
  %107 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %7, align 8
  %108 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %105, %95
  %112 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %7, align 8
  %113 = call i32 @g_mirror_update_metadata(%struct.g_mirror_disk* %112)
  %114 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %7, align 8
  %115 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %114, i32 0, i32 1
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load %struct.g_provider*, %struct.g_provider** %117, align 8
  store %struct.g_provider* %118, %struct.g_provider** %8, align 8
  %119 = call i32 (...) @g_topology_lock()
  %120 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %7, align 8
  %121 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %120, i32 0, i32 1
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = call i32 @g_mirror_read_metadata(%struct.TYPE_6__* %122, %struct.g_mirror_metadata* %5)
  store i32 %123, i32* %11, align 4
  %124 = call i32 (...) @g_topology_unlock()
  %125 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %7, align 8
  %126 = load i32, i32* @G_MIRROR_DISK_STATE_DISCONNECTED, align 4
  %127 = load i32, i32* @G_MIRROR_EVENT_WAIT, align 4
  %128 = call i32 @g_mirror_event_send(%struct.g_mirror_disk* %125, i32 %126, i32 %127)
  %129 = load i32, i32* %11, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %111
  %132 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %133 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %134 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %132, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %135)
  br label %150

137:                                              ; preds = %111
  %138 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %6, align 8
  %139 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %140 = call i32 @g_mirror_add_disk(%struct.g_mirror_softc* %138, %struct.g_provider* %139, %struct.g_mirror_metadata* %5)
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %145 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %146 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %144, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i8* %147)
  br label %150

149:                                              ; preds = %137
  br label %150

150:                                              ; preds = %149, %143, %131, %71, %61
  %151 = load i32, i32* %13, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %13, align 4
  br label %47

153:                                              ; preds = %86, %47
  %154 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %6, align 8
  %155 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %154, i32 0, i32 1
  %156 = call i32 @sx_xunlock(i32* %155)
  br label %157

157:                                              ; preds = %153, %42, %33, %25, %18
  ret void
}

declare dso_local i32* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i8* @gctl_get_asciiparam(%struct.gctl_req*, i8*) #1

declare dso_local %struct.g_mirror_softc* @g_mirror_find_device(%struct.g_class*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.g_mirror_disk* @g_mirror_find_disk(%struct.g_mirror_softc*, i8*) #1

declare dso_local i32 @g_mirror_ndisks(%struct.g_mirror_softc*, i64) #1

declare dso_local i32 @g_mirror_update_metadata(%struct.g_mirror_disk*) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @g_mirror_read_metadata(%struct.TYPE_6__*, %struct.g_mirror_metadata*) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @g_mirror_event_send(%struct.g_mirror_disk*, i32, i32) #1

declare dso_local i32 @g_mirror_add_disk(%struct.g_mirror_softc*, %struct.g_provider*, %struct.g_mirror_metadata*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
