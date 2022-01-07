; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_efuse.c_jz4780_efuse_read_chunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_efuse.c_jz4780_efuse_read_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_efuse_softc = type { i32 }

@JZ_EFUCTRL = common dso_local global i32 0, align 4
@JZ_EFUSE_READ = common dso_local global i32 0, align 4
@JZ_EFUSE_BANK_SIZE = common dso_local global i32 0, align 4
@JZ_EFUSE_BANK = common dso_local global i32 0, align 4
@JZ_EFUSE_ADDR_SHIFT = common dso_local global i32 0, align 4
@JZ_EFUSE_SIZE_SHIFT = common dso_local global i32 0, align 4
@JZ_EFUSTATE = common dso_local global i64 0, align 8
@JZ_EFUSE_RD_DONE = common dso_local global i32 0, align 4
@JZ_EFUDATA0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jz4780_efuse_softc*, i32, i32*, i32)* @jz4780_efuse_read_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jz4780_efuse_read_chunk(%struct.jz4780_efuse_softc* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.jz4780_efuse_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.jz4780_efuse_softc* %0, %struct.jz4780_efuse_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.jz4780_efuse_softc*, %struct.jz4780_efuse_softc** %5, align 8
  %13 = load i32, i32* @JZ_EFUCTRL, align 4
  %14 = load i32, i32* @JZ_EFUSE_READ, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @JZ_EFUSE_BANK_SIZE, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @JZ_EFUSE_BANK, align 4
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi i32 [ 0, %18 ], [ %20, %19 ]
  %23 = or i32 %14, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @JZ_EFUSE_ADDR_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = or i32 %23, %26
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %28, 1
  %30 = load i32, i32* @JZ_EFUSE_SIZE_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %27, %31
  %33 = call i32 @CSR_WRITE_4(%struct.jz4780_efuse_softc* %12, i32 %13, i32 %32)
  br label %34

34:                                               ; preds = %41, %21
  %35 = load %struct.jz4780_efuse_softc*, %struct.jz4780_efuse_softc** %5, align 8
  %36 = load i64, i64* @JZ_EFUSTATE, align 8
  %37 = call i32 @CSR_READ_4(%struct.jz4780_efuse_softc* %35, i64 %36)
  %38 = load i32, i32* @JZ_EFUSE_RD_DONE, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = call i32 @DELAY(i32 1000)
  br label %34

43:                                               ; preds = %34
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, -4
  store i32 %45, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %61, %43
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load %struct.jz4780_efuse_softc*, %struct.jz4780_efuse_softc** %5, align 8
  %52 = load i64, i64* @JZ_EFUDATA0, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = call i32 @CSR_READ_4(%struct.jz4780_efuse_softc* %51, i64 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @memcpy(i32* %57, i32* %9, i32 4)
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  store i32* %60, i32** %7, align 8
  br label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 4
  store i32 %63, i32* %10, align 4
  br label %46

64:                                               ; preds = %46
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %92

68:                                               ; preds = %64
  %69 = load %struct.jz4780_efuse_softc*, %struct.jz4780_efuse_softc** %5, align 8
  %70 = load i64, i64* @JZ_EFUDATA0, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = call i32 @CSR_READ_4(%struct.jz4780_efuse_softc* %69, i64 %73)
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %88, %68
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %75
  %80 = load i32, i32* %9, align 4
  %81 = and i32 %80, 255
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %81, i32* %85, align 4
  %86 = load i32, i32* %9, align 4
  %87 = ashr i32 %86, 8
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %79
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %75

91:                                               ; preds = %75
  br label %92

92:                                               ; preds = %91, %64
  ret void
}

declare dso_local i32 @CSR_WRITE_4(%struct.jz4780_efuse_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.jz4780_efuse_softc*, i64) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
