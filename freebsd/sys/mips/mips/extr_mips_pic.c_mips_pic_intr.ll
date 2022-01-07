; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_mips_pic.c_mips_pic_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_mips_pic.c_mips_pic_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.mips_pic_softc = type { i32 }

@MIPS_INT_MASK = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Stray interrupt %u detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"all interrupts handled\00", align 1
@FILTER_HANDLED = common dso_local global i32 0, align 4
@PMC_FN_USER_CALLCHAIN = common dso_local global i32 0, align 4
@TDP_CALLCHAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mips_pic_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mips_pic_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.mips_pic_softc*
  store %struct.mips_pic_softc* %9, %struct.mips_pic_softc** %3, align 8
  %10 = call i32 (...) @mips_rd_cause()
  store i32 %10, i32* %4, align 4
  %11 = call i32 (...) @mips_rd_status()
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @MIPS_INT_MASK, align 4
  %14 = and i32 %12, %13
  %15 = ashr i32 %14, 8
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MIPS_INT_MASK, align 4
  %18 = and i32 %16, %17
  %19 = ashr i32 %18, 8
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %51, %42, %1
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @fls(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = shl i32 1, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load %struct.mips_pic_softc*, %struct.mips_pic_softc** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @PIC_INTR_ISRC(%struct.mips_pic_softc* %34, i32 %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curthread, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @intr_isrc_dispatch(i32 %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %26
  %43 = load %struct.mips_pic_softc*, %struct.mips_pic_softc** %3, align 8
  %44 = getelementptr inbounds %struct.mips_pic_softc, %struct.mips_pic_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @device_printf(i32 %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.mips_pic_softc*, %struct.mips_pic_softc** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @pic_irq_mask(%struct.mips_pic_softc* %48, i32 %49)
  br label %22

51:                                               ; preds = %26
  br label %22

52:                                               ; preds = %22
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @KASSERT(i32 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %57
}

declare dso_local i32 @mips_rd_cause(...) #1

declare dso_local i32 @mips_rd_status(...) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i64 @intr_isrc_dispatch(i32, i32) #1

declare dso_local i32 @PIC_INTR_ISRC(%struct.mips_pic_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @pic_irq_mask(%struct.mips_pic_softc*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
