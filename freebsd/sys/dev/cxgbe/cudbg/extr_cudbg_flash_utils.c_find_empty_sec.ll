; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_flash_utils.c_find_empty_sec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_flash_utils.c_find_empty_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_flash_sec_info = type { i32* }

@CUDBG_START_SEC = common dso_local global i32 0, align 4
@CUDBG_SF_MAX_SECTOR = common dso_local global i32 0, align 4
@CUDBG_STATUS_FLASH_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cudbg_flash_sec_info*)* @find_empty_sec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_empty_sec(%struct.cudbg_flash_sec_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cudbg_flash_sec_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cudbg_flash_sec_info* %0, %struct.cudbg_flash_sec_info** %3, align 8
  %7 = load i32, i32* @CUDBG_START_SEC, align 4
  store i32 %7, i32* %4, align 4
  br label %8

8:                                                ; preds = %35, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @CUDBG_SF_MAX_SECTOR, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @CUDBG_START_SEC, align 4
  %15 = sub nsw i32 %13, %14
  %16 = sdiv i32 %15, 8
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @CUDBG_START_SEC, align 4
  %19 = sub nsw i32 %17, %18
  %20 = srem i32 %19, 8
  store i32 %20, i32* %6, align 4
  %21 = load %struct.cudbg_flash_sec_info*, %struct.cudbg_flash_sec_info** %3, align 8
  %22 = getelementptr inbounds %struct.cudbg_flash_sec_info, %struct.cudbg_flash_sec_info* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %12
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %40

34:                                               ; preds = %12
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %8

38:                                               ; preds = %8
  %39 = load i32, i32* @CUDBG_STATUS_FLASH_FULL, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %32
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
