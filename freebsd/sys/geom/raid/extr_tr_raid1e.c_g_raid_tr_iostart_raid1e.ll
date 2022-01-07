; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1e.c_g_raid_tr_iostart_raid1e.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1e.c_g_raid_tr_iostart_raid1e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_tr_object = type { %struct.g_raid_volume* }
%struct.g_raid_volume = type { i64, i32 }
%struct.bio = type { i32, i32 }
%struct.g_raid_tr_raid1e_object = type { i64, i64, i32* }

@G_RAID_VOLUME_S_OPTIMAL = common dso_local global i64 0, align 8
@G_RAID_VOLUME_S_SUBOPTIMAL = common dso_local global i64 0, align 8
@G_RAID_VOLUME_S_DEGRADED = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@G_RAID_BIO_FLAG_SPECIAL = common dso_local global i32 0, align 4
@g_raid1e_rebuild_fair_io = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Invalid command here: %u (volume=%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid_tr_object*, %struct.bio*)* @g_raid_tr_iostart_raid1e to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_tr_iostart_raid1e(%struct.g_raid_tr_object* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.g_raid_tr_object*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.g_raid_volume*, align 8
  %6 = alloca %struct.g_raid_tr_raid1e_object*, align 8
  store %struct.g_raid_tr_object* %0, %struct.g_raid_tr_object** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %7 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %3, align 8
  %8 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %7, i32 0, i32 0
  %9 = load %struct.g_raid_volume*, %struct.g_raid_volume** %8, align 8
  store %struct.g_raid_volume* %9, %struct.g_raid_volume** %5, align 8
  %10 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %3, align 8
  %11 = bitcast %struct.g_raid_tr_object* %10 to %struct.g_raid_tr_raid1e_object*
  store %struct.g_raid_tr_raid1e_object* %11, %struct.g_raid_tr_raid1e_object** %6, align 8
  %12 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %13 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @G_RAID_VOLUME_S_OPTIMAL, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %2
  %18 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %19 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @G_RAID_VOLUME_S_SUBOPTIMAL, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %25 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @G_RAID_VOLUME_S_DEGRADED, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.bio*, %struct.bio** %4, align 8
  %31 = load i32, i32* @EIO, align 4
  %32 = call i32 @g_raid_iodone(%struct.bio* %30, i32 %31)
  br label %86

33:                                               ; preds = %23, %17, %2
  %34 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %6, align 8
  %35 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %60

38:                                               ; preds = %33
  %39 = load %struct.bio*, %struct.bio** %4, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @G_RAID_BIO_FLAG_SPECIAL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %38
  %46 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %6, align 8
  %47 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %6, align 8
  %49 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %49, align 8
  %52 = icmp sle i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load i64, i64* @g_raid1e_rebuild_fair_io, align 8
  %55 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %6, align 8
  %56 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %3, align 8
  %58 = call i32 @g_raid_tr_raid1e_rebuild_some(%struct.g_raid_tr_object* %57)
  br label %59

59:                                               ; preds = %53, %45
  br label %60

60:                                               ; preds = %59, %38, %33
  %61 = load %struct.bio*, %struct.bio** %4, align 8
  %62 = getelementptr inbounds %struct.bio, %struct.bio* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %76 [
    i32 129, label %64
    i32 128, label %68
    i32 131, label %68
    i32 130, label %72
  ]

64:                                               ; preds = %60
  %65 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %3, align 8
  %66 = load %struct.bio*, %struct.bio** %4, align 8
  %67 = call i32 @g_raid_tr_iostart_raid1e_read(%struct.g_raid_tr_object* %65, %struct.bio* %66)
  br label %86

68:                                               ; preds = %60, %60
  %69 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %3, align 8
  %70 = load %struct.bio*, %struct.bio** %4, align 8
  %71 = call i32 @g_raid_tr_iostart_raid1e_write(%struct.g_raid_tr_object* %69, %struct.bio* %70)
  br label %86

72:                                               ; preds = %60
  %73 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %3, align 8
  %74 = load %struct.bio*, %struct.bio** %4, align 8
  %75 = call i32 @g_raid_tr_flush_common(%struct.g_raid_tr_object* %73, %struct.bio* %74)
  br label %86

76:                                               ; preds = %60
  %77 = load %struct.bio*, %struct.bio** %4, align 8
  %78 = getelementptr inbounds %struct.bio, %struct.bio* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %81 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  %85 = call i32 @KASSERT(i32 0, i8* %84)
  br label %86

86:                                               ; preds = %29, %76, %72, %68, %64
  ret void
}

declare dso_local i32 @g_raid_iodone(%struct.bio*, i32) #1

declare dso_local i32 @g_raid_tr_raid1e_rebuild_some(%struct.g_raid_tr_object*) #1

declare dso_local i32 @g_raid_tr_iostart_raid1e_read(%struct.g_raid_tr_object*, %struct.bio*) #1

declare dso_local i32 @g_raid_tr_iostart_raid1e_write(%struct.g_raid_tr_object*, %struct.bio*) #1

declare dso_local i32 @g_raid_tr_flush_common(%struct.g_raid_tr_object*, %struct.bio*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
