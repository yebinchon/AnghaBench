; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_wait_for_ready.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_wait_for_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@NVME_CSTS_REG_RDY_SHIFT = common dso_local global i32 0, align 4
@NVME_CSTS_REG_RDY_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"controller ready did not become %d within %d ms\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_controller*, i32)* @nvme_ctrlr_wait_for_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_ctrlr_wait_for_ready(%struct.nvme_controller* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_controller*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvme_controller* %0, %struct.nvme_controller** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %2, %40
  %9 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @nvme_mmio_read_4(%struct.nvme_controller* %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %3, align 4
  br label %43

16:                                               ; preds = %8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @NVME_CSTS_REG_RDY_SHIFT, align 4
  %19 = ashr i32 %17, %18
  %20 = load i32, i32* @NVME_CSTS_REG_RDY_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %42

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  %28 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %29 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %26, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %36 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @nvme_printf(%struct.nvme_controller* %33, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37)
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %3, align 4
  br label %43

40:                                               ; preds = %25
  %41 = call i32 @DELAY(i32 1000)
  br label %8

42:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %32, %14
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @nvme_mmio_read_4(%struct.nvme_controller*, i32) #1

declare dso_local i32 @nvme_printf(%struct.nvme_controller*, i8*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
