; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_cmd.c_mthca_INIT_IB.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_cmd.c_mthca_INIT_IB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32 }
%struct.mthca_init_ib_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.mthca_mailbox = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@CMD_INIT_IB = common dso_local global i32 0, align 4
@CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@INIT_IB_FLAGS_OFFSET = common dso_local global i32 0, align 4
@INIT_IB_FLAG_G0 = common dso_local global i32 0, align 4
@INIT_IB_FLAG_NG = common dso_local global i32 0, align 4
@INIT_IB_FLAG_SIG = common dso_local global i32 0, align 4
@INIT_IB_GUID0_OFFSET = common dso_local global i32 0, align 4
@INIT_IB_IN_SIZE = common dso_local global i32 0, align 4
@INIT_IB_MAX_GID_OFFSET = common dso_local global i32 0, align 4
@INIT_IB_MAX_PKEY_OFFSET = common dso_local global i32 0, align 4
@INIT_IB_MTU_SHIFT = common dso_local global i32 0, align 4
@INIT_IB_NODE_GUID_OFFSET = common dso_local global i32 0, align 4
@INIT_IB_PORT_WIDTH_SHIFT = common dso_local global i32 0, align 4
@INIT_IB_SI_GUID_OFFSET = common dso_local global i32 0, align 4
@INIT_IB_VL_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_INIT_IB(%struct.mthca_dev* %0, %struct.mthca_init_ib_param* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mthca_dev*, align 8
  %6 = alloca %struct.mthca_init_ib_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mthca_mailbox*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %5, align 8
  store %struct.mthca_init_ib_param* %1, %struct.mthca_init_ib_param** %6, align 8
  store i32 %2, i32* %7, align 4
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
  br label %109

21:                                               ; preds = %3
  %22 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %8, align 8
  %23 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @memset(i32* %25, i32 0, i32 56)
  store i32 0, i32* %11, align 4
  %27 = load %struct.mthca_init_ib_param*, %struct.mthca_init_ib_param** %6, align 8
  %28 = getelementptr inbounds %struct.mthca_init_ib_param, %struct.mthca_init_ib_param* %27, i32 0, i32 10
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 65536, i32 0
  %33 = load i32, i32* %11, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %11, align 4
  %35 = load %struct.mthca_init_ib_param*, %struct.mthca_init_ib_param** %6, align 8
  %36 = getelementptr inbounds %struct.mthca_init_ib_param, %struct.mthca_init_ib_param* %35, i32 0, i32 9
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 131072, i32 0
  %41 = load i32, i32* %11, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %11, align 4
  %43 = load %struct.mthca_init_ib_param*, %struct.mthca_init_ib_param** %6, align 8
  %44 = getelementptr inbounds %struct.mthca_init_ib_param, %struct.mthca_init_ib_param* %43, i32 0, i32 8
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 262144, i32 0
  %49 = load i32, i32* %11, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %11, align 4
  %51 = load %struct.mthca_init_ib_param*, %struct.mthca_init_ib_param** %6, align 8
  %52 = getelementptr inbounds %struct.mthca_init_ib_param, %struct.mthca_init_ib_param* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = shl i32 %53, 4
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %11, align 4
  %57 = load %struct.mthca_init_ib_param*, %struct.mthca_init_ib_param** %6, align 8
  %58 = getelementptr inbounds %struct.mthca_init_ib_param, %struct.mthca_init_ib_param* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 8
  %61 = load i32, i32* %11, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %11, align 4
  %63 = load %struct.mthca_init_ib_param*, %struct.mthca_init_ib_param** %6, align 8
  %64 = getelementptr inbounds %struct.mthca_init_ib_param, %struct.mthca_init_ib_param* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = shl i32 %65, 12
  %67 = load i32, i32* %11, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %11, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @MTHCA_PUT(i32* %69, i32 %70, i32 0)
  %72 = load i32*, i32** %9, align 8
  %73 = load %struct.mthca_init_ib_param*, %struct.mthca_init_ib_param** %6, align 8
  %74 = getelementptr inbounds %struct.mthca_init_ib_param, %struct.mthca_init_ib_param* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @MTHCA_PUT(i32* %72, i32 %75, i32 6)
  %77 = load i32*, i32** %9, align 8
  %78 = load %struct.mthca_init_ib_param*, %struct.mthca_init_ib_param** %6, align 8
  %79 = getelementptr inbounds %struct.mthca_init_ib_param, %struct.mthca_init_ib_param* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @MTHCA_PUT(i32* %77, i32 %80, i32 10)
  %82 = load i32*, i32** %9, align 8
  %83 = load %struct.mthca_init_ib_param*, %struct.mthca_init_ib_param** %6, align 8
  %84 = getelementptr inbounds %struct.mthca_init_ib_param, %struct.mthca_init_ib_param* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @MTHCA_PUT(i32* %82, i32 %85, i32 16)
  %87 = load i32*, i32** %9, align 8
  %88 = load %struct.mthca_init_ib_param*, %struct.mthca_init_ib_param** %6, align 8
  %89 = getelementptr inbounds %struct.mthca_init_ib_param, %struct.mthca_init_ib_param* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @MTHCA_PUT(i32* %87, i32 %90, i32 24)
  %92 = load i32*, i32** %9, align 8
  %93 = load %struct.mthca_init_ib_param*, %struct.mthca_init_ib_param** %6, align 8
  %94 = getelementptr inbounds %struct.mthca_init_ib_param, %struct.mthca_init_ib_param* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @MTHCA_PUT(i32* %92, i32 %95, i32 32)
  %97 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %98 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %8, align 8
  %99 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @CMD_INIT_IB, align 4
  %103 = load i32, i32* @CMD_TIME_CLASS_A, align 4
  %104 = call i32 @mthca_cmd(%struct.mthca_dev* %97, i32 %100, i32 %101, i32 0, i32 %102, i32 %103)
  store i32 %104, i32* %10, align 4
  %105 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %106 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %8, align 8
  %107 = call i32 @mthca_free_mailbox(%struct.mthca_dev* %105, %struct.mthca_mailbox* %106)
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %21, %18
  %110 = load i32, i32* %4, align 4
  ret i32 %110
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
