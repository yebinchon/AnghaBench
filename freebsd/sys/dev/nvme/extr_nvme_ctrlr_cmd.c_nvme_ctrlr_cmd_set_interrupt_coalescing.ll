; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr_cmd.c_nvme_ctrlr_cmd_set_interrupt_coalescing.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr_cmd.c_nvme_ctrlr_cmd_set_interrupt_coalescing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"invalid coal time %d, disabling\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"invalid threshold %d, disabling\0A\00", align 1
@NVME_FEAT_INTERRUPT_COALESCING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_ctrlr_cmd_set_interrupt_coalescing(%struct.nvme_controller* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.nvme_controller*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.nvme_controller* %0, %struct.nvme_controller** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sdiv i32 %12, 100
  %14 = icmp sge i32 %13, 256
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = load %struct.nvme_controller*, %struct.nvme_controller** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @nvme_printf(%struct.nvme_controller* %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %15, %5
  %20 = load i32, i32* %8, align 4
  %21 = icmp sge i32 %20, 256
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.nvme_controller*, %struct.nvme_controller** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @nvme_printf(%struct.nvme_controller* %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i32, i32* %7, align 4
  %28 = sdiv i32 %27, 100
  %29 = shl i32 %28, 8
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load %struct.nvme_controller*, %struct.nvme_controller** %6, align 8
  %33 = load i32, i32* @NVME_FEAT_INTERRUPT_COALESCING, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @nvme_ctrlr_cmd_set_feature(%struct.nvme_controller* %32, i32 %33, i32 %34, i32* null, i32 0, i32 %35, i8* %36)
  ret void
}

declare dso_local i32 @nvme_printf(%struct.nvme_controller*, i8*, i32) #1

declare dso_local i32 @nvme_ctrlr_cmd_set_feature(%struct.nvme_controller*, i32, i32, i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
