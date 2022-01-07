; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_advlock.c_nlm_client_recovery.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_advlock.c_nlm_client_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_host = type { i32 }
%struct.nlm_recovery_context = type { i32, %struct.nlm_host* }

@NLM_SYSID_CLIENT = common dso_local global i32 0, align 4
@nlm_client_recover_lock = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlm_client_recovery(%struct.nlm_host* %0) #0 {
  %2 = alloca %struct.nlm_host*, align 8
  %3 = alloca %struct.nlm_recovery_context, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nlm_host* %0, %struct.nlm_host** %2, align 8
  %6 = load i32, i32* @NLM_SYSID_CLIENT, align 4
  %7 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %8 = call i32 @nlm_host_get_sysid(%struct.nlm_host* %7)
  %9 = or i32 %6, %8
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %19, %1
  %11 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %12 = getelementptr inbounds %struct.nlm_recovery_context, %struct.nlm_recovery_context* %3, i32 0, i32 1
  store %struct.nlm_host* %11, %struct.nlm_host** %12, align 8
  %13 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %14 = call i32 @nlm_host_get_state(%struct.nlm_host* %13)
  %15 = getelementptr inbounds %struct.nlm_recovery_context, %struct.nlm_recovery_context* %3, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @nlm_client_recover_lock, align 4
  %18 = call i32 @lf_iteratelocks_sysid(i32 %16, i32 %17, %struct.nlm_recovery_context* %3)
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %10
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @ERESTART, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %10, label %23

23:                                               ; preds = %19
  ret void
}

declare dso_local i32 @nlm_host_get_sysid(%struct.nlm_host*) #1

declare dso_local i32 @nlm_host_get_state(%struct.nlm_host*) #1

declare dso_local i32 @lf_iteratelocks_sysid(i32, i32, %struct.nlm_recovery_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
