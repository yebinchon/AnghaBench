; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_update_idle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_update_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_mirror_softc = type { i32, i32, i64, i32 }
%struct.g_mirror_disk = type { i32 }

@SX_LOCKED = common dso_local global i32 0, align 4
@G_MIRROR_DEVICE_FLAG_NOFAILSYNC = common dso_local global i32 0, align 4
@G_MIRROR_DISK_FLAG_DIRTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Disk %s (device %s) marked as dirty.\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Disk %s (device %s) marked as clean.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_mirror_softc*, %struct.g_mirror_disk*)* @g_mirror_update_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_mirror_update_idle(%struct.g_mirror_softc* %0, %struct.g_mirror_disk* %1) #0 {
  %3 = alloca %struct.g_mirror_softc*, align 8
  %4 = alloca %struct.g_mirror_disk*, align 8
  store %struct.g_mirror_softc* %0, %struct.g_mirror_softc** %3, align 8
  store %struct.g_mirror_disk* %1, %struct.g_mirror_disk** %4, align 8
  %5 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %6 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %5, i32 0, i32 3
  %7 = load i32, i32* @SX_LOCKED, align 4
  %8 = call i32 @sx_assert(i32* %6, i32 %7)
  %9 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %10 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @G_MIRROR_DEVICE_FLAG_NOFAILSYNC, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %66

16:                                               ; preds = %2
  %17 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %18 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %16
  %22 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %4, align 8
  %23 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @G_MIRROR_DISK_FLAG_DIRTY, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %21
  %29 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %4, align 8
  %30 = call i32 @g_mirror_get_diskname(%struct.g_mirror_disk* %29)
  %31 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %32 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @G_MIRROR_DEBUG(i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33)
  %35 = load i32, i32* @G_MIRROR_DISK_FLAG_DIRTY, align 4
  %36 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %4, align 8
  %37 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %66

40:                                               ; preds = %21, %16
  %41 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %42 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %40
  %46 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %4, align 8
  %47 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @G_MIRROR_DISK_FLAG_DIRTY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %45
  %53 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %4, align 8
  %54 = call i32 @g_mirror_get_diskname(%struct.g_mirror_disk* %53)
  %55 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %56 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @G_MIRROR_DEBUG(i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %57)
  %59 = load i32, i32* @G_MIRROR_DISK_FLAG_DIRTY, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %4, align 8
  %62 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %52, %45, %40
  br label %66

66:                                               ; preds = %15, %65, %28
  ret void
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @G_MIRROR_DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @g_mirror_get_diskname(%struct.g_mirror_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
