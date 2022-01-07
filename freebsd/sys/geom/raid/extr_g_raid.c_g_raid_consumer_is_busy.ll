; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_consumer_is_busy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_consumer_is_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_softc = type { i32 }
%struct.g_consumer = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"I/O requests for %s exist, can't destroy it now.\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"I/O requests for %s in queue, can't destroy it now.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid_softc*, %struct.g_consumer*)* @g_raid_consumer_is_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_consumer_is_busy(%struct.g_raid_softc* %0, %struct.g_consumer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_raid_softc*, align 8
  %5 = alloca %struct.g_consumer*, align 8
  store %struct.g_raid_softc* %0, %struct.g_raid_softc** %4, align 8
  store %struct.g_consumer* %1, %struct.g_consumer** %5, align 8
  %6 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %7 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %12 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %13 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @G_RAID_DEBUG1(i32 2, %struct.g_raid_softc* %11, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 1, i32* %3, align 4
  br label %32

18:                                               ; preds = %2
  %19 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %20 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %21 = call i64 @g_raid_nrequests(%struct.g_raid_softc* %19, %struct.g_consumer* %20)
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %25 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %26 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @G_RAID_DEBUG1(i32 2, %struct.g_raid_softc* %24, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  store i32 1, i32* %3, align 4
  br label %32

31:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %23, %10
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @G_RAID_DEBUG1(i32, %struct.g_raid_softc*, i8*, i32) #1

declare dso_local i64 @g_raid_nrequests(%struct.g_raid_softc*, %struct.g_consumer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
