; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_dev.c_g_dev_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_dev.c_g_dev_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.TYPE_2__*, %struct.g_dev_softc* }
%struct.TYPE_2__ = type { i32 }
%struct.g_dev_softc = type { i32, i32*, i32* }

@G_T_TOPOLOGY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"g_dev_callback(%p(%s))\00", align 1
@SC_A_DESTROY = common dso_local global i32 0, align 4
@SC_A_ACTIVE = common dso_local global i32 0, align 4
@g_dev_destroy = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @g_dev_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_dev_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.g_consumer*, align 8
  %4 = alloca %struct.g_dev_softc*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.g_consumer*
  store %struct.g_consumer* %7, %struct.g_consumer** %3, align 8
  %8 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %9 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %8, i32 0, i32 1
  %10 = load %struct.g_dev_softc*, %struct.g_dev_softc** %9, align 8
  store %struct.g_dev_softc* %10, %struct.g_dev_softc** %4, align 8
  %11 = load i32, i32* @G_T_TOPOLOGY, align 4
  %12 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %13 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %14 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @g_trace(i32 %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.g_consumer* %12, i32 %17)
  %19 = load %struct.g_dev_softc*, %struct.g_dev_softc** %4, align 8
  %20 = getelementptr inbounds %struct.g_dev_softc, %struct.g_dev_softc* %19, i32 0, i32 2
  store i32* null, i32** %20, align 8
  %21 = load %struct.g_dev_softc*, %struct.g_dev_softc** %4, align 8
  %22 = getelementptr inbounds %struct.g_dev_softc, %struct.g_dev_softc* %21, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = load %struct.g_dev_softc*, %struct.g_dev_softc** %4, align 8
  %24 = getelementptr inbounds %struct.g_dev_softc, %struct.g_dev_softc* %23, i32 0, i32 0
  %25 = load i32, i32* @SC_A_DESTROY, align 4
  %26 = call i32 @atomic_fetchadd_int(i32* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @SC_A_ACTIVE, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load i32, i32* @g_dev_destroy, align 4
  %33 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %34 = load i32, i32* @M_WAITOK, align 4
  %35 = call i32 @g_post_event(i32 %32, %struct.g_consumer* %33, i32 %34, i32* null)
  br label %36

36:                                               ; preds = %31, %1
  ret void
}

declare dso_local i32 @g_trace(i32, i8*, %struct.g_consumer*, i32) #1

declare dso_local i32 @atomic_fetchadd_int(i32*, i32) #1

declare dso_local i32 @g_post_event(i32, %struct.g_consumer*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
