; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_add_cdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_add_cdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { %struct.TYPE_3__*, i32*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { %struct.bxe_softc* }
%struct.TYPE_4__ = type { i32 }

@BXE_EEPROM_MAX_DATA_LEN = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unable to alloc for eeprom size buffer\0A\00", align 1
@bxe_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_add_cdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_add_cdev(%struct.bxe_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bxe_softc*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  %4 = load i32, i32* @BXE_EEPROM_MAX_DATA_LEN, align 4
  %5 = load i32, i32* @M_DEVBUF, align 4
  %6 = load i32, i32* @M_NOWAIT, align 4
  %7 = call i32* @malloc(i32 %4, i32 %5, i32 %6)
  %8 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %9 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %8, i32 0, i32 1
  store i32* %7, i32** %9, align 8
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %11 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %16 = call i32 @BLOGW(%struct.bxe_softc* %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %50

17:                                               ; preds = %1
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %19 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @UID_ROOT, align 4
  %24 = load i32, i32* @GID_WHEEL, align 4
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %26 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = call i32 @if_name(%struct.TYPE_4__* %27)
  %29 = call %struct.TYPE_3__* @make_dev(i32* @bxe_cdevsw, i32 %22, i32 %23, i32 %24, i32 384, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %31 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %30, i32 0, i32 0
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %31, align 8
  %32 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %33 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = icmp eq %struct.TYPE_3__* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %17
  %37 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %38 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* @M_DEVBUF, align 4
  %41 = call i32 @free(i32* %39, i32 %40)
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %43 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  store i32 -1, i32* %2, align 4
  br label %50

44:                                               ; preds = %17
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %46 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %47 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store %struct.bxe_softc* %45, %struct.bxe_softc** %49, align 8
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %44, %36, %14
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @BLOGW(%struct.bxe_softc*, i8*) #1

declare dso_local %struct.TYPE_3__* @make_dev(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @if_name(%struct.TYPE_4__*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
