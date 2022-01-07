; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_cmd.c_mthca_QUERY_ADAPTER.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_cmd.c_mthca_QUERY_ADAPTER.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32 }
%struct.mthca_adapter = type { i32, i32, i32, i32, i32 }
%struct.mthca_mailbox = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@CMD_QUERY_ADAPTER = common dso_local global i32 0, align 4
@CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@QUERY_ADAPTER_DEVICE_ID_OFFSET = common dso_local global i32 0, align 4
@QUERY_ADAPTER_INTA_PIN_OFFSET = common dso_local global i32 0, align 4
@QUERY_ADAPTER_REVISION_ID_OFFSET = common dso_local global i32 0, align 4
@QUERY_ADAPTER_VENDOR_ID_OFFSET = common dso_local global i32 0, align 4
@QUERY_ADAPTER_VSD_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_QUERY_ADAPTER(%struct.mthca_dev* %0, %struct.mthca_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mthca_dev*, align 8
  %5 = alloca %struct.mthca_adapter*, align 8
  %6 = alloca %struct.mthca_mailbox*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %4, align 8
  store %struct.mthca_adapter* %1, %struct.mthca_adapter** %5, align 8
  %9 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev* %9, i32 %10)
  store %struct.mthca_mailbox* %11, %struct.mthca_mailbox** %6, align 8
  %12 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %6, align 8
  %13 = call i64 @IS_ERR(%struct.mthca_mailbox* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %6, align 8
  %17 = call i32 @PTR_ERR(%struct.mthca_mailbox* %16)
  store i32 %17, i32* %3, align 4
  br label %69

18:                                               ; preds = %2
  %19 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %6, align 8
  %20 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  %22 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %23 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %6, align 8
  %24 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @CMD_QUERY_ADAPTER, align 4
  %27 = load i32, i32* @CMD_TIME_CLASS_A, align 4
  %28 = call i32 @mthca_cmd_box(%struct.mthca_dev* %22, i32 0, i32 %25, i32 0, i32 0, i32 %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  br label %64

32:                                               ; preds = %18
  %33 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %34 = call i32 @mthca_is_memfree(%struct.mthca_dev* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %32
  %37 = load %struct.mthca_adapter*, %struct.mthca_adapter** %5, align 8
  %38 = getelementptr inbounds %struct.mthca_adapter, %struct.mthca_adapter* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @MTHCA_GET(i32 %39, i32* %40, i32 0)
  %42 = load %struct.mthca_adapter*, %struct.mthca_adapter** %5, align 8
  %43 = getelementptr inbounds %struct.mthca_adapter, %struct.mthca_adapter* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @MTHCA_GET(i32 %44, i32* %45, i32 4)
  %47 = load %struct.mthca_adapter*, %struct.mthca_adapter** %5, align 8
  %48 = getelementptr inbounds %struct.mthca_adapter, %struct.mthca_adapter* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @MTHCA_GET(i32 %49, i32* %50, i32 8)
  br label %52

52:                                               ; preds = %36, %32
  %53 = load %struct.mthca_adapter*, %struct.mthca_adapter** %5, align 8
  %54 = getelementptr inbounds %struct.mthca_adapter, %struct.mthca_adapter* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @MTHCA_GET(i32 %55, i32* %56, i32 16)
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 8
  %60 = load %struct.mthca_adapter*, %struct.mthca_adapter** %5, align 8
  %61 = getelementptr inbounds %struct.mthca_adapter, %struct.mthca_adapter* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @get_board_id(i32* %59, i32 %62)
  br label %64

64:                                               ; preds = %52, %31
  %65 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %66 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %6, align 8
  %67 = call i32 @mthca_free_mailbox(%struct.mthca_dev* %65, %struct.mthca_mailbox* %66)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %64, %15
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mthca_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mthca_mailbox*) #1

declare dso_local i32 @mthca_cmd_box(%struct.mthca_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local i32 @MTHCA_GET(i32, i32*, i32) #1

declare dso_local i32 @get_board_id(i32*, i32) #1

declare dso_local i32 @mthca_free_mailbox(%struct.mthca_dev*, %struct.mthca_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
