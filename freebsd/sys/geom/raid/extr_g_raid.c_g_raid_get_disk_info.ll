; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_get_disk_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_get_disk_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_disk = type { i32, i32, %struct.TYPE_6__, %struct.g_consumer* }
%struct.TYPE_6__ = type { %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { i32* }
%struct.g_consumer = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@OFF_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"GEOM::kerneldump\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Dumping not supported by %s: %d.\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"GEOM::candelete\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"BIO_DELETE not supported by %s: %d.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_raid_get_disk_info(%struct.g_raid_disk* %0) #0 {
  %2 = alloca %struct.g_raid_disk*, align 8
  %3 = alloca %struct.g_consumer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.g_raid_disk* %0, %struct.g_raid_disk** %2, align 8
  %6 = load %struct.g_raid_disk*, %struct.g_raid_disk** %2, align 8
  %7 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %6, i32 0, i32 3
  %8 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  store %struct.g_consumer* %8, %struct.g_consumer** %3, align 8
  %9 = load %struct.g_raid_disk*, %struct.g_raid_disk** %2, align 8
  %10 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @OFF_MAX, align 4
  %13 = load %struct.g_raid_disk*, %struct.g_raid_disk** %2, align 8
  %14 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store i32 %12, i32* %15, align 8
  store i32 24, i32* %5, align 4
  %16 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %17 = load %struct.g_raid_disk*, %struct.g_raid_disk** %2, align 8
  %18 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %17, i32 0, i32 2
  %19 = call i32 @g_io_getattr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.g_consumer* %16, i32* %5, %struct.TYPE_6__* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.g_raid_disk*, %struct.g_raid_disk** %2, align 8
  %24 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %22, %1
  %28 = load %struct.g_raid_disk*, %struct.g_raid_disk** %2, align 8
  %29 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %27
  %35 = load %struct.g_raid_disk*, %struct.g_raid_disk** %2, align 8
  %36 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %39 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @G_RAID_DEBUG1(i32 2, i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %34, %27
  %46 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %47 = load %struct.g_raid_disk*, %struct.g_raid_disk** %2, align 8
  %48 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %47, i32 0, i32 1
  %49 = call i32 @g_getattr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), %struct.g_consumer* %46, i32* %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load %struct.g_raid_disk*, %struct.g_raid_disk** %2, align 8
  %54 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %45
  %56 = load %struct.g_raid_disk*, %struct.g_raid_disk** %2, align 8
  %57 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %55
  %61 = load %struct.g_raid_disk*, %struct.g_raid_disk** %2, align 8
  %62 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %65 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @G_RAID_DEBUG1(i32 2, i32 %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %60, %55
  ret void
}

declare dso_local i32 @g_io_getattr(i8*, %struct.g_consumer*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @G_RAID_DEBUG1(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @g_getattr(i8*, %struct.g_consumer*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
