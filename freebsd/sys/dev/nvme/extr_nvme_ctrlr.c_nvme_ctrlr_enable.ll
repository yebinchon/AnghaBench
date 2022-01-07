; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@NVME_CC_REG_EN_SHIFT = common dso_local global i32 0, align 4
@NVME_CC_REG_EN_MASK = common dso_local global i32 0, align 4
@NVME_CSTS_REG_RDY_SHIFT = common dso_local global i32 0, align 4
@NVME_CSTS_REG_RDY_MASK = common dso_local global i32 0, align 4
@asq = common dso_local global i32 0, align 4
@acq = common dso_local global i32 0, align 4
@NVME_AQA_REG_ACQS_MASK = common dso_local global i32 0, align 4
@NVME_AQA_REG_ACQS_SHIFT = common dso_local global i32 0, align 4
@NVME_AQA_REG_ASQS_MASK = common dso_local global i32 0, align 4
@NVME_AQA_REG_ASQS_SHIFT = common dso_local global i32 0, align 4
@NVME_CC_REG_CSS_SHIFT = common dso_local global i32 0, align 4
@NVME_CC_REG_AMS_SHIFT = common dso_local global i32 0, align 4
@NVME_CC_REG_SHN_SHIFT = common dso_local global i32 0, align 4
@NVME_CC_REG_IOSQES_SHIFT = common dso_local global i32 0, align 4
@NVME_CC_REG_IOCQES_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@NVME_CC_REG_MPS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_controller*)* @nvme_ctrlr_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_ctrlr_enable(%struct.nvme_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvme_controller* %0, %struct.nvme_controller** %3, align 8
  %11 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @nvme_mmio_read_4(%struct.nvme_controller* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @nvme_mmio_read_4(%struct.nvme_controller* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @NVME_CC_REG_EN_SHIFT, align 4
  %19 = ashr i32 %17, %18
  %20 = load i32, i32* @NVME_CC_REG_EN_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @NVME_CSTS_REG_RDY_SHIFT, align 4
  %24 = ashr i32 %22, %23
  %25 = load i32, i32* @NVME_CSTS_REG_RDY_MASK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %36

29:                                               ; preds = %1
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %119

33:                                               ; preds = %29
  %34 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %35 = call i32 @nvme_ctrlr_wait_for_ready(%struct.nvme_controller* %34, i32 1)
  store i32 %35, i32* %2, align 4
  br label %119

36:                                               ; preds = %1
  %37 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %38 = call i32 @nvme_ctrlr_wait_for_ready(%struct.nvme_controller* %37, i32 0)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %2, align 4
  br label %119

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %46 = load i32, i32* @asq, align 4
  %47 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %48 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @nvme_mmio_write_8(%struct.nvme_controller* %45, i32 %46, i32 %50)
  %52 = call i32 @DELAY(i32 5000)
  %53 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %54 = load i32, i32* @acq, align 4
  %55 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %56 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @nvme_mmio_write_8(%struct.nvme_controller* %53, i32 %54, i32 %58)
  %60 = call i32 @DELAY(i32 5000)
  %61 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %62 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @NVME_AQA_REG_ACQS_MASK, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @NVME_AQA_REG_ACQS_SHIFT, align 4
  %70 = shl i32 %68, %69
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @NVME_AQA_REG_ASQS_MASK, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @NVME_AQA_REG_ASQS_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %6, align 4
  %78 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @nvme_mmio_write_4(%struct.nvme_controller* %78, i32 %79, i32 %80)
  %82 = call i32 @DELAY(i32 5000)
  store i32 0, i32* %4, align 4
  %83 = load i32, i32* @NVME_CC_REG_EN_SHIFT, align 4
  %84 = shl i32 1, %83
  %85 = load i32, i32* %4, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* @NVME_CC_REG_CSS_SHIFT, align 4
  %88 = shl i32 0, %87
  %89 = load i32, i32* %4, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* @NVME_CC_REG_AMS_SHIFT, align 4
  %92 = shl i32 0, %91
  %93 = load i32, i32* %4, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* @NVME_CC_REG_SHN_SHIFT, align 4
  %96 = shl i32 0, %95
  %97 = load i32, i32* %4, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* @NVME_CC_REG_IOSQES_SHIFT, align 4
  %100 = shl i32 6, %99
  %101 = load i32, i32* %4, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* @NVME_CC_REG_IOCQES_SHIFT, align 4
  %104 = shl i32 4, %103
  %105 = load i32, i32* %4, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* @PAGE_SIZE, align 4
  %108 = ashr i32 %107, 13
  %109 = load i32, i32* @NVME_CC_REG_MPS_SHIFT, align 4
  %110 = shl i32 %108, %109
  %111 = load i32, i32* %4, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %4, align 4
  %113 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @nvme_mmio_write_4(%struct.nvme_controller* %113, i32 %114, i32 %115)
  %117 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %118 = call i32 @nvme_ctrlr_wait_for_ready(%struct.nvme_controller* %117, i32 1)
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %44, %41, %33, %32
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @nvme_mmio_read_4(%struct.nvme_controller*, i32) #1

declare dso_local i32 @nvme_ctrlr_wait_for_ready(%struct.nvme_controller*, i32) #1

declare dso_local i32 @nvme_mmio_write_8(%struct.nvme_controller*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @nvme_mmio_write_4(%struct.nvme_controller*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
