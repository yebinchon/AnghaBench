; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_nvme_completion_is_retry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_nvme_completion_is_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_completion = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_completion*)* @nvme_completion_is_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_completion_is_retry(%struct.nvme_completion* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_completion*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nvme_completion* %0, %struct.nvme_completion** %3, align 8
  %7 = load %struct.nvme_completion*, %struct.nvme_completion** %3, align 8
  %8 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @NVME_STATUS_GET_SCT(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.nvme_completion*, %struct.nvme_completion** %3, align 8
  %12 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @NVME_STATUS_GET_SC(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.nvme_completion*, %struct.nvme_completion** %3, align 8
  %16 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @NVME_STATUS_GET_DNR(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %39 [
    i32 147, label %20
    i32 148, label %29
    i32 146, label %29
    i32 145, label %30
    i32 144, label %38
  ]

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %28 [
    i32 143, label %22
    i32 128, label %22
    i32 130, label %27
    i32 132, label %27
    i32 137, label %27
    i32 135, label %27
    i32 140, label %27
    i32 134, label %27
    i32 139, label %27
    i32 142, label %27
    i32 141, label %27
    i32 131, label %27
    i32 136, label %27
    i32 129, label %27
    i32 138, label %27
  ]

22:                                               ; preds = %20, %20
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %40

26:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %40

27:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20
  br label %28

28:                                               ; preds = %20, %27
  store i32 0, i32* %2, align 4
  br label %40

29:                                               ; preds = %1, %1
  store i32 0, i32* %2, align 4
  br label %40

30:                                               ; preds = %1
  %31 = load i32, i32* %5, align 4
  switch i32 %31, label %37 [
    i32 133, label %32
  ]

32:                                               ; preds = %30
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %40

36:                                               ; preds = %32
  store i32 1, i32* %2, align 4
  br label %40

37:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %40

38:                                               ; preds = %1
  br label %39

39:                                               ; preds = %1, %38
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %37, %36, %35, %29, %28, %26, %25
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @NVME_STATUS_GET_SCT(i32) #1

declare dso_local i32 @NVME_STATUS_GET_SC(i32) #1

declare dso_local i32 @NVME_STATUS_GET_DNR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
