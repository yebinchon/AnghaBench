; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_get_log_page_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_get_log_page_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NVME_MAX_AER_LOG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_controller*, i32)* @nvme_ctrlr_get_log_page_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_ctrlr_get_log_page_size(%struct.nvme_controller* %0, i32 %1) #0 {
  %3 = alloca %struct.nvme_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nvme_controller* %0, %struct.nvme_controller** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %24 [
    i32 132, label %7
    i32 130, label %18
    i32 131, label %19
    i32 134, label %20
    i32 133, label %21
    i32 129, label %22
    i32 128, label %23
  ]

7:                                                ; preds = %2
  %8 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %9 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @NVME_MAX_AER_LOG_SIZE, align 4
  %17 = call i32 @min(i32 %15, i32 %16)
  store i32 %17, i32* %5, align 4
  br label %25

18:                                               ; preds = %2
  store i32 4, i32* %5, align 4
  br label %25

19:                                               ; preds = %2
  store i32 4, i32* %5, align 4
  br label %25

20:                                               ; preds = %2
  store i32 4, i32* %5, align 4
  br label %25

21:                                               ; preds = %2
  store i32 4, i32* %5, align 4
  br label %25

22:                                               ; preds = %2
  store i32 4, i32* %5, align 4
  br label %25

23:                                               ; preds = %2
  store i32 4, i32* %5, align 4
  br label %25

24:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %7
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
