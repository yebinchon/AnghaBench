; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cpcht.c_openpic_cpcht_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cpcht.c_openpic_cpcht_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.openpic_cpcht_softc = type { i32 }

@cpcht_irqmap = common dso_local global %struct.TYPE_2__* null, align 8
@PCIR_HT_COMMAND = common dso_local global i64 0, align 8
@HTAPIC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i8**)* @openpic_cpcht_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @openpic_cpcht_enable(i32 %0, i32 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.openpic_cpcht_softc*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i8**, i8*** %8, align 8
  %15 = call i32 @openpic_enable(i32 %11, i32 %12, i32 %13, i8** %14)
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.openpic_cpcht_softc* @device_get_softc(i32 %16)
  store %struct.openpic_cpcht_softc* %17, %struct.openpic_cpcht_softc** %9, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %76

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 128
  br i1 %22, label %23, label %76

23:                                               ; preds = %20
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %76

31:                                               ; preds = %23
  %32 = load %struct.openpic_cpcht_softc*, %struct.openpic_cpcht_softc** %9, align 8
  %33 = getelementptr inbounds %struct.openpic_cpcht_softc, %struct.openpic_cpcht_softc* %32, i32 0, i32 0
  %34 = call i32 @mtx_lock_spin(i32* %33)
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PCIR_HT_COMMAND, align 8
  %42 = add nsw i64 %40, %41
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = shl i32 %48, 1
  %50 = add nsw i32 16, %49
  %51 = call i32 @out8rb(i64 %42, i32 %50)
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 4
  %59 = call i32 @in32rb(i64 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* @HTAPIC_MASK, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %10, align 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @out32rb(i64 %70, i32 %71)
  %73 = load %struct.openpic_cpcht_softc*, %struct.openpic_cpcht_softc** %9, align 8
  %74 = getelementptr inbounds %struct.openpic_cpcht_softc, %struct.openpic_cpcht_softc* %73, i32 0, i32 0
  %75 = call i32 @mtx_unlock_spin(i32* %74)
  br label %76

76:                                               ; preds = %31, %23, %20, %4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i8**, i8*** %8, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @openpic_cpcht_eoi(i32 %77, i32 %78, i8* %80)
  ret void
}

declare dso_local i32 @openpic_enable(i32, i32, i32, i8**) #1

declare dso_local %struct.openpic_cpcht_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @out8rb(i64, i32) #1

declare dso_local i32 @in32rb(i64) #1

declare dso_local i32 @out32rb(i64, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @openpic_cpcht_eoi(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
