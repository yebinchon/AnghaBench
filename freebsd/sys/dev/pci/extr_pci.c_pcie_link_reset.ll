; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pcie_link_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pcie_link_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCIER_LINK_CTL = common dso_local global i64 0, align 8
@PCIEM_LINK_CTL_LINK_DIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"pcier1\00", align 1
@PCIEM_LINK_CTL_RETRAIN_LINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"pcier2\00", align 1
@PCIER_LINK_STA = common dso_local global i64 0, align 8
@PCIEM_LINK_STA_TRAINING = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcie_link_reset(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = load i64, i64* @PCIER_LINK_CTL, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @pci_read_config(i32 %6, i64 %10, i32 2)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @PCIEM_LINK_CTL_LINK_DIS, align 4
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* @PCIER_LINK_CTL, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @pci_write_config(i32 %15, i64 %19, i32 %20, i32 2)
  %22 = call i32 @mstosbt(i32 20)
  %23 = call i32 @pause_sbt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %22, i32 0, i32 0)
  %24 = load i32, i32* @PCIEM_LINK_CTL_LINK_DIS, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @PCIEM_LINK_CTL_RETRAIN_LINK, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* @PCIER_LINK_CTL, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @pci_write_config(i32 %31, i64 %35, i32 %36, i32 2)
  %38 = call i32 @mstosbt(i32 100)
  %39 = call i32 @pause_sbt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 0, i32 0)
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* @PCIER_LINK_STA, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @pci_read_config(i32 %40, i64 %44, i32 2)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @PCIEM_LINK_STA_TRAINING, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %2
  %51 = load i32, i32* @ETIMEDOUT, align 4
  br label %53

52:                                               ; preds = %2
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i32 [ %51, %50 ], [ 0, %52 ]
  ret i32 %54
}

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

declare dso_local i32 @pause_sbt(i8*, i32, i32, i32) #1

declare dso_local i32 @mstosbt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
