; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sdiotool/extr_sdiotool.c_brcmf_sdiod_set_sbaddr_window.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sdiotool/extr_sdiotool.c_brcmf_sdiod_set_sbaddr_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio_dev = type { i64 }

@BRCMF_SDIOD_NOMEDIUM = common dso_local global i64 0, align 8
@ENOMEDIUM = common dso_local global i32 0, align 4
@SBSDIO_SBADDRLOW_MASK = common dso_local global i32 0, align 4
@SBSDIO_SBADDRMID_MASK = common dso_local global i32 0, align 4
@SBSDIO_SBADDRHIGH_MASK = common dso_local global i32 0, align 4
@SBSDIO_FUNC1_SBADDRLOW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"failed at addr: 0x%0x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_sdio_dev*, i32)* @brcmf_sdiod_set_sbaddr_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_sdiod_set_sbaddr_window(%struct.brcmf_sdio_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcmf_sdio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  store %struct.brcmf_sdio_dev* %0, %struct.brcmf_sdio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %10 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BRCMF_SDIOD_NOMEDIUM, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEDIUM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %60

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = ashr i32 %18, 8
  %20 = load i32, i32* @SBSDIO_SBADDRLOW_MASK, align 4
  %21 = and i32 %19, %20
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 16
  %25 = load i32, i32* @SBSDIO_SBADDRMID_MASK, align 4
  %26 = and i32 %24, %25
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %28, 24
  %30 = load i32, i32* @SBSDIO_SBADDRHIGH_MASK, align 4
  %31 = and i32 %29, %30
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  store i32 %31, i32* %32, align 4
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %55, %17
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 3
  br i1 %35, label %36, label %58

36:                                               ; preds = %33
  %37 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %38 = load i64, i64* @SBSDIO_FUNC1_SBADDRLOW, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %43
  %45 = call i32 @brcmf_sdiod_regrw_helper(%struct.brcmf_sdio_dev* %37, i64 %41, i32 4, i32* %44, i32 1)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %36
  %49 = load i64, i64* @SBSDIO_FUNC1_SBADDRLOW, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = call i32 @brcmf_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %52)
  br label %58

54:                                               ; preds = %36
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %33

58:                                               ; preds = %48, %33
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %14
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @brcmf_sdiod_regrw_helper(%struct.brcmf_sdio_dev*, i64, i32, i32*, i32) #1

declare dso_local i32 @brcmf_err(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
