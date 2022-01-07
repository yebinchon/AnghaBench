; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/beri/extr_beri_pic.c_beri_pic_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/beri/extr_beri_pic.c_beri_pic_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.beripic_softc = type { i32*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.intr_irqsrc }
%struct.intr_irqsrc = type { i32 }
%struct.hirq = type { i32, %struct.beripic_softc* }

@BP_IP_READ = common dso_local global i64 0, align 8
@BP_CFG = common dso_local global i64 0, align 8
@BP_CFG_IRQ_M = common dso_local global i32 0, align 4
@BP_CFG_ENABLE = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Stray interrupt %u detected\0A\00", align 1
@BP_IP_CLEAR = common dso_local global i64 0, align 8
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @beri_pic_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beri_pic_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.beripic_softc*, align 8
  %4 = alloca %struct.intr_irqsrc*, align 8
  %5 = alloca %struct.hirq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.hirq*
  store %struct.hirq* %10, %struct.hirq** %5, align 8
  %11 = load %struct.hirq*, %struct.hirq** %5, align 8
  %12 = getelementptr inbounds %struct.hirq, %struct.hirq* %11, i32 0, i32 1
  %13 = load %struct.beripic_softc*, %struct.beripic_softc** %12, align 8
  store %struct.beripic_softc* %13, %struct.beripic_softc** %3, align 8
  %14 = load %struct.beripic_softc*, %struct.beripic_softc** %3, align 8
  %15 = getelementptr inbounds %struct.beripic_softc, %struct.beripic_softc* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @BP_IP_READ, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @bus_read_8(i32 %19, i32 0)
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %76, %62, %56, %1
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @fls(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %86

25:                                               ; preds = %21
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = shl i32 1, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load %struct.beripic_softc*, %struct.beripic_softc** %3, align 8
  %34 = getelementptr inbounds %struct.beripic_softc, %struct.beripic_softc* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store %struct.intr_irqsrc* %39, %struct.intr_irqsrc** %4, align 8
  %40 = load %struct.beripic_softc*, %struct.beripic_softc** %3, align 8
  %41 = getelementptr inbounds %struct.beripic_softc, %struct.beripic_softc* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @BP_CFG, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = mul nsw i32 %46, 8
  %48 = call i32 @bus_read_8(i32 %45, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @BP_CFG_IRQ_M, align 4
  %51 = and i32 %49, %50
  %52 = load %struct.hirq*, %struct.hirq** %5, align 8
  %53 = getelementptr inbounds %struct.hirq, %struct.hirq* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %25
  br label %21

57:                                               ; preds = %25
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @BP_CFG_ENABLE, align 4
  %60 = and i32 %58, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %21

63:                                               ; preds = %57
  %64 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %4, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @intr_isrc_dispatch(%struct.intr_irqsrc* %64, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load %struct.beripic_softc*, %struct.beripic_softc** %3, align 8
  %72 = getelementptr inbounds %struct.beripic_softc, %struct.beripic_softc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @device_printf(i32 %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %70, %63
  %77 = load %struct.beripic_softc*, %struct.beripic_softc** %3, align 8
  %78 = getelementptr inbounds %struct.beripic_softc, %struct.beripic_softc* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* @BP_IP_CLEAR, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %8, align 4
  %84 = shl i32 1, %83
  %85 = call i32 @bus_write_8(i32 %82, i32 0, i32 %84)
  br label %21

86:                                               ; preds = %21
  %87 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %87
}

declare dso_local i32 @bus_read_8(i32, i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i64 @intr_isrc_dispatch(%struct.intr_irqsrc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @bus_write_8(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
