; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/powermac_nvram/extr_powermac_nvram.c_erase_bank_sm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/powermac_nvram/extr_powermac_nvram.c_erase_bank_sm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SM_FLASH_CMD_ERASE_SETUP = common dso_local global i32 0, align 4
@SM_FLASH_CMD_ERASE_CONFIRM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"flash erase timeout\0A\00", align 1
@SM_FLASH_CMD_CLEAR_STATUS = common dso_local global i32 0, align 4
@SM_FLASH_CMD_RESET = common dso_local global i32 0, align 4
@NVRAM_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"flash write has failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @erase_bank_sm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erase_bank_sm(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = load i32, i32* @SM_FLASH_CMD_ERASE_SETUP, align 4
  %9 = call i32 @outb(i32* %7, i32 %8)
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* @SM_FLASH_CMD_ERASE_CONFIRM, align 4
  %12 = call i32 @outb(i32* %10, i32 %11)
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @wait_operation_complete_sm(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @device_printf(i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %45

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @SM_FLASH_CMD_CLEAR_STATUS, align 4
  %22 = call i32 @outb(i32* %20, i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @SM_FLASH_CMD_RESET, align 4
  %25 = call i32 @outb(i32* %23, i32 %24)
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %41, %19
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @NVRAM_SIZE, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 255
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %45

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %26

44:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %37, %16
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @outb(i32*, i32) #1

declare dso_local i64 @wait_operation_complete_sm(i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
