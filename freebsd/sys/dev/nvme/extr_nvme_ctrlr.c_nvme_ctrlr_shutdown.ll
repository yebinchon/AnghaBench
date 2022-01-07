; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i32 }

@NVME_CC_REG_SHN_MASK = common dso_local global i32 0, align 4
@NVME_CC_REG_SHN_SHIFT = common dso_local global i32 0, align 4
@NVME_SHN_NORMAL = common dso_local global i32 0, align 4
@NVME_SHST_COMPLETE = common dso_local global i64 0, align 8
@hz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"did not complete shutdown within 5 seconds of notification\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"nvme shn\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_ctrlr_shutdown(%struct.nvme_controller* %0) #0 {
  %2 = alloca %struct.nvme_controller*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nvme_controller* %0, %struct.nvme_controller** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @nvme_mmio_read_4(%struct.nvme_controller* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @NVME_CC_REG_SHN_MASK, align 4
  %10 = load i32, i32* @NVME_CC_REG_SHN_SHIFT, align 4
  %11 = shl i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @NVME_SHN_NORMAL, align 4
  %16 = load i32, i32* @NVME_CC_REG_SHN_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @nvme_mmio_write_4(%struct.nvme_controller* %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %1, %46
  %25 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @nvme_mmio_read_4(%struct.nvme_controller* %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %48

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @NVME_CSTS_GET_SHST(i32 %32)
  %34 = load i64, i64* @NVME_SHST_COMPLETE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %48

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* @hz, align 4
  %41 = mul nsw i32 5, %40
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %45 = call i32 @nvme_printf(%struct.nvme_controller* %44, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %48

46:                                               ; preds = %37
  %47 = call i32 @pause(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %24

48:                                               ; preds = %43, %36, %30
  ret void
}

declare dso_local i32 @nvme_mmio_read_4(%struct.nvme_controller*, i32) #1

declare dso_local i32 @nvme_mmio_write_4(%struct.nvme_controller*, i32, i32) #1

declare dso_local i64 @NVME_CSTS_GET_SHST(i32) #1

declare dso_local i32 @nvme_printf(%struct.nvme_controller*, i8*) #1

declare dso_local i32 @pause(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
