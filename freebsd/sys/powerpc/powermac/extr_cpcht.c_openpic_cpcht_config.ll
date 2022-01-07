; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cpcht.c_openpic_cpcht_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cpcht.c_openpic_cpcht_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.openpic_cpcht_softc = type { i32 }

@cpcht_irqmap = common dso_local global %struct.TYPE_2__* null, align 8
@PCIR_HT_COMMAND = common dso_local global i64 0, align 8
@HTAPIC_MASK = common dso_local global i32 0, align 4
@HTAPIC_TRIGGER_LEVEL = common dso_local global i32 0, align 4
@HTAPIC_REQUEST_EOI = common dso_local global i32 0, align 4
@INTR_TRIGGER_EDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @openpic_cpcht_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @openpic_cpcht_config(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.openpic_cpcht_softc*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.openpic_cpcht_softc* @device_get_softc(i32 %11)
  store %struct.openpic_cpcht_softc* %12, %struct.openpic_cpcht_softc** %9, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %113

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 128
  br i1 %17, label %18, label %113

18:                                               ; preds = %15
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %113

26:                                               ; preds = %18
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %113, label %34

34:                                               ; preds = %26
  %35 = load %struct.openpic_cpcht_softc*, %struct.openpic_cpcht_softc** %9, align 8
  %36 = getelementptr inbounds %struct.openpic_cpcht_softc, %struct.openpic_cpcht_softc* %35, i32 0, i32 0
  %37 = call i32 @mtx_lock_spin(i32* %36)
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PCIR_HT_COMMAND, align 8
  %45 = add nsw i64 %43, %44
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 1
  %53 = add nsw i32 16, %52
  %54 = call i32 @out8rb(i64 %45, i32 %53)
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 4
  %62 = call i32 @in32rb(i64 %61)
  store i32 %62, i32* %10, align 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @HTAPIC_MASK, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @out32rb(i64 %69, i32 %72)
  %74 = load i32, i32* @HTAPIC_TRIGGER_LEVEL, align 4
  %75 = load i32, i32* @HTAPIC_REQUEST_EOI, align 4
  %76 = or i32 %74, %75
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %10, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @INTR_TRIGGER_EDGE, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %34
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store i32 1, i32* %88, align 8
  br label %100

89:                                               ; preds = %34
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  store i32 0, i32* %94, align 8
  %95 = load i32, i32* @HTAPIC_TRIGGER_LEVEL, align 4
  %96 = load i32, i32* @HTAPIC_REQUEST_EOI, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* %10, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %89, %83
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @out32rb(i64 %107, i32 %108)
  %110 = load %struct.openpic_cpcht_softc*, %struct.openpic_cpcht_softc** %9, align 8
  %111 = getelementptr inbounds %struct.openpic_cpcht_softc, %struct.openpic_cpcht_softc* %110, i32 0, i32 0
  %112 = call i32 @mtx_unlock_spin(i32* %111)
  br label %113

113:                                              ; preds = %100, %26, %18, %15, %4
  ret void
}

declare dso_local %struct.openpic_cpcht_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @out8rb(i64, i32) #1

declare dso_local i32 @in32rb(i64) #1

declare dso_local i32 @out32rb(i64, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
