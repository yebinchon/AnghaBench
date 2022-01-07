; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_caldata.c_ar71xx_platform_check_eeprom_hints.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_caldata.c_ar71xx_platform_check_eeprom_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"map.%d.ath_fixup_addr\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"map.%d.ath_fixup_size\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"map.%d.ath_fixup_addr=0x%08x; size=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ar71xx_platform_check_eeprom_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar71xx_platform_check_eeprom_hints(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [64 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %46, %1
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 8
  br i1 %9, label %10, label %49

10:                                               ; preds = %7
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @snprintf(i8* %11, i32 64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @device_get_name(i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @device_get_unit(i32 %16)
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %19 = call i64 @resource_long_value(i32 %15, i32 %17, i8* %18, i64* %4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  br label %49

22:                                               ; preds = %10
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @snprintf(i8* %23, i32 64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @device_get_name(i32 %26)
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @device_get_unit(i32 %28)
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %31 = call i64 @resource_int_value(i32 %27, i32 %29, i8* %30, i32* %5)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %49

34:                                               ; preds = %22
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i64, i64* %4, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %38, i32 %39)
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i64, i64* %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @ar71xx_platform_create_cal_data(i32 %41, i32 %42, i64 %43, i32 %44)
  br label %46

46:                                               ; preds = %34
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %7

49:                                               ; preds = %33, %21, %7
  ret i32 0
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @resource_long_value(i32, i32, i8*, i64*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i64 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ar71xx_platform_create_cal_data(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
