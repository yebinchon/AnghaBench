; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_sysctl.c_lio_set_intrmod_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_sysctl.c_lio_set_intrmod_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio = type { %struct.TYPE_6__, %struct.octeon_device* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.octeon_device = type { i32 }
%struct.octeon_intrmod_cfg = type { i32 }
%struct.lio_soft_command = type { i32, %struct.lio_soft_command*, i32, i32, i64, i64 }
%struct.lio_intrmod_context = type { i32, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@LIO_OPCODE_NIC = common dso_local global i32 0, align 4
@LIO_OPCODE_NIC_INTRMOD_CFG = common dso_local global i32 0, align 4
@lio_set_intrmod_callback = common dso_local global i32 0, align 4
@LIO_IQ_SEND_FAILED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"intrmod config failed. Status: %llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Rx-Adaptive Interrupt moderation enabled:%llx\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lio*, %struct.octeon_intrmod_cfg*)* @lio_set_intrmod_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_set_intrmod_cfg(%struct.lio* %0, %struct.octeon_intrmod_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lio*, align 8
  %5 = alloca %struct.octeon_intrmod_cfg*, align 8
  %6 = alloca %struct.lio_soft_command*, align 8
  %7 = alloca %struct.lio_intrmod_context*, align 8
  %8 = alloca %struct.octeon_intrmod_cfg*, align 8
  %9 = alloca %struct.octeon_device*, align 8
  %10 = alloca i32, align 4
  store %struct.lio* %0, %struct.lio** %4, align 8
  store %struct.octeon_intrmod_cfg* %1, %struct.octeon_intrmod_cfg** %5, align 8
  %11 = load %struct.lio*, %struct.lio** %4, align 8
  %12 = getelementptr inbounds %struct.lio, %struct.lio* %11, i32 0, i32 1
  %13 = load %struct.octeon_device*, %struct.octeon_device** %12, align 8
  store %struct.octeon_device* %13, %struct.octeon_device** %9, align 8
  %14 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %15 = call %struct.lio_soft_command* @lio_alloc_soft_command(%struct.octeon_device* %14, i32 4, i32 0, i32 24)
  store %struct.lio_soft_command* %15, %struct.lio_soft_command** %6, align 8
  %16 = load %struct.lio_soft_command*, %struct.lio_soft_command** %6, align 8
  %17 = icmp eq %struct.lio_soft_command* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  store i32 %19, i32* %3, align 4
  br label %108

20:                                               ; preds = %2
  %21 = load %struct.lio_soft_command*, %struct.lio_soft_command** %6, align 8
  %22 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.lio_intrmod_context*
  store %struct.lio_intrmod_context* %24, %struct.lio_intrmod_context** %7, align 8
  %25 = load %struct.lio_intrmod_context*, %struct.lio_intrmod_context** %7, align 8
  %26 = getelementptr inbounds %struct.lio_intrmod_context, %struct.lio_intrmod_context* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %28 = call i32 @lio_get_device_id(%struct.octeon_device* %27)
  %29 = load %struct.lio_intrmod_context*, %struct.lio_intrmod_context** %7, align 8
  %30 = getelementptr inbounds %struct.lio_intrmod_context, %struct.lio_intrmod_context* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.lio_soft_command*, %struct.lio_soft_command** %6, align 8
  %32 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.octeon_intrmod_cfg*
  store %struct.octeon_intrmod_cfg* %34, %struct.octeon_intrmod_cfg** %8, align 8
  %35 = load %struct.octeon_intrmod_cfg*, %struct.octeon_intrmod_cfg** %8, align 8
  %36 = load %struct.octeon_intrmod_cfg*, %struct.octeon_intrmod_cfg** %5, align 8
  %37 = call i32 @memcpy(%struct.octeon_intrmod_cfg* %35, %struct.octeon_intrmod_cfg* %36, i32 4)
  %38 = load %struct.octeon_intrmod_cfg*, %struct.octeon_intrmod_cfg** %8, align 8
  %39 = bitcast %struct.octeon_intrmod_cfg* %38 to i32*
  %40 = call i32 @lio_swap_8B_data(i32* %39, i32 0)
  %41 = load %struct.lio*, %struct.lio** %4, align 8
  %42 = getelementptr inbounds %struct.lio, %struct.lio* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.lio_soft_command*, %struct.lio_soft_command** %6, align 8
  %50 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %52 = load %struct.lio_soft_command*, %struct.lio_soft_command** %6, align 8
  %53 = load i32, i32* @LIO_OPCODE_NIC, align 4
  %54 = load i32, i32* @LIO_OPCODE_NIC_INTRMOD_CFG, align 4
  %55 = call i32 @lio_prepare_soft_command(%struct.octeon_device* %51, %struct.lio_soft_command* %52, i32 %53, i32 %54, i32 0, i32 0, i32 0)
  %56 = load i32, i32* @lio_set_intrmod_callback, align 4
  %57 = load %struct.lio_soft_command*, %struct.lio_soft_command** %6, align 8
  %58 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.lio_soft_command*, %struct.lio_soft_command** %6, align 8
  %60 = load %struct.lio_soft_command*, %struct.lio_soft_command** %6, align 8
  %61 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %60, i32 0, i32 1
  store %struct.lio_soft_command* %59, %struct.lio_soft_command** %61, align 8
  %62 = load %struct.lio_soft_command*, %struct.lio_soft_command** %6, align 8
  %63 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %62, i32 0, i32 0
  store i32 1000, i32* %63, align 8
  %64 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %65 = load %struct.lio_soft_command*, %struct.lio_soft_command** %6, align 8
  %66 = call i32 @lio_send_soft_command(%struct.octeon_device* %64, %struct.lio_soft_command* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @LIO_IQ_SEND_FAILED, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %20
  %71 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %72 = load %struct.lio_soft_command*, %struct.lio_soft_command** %6, align 8
  %73 = call i32 @lio_free_soft_command(%struct.octeon_device* %71, %struct.lio_soft_command* %72)
  %74 = load i32, i32* @EINVAL, align 4
  store i32 %74, i32* %3, align 4
  br label %108

75:                                               ; preds = %20
  %76 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %77 = load %struct.lio_intrmod_context*, %struct.lio_intrmod_context** %7, align 8
  %78 = getelementptr inbounds %struct.lio_intrmod_context, %struct.lio_intrmod_context* %77, i32 0, i32 1
  %79 = call i32 @lio_sleep_cond(%struct.octeon_device* %76, i64* %78)
  %80 = load %struct.lio_intrmod_context*, %struct.lio_intrmod_context** %7, align 8
  %81 = getelementptr inbounds %struct.lio_intrmod_context, %struct.lio_intrmod_context* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %75
  %86 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @LIO_CAST64(i32 %87)
  %89 = call i32 @lio_dev_err(%struct.octeon_device* %86, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %97

90:                                               ; preds = %75
  %91 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %92 = load %struct.octeon_intrmod_cfg*, %struct.octeon_intrmod_cfg** %5, align 8
  %93 = getelementptr inbounds %struct.octeon_intrmod_cfg, %struct.octeon_intrmod_cfg* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @LIO_CAST64(i32 %94)
  %96 = call i32 @lio_dev_info(%struct.octeon_device* %91, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %90, %85
  %98 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %99 = load %struct.lio_soft_command*, %struct.lio_soft_command** %6, align 8
  %100 = call i32 @lio_free_soft_command(%struct.octeon_device* %98, %struct.lio_soft_command* %99)
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i32, i32* @ETIMEDOUT, align 4
  br label %106

105:                                              ; preds = %97
  br label %106

106:                                              ; preds = %105, %103
  %107 = phi i32 [ %104, %103 ], [ 0, %105 ]
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %70, %18
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.lio_soft_command* @lio_alloc_soft_command(%struct.octeon_device*, i32, i32, i32) #1

declare dso_local i32 @lio_get_device_id(%struct.octeon_device*) #1

declare dso_local i32 @memcpy(%struct.octeon_intrmod_cfg*, %struct.octeon_intrmod_cfg*, i32) #1

declare dso_local i32 @lio_swap_8B_data(i32*, i32) #1

declare dso_local i32 @lio_prepare_soft_command(%struct.octeon_device*, %struct.lio_soft_command*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @lio_send_soft_command(%struct.octeon_device*, %struct.lio_soft_command*) #1

declare dso_local i32 @lio_free_soft_command(%struct.octeon_device*, %struct.lio_soft_command*) #1

declare dso_local i32 @lio_sleep_cond(%struct.octeon_device*, i64*) #1

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*, i32) #1

declare dso_local i32 @LIO_CAST64(i32) #1

declare dso_local i32 @lio_dev_info(%struct.octeon_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
