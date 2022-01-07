; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_add_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_add_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_mirror_softc = type { i64, i32 }
%struct.g_provider = type { i32 }
%struct.g_mirror_metadata = type { i64, i64 }
%struct.g_mirror_disk = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Adding disk %s.\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Component %s (device %s) broken, skipping.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@G_MIRROR_DISK_STATE_NEW = common dso_local global i32 0, align 4
@G_MIRROR_EVENT_WAIT = common dso_local global i32 0, align 4
@G_MIRROR_VERSION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Upgrading metadata on %s (v%d->v%d).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_mirror_add_disk(%struct.g_mirror_softc* %0, %struct.g_provider* %1, %struct.g_mirror_metadata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_mirror_softc*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca %struct.g_mirror_metadata*, align 8
  %8 = alloca %struct.g_mirror_disk*, align 8
  %9 = alloca i32, align 4
  store %struct.g_mirror_softc* %0, %struct.g_mirror_softc** %5, align 8
  store %struct.g_provider* %1, %struct.g_provider** %6, align 8
  store %struct.g_mirror_metadata* %2, %struct.g_mirror_metadata** %7, align 8
  %10 = call i32 (...) @g_topology_assert_not()
  %11 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %12 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i32, i8*, i32, ...) @G_MIRROR_DEBUG(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %5, align 8
  %16 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %17 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %7, align 8
  %18 = call i32 @g_mirror_check_metadata(%struct.g_mirror_softc* %15, %struct.g_provider* %16, %struct.g_mirror_metadata* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %4, align 4
  br label %85

23:                                               ; preds = %3
  %24 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %7, align 8
  %25 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %5, align 8
  %28 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %33 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %5, align 8
  %36 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i32, i8*, i32, ...) @G_MIRROR_DEBUG(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %4, align 4
  br label %85

40:                                               ; preds = %23
  %41 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %5, align 8
  %42 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %43 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %7, align 8
  %44 = call i32 @g_mirror_refresh_device(%struct.g_mirror_softc* %41, %struct.g_provider* %42, %struct.g_mirror_metadata* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %85

49:                                               ; preds = %40
  %50 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %5, align 8
  %51 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %52 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %7, align 8
  %53 = call %struct.g_mirror_disk* @g_mirror_init_disk(%struct.g_mirror_softc* %50, %struct.g_provider* %51, %struct.g_mirror_metadata* %52, i32* %9)
  store %struct.g_mirror_disk* %53, %struct.g_mirror_disk** %8, align 8
  %54 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %8, align 8
  %55 = icmp eq %struct.g_mirror_disk* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %85

58:                                               ; preds = %49
  %59 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %8, align 8
  %60 = load i32, i32* @G_MIRROR_DISK_STATE_NEW, align 4
  %61 = load i32, i32* @G_MIRROR_EVENT_WAIT, align 4
  %62 = call i32 @g_mirror_event_send(%struct.g_mirror_disk* %59, i32 %60, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %4, align 4
  br label %85

67:                                               ; preds = %58
  %68 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %7, align 8
  %69 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @G_MIRROR_VERSION, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %67
  %74 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %75 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %7, align 8
  %78 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @G_MIRROR_VERSION, align 8
  %81 = call i32 (i32, i8*, i32, ...) @G_MIRROR_DEBUG(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %76, i64 %79, i64 %80)
  %82 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %8, align 8
  %83 = call i32 @g_mirror_update_metadata(%struct.g_mirror_disk* %82)
  br label %84

84:                                               ; preds = %73, %67
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %65, %56, %47, %31, %21
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @g_topology_assert_not(...) #1

declare dso_local i32 @G_MIRROR_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @g_mirror_check_metadata(%struct.g_mirror_softc*, %struct.g_provider*, %struct.g_mirror_metadata*) #1

declare dso_local i32 @g_mirror_refresh_device(%struct.g_mirror_softc*, %struct.g_provider*, %struct.g_mirror_metadata*) #1

declare dso_local %struct.g_mirror_disk* @g_mirror_init_disk(%struct.g_mirror_softc*, %struct.g_provider*, %struct.g_mirror_metadata*, i32*) #1

declare dso_local i32 @g_mirror_event_send(%struct.g_mirror_disk*, i32, i32) #1

declare dso_local i32 @g_mirror_update_metadata(%struct.g_mirror_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
