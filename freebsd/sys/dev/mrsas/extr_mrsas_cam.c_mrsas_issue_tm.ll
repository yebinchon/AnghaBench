; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_issue_tm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_issue_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"tm_sleep\00", align 1
@hz = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"tm cmd TIMEDOUT\0A\00", align 1
@FAIL = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mrsas_softc*, %struct.TYPE_7__*)* @mrsas_issue_tm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrsas_issue_tm(%struct.mrsas_softc* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mrsas_softc*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %7 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mrsas_fire_cmd(%struct.mrsas_softc* %7, i32 %12, i32 %17)
  %19 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %20 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %19, i32 0, i32 2
  %21 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %22 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %21, i32 0, i32 1
  %23 = load i32, i32* @PRIBIO, align 4
  %24 = load i32, i32* @hz, align 4
  %25 = mul nsw i32 50, %24
  %26 = call i32 @msleep(i32* %20, i32* %22, i32 %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @EWOULDBLOCK, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %32 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @FAIL, align 4
  store i32 %35, i32* %3, align 4
  br label %38

36:                                               ; preds = %2
  %37 = load i32, i32* @SUCCESS, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %30
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @mrsas_fire_cmd(%struct.mrsas_softc*, i32, i32) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
