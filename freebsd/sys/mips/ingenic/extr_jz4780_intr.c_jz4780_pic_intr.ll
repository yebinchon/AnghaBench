; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_intr.c_jz4780_pic_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_intr.c_jz4780_pic_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32 }
%struct.jz4780_pic_softc = type { i32 }
%struct.intr_irqsrc = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@JZ_ICPR0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Stray interrupt %u detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"all interrupts handled\00", align 1
@JZ_ICPR1 = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @jz4780_pic_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_pic_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.jz4780_pic_softc*, align 8
  %4 = alloca %struct.intr_irqsrc*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.jz4780_pic_softc*
  store %struct.jz4780_pic_softc* %9, %struct.jz4780_pic_softc** %3, align 8
  %10 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %10, %struct.thread** %5, align 8
  %11 = load %struct.thread*, %struct.thread** %5, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %12, align 4
  %15 = load %struct.jz4780_pic_softc*, %struct.jz4780_pic_softc** %3, align 8
  %16 = load i32, i32* @JZ_ICPR0, align 4
  %17 = call i32 @READ4(%struct.jz4780_pic_softc* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %48, %39, %1
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @fls(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = add i32 %23, -1
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = shl i32 1, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load %struct.jz4780_pic_softc*, %struct.jz4780_pic_softc** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call %struct.intr_irqsrc* @PIC_INTR_ISRC(%struct.jz4780_pic_softc* %30, i32 %31)
  store %struct.intr_irqsrc* %32, %struct.intr_irqsrc** %4, align 8
  %33 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %4, align 8
  %34 = load %struct.thread*, %struct.thread** @curthread, align 8
  %35 = getelementptr inbounds %struct.thread, %struct.thread* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @intr_isrc_dispatch(%struct.intr_irqsrc* %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %22
  %40 = load %struct.jz4780_pic_softc*, %struct.jz4780_pic_softc** %3, align 8
  %41 = getelementptr inbounds %struct.jz4780_pic_softc, %struct.jz4780_pic_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.jz4780_pic_softc*, %struct.jz4780_pic_softc** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @pic_irq_mask(%struct.jz4780_pic_softc* %45, i32 %46)
  br label %18

48:                                               ; preds = %22
  br label %18

49:                                               ; preds = %18
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @KASSERT(i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.jz4780_pic_softc*, %struct.jz4780_pic_softc** %3, align 8
  %55 = load i32, i32* @JZ_ICPR1, align 4
  %56 = call i32 @READ4(%struct.jz4780_pic_softc* %54, i32 %55)
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %89, %80, %49
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @fls(i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %90

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  %63 = add i32 %62, -1
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = shl i32 1, %64
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %6, align 4
  %70 = add i32 %69, 32
  store i32 %70, i32* %6, align 4
  %71 = load %struct.jz4780_pic_softc*, %struct.jz4780_pic_softc** %3, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call %struct.intr_irqsrc* @PIC_INTR_ISRC(%struct.jz4780_pic_softc* %71, i32 %72)
  store %struct.intr_irqsrc* %73, %struct.intr_irqsrc** %4, align 8
  %74 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %4, align 8
  %75 = load %struct.thread*, %struct.thread** @curthread, align 8
  %76 = getelementptr inbounds %struct.thread, %struct.thread* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @intr_isrc_dispatch(%struct.intr_irqsrc* %74, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %61
  %81 = load %struct.jz4780_pic_softc*, %struct.jz4780_pic_softc** %3, align 8
  %82 = getelementptr inbounds %struct.jz4780_pic_softc, %struct.jz4780_pic_softc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @device_printf(i32 %83, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load %struct.jz4780_pic_softc*, %struct.jz4780_pic_softc** %3, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @pic_irq_mask(%struct.jz4780_pic_softc* %86, i32 %87)
  br label %57

89:                                               ; preds = %61
  br label %57

90:                                               ; preds = %57
  %91 = load i32, i32* %6, align 4
  %92 = icmp eq i32 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @KASSERT(i32 %93, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %95 = load %struct.thread*, %struct.thread** %5, align 8
  %96 = getelementptr inbounds %struct.thread, %struct.thread* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %99
}

declare dso_local i32 @READ4(%struct.jz4780_pic_softc*, i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local %struct.intr_irqsrc* @PIC_INTR_ISRC(%struct.jz4780_pic_softc*, i32) #1

declare dso_local i64 @intr_isrc_dispatch(%struct.intr_irqsrc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @pic_irq_mask(%struct.jz4780_pic_softc*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
