; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_util.c_iwm_mvm_send_lq_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_util.c_iwm_mvm_send_lq_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32 }
%struct.iwm_lq_cmd = type { i64 }
%struct.iwm_host_cmd = type { i32, i32, i32, i32 }

@IWM_CMD_ASYNC = common dso_local global i32 0, align 4
@IWM_LQ_CMD = common dso_local global i32 0, align 4
@IWM_MVM_STATION_COUNT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwm_mvm_send_lq_cmd(%struct.iwm_softc* %0, %struct.iwm_lq_cmd* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwm_softc*, align 8
  %6 = alloca %struct.iwm_lq_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwm_host_cmd, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %5, align 8
  store %struct.iwm_lq_cmd* %1, %struct.iwm_lq_cmd** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = getelementptr inbounds %struct.iwm_host_cmd, %struct.iwm_host_cmd* %8, i32 0, i32 0
  %10 = load %struct.iwm_lq_cmd*, %struct.iwm_lq_cmd** %6, align 8
  %11 = ptrtoint %struct.iwm_lq_cmd* %10 to i32
  store i32 %11, i32* %9, align 4
  %12 = getelementptr inbounds %struct.iwm_host_cmd, %struct.iwm_host_cmd* %8, i32 0, i32 1
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @IWM_CMD_ASYNC, align 4
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi i32 [ 0, %15 ], [ %17, %16 ]
  store i32 %19, i32* %12, align 4
  %20 = getelementptr inbounds %struct.iwm_host_cmd, %struct.iwm_host_cmd* %8, i32 0, i32 2
  store i32 8, i32* %20, align 4
  %21 = getelementptr inbounds %struct.iwm_host_cmd, %struct.iwm_host_cmd* %8, i32 0, i32 3
  %22 = load i32, i32* @IWM_LQ_CMD, align 4
  store i32 %22, i32* %21, align 4
  %23 = load %struct.iwm_lq_cmd*, %struct.iwm_lq_cmd** %6, align 8
  %24 = getelementptr inbounds %struct.iwm_lq_cmd, %struct.iwm_lq_cmd* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IWM_MVM_STATION_COUNT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %4, align 4
  br label %33

30:                                               ; preds = %18
  %31 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %32 = call i32 @iwm_send_cmd(%struct.iwm_softc* %31, %struct.iwm_host_cmd* %8)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %28
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @iwm_send_cmd(%struct.iwm_softc*, %struct.iwm_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
