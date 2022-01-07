; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_dctcp.c_dctcp_after_idle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_dctcp.c_dctcp_after_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cc_var*)* }
%struct.cc_var = type { %struct.dctcp* }
%struct.dctcp = type { i32, i64, i64, i64, i32, i64, i64 }

@t_flags = common dso_local global i32 0, align 4
@TF_ECN_PERMIT = common dso_local global i32 0, align 4
@snd_nxt = common dso_local global i32 0, align 4
@V_dctcp_alpha = common dso_local global i32 0, align 4
@newreno_cc_algo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cc_var*)* @dctcp_after_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dctcp_after_idle(%struct.cc_var* %0) #0 {
  %2 = alloca %struct.cc_var*, align 8
  %3 = alloca %struct.dctcp*, align 8
  store %struct.cc_var* %0, %struct.cc_var** %2, align 8
  %4 = load %struct.cc_var*, %struct.cc_var** %2, align 8
  %5 = load i32, i32* @t_flags, align 4
  %6 = call i32 @CCV(%struct.cc_var* %4, i32 %5)
  %7 = load i32, i32* @TF_ECN_PERMIT, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %1
  %11 = load %struct.cc_var*, %struct.cc_var** %2, align 8
  %12 = getelementptr inbounds %struct.cc_var, %struct.cc_var* %11, i32 0, i32 0
  %13 = load %struct.dctcp*, %struct.dctcp** %12, align 8
  store %struct.dctcp* %13, %struct.dctcp** %3, align 8
  %14 = load %struct.dctcp*, %struct.dctcp** %3, align 8
  %15 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %14, i32 0, i32 6
  store i64 0, i64* %15, align 8
  %16 = load %struct.dctcp*, %struct.dctcp** %3, align 8
  %17 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %16, i32 0, i32 5
  store i64 0, i64* %17, align 8
  %18 = load %struct.cc_var*, %struct.cc_var** %2, align 8
  %19 = load i32, i32* @snd_nxt, align 4
  %20 = call i32 @CCV(%struct.cc_var* %18, i32 %19)
  %21 = load %struct.dctcp*, %struct.dctcp** %3, align 8
  %22 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @V_dctcp_alpha, align 4
  %24 = load %struct.dctcp*, %struct.dctcp** %3, align 8
  %25 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.dctcp*, %struct.dctcp** %3, align 8
  %27 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = load %struct.dctcp*, %struct.dctcp** %3, align 8
  %29 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.dctcp*, %struct.dctcp** %3, align 8
  %31 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %10, %1
  %33 = load i32 (%struct.cc_var*)*, i32 (%struct.cc_var*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @newreno_cc_algo, i32 0, i32 0), align 8
  %34 = load %struct.cc_var*, %struct.cc_var** %2, align 8
  %35 = call i32 %33(%struct.cc_var* %34)
  ret void
}

declare dso_local i32 @CCV(%struct.cc_var*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
