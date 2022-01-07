; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/powermac_nvram/extr_powermac_nvram.c_erase_bank_amd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/powermac_nvram/extr_powermac_nvram.c_erase_bank_amd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"flash erase timeout\0A\00", align 1
@NVRAM_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"flash erase has failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @erase_bank_amd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erase_bank_amd(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1365
  %9 = call i32 @OUTB_DELAY(i32* %8, i32 170)
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 682
  %12 = call i32 @OUTB_DELAY(i32* %11, i32 85)
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1365
  %15 = call i32 @OUTB_DELAY(i32* %14, i32 128)
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1365
  %18 = call i32 @OUTB_DELAY(i32* %17, i32 170)
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 682
  %21 = call i32 @OUTB_DELAY(i32* %20, i32 85)
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @OUTB_DELAY(i32* %22, i32 48)
  %24 = load i32*, i32** %5, align 8
  %25 = call i64 @wait_operation_complete_amd(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %52

30:                                               ; preds = %2
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @OUTB_DELAY(i32* %31, i32 240)
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %48, %30
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @NVRAM_SIZE, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 255
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @device_printf(i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %52

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %33

51:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %44, %27
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @OUTB_DELAY(i32*, i32) #1

declare dso_local i64 @wait_operation_complete_amd(i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
