; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pcie_wait_for_pending_transactions.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pcie_wait_for_pending_transactions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PCIER_DEVICE_STA = common dso_local global i64 0, align 8
@PCIEM_STA_TRANSACTION_PND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"pcietp\00", align 1
@SBT_1MS = common dso_local global i32 0, align 4
@C_HARDCLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcie_wait_for_pending_transactions(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_devinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.pci_devinfo* @device_get_ivars(i32 %9)
  store %struct.pci_devinfo* %10, %struct.pci_devinfo** %6, align 8
  %11 = load %struct.pci_devinfo*, %struct.pci_devinfo** %6, align 8
  %12 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %59

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* @PCIER_DEVICE_STA, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @pci_read_config(i32 %20, i64 %24, i32 2)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %51, %19
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @PCIEM_STA_TRANSACTION_PND, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %59

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = icmp sgt i32 %36, 100
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, i32* @SBT_1MS, align 4
  %40 = mul nsw i32 100, %39
  %41 = load i32, i32* @C_HARDCLOCK, align 4
  %42 = call i32 @pause_sbt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %40, i32 0, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = sub nsw i32 %43, 100
  store i32 %44, i32* %5, align 4
  br label %51

45:                                               ; preds = %35
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @SBT_1MS, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* @C_HARDCLOCK, align 4
  %50 = call i32 @pause_sbt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %48, i32 0, i32 %49)
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %45, %38
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* @PCIER_DEVICE_STA, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @pci_read_config(i32 %52, i64 %56, i32 2)
  store i32 %57, i32* %7, align 4
  br label %26

58:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %34, %18
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @pause_sbt(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
