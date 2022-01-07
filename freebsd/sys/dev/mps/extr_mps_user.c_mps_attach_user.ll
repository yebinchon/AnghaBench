; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_user.c_mps_attach_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_user.c_mps_attach_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_softc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.mps_softc* }

@mps_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"mps%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mps_attach_user(%struct.mps_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mps_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.mps_softc* %0, %struct.mps_softc** %3, align 8
  %5 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %6 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @device_get_unit(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @UID_ROOT, align 4
  %11 = load i32, i32* @GID_OPERATOR, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.TYPE_2__* @make_dev(i32* @mps_cdevsw, i32 %9, i32 %10, i32 %11, i32 416, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %15 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %14, i32 0, i32 0
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %15, align 8
  %16 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %17 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp eq %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  store i32 %21, i32* %2, align 4
  br label %28

22:                                               ; preds = %1
  %23 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %24 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %25 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store %struct.mps_softc* %23, %struct.mps_softc** %27, align 8
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %22, %20
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.TYPE_2__* @make_dev(i32*, i32, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
