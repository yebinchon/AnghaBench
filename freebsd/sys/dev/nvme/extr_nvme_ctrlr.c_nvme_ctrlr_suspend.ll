; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i32, i64 }

@hz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"nvmesusp\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Competing reset task didn't finish. Try again later.\0A\00", align 1
@EWOULDBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvme_ctrlr_suspend(%struct.nvme_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_controller*, align 8
  %4 = alloca i32, align 4
  store %struct.nvme_controller* %0, %struct.nvme_controller** %3, align 8
  %5 = load i32, i32* @hz, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %7 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %23, %11
  %13 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %14 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %13, i32 0, i32 0
  %15 = call i64 @atomic_cmpset_32(i32* %14, i32 0, i32 1)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %4, align 4
  %20 = icmp sgt i32 %18, 0
  br label %21

21:                                               ; preds = %17, %12
  %22 = phi i1 [ false, %12 ], [ %20, %17 ]
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = call i32 @pause(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %12

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %30 = call i32 @nvme_printf(%struct.nvme_controller* %29, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %31, i32* %2, align 4
  br label %40

32:                                               ; preds = %25
  %33 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %34 = call i32 @nvme_ctrlr_delete_qpairs(%struct.nvme_controller* %33)
  %35 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %36 = call i32 @nvme_ctrlr_disable_qpairs(%struct.nvme_controller* %35)
  %37 = call i32 @DELAY(i32 100000)
  %38 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %39 = call i32 @nvme_ctrlr_shutdown(%struct.nvme_controller* %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %32, %28, %10
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @atomic_cmpset_32(i32*, i32, i32) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @nvme_printf(%struct.nvme_controller*, i8*) #1

declare dso_local i32 @nvme_ctrlr_delete_qpairs(%struct.nvme_controller*) #1

declare dso_local i32 @nvme_ctrlr_disable_qpairs(%struct.nvme_controller*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @nvme_ctrlr_shutdown(%struct.nvme_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
