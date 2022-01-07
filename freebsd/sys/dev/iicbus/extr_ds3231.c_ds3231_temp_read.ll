; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds3231.c_ds3231_temp_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds3231.c_ds3231_temp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds3231_softc = type { i32 }

@DS3231_TEMP = common dso_local global i32 0, align 4
@IIC_INTRWAIT = common dso_local global i32 0, align 4
@DS3231_NEG_BIT = common dso_local global i32 0, align 4
@DS3231_TEMP_MASK = common dso_local global i32 0, align 4
@DS3231_0250C = common dso_local global i32 0, align 4
@DS3231_0500C = common dso_local global i32 0, align 4
@TZ_ZEROC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds3231_softc*, i32*)* @ds3231_temp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds3231_temp_read(%struct.ds3231_softc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ds3231_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  store %struct.ds3231_softc* %0, %struct.ds3231_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.ds3231_softc*, %struct.ds3231_softc** %4, align 8
  %12 = getelementptr inbounds %struct.ds3231_softc, %struct.ds3231_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DS3231_TEMP, align 4
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %16 = load i32, i32* @IIC_INTRWAIT, align 4
  %17 = call i32 @iicdev_readfrom(i32 %13, i32 %14, i32* %15, i32 8, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %81

22:                                               ; preds = %2
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 8
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 255
  %29 = or i32 %25, %28
  store i32 %29, i32* %10, align 4
  store i32 0, i32* %7, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @DS3231_NEG_BIT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %22
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @DS3231_TEMP_MASK, align 4
  %37 = and i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  store i32 1, i32* %7, align 4
  br label %40

40:                                               ; preds = %34, %22
  %41 = load i32, i32* %10, align 4
  %42 = ashr i32 %41, 8
  %43 = mul nsw i32 %42, 10
  %44 = load i32*, i32** %5, align 8
  store i32 %43, i32* %44, align 4
  store i32 0, i32* %8, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @DS3231_0250C, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 250
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %40
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @DS3231_0500C, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 500
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i32, i32* %8, align 4
  %62 = sdiv i32 %61, 100
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, %63
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 0, %71
  %73 = load i32*, i32** %5, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %69, %60
  %75 = load i64, i64* @TZ_ZEROC, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %75
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %76, align 4
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %74, %20
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @iicdev_readfrom(i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
