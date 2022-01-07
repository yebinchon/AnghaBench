; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_sysctl.c_lio_get_fw_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_sysctl.c_lio_get_fw_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio = type { i32, i32, %struct.TYPE_6__, %struct.octeon_device* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.octeon_device = type { i32 }
%struct.lio_soft_command = type { i32, %struct.lio_soft_command*, i32, i32, i64 }
%struct.lio_fw_stats_resp = type { i32 }

@LIO_OPCODE_NIC = common dso_local global i32 0, align 4
@LIO_OPCODE_NIC_PORT_STATS = common dso_local global i32 0, align 4
@lio_fw_stats_callback = common dso_local global i32 0, align 4
@LIO_IQ_SEND_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @lio_get_fw_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_get_fw_stats(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lio*, align 8
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca %struct.lio_soft_command*, align 8
  %6 = alloca %struct.lio_fw_stats_resp*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.lio*
  store %struct.lio* %9, %struct.lio** %3, align 8
  %10 = load %struct.lio*, %struct.lio** %3, align 8
  %11 = getelementptr inbounds %struct.lio, %struct.lio* %10, i32 0, i32 3
  %12 = load %struct.octeon_device*, %struct.octeon_device** %11, align 8
  store %struct.octeon_device* %12, %struct.octeon_device** %4, align 8
  %13 = load %struct.lio*, %struct.lio** %3, align 8
  %14 = getelementptr inbounds %struct.lio, %struct.lio* %13, i32 0, i32 1
  %15 = call i64 @callout_pending(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.lio*, %struct.lio** %3, align 8
  %19 = getelementptr inbounds %struct.lio, %struct.lio* %18, i32 0, i32 1
  %20 = call i64 @callout_active(i32* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %1
  br label %79

23:                                               ; preds = %17
  %24 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %25 = call %struct.lio_soft_command* @lio_alloc_soft_command(%struct.octeon_device* %24, i32 0, i32 4, i32 0)
  store %struct.lio_soft_command* %25, %struct.lio_soft_command** %5, align 8
  %26 = load %struct.lio_soft_command*, %struct.lio_soft_command** %5, align 8
  %27 = icmp eq %struct.lio_soft_command* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %71

29:                                               ; preds = %23
  %30 = load %struct.lio_soft_command*, %struct.lio_soft_command** %5, align 8
  %31 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.lio_fw_stats_resp*
  store %struct.lio_fw_stats_resp* %33, %struct.lio_fw_stats_resp** %6, align 8
  %34 = load %struct.lio_fw_stats_resp*, %struct.lio_fw_stats_resp** %6, align 8
  %35 = call i32 @bzero(%struct.lio_fw_stats_resp* %34, i32 4)
  %36 = load %struct.lio*, %struct.lio** %3, align 8
  %37 = getelementptr inbounds %struct.lio, %struct.lio* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.lio_soft_command*, %struct.lio_soft_command** %5, align 8
  %45 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %47 = load %struct.lio_soft_command*, %struct.lio_soft_command** %5, align 8
  %48 = load i32, i32* @LIO_OPCODE_NIC, align 4
  %49 = load i32, i32* @LIO_OPCODE_NIC_PORT_STATS, align 4
  %50 = call i32 @lio_prepare_soft_command(%struct.octeon_device* %46, %struct.lio_soft_command* %47, i32 %48, i32 %49, i32 0, i32 0, i32 0)
  %51 = load i32, i32* @lio_fw_stats_callback, align 4
  %52 = load %struct.lio_soft_command*, %struct.lio_soft_command** %5, align 8
  %53 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.lio_soft_command*, %struct.lio_soft_command** %5, align 8
  %55 = load %struct.lio_soft_command*, %struct.lio_soft_command** %5, align 8
  %56 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %55, i32 0, i32 1
  store %struct.lio_soft_command* %54, %struct.lio_soft_command** %56, align 8
  %57 = load %struct.lio_soft_command*, %struct.lio_soft_command** %5, align 8
  %58 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %57, i32 0, i32 0
  store i32 500, i32* %58, align 8
  %59 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %60 = load %struct.lio_soft_command*, %struct.lio_soft_command** %5, align 8
  %61 = call i32 @lio_send_soft_command(%struct.octeon_device* %59, %struct.lio_soft_command* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @LIO_IQ_SEND_FAILED, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %29
  br label %67

66:                                               ; preds = %29
  br label %79

67:                                               ; preds = %65
  %68 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %69 = load %struct.lio_soft_command*, %struct.lio_soft_command** %5, align 8
  %70 = call i32 @lio_free_soft_command(%struct.octeon_device* %68, %struct.lio_soft_command* %69)
  br label %71

71:                                               ; preds = %67, %28
  %72 = load %struct.lio*, %struct.lio** %3, align 8
  %73 = getelementptr inbounds %struct.lio, %struct.lio* %72, i32 0, i32 1
  %74 = load %struct.lio*, %struct.lio** %3, align 8
  %75 = getelementptr inbounds %struct.lio, %struct.lio* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @lio_ms_to_ticks(i32 %76)
  %78 = call i32 @callout_schedule(i32* %73, i32 %77)
  br label %79

79:                                               ; preds = %71, %66, %22
  ret void
}

declare dso_local i64 @callout_pending(i32*) #1

declare dso_local i64 @callout_active(i32*) #1

declare dso_local %struct.lio_soft_command* @lio_alloc_soft_command(%struct.octeon_device*, i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.lio_fw_stats_resp*, i32) #1

declare dso_local i32 @lio_prepare_soft_command(%struct.octeon_device*, %struct.lio_soft_command*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @lio_send_soft_command(%struct.octeon_device*, %struct.lio_soft_command*) #1

declare dso_local i32 @lio_free_soft_command(%struct.octeon_device*, %struct.lio_soft_command*) #1

declare dso_local i32 @callout_schedule(i32*, i32) #1

declare dso_local i32 @lio_ms_to_ticks(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
