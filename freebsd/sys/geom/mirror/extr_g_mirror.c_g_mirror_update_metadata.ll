; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_update_metadata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_update_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_mirror_disk = type { %struct.g_mirror_softc* }
%struct.g_mirror_softc = type { i64, i32, i32 }
%struct.g_mirror_metadata = type { i32 }

@SX_LOCKED = common dso_local global i32 0, align 4
@G_MIRROR_TYPE_AUTOMATIC = common dso_local global i64 0, align 8
@G_MIRROR_DEVICE_FLAG_WIPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Metadata on %s updated.\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Cannot update metadata on disk %s (error=%d).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_mirror_update_metadata(%struct.g_mirror_disk* %0) #0 {
  %2 = alloca %struct.g_mirror_disk*, align 8
  %3 = alloca %struct.g_mirror_softc*, align 8
  %4 = alloca %struct.g_mirror_metadata, align 4
  %5 = alloca i32, align 4
  store %struct.g_mirror_disk* %0, %struct.g_mirror_disk** %2, align 8
  %6 = call i32 (...) @g_topology_assert_not()
  %7 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %2, align 8
  %8 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %7, i32 0, i32 0
  %9 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %8, align 8
  store %struct.g_mirror_softc* %9, %struct.g_mirror_softc** %3, align 8
  %10 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %11 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %10, i32 0, i32 2
  %12 = load i32, i32* @SX_LOCKED, align 4
  %13 = call i32 @sx_assert(i32* %11, i32 %12)
  %14 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %15 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @G_MIRROR_TYPE_AUTOMATIC, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %45

20:                                               ; preds = %1
  %21 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %22 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @G_MIRROR_DEVICE_FLAG_WIPE, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %29 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %2, align 8
  %30 = call i32 @g_mirror_fill_metadata(%struct.g_mirror_softc* %28, %struct.g_mirror_disk* %29, %struct.g_mirror_metadata* %4)
  br label %31

31:                                               ; preds = %27, %20
  %32 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %2, align 8
  %33 = call i32 @g_mirror_write_metadata(%struct.g_mirror_disk* %32, %struct.g_mirror_metadata* %4)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %2, align 8
  %38 = call i32 @g_mirror_get_diskname(%struct.g_mirror_disk* %37)
  %39 = call i32 (i32, i8*, i32, ...) @G_MIRROR_DEBUG(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %45

40:                                               ; preds = %31
  %41 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %2, align 8
  %42 = call i32 @g_mirror_get_diskname(%struct.g_mirror_disk* %41)
  %43 = load i32, i32* %5, align 4
  %44 = call i32 (i32, i8*, i32, ...) @G_MIRROR_DEBUG(i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %19, %40, %36
  ret void
}

declare dso_local i32 @g_topology_assert_not(...) #1

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @g_mirror_fill_metadata(%struct.g_mirror_softc*, %struct.g_mirror_disk*, %struct.g_mirror_metadata*) #1

declare dso_local i32 @g_mirror_write_metadata(%struct.g_mirror_disk*, %struct.g_mirror_metadata*) #1

declare dso_local i32 @G_MIRROR_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @g_mirror_get_diskname(%struct.g_mirror_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
