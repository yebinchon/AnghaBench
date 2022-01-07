; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_sramsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_sramsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_softc = type { i32 }

@HIFN_SRAM_GRANULARITY = common dso_local global i32 0, align 4
@HIFN_SRAM_STEP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hifn_softc*)* @hifn_sramsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hifn_sramsize(%struct.hifn_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hifn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [8 x i32], align 16
  %6 = alloca [32 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.hifn_softc* %0, %struct.hifn_softc** %3, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %21, %1
  %9 = load i32, i32* %7, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, 32
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = load i32, i32* %7, align 4
  %14 = xor i32 %13, 90
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 %16
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %19
  store i32 %14, i32* %20, align 4
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  br label %8

24:                                               ; preds = %8
  %25 = load i32, i32* @HIFN_SRAM_GRANULARITY, align 4
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %40, %24
  %28 = load i32, i32* %7, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @HIFN_SRAM_STEP_SIZE, align 4
  %33 = mul nsw i32 %31, %32
  store i32 %33, i32* %4, align 4
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %35 = call i32 @bcopy(i32* %7, i32* %34, i32 4)
  %36 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %39 = call i32 @hifn_writeramaddr(%struct.hifn_softc* %36, i32 %37, i32* %38)
  br label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %7, align 4
  br label %27

43:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %72, %43
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @HIFN_SRAM_GRANULARITY, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @HIFN_SRAM_STEP_SIZE, align 4
  %51 = mul nsw i32 %49, %50
  store i32 %51, i32* %4, align 4
  %52 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %53 = call i32 @bcopy(i32* %7, i32* %52, i32 4)
  %54 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %57 = call i64 @hifn_readramaddr(%struct.hifn_softc* %54, i32 %55, i32* %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %76

60:                                               ; preds = %48
  %61 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %62 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %63 = call i64 @bcmp(i32* %61, i32* %62, i32 32)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %76

66:                                               ; preds = %60
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @HIFN_SRAM_STEP_SIZE, align 4
  %69 = add nsw i32 %67, %68
  %70 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %71 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %44

75:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %65, %59
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @hifn_writeramaddr(%struct.hifn_softc*, i32, i32*) #1

declare dso_local i64 @hifn_readramaddr(%struct.hifn_softc*, i32, i32*) #1

declare dso_local i64 @bcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
