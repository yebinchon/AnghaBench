; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.g_raid_softc* }
%struct.g_raid_softc = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Request received.\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"GEOM::candelete\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"GEOM::kerneldump\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@dumping = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"Waking up %p.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_raid_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_start(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_raid_softc*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load %struct.bio*, %struct.bio** %2, align 8
  %5 = getelementptr inbounds %struct.bio, %struct.bio* %4, i32 0, i32 2
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.g_raid_softc*, %struct.g_raid_softc** %9, align 8
  store %struct.g_raid_softc* %10, %struct.g_raid_softc** %3, align 8
  %11 = load %struct.bio*, %struct.bio** %2, align 8
  %12 = call i32 @G_RAID_LOGREQ(i32 3, %struct.bio* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.bio*, %struct.bio** %2, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %43 [
    i32 129, label %16
    i32 128, label %16
    i32 132, label %16
    i32 131, label %16
    i32 130, label %17
  ]

16:                                               ; preds = %1, %1, %1, %1
  br label %47

17:                                               ; preds = %1
  %18 = load %struct.bio*, %struct.bio** %2, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strcmp(i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %25 = load %struct.bio*, %struct.bio** %2, align 8
  %26 = call i32 @g_raid_candelete(%struct.g_raid_softc* %24, %struct.bio* %25)
  br label %42

27:                                               ; preds = %17
  %28 = load %struct.bio*, %struct.bio** %2, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @strcmp(i32 %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %35 = load %struct.bio*, %struct.bio** %2, align 8
  %36 = call i32 @g_raid_kerneldump(%struct.g_raid_softc* %34, %struct.bio* %35)
  br label %41

37:                                               ; preds = %27
  %38 = load %struct.bio*, %struct.bio** %2, align 8
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = call i32 @g_io_deliver(%struct.bio* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %33
  br label %42

42:                                               ; preds = %41, %23
  br label %66

43:                                               ; preds = %1
  %44 = load %struct.bio*, %struct.bio** %2, align 8
  %45 = load i32, i32* @EOPNOTSUPP, align 4
  %46 = call i32 @g_io_deliver(%struct.bio* %44, i32 %45)
  br label %66

47:                                               ; preds = %16
  %48 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %49 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %48, i32 0, i32 0
  %50 = call i32 @mtx_lock(i32* %49)
  %51 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %52 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %51, i32 0, i32 1
  %53 = load %struct.bio*, %struct.bio** %2, align 8
  %54 = call i32 @bioq_insert_tail(i32* %52, %struct.bio* %53)
  %55 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %56 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %55, i32 0, i32 0
  %57 = call i32 @mtx_unlock(i32* %56)
  %58 = load i32, i32* @dumping, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %47
  %61 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %62 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %63 = call i32 @G_RAID_DEBUG1(i32 4, %struct.g_raid_softc* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), %struct.g_raid_softc* %62)
  %64 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %65 = call i32 @wakeup(%struct.g_raid_softc* %64)
  br label %66

66:                                               ; preds = %42, %43, %60, %47
  ret void
}

declare dso_local i32 @G_RAID_LOGREQ(i32, %struct.bio*, i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @g_raid_candelete(%struct.g_raid_softc*, %struct.bio*) #1

declare dso_local i32 @g_raid_kerneldump(%struct.g_raid_softc*, %struct.bio*) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @bioq_insert_tail(i32*, %struct.bio*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @G_RAID_DEBUG1(i32, %struct.g_raid_softc*, i8*, %struct.g_raid_softc*) #1

declare dso_local i32 @wakeup(%struct.g_raid_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
