; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ad7417.c_ad7417_diode_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ad7417.c_ad7417_diode_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7417_sensor = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ad7417_diode_read.eeprom_read = internal global i32 0, align 4
@ad7417_diode_read.eeprom = internal global [2 x [40 x i32]] zeroinitializer, align 16
@.str = private unnamed_addr constant [17 x i8] c"/u3/i2c/cpuid@a0\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"cpuid\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"/u3/i2c/cpuid@a2\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"CPU B\00", align 1
@ZERO_C_TO_K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7417_sensor*)* @ad7417_diode_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7417_diode_read(%struct.ad7417_sensor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ad7417_sensor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ad7417_sensor* %0, %struct.ad7417_sensor** %3, align 8
  %9 = load i32, i32* @ad7417_diode_read.eeprom_read, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = call i32 @OF_finddevice(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @OF_getprop(i32 %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* getelementptr inbounds ([2 x [40 x i32]], [2 x [40 x i32]]* @ad7417_diode_read.eeprom, i64 0, i64 0, i64 0), i32 160)
  %15 = call i32 @OF_finddevice(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @OF_getprop(i32 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* getelementptr inbounds ([2 x [40 x i32]], [2 x [40 x i32]]* @ad7417_diode_read.eeprom, i64 0, i64 1, i64 0), i32 160)
  store i32 1, i32* @ad7417_diode_read.eeprom_read, align 4
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.ad7417_sensor*, %struct.ad7417_sensor** %3, align 8
  %20 = call i32 @ad7417_adc_read(%struct.ad7417_sensor* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 -1, i32* %2, align 4
  br label %61

24:                                               ; preds = %18
  %25 = load %struct.ad7417_sensor*, %struct.ad7417_sensor** %3, align 8
  %26 = getelementptr inbounds %struct.ad7417_sensor, %struct.ad7417_sensor* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @strstr(i32 %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load i32, i32* getelementptr inbounds ([2 x [40 x i32]], [2 x [40 x i32]]* @ad7417_diode_read.eeprom, i64 0, i64 1, i64 17), align 4
  %33 = ashr i32 %32, 16
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* getelementptr inbounds ([2 x [40 x i32]], [2 x [40 x i32]]* @ad7417_diode_read.eeprom, i64 0, i64 1, i64 17), align 4
  %35 = and i32 %34, 65535
  %36 = shl i32 %35, 12
  store i32 %36, i32* %7, align 4
  br label %43

37:                                               ; preds = %24
  %38 = load i32, i32* getelementptr inbounds ([2 x [40 x i32]], [2 x [40 x i32]]* @ad7417_diode_read.eeprom, i64 0, i64 0, i64 17), align 4
  %39 = ashr i32 %38, 16
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* getelementptr inbounds ([2 x [40 x i32]], [2 x [40 x i32]]* @ad7417_diode_read.eeprom, i64 0, i64 0, i64 17), align 4
  %41 = and i32 %40, 65535
  %42 = shl i32 %41, 12
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %37, %31
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %46, %47
  %49 = ashr i32 %48, 2
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = ashr i32 %50, 16
  %52 = mul nsw i32 10, %51
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, 65535
  %55 = mul nsw i32 10, %54
  %56 = ashr i32 %55, 16
  %57 = add nsw i32 %52, %56
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @ZERO_C_TO_K, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %43, %23
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i32 @OF_getprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @ad7417_adc_read(%struct.ad7417_sensor*) #1

declare dso_local i32* @strstr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
