; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_sm_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_sm_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_sm_status = type { i32, i32, i32 }
%struct.nlm_host = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"nlm_sm_notify(): mon_name = %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlm_sm_notify(%struct.nlm_sm_status* %0) #0 {
  %2 = alloca %struct.nlm_sm_status*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlm_host*, align 8
  store %struct.nlm_sm_status* %0, %struct.nlm_sm_status** %2, align 8
  %5 = load %struct.nlm_sm_status*, %struct.nlm_sm_status** %2, align 8
  %6 = getelementptr inbounds %struct.nlm_sm_status, %struct.nlm_sm_status* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @NLM_DEBUG(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.nlm_sm_status*, %struct.nlm_sm_status** %2, align 8
  %10 = getelementptr inbounds %struct.nlm_sm_status, %struct.nlm_sm_status* %9, i32 0, i32 1
  %11 = call i32 @memcpy(i32* %3, i32* %10, i32 4)
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.nlm_host* @nlm_find_host_by_sysid(i32 %12)
  store %struct.nlm_host* %13, %struct.nlm_host** %4, align 8
  %14 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %15 = icmp ne %struct.nlm_host* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %18 = load %struct.nlm_sm_status*, %struct.nlm_sm_status** %2, align 8
  %19 = getelementptr inbounds %struct.nlm_sm_status, %struct.nlm_sm_status* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @nlm_host_notify(%struct.nlm_host* %17, i32 %20)
  %22 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %23 = call i32 @nlm_host_release(%struct.nlm_host* %22)
  br label %24

24:                                               ; preds = %16, %1
  ret void
}

declare dso_local i32 @NLM_DEBUG(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.nlm_host* @nlm_find_host_by_sysid(i32) #1

declare dso_local i32 @nlm_host_notify(%struct.nlm_host*, i32) #1

declare dso_local i32 @nlm_host_release(%struct.nlm_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
