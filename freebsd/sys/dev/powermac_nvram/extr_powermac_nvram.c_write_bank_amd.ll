; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/powermac_nvram/extr_powermac_nvram.c_write_bank_amd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/powermac_nvram/extr_powermac_nvram.c_write_bank_amd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NVRAM_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"flash write timeout\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"flash write has failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @write_bank_amd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_bank_amd(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %40, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @NVRAM_SIZE, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %43

13:                                               ; preds = %9
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1365
  %16 = call i32 @OUTB_DELAY(i32* %15, i32 170)
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 682
  %19 = call i32 @OUTB_DELAY(i32* %18, i32 85)
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1365
  %22 = call i32 @OUTB_DELAY(i32* %21, i32 160)
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @OUTB_DELAY(i32* %26, i32 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = call i64 @wait_operation_complete_amd(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %13
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %70

39:                                               ; preds = %13
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %8, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %9

43:                                               ; preds = %9
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @OUTB_DELAY(i32* %44, i32 240)
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %66, %43
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @NVRAM_SIZE, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %46
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %55, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %50
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @device_printf(i32 %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %70

65:                                               ; preds = %50
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %8, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %46

69:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %62, %36
  %71 = load i32, i32* %4, align 4
  ret i32 %71
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
