; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i32 }

@NVME_CC_REG_EN_SHIFT = common dso_local global i32 0, align 4
@NVME_CC_REG_EN_MASK = common dso_local global i32 0, align 4
@NVME_CSTS_REG_RDY_SHIFT = common dso_local global i32 0, align 4
@NVME_CSTS_REG_RDY_MASK = common dso_local global i32 0, align 4
@QUIRK_DELAY_B4_CHK_RDY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"nvmeR\00", align 1
@B4_CHK_RDY_DELAY_MS = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_controller*)* @nvme_ctrlr_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_ctrlr_disable(%struct.nvme_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nvme_controller* %0, %struct.nvme_controller** %3, align 8
  %9 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @nvme_mmio_read_4(%struct.nvme_controller* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @nvme_mmio_read_4(%struct.nvme_controller* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @NVME_CC_REG_EN_SHIFT, align 4
  %17 = ashr i32 %15, %16
  %18 = load i32, i32* @NVME_CC_REG_EN_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @NVME_CSTS_REG_RDY_SHIFT, align 4
  %22 = ashr i32 %20, %21
  %23 = load i32, i32* @NVME_CSTS_REG_RDY_MASK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %39

27:                                               ; preds = %1
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %32 = call i32 @nvme_ctrlr_wait_for_ready(%struct.nvme_controller* %31, i32 1)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %2, align 4
  br label %70

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %27
  br label %46

39:                                               ; preds = %1
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %70

43:                                               ; preds = %39
  %44 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %45 = call i32 @nvme_ctrlr_wait_for_ready(%struct.nvme_controller* %44, i32 0)
  store i32 %45, i32* %2, align 4
  br label %70

46:                                               ; preds = %38
  %47 = load i32, i32* @NVME_CC_REG_EN_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %4, align 4
  %51 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @nvme_mmio_write_4(%struct.nvme_controller* %51, i32 %52, i32 %53)
  %55 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %56 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @QUIRK_DELAY_B4_CHK_RDY, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %46
  %62 = load i32, i32* @B4_CHK_RDY_DELAY_MS, align 4
  %63 = load i32, i32* @hz, align 4
  %64 = mul nsw i32 %62, %63
  %65 = sdiv i32 %64, 1000
  %66 = call i32 @pause(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %61, %46
  %68 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %69 = call i32 @nvme_ctrlr_wait_for_ready(%struct.nvme_controller* %68, i32 0)
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %67, %43, %42, %35
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @nvme_mmio_read_4(%struct.nvme_controller*, i32) #1

declare dso_local i32 @nvme_ctrlr_wait_for_ready(%struct.nvme_controller*, i32) #1

declare dso_local i32 @nvme_mmio_write_4(%struct.nvme_controller*, i32, i32) #1

declare dso_local i32 @pause(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
