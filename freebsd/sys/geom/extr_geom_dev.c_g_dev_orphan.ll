; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_dev.c_g_dev_orphan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_dev.c_g_dev_orphan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.TYPE_2__*, %struct.g_dev_softc* }
%struct.TYPE_2__ = type { i32 }
%struct.g_dev_softc = type { %struct.cdev* }
%struct.cdev = type { i32 }
%struct.diocskerneldump_arg = type { i32 }

@G_T_TOPOLOGY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"g_dev_orphan(%p(%s))\00", align 1
@SI_DUMPDEV = common dso_local global i32 0, align 4
@KDA_REMOVE_DEV = common dso_local global i32 0, align 4
@g_dev_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_consumer*)* @g_dev_orphan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_dev_orphan(%struct.g_consumer* %0) #0 {
  %2 = alloca %struct.g_consumer*, align 8
  %3 = alloca %struct.cdev*, align 8
  %4 = alloca %struct.g_dev_softc*, align 8
  %5 = alloca %struct.diocskerneldump_arg, align 4
  store %struct.g_consumer* %0, %struct.g_consumer** %2, align 8
  %6 = call i32 (...) @g_topology_assert()
  %7 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %8 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %7, i32 0, i32 1
  %9 = load %struct.g_dev_softc*, %struct.g_dev_softc** %8, align 8
  store %struct.g_dev_softc* %9, %struct.g_dev_softc** %4, align 8
  %10 = load %struct.g_dev_softc*, %struct.g_dev_softc** %4, align 8
  %11 = getelementptr inbounds %struct.g_dev_softc, %struct.g_dev_softc* %10, i32 0, i32 0
  %12 = load %struct.cdev*, %struct.cdev** %11, align 8
  store %struct.cdev* %12, %struct.cdev** %3, align 8
  %13 = load i32, i32* @G_T_TOPOLOGY, align 4
  %14 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %15 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %16 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @g_trace(i32 %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.g_consumer* %14, i32 %19)
  %21 = load %struct.cdev*, %struct.cdev** %3, align 8
  %22 = getelementptr inbounds %struct.cdev, %struct.cdev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SI_DUMPDEV, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %1
  %28 = call i32 @bzero(%struct.diocskerneldump_arg* %5, i32 4)
  %29 = load i32, i32* @KDA_REMOVE_DEV, align 4
  %30 = getelementptr inbounds %struct.diocskerneldump_arg, %struct.diocskerneldump_arg* %5, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load %struct.cdev*, %struct.cdev** %3, align 8
  %32 = call i32 @devtoname(%struct.cdev* %31)
  %33 = call i32 @dumper_remove(i32 %32, %struct.diocskerneldump_arg* %5)
  br label %34

34:                                               ; preds = %27, %1
  %35 = load %struct.cdev*, %struct.cdev** %3, align 8
  %36 = call i32 @delist_dev(%struct.cdev* %35)
  %37 = load %struct.cdev*, %struct.cdev** %3, align 8
  %38 = load i32, i32* @g_dev_callback, align 4
  %39 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %40 = call i32 @destroy_dev_sched_cb(%struct.cdev* %37, i32 %38, %struct.g_consumer* %39)
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @g_trace(i32, i8*, %struct.g_consumer*, i32) #1

declare dso_local i32 @bzero(%struct.diocskerneldump_arg*, i32) #1

declare dso_local i32 @dumper_remove(i32, %struct.diocskerneldump_arg*) #1

declare dso_local i32 @devtoname(%struct.cdev*) #1

declare dso_local i32 @delist_dev(%struct.cdev*) #1

declare dso_local i32 @destroy_dev_sched_cb(%struct.cdev*, i32, %struct.g_consumer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
