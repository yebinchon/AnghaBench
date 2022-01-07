; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_cmd.c_mthca_RESIZE_CQ.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_cmd.c_mthca_RESIZE_CQ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32 }
%struct.mthca_mailbox = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@CMD_RESIZE_CQ = common dso_local global i32 0, align 4
@CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@RESIZE_CQ_IN_SIZE = common dso_local global i32 0, align 4
@RESIZE_CQ_LKEY_OFFSET = common dso_local global i32 0, align 4
@RESIZE_CQ_LOG_SIZE_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_RESIZE_CQ(%struct.mthca_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mthca_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mthca_mailbox*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev* %13, i32 %14)
  store %struct.mthca_mailbox* %15, %struct.mthca_mailbox** %10, align 8
  %16 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %10, align 8
  %17 = call i64 @IS_ERR(%struct.mthca_mailbox* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %10, align 8
  %21 = call i32 @PTR_ERR(%struct.mthca_mailbox* %20)
  store i32 %21, i32* %5, align 4
  br label %46

22:                                               ; preds = %4
  %23 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %10, align 8
  %24 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %11, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @memset(i32* %26, i32 0, i32 64)
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @MTHCA_PUT(i32* %28, i32 %29, i32 12)
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @MTHCA_PUT(i32* %31, i32 %32, i32 28)
  %34 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %35 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %10, align 8
  %36 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @CMD_RESIZE_CQ, align 4
  %40 = load i32, i32* @CMD_TIME_CLASS_B, align 4
  %41 = call i32 @mthca_cmd(%struct.mthca_dev* %34, i32 %37, i32 %38, i32 1, i32 %39, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %43 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %10, align 8
  %44 = call i32 @mthca_free_mailbox(%struct.mthca_dev* %42, %struct.mthca_mailbox* %43)
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %22, %19
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mthca_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mthca_mailbox*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @MTHCA_PUT(i32*, i32, i32) #1

declare dso_local i32 @mthca_cmd(%struct.mthca_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mthca_free_mailbox(%struct.mthca_dev*, %struct.mthca_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
