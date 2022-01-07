; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_start_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_start_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.g_raid_volume*, %struct.TYPE_3__* }
%struct.g_raid_volume = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.g_raid_softc* }
%struct.g_raid_softc = type { i32 }

@SX_LOCKED = common dso_local global i32 0, align 4
@G_RAID_BIO_FLAG_SPECIAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Defer request.\00", align 1
@BIO_WRITE = common dso_local global i64 0, align 8
@BIO_DELETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Request started\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_raid_start_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_start_request(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_raid_softc*, align 8
  %4 = alloca %struct.g_raid_volume*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.g_raid_softc*, %struct.g_raid_softc** %10, align 8
  store %struct.g_raid_softc* %11, %struct.g_raid_softc** %3, align 8
  %12 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %13 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %12, i32 0, i32 0
  %14 = load i32, i32* @SX_LOCKED, align 4
  %15 = call i32 @sx_assert(i32* %13, i32 %14)
  %16 = load %struct.bio*, %struct.bio** %2, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.g_raid_volume*, %struct.g_raid_volume** %19, align 8
  store %struct.g_raid_volume* %20, %struct.g_raid_volume** %4, align 8
  %21 = load %struct.bio*, %struct.bio** %2, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @G_RAID_BIO_FLAG_SPECIAL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %1
  %28 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %29 = load %struct.bio*, %struct.bio** %2, align 8
  %30 = call i64 @g_raid_is_in_locked_range(%struct.g_raid_volume* %28, %struct.bio* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.bio*, %struct.bio** %2, align 8
  %34 = call i32 @G_RAID_LOGREQ(i32 3, %struct.bio* %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %36 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %35, i32 0, i32 4
  %37 = load %struct.bio*, %struct.bio** %2, align 8
  %38 = call i32 @bioq_insert_tail(i32* %36, %struct.bio* %37)
  br label %76

39:                                               ; preds = %27, %1
  %40 = load %struct.bio*, %struct.bio** %2, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @BIO_WRITE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.bio*, %struct.bio** %2, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @BIO_DELETE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %45, %39
  %52 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %53 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %58 = call i32 @g_raid_dirty(%struct.g_raid_volume* %57)
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %61 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %59, %45
  %65 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %66 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %65, i32 0, i32 1
  %67 = load %struct.bio*, %struct.bio** %2, align 8
  %68 = call i32 @bioq_insert_tail(i32* %66, %struct.bio* %67)
  %69 = load %struct.bio*, %struct.bio** %2, align 8
  %70 = call i32 @G_RAID_LOGREQ(i32 4, %struct.bio* %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %71 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %72 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.bio*, %struct.bio** %2, align 8
  %75 = call i32 @G_RAID_TR_IOSTART(i32 %73, %struct.bio* %74)
  br label %76

76:                                               ; preds = %64, %32
  ret void
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i64 @g_raid_is_in_locked_range(%struct.g_raid_volume*, %struct.bio*) #1

declare dso_local i32 @G_RAID_LOGREQ(i32, %struct.bio*, i8*) #1

declare dso_local i32 @bioq_insert_tail(i32*, %struct.bio*) #1

declare dso_local i32 @g_raid_dirty(%struct.g_raid_volume*) #1

declare dso_local i32 @G_RAID_TR_IOSTART(i32, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
