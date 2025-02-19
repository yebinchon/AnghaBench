; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_is_busy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_is_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid3_softc = type { i32 }
%struct.g_consumer = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"I/O requests for %s exist, can't destroy it now.\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"I/O requests for %s in queue, can't destroy it now.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid3_softc*, %struct.g_consumer*)* @g_raid3_is_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid3_is_busy(%struct.g_raid3_softc* %0, %struct.g_consumer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_raid3_softc*, align 8
  %5 = alloca %struct.g_consumer*, align 8
  store %struct.g_raid3_softc* %0, %struct.g_raid3_softc** %4, align 8
  store %struct.g_consumer* %1, %struct.g_consumer** %5, align 8
  %6 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %7 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %12 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @G_RAID3_DEBUG(i32 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 1, i32* %3, align 4
  br label %30

17:                                               ; preds = %2
  %18 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %4, align 8
  %19 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %20 = call i64 @g_raid3_nrequests(%struct.g_raid3_softc* %18, %struct.g_consumer* %19)
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %24 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @G_RAID3_DEBUG(i32 2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  store i32 1, i32* %3, align 4
  br label %30

29:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %22, %10
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @G_RAID3_DEBUG(i32, i8*, i32) #1

declare dso_local i64 @g_raid3_nrequests(%struct.g_raid3_softc*, %struct.g_consumer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
