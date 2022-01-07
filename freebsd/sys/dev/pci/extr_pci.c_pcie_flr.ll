; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pcie_flr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pcie_flr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PCIER_DEVICE_CAP = common dso_local global i64 0, align 8
@PCIEM_CAP_FLR = common dso_local global i32 0, align 4
@PCIR_COMMAND = common dso_local global i64 0, align 8
@PCIM_CMD_BUSMASTEREN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Resetting with transactions pending after %d ms\0A\00", align 1
@PCIER_DEVICE_CTL = common dso_local global i64 0, align 8
@PCIEM_CTL_INITIATE_FLR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"pcieflr\00", align 1
@SBT_1MS = common dso_local global i32 0, align 4
@C_HARDCLOCK = common dso_local global i32 0, align 4
@PCIER_DEVICE_STA = common dso_local global i64 0, align 8
@PCIEM_STA_TRANSACTION_PND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Transactions pending after FLR!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcie_flr(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_devinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.pci_devinfo* @device_get_ivars(i32 %13)
  store %struct.pci_devinfo* %14, %struct.pci_devinfo** %8, align 8
  %15 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %16 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %106

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %12, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* @PCIER_DEVICE_CAP, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @pci_read_config(i32 %24, i64 %28, i32 4)
  %30 = load i32, i32* @PCIEM_CAP_FLR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %106

34:                                               ; preds = %23
  %35 = load i32, i32* %5, align 4
  %36 = load i64, i64* @PCIR_COMMAND, align 8
  %37 = call i32 @pci_read_config(i32 %35, i64 %36, i32 2)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i64, i64* @PCIR_COMMAND, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @PCIM_CMD_BUSMASTEREN, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = call i32 @pci_write_config(i32 %38, i64 %39, i32 %43, i32 2)
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @pcie_wait_for_pending_transactions(i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %69, label %49

49:                                               ; preds = %34
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = load i64, i64* @PCIR_COMMAND, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @pci_write_config(i32 %53, i64 %54, i32 %55, i32 2)
  store i32 0, i32* %4, align 4
  br label %106

57:                                               ; preds = %49
  %58 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %59 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %58, i32 0, i32 0
  %60 = load i32, i32* %6, align 4
  %61 = call i32 (%struct.TYPE_4__*, i8*, ...) @pci_printf(%struct.TYPE_4__* %59, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @pcie_get_max_completion_timeout(i32 %62)
  %64 = sdiv i32 %63, 1000
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %65, 10
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  store i32 10, i32* %11, align 4
  br label %68

68:                                               ; preds = %67, %57
  br label %70

69:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %69, %68
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* @PCIER_DEVICE_CTL, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @pci_read_config(i32 %71, i64 %75, i32 2)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* @PCIER_DEVICE_CTL, align 8
  %81 = add nsw i64 %79, %80
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @PCIEM_CTL_INITIATE_FLR, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @pci_write_config(i32 %77, i64 %81, i32 %84, i32 2)
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 100, %86
  %88 = load i32, i32* @SBT_1MS, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load i32, i32* @C_HARDCLOCK, align 4
  %91 = call i32 @pause_sbt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 0, i32 %90)
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* @PCIER_DEVICE_STA, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @pci_read_config(i32 %92, i64 %96, i32 2)
  %98 = load i32, i32* @PCIEM_STA_TRANSACTION_PND, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %70
  %102 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %103 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %102, i32 0, i32 0
  %104 = call i32 (%struct.TYPE_4__*, i8*, ...) @pci_printf(%struct.TYPE_4__* %103, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %105

105:                                              ; preds = %101, %70
  store i32 1, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %52, %33, %22
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

declare dso_local i32 @pcie_wait_for_pending_transactions(i32, i32) #1

declare dso_local i32 @pci_printf(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i32 @pcie_get_max_completion_timeout(i32) #1

declare dso_local i32 @pause_sbt(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
