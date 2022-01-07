; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_hrowpic.c_hrowpic_toggle_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_hrowpic.c_hrowpic_toggle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hrowpic_softc = type { i32* }

@HROWPIC_IRQMAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"en irq out of range\00", align 1
@HPIC_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hrowpic_softc*, i32, i32)* @hrowpic_toggle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hrowpic_toggle_irq(%struct.hrowpic_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hrowpic_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.hrowpic_softc* %0, %struct.hrowpic_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @HROWPIC_IRQMAX, align 4
  %14 = icmp sle i32 %12, %13
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i1 [ false, %3 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @HROWPIC_IRQMAX, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %64

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @HPIC_INT_TO_BANK(i32 %24)
  store i64 %25, i64* %7, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @HPIC_INT_TO_REGBIT(i32 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load i64, i64* %8, align 8
  %32 = trunc i64 %31 to i32
  %33 = shl i32 1, %32
  %34 = load %struct.hrowpic_softc*, %struct.hrowpic_softc** %4, align 8
  %35 = getelementptr inbounds %struct.hrowpic_softc, %struct.hrowpic_softc* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %33
  store i32 %40, i32* %38, align 4
  br label %53

41:                                               ; preds = %23
  %42 = load i64, i64* %8, align 8
  %43 = trunc i64 %42 to i32
  %44 = shl i32 1, %43
  %45 = xor i32 %44, -1
  %46 = load %struct.hrowpic_softc*, %struct.hrowpic_softc** %4, align 8
  %47 = getelementptr inbounds %struct.hrowpic_softc, %struct.hrowpic_softc* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %45
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %41, %30
  %54 = load %struct.hrowpic_softc*, %struct.hrowpic_softc** %4, align 8
  %55 = load i32, i32* @HPIC_ENABLE, align 4
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.hrowpic_softc*, %struct.hrowpic_softc** %4, align 8
  %58 = getelementptr inbounds %struct.hrowpic_softc, %struct.hrowpic_softc* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @hrowpic_write_reg(%struct.hrowpic_softc* %54, i32 %55, i64 %56, i32 %62)
  br label %64

64:                                               ; preds = %53, %22
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @HPIC_INT_TO_BANK(i32) #1

declare dso_local i64 @HPIC_INT_TO_REGBIT(i32) #1

declare dso_local i32 @hrowpic_write_reg(%struct.hrowpic_softc*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
