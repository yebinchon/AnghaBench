; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_dctcp.c_dctcp_post_recovery.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_dctcp.c_dctcp_post_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cc_var*)* }
%struct.cc_var = type { i32 }

@newreno_cc_algo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@t_flags = common dso_local global i32 0, align 4
@TF_ECN_PERMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cc_var*)* @dctcp_post_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dctcp_post_recovery(%struct.cc_var* %0) #0 {
  %2 = alloca %struct.cc_var*, align 8
  store %struct.cc_var* %0, %struct.cc_var** %2, align 8
  %3 = load i32 (%struct.cc_var*)*, i32 (%struct.cc_var*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @newreno_cc_algo, i32 0, i32 0), align 8
  %4 = load %struct.cc_var*, %struct.cc_var** %2, align 8
  %5 = call i32 %3(%struct.cc_var* %4)
  %6 = load %struct.cc_var*, %struct.cc_var** %2, align 8
  %7 = load i32, i32* @t_flags, align 4
  %8 = call i32 @CCV(%struct.cc_var* %6, i32 %7)
  %9 = load i32, i32* @TF_ECN_PERMIT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.cc_var*, %struct.cc_var** %2, align 8
  %14 = call i32 @dctcp_update_alpha(%struct.cc_var* %13)
  br label %15

15:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @CCV(%struct.cc_var*, i32) #1

declare dso_local i32 @dctcp_update_alpha(%struct.cc_var*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
