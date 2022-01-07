; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ad7417.c_ad7417_get_adc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ad7417.c_ad7417_get_adc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.write_data = type { i32, i32 }
%struct.read_data = type { i64, i32 }

@AD7417_CONFIG = common dso_local global i32 0, align 4
@AD7417_ADC = common dso_local global i32 0, align 4
@AD7417_CONFMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32)* @ad7417_get_adc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7417_get_adc(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.write_data, align 4
  %13 = alloca %struct.read_data, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = shl i32 %14, 5
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* @AD7417_CONFIG, align 4
  %17 = getelementptr inbounds %struct.write_data, %struct.write_data* %12, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @AD7417_ADC, align 4
  %19 = getelementptr inbounds %struct.read_data, %struct.read_data* %13, i32 0, i32 1
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.read_data, %struct.read_data* %13, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @AD7417_CONFIG, align 4
  %24 = getelementptr inbounds %struct.write_data, %struct.write_data* %12, i32 0, i32 0
  %25 = call i32 @ad7417_read_1(i32 %21, i32 %22, i32 %23, i32* %24)
  store i32 %25, i32* %11, align 4
  %26 = getelementptr inbounds %struct.write_data, %struct.write_data* %12, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AD7417_CONFMASK, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @AD7417_CONFMASK, align 4
  %33 = and i32 %31, %32
  %34 = or i32 %30, %33
  %35 = getelementptr inbounds %struct.write_data, %struct.write_data* %12, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = bitcast %struct.write_data* %12 to i64*
  %39 = load i64, i64* %38, align 4
  %40 = call i32 @ad7417_write_read(i32 %36, i32 %37, i64 %39, %struct.read_data* %13)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %50

44:                                               ; preds = %4
  %45 = getelementptr inbounds %struct.read_data, %struct.read_data* %13, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = ashr i32 %47, 6
  %49 = load i32*, i32** %8, align 8
  store i32 %48, i32* %49, align 4
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %44, %43
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @ad7417_read_1(i32, i32, i32, i32*) #1

declare dso_local i32 @ad7417_write_read(i32, i32, i64, %struct.read_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
