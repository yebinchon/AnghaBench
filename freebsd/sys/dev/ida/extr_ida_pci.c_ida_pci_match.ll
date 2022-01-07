; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida_pci.c_ida_pci_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida_pci.c_ida_pci_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ida_board = type { i32 }

@IDA_DEVICEID_SMART = common dso_local global i64 0, align 8
@IDA_DEVICEID_DEC_SMART = common dso_local global i64 0, align 8
@IDA_DEVICEID_NCR_53C1510 = common dso_local global i64 0, align 8
@board_id = common dso_local global %struct.ida_board* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ida_board* (i32)* @ida_pci_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ida_board* @ida_pci_match(i32 %0) #0 {
  %2 = alloca %struct.ida_board*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @pci_get_devid(i32 %7)
  store i64 %8, i64* %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @pci_get_subdevice(i32 %9)
  %11 = shl i32 %10, 16
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @pci_get_subvendor(i32 %12)
  %14 = or i32 %11, %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @IDA_DEVICEID_SMART, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %1
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @IDA_DEVICEID_DEC_SMART, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @IDA_DEVICEID_NCR_53C1510, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %23, %19, %1
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %52, %27
  %29 = load %struct.ida_board*, %struct.ida_board** @board_id, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ida_board, %struct.ida_board* %29, i64 %31
  %33 = getelementptr inbounds %struct.ida_board, %struct.ida_board* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %28
  %37 = load %struct.ida_board*, %struct.ida_board** @board_id, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ida_board, %struct.ida_board* %37, i64 %39
  %41 = getelementptr inbounds %struct.ida_board, %struct.ida_board* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %6, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %36
  %47 = load %struct.ida_board*, %struct.ida_board** @board_id, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.ida_board, %struct.ida_board* %47, i64 %49
  store %struct.ida_board* %50, %struct.ida_board** %2, align 8
  br label %57

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %28

55:                                               ; preds = %28
  br label %56

56:                                               ; preds = %55, %23
  store %struct.ida_board* null, %struct.ida_board** %2, align 8
  br label %57

57:                                               ; preds = %56, %46
  %58 = load %struct.ida_board*, %struct.ida_board** %2, align 8
  ret %struct.ida_board* %58
}

declare dso_local i64 @pci_get_devid(i32) #1

declare dso_local i32 @pci_get_subdevice(i32) #1

declare dso_local i32 @pci_get_subvendor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
