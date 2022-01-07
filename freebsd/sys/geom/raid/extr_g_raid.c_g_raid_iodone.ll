; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_iodone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_iodone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.g_raid_volume*, %struct.TYPE_3__* }
%struct.g_raid_volume = type { i32, i64, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.g_raid_softc* }
%struct.g_raid_softc = type { i32 }

@SX_LOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Request done: %d.\00", align 1
@BIO_WRITE = common dso_local global i64 0, align 8
@BIO_DELETE = common dso_local global i64 0, align 8
@time_uptime = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_raid_iodone(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_raid_softc*, align 8
  %6 = alloca %struct.g_raid_volume*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bio*, %struct.bio** %3, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.g_raid_softc*, %struct.g_raid_softc** %12, align 8
  store %struct.g_raid_softc* %13, %struct.g_raid_softc** %5, align 8
  %14 = load %struct.g_raid_softc*, %struct.g_raid_softc** %5, align 8
  %15 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %14, i32 0, i32 0
  %16 = load i32, i32* @SX_LOCKED, align 4
  %17 = call i32 @sx_assert(i32* %15, i32 %16)
  %18 = load %struct.bio*, %struct.bio** %3, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.g_raid_volume*, %struct.g_raid_volume** %21, align 8
  store %struct.g_raid_volume* %22, %struct.g_raid_volume** %6, align 8
  %23 = load %struct.bio*, %struct.bio** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @G_RAID_LOGREQ(i32 3, %struct.bio* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.bio*, %struct.bio** %3, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @BIO_WRITE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %2
  %32 = load %struct.bio*, %struct.bio** %3, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BIO_DELETE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31, %2
  %38 = load %struct.g_raid_volume*, %struct.g_raid_volume** %6, align 8
  %39 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* @time_uptime, align 4
  %43 = load %struct.g_raid_volume*, %struct.g_raid_volume** %6, align 8
  %44 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %37, %31
  %46 = load %struct.g_raid_volume*, %struct.g_raid_volume** %6, align 8
  %47 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %46, i32 0, i32 2
  %48 = load %struct.bio*, %struct.bio** %3, align 8
  %49 = call i32 @bioq_remove(i32* %47, %struct.bio* %48)
  %50 = load %struct.g_raid_volume*, %struct.g_raid_volume** %6, align 8
  %51 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %45
  %55 = load %struct.g_raid_volume*, %struct.g_raid_volume** %6, align 8
  %56 = load %struct.bio*, %struct.bio** %3, align 8
  %57 = call i64 @g_raid_is_in_locked_range(%struct.g_raid_volume* %55, %struct.bio* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.g_raid_volume*, %struct.g_raid_volume** %6, align 8
  %61 = load %struct.bio*, %struct.bio** %3, align 8
  %62 = call i32 @g_raid_finish_with_locked_ranges(%struct.g_raid_volume* %60, %struct.bio* %61)
  br label %63

63:                                               ; preds = %59, %54, %45
  %64 = load %struct.g_raid_volume*, %struct.g_raid_volume** %6, align 8
  %65 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %64, i32 0, i32 0
  %66 = call i32 @getmicrouptime(i32* %65)
  %67 = load %struct.bio*, %struct.bio** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @g_io_deliver(%struct.bio* %67, i32 %68)
  ret void
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @G_RAID_LOGREQ(i32, %struct.bio*, i8*, i32) #1

declare dso_local i32 @bioq_remove(i32*, %struct.bio*) #1

declare dso_local i64 @g_raid_is_in_locked_range(%struct.g_raid_volume*, %struct.bio*) #1

declare dso_local i32 @g_raid_finish_with_locked_ranges(%struct.g_raid_volume*, %struct.bio*) #1

declare dso_local i32 @getmicrouptime(i32*) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
