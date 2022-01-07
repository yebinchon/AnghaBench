; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/powermac_nvram/extr_powermac_nvram.c_write_bank_sm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/powermac_nvram/extr_powermac_nvram.c_write_bank_sm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NVRAM_SIZE = common dso_local global i32 0, align 4
@SM_FLASH_CMD_WRITE_SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"flash write error/timeout\0A\00", align 1
@SM_FLASH_CMD_CLEAR_STATUS = common dso_local global i64 0, align 8
@SM_FLASH_CMD_RESET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"flash write has failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i64*)* @write_bank_sm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_bank_sm(i32 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %37, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @NVRAM_SIZE, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %9
  %14 = load i64*, i64** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i32, i32* @SM_FLASH_CMD_WRITE_SETUP, align 4
  %19 = call i32 @OUTB_DELAY(i64* %17, i32 %18)
  %20 = load i64*, i64** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64*, i64** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @outb(i64* %23, i64 %28)
  %30 = load i64*, i64** %6, align 8
  %31 = call i64 @wait_operation_complete_sm(i64* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %13
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %40

36:                                               ; preds = %13
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %8, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %9

40:                                               ; preds = %33, %9
  %41 = load i64*, i64** %6, align 8
  %42 = load i64, i64* @SM_FLASH_CMD_CLEAR_STATUS, align 8
  %43 = call i32 @outb(i64* %41, i64 %42)
  %44 = load i64*, i64** %6, align 8
  %45 = load i64, i64* @SM_FLASH_CMD_RESET, align 8
  %46 = call i32 @outb(i64* %44, i64 %45)
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %67, %40
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @NVRAM_SIZE, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %47
  %52 = load i64*, i64** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %56, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %51
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @device_printf(i32 %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %71

66:                                               ; preds = %51
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %47

70:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %63
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @OUTB_DELAY(i64*, i32) #1

declare dso_local i32 @outb(i64*, i64) #1

declare dso_local i64 @wait_operation_complete_sm(i64*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
