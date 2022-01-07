; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cmx/extr_cmx.c_cmx_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cmx/extr_cmx.c_cmx_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmx_softc = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { %struct.cmx_softc* }

@ENXIO = common dso_local global i32 0, align 4
@cmx_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"cmx%d\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to create character device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmx_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmx_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.cmx_softc* @device_get_softc(i32 %5)
  store %struct.cmx_softc* %6, %struct.cmx_softc** %4, align 8
  %7 = load %struct.cmx_softc*, %struct.cmx_softc** %4, align 8
  %8 = icmp ne %struct.cmx_softc* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.cmx_softc*, %struct.cmx_softc** %4, align 8
  %11 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9, %1
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %2, align 4
  br label %38

16:                                               ; preds = %9
  %17 = load i32, i32* @UID_ROOT, align 4
  %18 = load i32, i32* @GID_WHEEL, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_get_unit(i32 %19)
  %21 = call %struct.TYPE_2__* @make_dev(i32* @cmx_cdevsw, i32 0, i32 %17, i32 %18, i32 384, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.cmx_softc*, %struct.cmx_softc** %4, align 8
  %23 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %22, i32 0, i32 0
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %23, align 8
  %24 = load %struct.cmx_softc*, %struct.cmx_softc** %4, align 8
  %25 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %16
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  store i32 %31, i32* %2, align 4
  br label %38

32:                                               ; preds = %16
  %33 = load %struct.cmx_softc*, %struct.cmx_softc** %4, align 8
  %34 = load %struct.cmx_softc*, %struct.cmx_softc** %4, align 8
  %35 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store %struct.cmx_softc* %33, %struct.cmx_softc** %37, align 8
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %32, %28, %14
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.cmx_softc* @device_get_softc(i32) #1

declare dso_local %struct.TYPE_2__* @make_dev(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
