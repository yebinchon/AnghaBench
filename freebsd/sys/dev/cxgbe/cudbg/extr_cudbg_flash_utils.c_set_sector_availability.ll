; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_flash_utils.c_set_sector_availability.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_flash_utils.c_set_sector_availability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_flash_sec_info = type { i32 }

@CUDBG_START_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cudbg_flash_sec_info*, i32, i32)* @set_sector_availability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_sector_availability(%struct.cudbg_flash_sec_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cudbg_flash_sec_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cudbg_flash_sec_info* %0, %struct.cudbg_flash_sec_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i64, i64* @CUDBG_START_SEC, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = sub nsw i64 %9, %7
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.cudbg_flash_sec_info*, %struct.cudbg_flash_sec_info** %4, align 8
  %16 = getelementptr inbounds %struct.cudbg_flash_sec_info, %struct.cudbg_flash_sec_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @set_dbg_bitmap(i32 %17, i32 %18)
  br label %26

20:                                               ; preds = %3
  %21 = load %struct.cudbg_flash_sec_info*, %struct.cudbg_flash_sec_info** %4, align 8
  %22 = getelementptr inbounds %struct.cudbg_flash_sec_info, %struct.cudbg_flash_sec_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @reset_dbg_bitmap(i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %20, %14
  ret void
}

declare dso_local i32 @set_dbg_bitmap(i32, i32) #1

declare dso_local i32 @reset_dbg_bitmap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
