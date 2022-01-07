; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_fail.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i32, i32*, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_controller*)* @nvme_ctrlr_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_ctrlr_fail(%struct.nvme_controller* %0) #0 {
  %2 = alloca %struct.nvme_controller*, align 8
  %3 = alloca i32, align 4
  store %struct.nvme_controller* %0, %struct.nvme_controller** %2, align 8
  %4 = load i32, i32* @TRUE, align 4
  %5 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %6 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %5, i32 0, i32 3
  store i32 %4, i32* %6, align 4
  %7 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %8 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %7, i32 0, i32 2
  %9 = call i32 @nvme_admin_qpair_disable(i32* %8)
  %10 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %11 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %10, i32 0, i32 2
  %12 = call i32 @nvme_qpair_fail(i32* %11)
  %13 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %14 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %43

17:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %39, %17
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %21 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %18
  %25 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %26 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @nvme_io_qpair_disable(i32* %30)
  %32 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %33 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i32 @nvme_qpair_fail(i32* %37)
  br label %39

39:                                               ; preds = %24
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %18

42:                                               ; preds = %18
  br label %43

43:                                               ; preds = %42, %1
  %44 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %45 = call i32 @nvme_notify_fail_consumers(%struct.nvme_controller* %44)
  ret void
}

declare dso_local i32 @nvme_admin_qpair_disable(i32*) #1

declare dso_local i32 @nvme_qpair_fail(i32*) #1

declare dso_local i32 @nvme_io_qpair_disable(i32*) #1

declare dso_local i32 @nvme_notify_fail_consumers(%struct.nvme_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
