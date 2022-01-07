; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_sysctl.c_lio_get_intrmod_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_sysctl.c_lio_get_intrmod_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio = type { %struct.TYPE_6__, %struct.octeon_device* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.octeon_device = type { i32 }
%struct.octeon_intrmod_cfg = type { i32 }
%struct.lio_soft_command = type { i32, %struct.lio_soft_command*, i32, i32, i64 }
%struct.lio_intrmod_resp = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@LIO_OPCODE_NIC = common dso_local global i32 0, align 4
@LIO_OPCODE_NIC_INTRMOD_PARAMS = common dso_local global i32 0, align 4
@lio_get_intrmod_callback = common dso_local global i32 0, align 4
@LIO_IQ_SEND_FAILED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lio*, %struct.octeon_intrmod_cfg*)* @lio_get_intrmod_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_get_intrmod_cfg(%struct.lio* %0, %struct.octeon_intrmod_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lio*, align 8
  %5 = alloca %struct.octeon_intrmod_cfg*, align 8
  %6 = alloca %struct.lio_soft_command*, align 8
  %7 = alloca %struct.lio_intrmod_resp*, align 8
  %8 = alloca %struct.octeon_device*, align 8
  %9 = alloca i32, align 4
  store %struct.lio* %0, %struct.lio** %4, align 8
  store %struct.octeon_intrmod_cfg* %1, %struct.octeon_intrmod_cfg** %5, align 8
  %10 = load %struct.lio*, %struct.lio** %4, align 8
  %11 = getelementptr inbounds %struct.lio, %struct.lio* %10, i32 0, i32 1
  %12 = load %struct.octeon_device*, %struct.octeon_device** %11, align 8
  store %struct.octeon_device* %12, %struct.octeon_device** %8, align 8
  %13 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %14 = call %struct.lio_soft_command* @lio_alloc_soft_command(%struct.octeon_device* %13, i32 0, i32 4, i32 0)
  store %struct.lio_soft_command* %14, %struct.lio_soft_command** %6, align 8
  %15 = load %struct.lio_soft_command*, %struct.lio_soft_command** %6, align 8
  %16 = icmp eq %struct.lio_soft_command* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  store i32 %18, i32* %3, align 4
  br label %61

19:                                               ; preds = %2
  %20 = load %struct.lio_soft_command*, %struct.lio_soft_command** %6, align 8
  %21 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.lio_intrmod_resp*
  store %struct.lio_intrmod_resp* %23, %struct.lio_intrmod_resp** %7, align 8
  %24 = load %struct.lio_intrmod_resp*, %struct.lio_intrmod_resp** %7, align 8
  %25 = call i32 @bzero(%struct.lio_intrmod_resp* %24, i32 4)
  %26 = load %struct.lio*, %struct.lio** %4, align 8
  %27 = getelementptr inbounds %struct.lio, %struct.lio* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.lio_soft_command*, %struct.lio_soft_command** %6, align 8
  %35 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %37 = load %struct.lio_soft_command*, %struct.lio_soft_command** %6, align 8
  %38 = load i32, i32* @LIO_OPCODE_NIC, align 4
  %39 = load i32, i32* @LIO_OPCODE_NIC_INTRMOD_PARAMS, align 4
  %40 = call i32 @lio_prepare_soft_command(%struct.octeon_device* %36, %struct.lio_soft_command* %37, i32 %38, i32 %39, i32 0, i32 0, i32 0)
  %41 = load i32, i32* @lio_get_intrmod_callback, align 4
  %42 = load %struct.lio_soft_command*, %struct.lio_soft_command** %6, align 8
  %43 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.lio_soft_command*, %struct.lio_soft_command** %6, align 8
  %45 = load %struct.lio_soft_command*, %struct.lio_soft_command** %6, align 8
  %46 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %45, i32 0, i32 1
  store %struct.lio_soft_command* %44, %struct.lio_soft_command** %46, align 8
  %47 = load %struct.lio_soft_command*, %struct.lio_soft_command** %6, align 8
  %48 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %47, i32 0, i32 0
  store i32 1000, i32* %48, align 8
  %49 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %50 = load %struct.lio_soft_command*, %struct.lio_soft_command** %6, align 8
  %51 = call i32 @lio_send_soft_command(%struct.octeon_device* %49, %struct.lio_soft_command* %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @LIO_IQ_SEND_FAILED, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %19
  %56 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %57 = load %struct.lio_soft_command*, %struct.lio_soft_command** %6, align 8
  %58 = call i32 @lio_free_soft_command(%struct.octeon_device* %56, %struct.lio_soft_command* %57)
  %59 = load i32, i32* @EINVAL, align 4
  store i32 %59, i32* %3, align 4
  br label %61

60:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %55, %17
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.lio_soft_command* @lio_alloc_soft_command(%struct.octeon_device*, i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.lio_intrmod_resp*, i32) #1

declare dso_local i32 @lio_prepare_soft_command(%struct.octeon_device*, %struct.lio_soft_command*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @lio_send_soft_command(%struct.octeon_device*, %struct.lio_soft_command*) #1

declare dso_local i32 @lio_free_soft_command(%struct.octeon_device*, %struct.lio_soft_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
