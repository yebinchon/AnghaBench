; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_cmd.c_mthca_SET_IB.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_cmd.c_mthca_SET_IB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32 }
%struct.mthca_set_ib_param = type { i32, i32, i64, i64 }
%struct.mthca_mailbox = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@CMD_SET_IB = common dso_local global i32 0, align 4
@CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@SET_IB_CAP_MASK_OFFSET = common dso_local global i32 0, align 4
@SET_IB_FLAGS_OFFSET = common dso_local global i32 0, align 4
@SET_IB_FLAG_RQK = common dso_local global i32 0, align 4
@SET_IB_FLAG_SIG = common dso_local global i32 0, align 4
@SET_IB_IN_SIZE = common dso_local global i32 0, align 4
@SET_IB_SI_GUID_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_SET_IB(%struct.mthca_dev* %0, %struct.mthca_set_ib_param* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mthca_dev*, align 8
  %6 = alloca %struct.mthca_set_ib_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mthca_mailbox*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %5, align 8
  store %struct.mthca_set_ib_param* %1, %struct.mthca_set_ib_param** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev* %12, i32 %13)
  store %struct.mthca_mailbox* %14, %struct.mthca_mailbox** %8, align 8
  %15 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %8, align 8
  %16 = call i64 @IS_ERR(%struct.mthca_mailbox* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %8, align 8
  %20 = call i32 @PTR_ERR(%struct.mthca_mailbox* %19)
  store i32 %20, i32* %4, align 4
  br label %68

21:                                               ; preds = %3
  %22 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %8, align 8
  %23 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @memset(i32* %25, i32 0, i32 64)
  %27 = load %struct.mthca_set_ib_param*, %struct.mthca_set_ib_param** %6, align 8
  %28 = getelementptr inbounds %struct.mthca_set_ib_param, %struct.mthca_set_ib_param* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 262144, i32 0
  %33 = load i32, i32* %11, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %11, align 4
  %35 = load %struct.mthca_set_ib_param*, %struct.mthca_set_ib_param** %6, align 8
  %36 = getelementptr inbounds %struct.mthca_set_ib_param, %struct.mthca_set_ib_param* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  %41 = load i32, i32* %11, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %11, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @MTHCA_PUT(i32* %43, i32 %44, i32 0)
  %46 = load i32*, i32** %9, align 8
  %47 = load %struct.mthca_set_ib_param*, %struct.mthca_set_ib_param** %6, align 8
  %48 = getelementptr inbounds %struct.mthca_set_ib_param, %struct.mthca_set_ib_param* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @MTHCA_PUT(i32* %46, i32 %49, i32 4)
  %51 = load i32*, i32** %9, align 8
  %52 = load %struct.mthca_set_ib_param*, %struct.mthca_set_ib_param** %6, align 8
  %53 = getelementptr inbounds %struct.mthca_set_ib_param, %struct.mthca_set_ib_param* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @MTHCA_PUT(i32* %51, i32 %54, i32 8)
  %56 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %57 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %8, align 8
  %58 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @CMD_SET_IB, align 4
  %62 = load i32, i32* @CMD_TIME_CLASS_B, align 4
  %63 = call i32 @mthca_cmd(%struct.mthca_dev* %56, i32 %59, i32 %60, i32 0, i32 %61, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %65 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %8, align 8
  %66 = call i32 @mthca_free_mailbox(%struct.mthca_dev* %64, %struct.mthca_mailbox* %65)
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %21, %18
  %69 = load i32, i32* %4, align 4
  ret i32 %69
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
