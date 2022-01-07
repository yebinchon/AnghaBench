; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cpcht.c_openpic_cpcht_unmask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cpcht.c_openpic_cpcht_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.openpic_cpcht_softc = type { i32 }

@cpcht_irqmap = common dso_local global %struct.TYPE_2__* null, align 8
@PCIR_HT_COMMAND = common dso_local global i64 0, align 8
@HTAPIC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @openpic_cpcht_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @openpic_cpcht_unmask(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.openpic_cpcht_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @openpic_unmask(i32 %9, i32 %10, i8* %11)
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.openpic_cpcht_softc* @device_get_softc(i32 %13)
  store %struct.openpic_cpcht_softc* %14, %struct.openpic_cpcht_softc** %7, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %73

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 128
  br i1 %19, label %20, label %73

20:                                               ; preds = %17
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %73

28:                                               ; preds = %20
  %29 = load %struct.openpic_cpcht_softc*, %struct.openpic_cpcht_softc** %7, align 8
  %30 = getelementptr inbounds %struct.openpic_cpcht_softc, %struct.openpic_cpcht_softc* %29, i32 0, i32 0
  %31 = call i32 @mtx_lock_spin(i32* %30)
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PCIR_HT_COMMAND, align 8
  %39 = add nsw i64 %37, %38
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 %45, 1
  %47 = add nsw i32 16, %46
  %48 = call i32 @out8rb(i64 %39, i32 %47)
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 4
  %56 = call i32 @in32rb(i64 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* @HTAPIC_MASK, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @out32rb(i64 %67, i32 %68)
  %70 = load %struct.openpic_cpcht_softc*, %struct.openpic_cpcht_softc** %7, align 8
  %71 = getelementptr inbounds %struct.openpic_cpcht_softc, %struct.openpic_cpcht_softc* %70, i32 0, i32 0
  %72 = call i32 @mtx_unlock_spin(i32* %71)
  br label %73

73:                                               ; preds = %28, %20, %17, %3
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @openpic_cpcht_eoi(i32 %74, i32 %75, i8* %76)
  ret void
}

declare dso_local i32 @openpic_unmask(i32, i32, i8*) #1

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
