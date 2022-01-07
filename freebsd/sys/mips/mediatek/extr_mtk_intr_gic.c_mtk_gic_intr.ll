; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_intr_gic.c_mtk_gic_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_intr_gic.c_mtk_gic_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32 }
%struct.mtk_gic_softc = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@MTK_INTSTAT = common dso_local global i32 0, align 4
@MTK_INTMASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Stray interrupt %u detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"all interrupts handled\00", align 1
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mtk_gic_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_gic_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mtk_gic_softc*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.mtk_gic_softc*
  store %struct.mtk_gic_softc* %8, %struct.mtk_gic_softc** %3, align 8
  %9 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %9, %struct.thread** %4, align 8
  %10 = load %struct.thread*, %struct.thread** %4, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %11, align 4
  %14 = load %struct.mtk_gic_softc*, %struct.mtk_gic_softc** %3, align 8
  %15 = load i32, i32* @MTK_INTSTAT, align 4
  %16 = call i32 @READ4(%struct.mtk_gic_softc* %14, i32 %15)
  %17 = load %struct.mtk_gic_softc*, %struct.mtk_gic_softc** %3, align 8
  %18 = load i32, i32* @MTK_INTMASK, align 4
  %19 = call i32 @READ4(%struct.mtk_gic_softc* %17, i32 %18)
  %20 = and i32 %16, %19
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %50, %41, %1
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @fls(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = add i32 %26, -1
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = shl i32 1, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load %struct.mtk_gic_softc*, %struct.mtk_gic_softc** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @GIC_INTR_ISRC(%struct.mtk_gic_softc* %33, i32 %34)
  %36 = load %struct.thread*, %struct.thread** @curthread, align 8
  %37 = getelementptr inbounds %struct.thread, %struct.thread* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @intr_isrc_dispatch(i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %25
  %42 = load %struct.mtk_gic_softc*, %struct.mtk_gic_softc** %3, align 8
  %43 = getelementptr inbounds %struct.mtk_gic_softc, %struct.mtk_gic_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.mtk_gic_softc*, %struct.mtk_gic_softc** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @gic_irq_mask(%struct.mtk_gic_softc* %47, i32 %48)
  br label %21

50:                                               ; preds = %25
  br label %21

51:                                               ; preds = %21
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @KASSERT(i32 %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.thread*, %struct.thread** %4, align 8
  %57 = getelementptr inbounds %struct.thread, %struct.thread* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %60
}

declare dso_local i32 @READ4(%struct.mtk_gic_softc*, i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i64 @intr_isrc_dispatch(i32, i32) #1

declare dso_local i32 @GIC_INTR_ISRC(%struct.mtk_gic_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @gic_irq_mask(%struct.mtk_gic_softc*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
