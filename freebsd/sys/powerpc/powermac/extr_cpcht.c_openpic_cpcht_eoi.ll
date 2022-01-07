; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cpcht.c_openpic_cpcht_eoi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cpcht.c_openpic_cpcht_eoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i32, i32 }
%struct.openpic_cpcht_softc = type { i32 }

@cpcht_irqmap = common dso_local global %struct.TYPE_2__* null, align 8
@PCIR_HT_COMMAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @openpic_cpcht_eoi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @openpic_cpcht_eoi(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.openpic_cpcht_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 255
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %117

13:                                               ; preds = %3
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.openpic_cpcht_softc* @device_get_softc(i32 %14)
  store %struct.openpic_cpcht_softc* %15, %struct.openpic_cpcht_softc** %7, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %112

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 128
  br i1 %20, label %21, label %112

21:                                               ; preds = %18
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %112

29:                                               ; preds = %21
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %112, label %37

37:                                               ; preds = %29
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %73

45:                                               ; preds = %37
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = ashr i32 %51, 3
  %53 = and i32 %52, -4
  store i32 %53, i32* %8, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, 31
  %61 = shl i32 1, %60
  store i32 %61, i32* %9, align 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %67, %69
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @out32rb(i64 %70, i32 %71)
  br label %111

73:                                               ; preds = %37
  %74 = load %struct.openpic_cpcht_softc*, %struct.openpic_cpcht_softc** %7, align 8
  %75 = getelementptr inbounds %struct.openpic_cpcht_softc, %struct.openpic_cpcht_softc* %74, i32 0, i32 0
  %76 = call i32 @mtx_lock_spin(i32* %75)
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @PCIR_HT_COMMAND, align 8
  %84 = add nsw i64 %82, %83
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = shl i32 %90, 1
  %92 = add nsw i32 17, %91
  %93 = call i32 @out8rb(i64 %84, i32 %92)
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 4
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpcht_irqmap, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @out32rb(i64 %100, i32 %106)
  %108 = load %struct.openpic_cpcht_softc*, %struct.openpic_cpcht_softc** %7, align 8
  %109 = getelementptr inbounds %struct.openpic_cpcht_softc, %struct.openpic_cpcht_softc* %108, i32 0, i32 0
  %110 = call i32 @mtx_unlock_spin(i32* %109)
  br label %111

111:                                              ; preds = %73, %45
  br label %112

112:                                              ; preds = %111, %29, %21, %18, %13
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* %5, align 4
  %115 = load i8*, i8** %6, align 8
  %116 = call i32 @openpic_eoi(i32 %113, i32 %114, i8* %115)
  br label %117

117:                                              ; preds = %112, %12
  ret void
}

declare dso_local %struct.openpic_cpcht_softc* @device_get_softc(i32) #1

declare dso_local i32 @out32rb(i64, i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @out8rb(i64, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @openpic_eoi(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
