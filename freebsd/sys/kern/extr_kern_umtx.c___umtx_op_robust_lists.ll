; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c___umtx_op_robust_lists.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c___umtx_op_robust_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct._umtx_op_args = type { i32, i32 }
%struct.umtx_robust_lists_params = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct._umtx_op_args*)* @__umtx_op_robust_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__umtx_op_robust_lists(%struct.thread* %0, %struct._umtx_op_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct._umtx_op_args*, align 8
  %6 = alloca %struct.umtx_robust_lists_params, align 4
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct._umtx_op_args* %1, %struct._umtx_op_args** %5, align 8
  %8 = load %struct._umtx_op_args*, %struct._umtx_op_args** %5, align 8
  %9 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ugt i64 %11, 4
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %31

15:                                               ; preds = %2
  %16 = call i32 @bzero(%struct.umtx_robust_lists_params* %6, i32 4)
  %17 = load %struct._umtx_op_args*, %struct._umtx_op_args** %5, align 8
  %18 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct._umtx_op_args*, %struct._umtx_op_args** %5, align 8
  %21 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @copyin(i32 %19, %struct.umtx_robust_lists_params* %6, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %31

28:                                               ; preds = %15
  %29 = load %struct.thread*, %struct.thread** %4, align 8
  %30 = call i32 @umtx_robust_lists(%struct.thread* %29, %struct.umtx_robust_lists_params* %6)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %26, %13
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @bzero(%struct.umtx_robust_lists_params*, i32) #1

declare dso_local i32 @copyin(i32, %struct.umtx_robust_lists_params*, i32) #1

declare dso_local i32 @umtx_robust_lists(%struct.thread*, %struct.umtx_robust_lists_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
