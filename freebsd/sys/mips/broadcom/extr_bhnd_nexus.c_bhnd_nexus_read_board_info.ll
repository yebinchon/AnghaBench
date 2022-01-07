; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bhnd_nexus.c_bhnd_nexus_read_board_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bhnd_nexus.c_bhnd_nexus_read_board_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_board_info = type { i64 }

@PCI_VENDOR_BROADCOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.bhnd_board_info*)* @bhnd_nexus_read_board_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nexus_read_board_info(i32 %0, i32 %1, %struct.bhnd_board_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bhnd_board_info*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.bhnd_board_info* %2, %struct.bhnd_board_info** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.bhnd_board_info*, %struct.bhnd_board_info** %7, align 8
  %12 = call i32 @bhnd_bus_generic_read_board_info(i32 %9, i32 %10, %struct.bhnd_board_info* %11)
  store i32 %12, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %26

16:                                               ; preds = %3
  %17 = load %struct.bhnd_board_info*, %struct.bhnd_board_info** %7, align 8
  %18 = getelementptr inbounds %struct.bhnd_board_info, %struct.bhnd_board_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i64, i64* @PCI_VENDOR_BROADCOM, align 8
  %23 = load %struct.bhnd_board_info*, %struct.bhnd_board_info** %7, align 8
  %24 = getelementptr inbounds %struct.bhnd_board_info, %struct.bhnd_board_info* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %21, %16
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %25, %14
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @bhnd_bus_generic_read_board_info(i32, i32, %struct.bhnd_board_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
