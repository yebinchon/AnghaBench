; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_tr_kerneldump_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_tr_kerneldump_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_tr_object = type { %struct.g_raid_volume* }
%struct.g_raid_volume = type { i32, %struct.g_raid_softc* }
%struct.g_raid_softc = type { i32 }
%struct.bio = type { i64, i32, i64, i32, i8*, i32, i32*, i32, i32 }

@BIO_WRITE = common dso_local global i32 0, align 4
@g_raid_tr_kerneldump_common_done = common dso_local global i32 0, align 4
@BIO_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Poll...\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_raid_tr_kerneldump_common(%struct.g_raid_tr_object* %0, i8* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.g_raid_tr_object*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.g_raid_softc*, align 8
  %12 = alloca %struct.g_raid_volume*, align 8
  %13 = alloca %struct.bio, align 8
  store %struct.g_raid_tr_object* %0, %struct.g_raid_tr_object** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %14 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %6, align 8
  %15 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %14, i32 0, i32 0
  %16 = load %struct.g_raid_volume*, %struct.g_raid_volume** %15, align 8
  store %struct.g_raid_volume* %16, %struct.g_raid_volume** %12, align 8
  %17 = load %struct.g_raid_volume*, %struct.g_raid_volume** %12, align 8
  %18 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %17, i32 0, i32 1
  %19 = load %struct.g_raid_softc*, %struct.g_raid_softc** %18, align 8
  store %struct.g_raid_softc* %19, %struct.g_raid_softc** %11, align 8
  %20 = call i32 @g_reset_bio(%struct.bio* %13)
  %21 = load i32, i32* @BIO_WRITE, align 4
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 8
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @g_raid_tr_kerneldump_common_done, align 4
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 7
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 6
  store i32* null, i32** %25, align 8
  %26 = load i32, i32* %9, align 4
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 5
  store i32 %26, i32* %27, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 0
  store i64 %28, i64* %29, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 4
  store i8* %30, i8** %31, align 8
  %32 = load %struct.g_raid_volume*, %struct.g_raid_volume** %12, align 8
  %33 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 3
  store i32 %34, i32* %35, align 8
  %36 = call i32 @g_raid_start(%struct.bio* %13)
  br label %37

37:                                               ; preds = %44, %5
  %38 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @BIO_DONE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load %struct.g_raid_softc*, %struct.g_raid_softc** %11, align 8
  %46 = call i32 @G_RAID_DEBUG1(i32 4, %struct.g_raid_softc* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.g_raid_softc*, %struct.g_raid_softc** %11, align 8
  %48 = call i32 @g_raid_poll(%struct.g_raid_softc* %47)
  %49 = call i32 @DELAY(i32 10)
  br label %37

50:                                               ; preds = %37
  %51 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @EIO, align 4
  br label %57

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i32 [ %55, %54 ], [ 0, %56 ]
  ret i32 %58
}

declare dso_local i32 @g_reset_bio(%struct.bio*) #1

declare dso_local i32 @g_raid_start(%struct.bio*) #1

declare dso_local i32 @G_RAID_DEBUG1(i32, %struct.g_raid_softc*, i8*) #1

declare dso_local i32 @g_raid_poll(%struct.g_raid_softc*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
