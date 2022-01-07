; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_stats_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_stats_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vge_softc = type { i32 }

@VGE_MIBCSR = common dso_local global i32 0, align 4
@VGE_MIBCSR_FREEZE = common dso_local global i32 0, align 4
@VGE_MIBCSR_CLR = common dso_local global i32 0, align 4
@VGE_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"MIB clear timed out!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vge_softc*)* @vge_stats_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vge_stats_clear(%struct.vge_softc* %0) #0 {
  %2 = alloca %struct.vge_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.vge_softc* %0, %struct.vge_softc** %2, align 8
  %4 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %5 = load i32, i32* @VGE_MIBCSR, align 4
  %6 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %7 = load i32, i32* @VGE_MIBCSR, align 4
  %8 = call i32 @CSR_READ_1(%struct.vge_softc* %6, i32 %7)
  %9 = load i32, i32* @VGE_MIBCSR_FREEZE, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @CSR_WRITE_1(%struct.vge_softc* %4, i32 %5, i32 %10)
  %12 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %13 = load i32, i32* @VGE_MIBCSR, align 4
  %14 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %15 = load i32, i32* @VGE_MIBCSR, align 4
  %16 = call i32 @CSR_READ_1(%struct.vge_softc* %14, i32 %15)
  %17 = load i32, i32* @VGE_MIBCSR_CLR, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @CSR_WRITE_1(%struct.vge_softc* %12, i32 %13, i32 %18)
  %20 = load i32, i32* @VGE_TIMEOUT, align 4
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %34, %1
  %22 = load i32, i32* %3, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = call i32 @DELAY(i32 1)
  %26 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %27 = load i32, i32* @VGE_MIBCSR, align 4
  %28 = call i32 @CSR_READ_1(%struct.vge_softc* %26, i32 %27)
  %29 = load i32, i32* @VGE_MIBCSR_CLR, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %37

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %3, align 4
  br label %21

37:                                               ; preds = %32, %21
  %38 = load i32, i32* %3, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %42 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %40, %37
  %46 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %47 = load i32, i32* @VGE_MIBCSR, align 4
  %48 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %49 = load i32, i32* @VGE_MIBCSR, align 4
  %50 = call i32 @CSR_READ_1(%struct.vge_softc* %48, i32 %49)
  %51 = load i32, i32* @VGE_MIBCSR_FREEZE, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = call i32 @CSR_WRITE_1(%struct.vge_softc* %46, i32 %47, i32 %53)
  ret void
}

declare dso_local i32 @CSR_WRITE_1(%struct.vge_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_1(%struct.vge_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
