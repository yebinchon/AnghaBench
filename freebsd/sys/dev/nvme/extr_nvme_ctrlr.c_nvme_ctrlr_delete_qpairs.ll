; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_delete_qpairs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_delete_qpairs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i32, %struct.nvme_qpair* }
%struct.nvme_qpair = type { i32 }
%struct.nvme_completion_poll_status = type { i32, i64 }

@nvme_completion_poll_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"nvme_destroy_io_sq failed!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"nvme_destroy_io_cq failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_controller*)* @nvme_ctrlr_delete_qpairs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_ctrlr_delete_qpairs(%struct.nvme_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_controller*, align 8
  %4 = alloca %struct.nvme_completion_poll_status, align 8
  %5 = alloca %struct.nvme_qpair*, align 8
  %6 = alloca i32, align 4
  store %struct.nvme_controller* %0, %struct.nvme_controller** %3, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %48, %1
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %10 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %51

13:                                               ; preds = %7
  %14 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %15 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %14, i32 0, i32 1
  %16 = load %struct.nvme_qpair*, %struct.nvme_qpair** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %16, i64 %18
  store %struct.nvme_qpair* %19, %struct.nvme_qpair** %5, align 8
  %20 = getelementptr inbounds %struct.nvme_completion_poll_status, %struct.nvme_completion_poll_status* %4, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %22 = load %struct.nvme_qpair*, %struct.nvme_qpair** %5, align 8
  %23 = load i32, i32* @nvme_completion_poll_cb, align 4
  %24 = call i32 @nvme_ctrlr_cmd_delete_io_sq(%struct.nvme_controller* %21, %struct.nvme_qpair* %22, i32 %23, %struct.nvme_completion_poll_status* %4)
  %25 = call i32 @nvme_completion_poll(%struct.nvme_completion_poll_status* %4)
  %26 = getelementptr inbounds %struct.nvme_completion_poll_status, %struct.nvme_completion_poll_status* %4, i32 0, i32 0
  %27 = call i64 @nvme_completion_is_error(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %13
  %30 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %31 = call i32 @nvme_printf(%struct.nvme_controller* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %2, align 4
  br label %52

33:                                               ; preds = %13
  %34 = getelementptr inbounds %struct.nvme_completion_poll_status, %struct.nvme_completion_poll_status* %4, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %36 = load %struct.nvme_qpair*, %struct.nvme_qpair** %5, align 8
  %37 = load i32, i32* @nvme_completion_poll_cb, align 4
  %38 = call i32 @nvme_ctrlr_cmd_delete_io_cq(%struct.nvme_controller* %35, %struct.nvme_qpair* %36, i32 %37, %struct.nvme_completion_poll_status* %4)
  %39 = call i32 @nvme_completion_poll(%struct.nvme_completion_poll_status* %4)
  %40 = getelementptr inbounds %struct.nvme_completion_poll_status, %struct.nvme_completion_poll_status* %4, i32 0, i32 0
  %41 = call i64 @nvme_completion_is_error(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %45 = call i32 @nvme_printf(%struct.nvme_controller* %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ENXIO, align 4
  store i32 %46, i32* %2, align 4
  br label %52

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %7

51:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %43, %29
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @nvme_ctrlr_cmd_delete_io_sq(%struct.nvme_controller*, %struct.nvme_qpair*, i32, %struct.nvme_completion_poll_status*) #1

declare dso_local i32 @nvme_completion_poll(%struct.nvme_completion_poll_status*) #1

declare dso_local i64 @nvme_completion_is_error(i32*) #1

declare dso_local i32 @nvme_printf(%struct.nvme_controller*, i8*) #1

declare dso_local i32 @nvme_ctrlr_cmd_delete_io_cq(%struct.nvme_controller*, %struct.nvme_qpair*, i32, %struct.nvme_completion_poll_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
