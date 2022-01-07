; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_newreno.c_newreno_malloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_newreno.c_newreno_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.newreno = type { i32, i32 }
%struct.cc_var = type { %struct.newreno* }

@M_NEWRENO = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@V_newreno_beta = common dso_local global i32 0, align 4
@V_newreno_beta_ecn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.newreno* (%struct.cc_var*)* @newreno_malloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.newreno* @newreno_malloc(%struct.cc_var* %0) #0 {
  %2 = alloca %struct.cc_var*, align 8
  %3 = alloca %struct.newreno*, align 8
  store %struct.cc_var* %0, %struct.cc_var** %2, align 8
  %4 = load i32, i32* @M_NEWRENO, align 4
  %5 = load i32, i32* @M_NOWAIT, align 4
  %6 = call %struct.newreno* @malloc(i32 8, i32 %4, i32 %5)
  store %struct.newreno* %6, %struct.newreno** %3, align 8
  %7 = load %struct.newreno*, %struct.newreno** %3, align 8
  %8 = icmp ne %struct.newreno* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load i32, i32* @V_newreno_beta, align 4
  %11 = load %struct.newreno*, %struct.newreno** %3, align 8
  %12 = getelementptr inbounds %struct.newreno, %struct.newreno* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @V_newreno_beta_ecn, align 4
  %14 = load %struct.newreno*, %struct.newreno** %3, align 8
  %15 = getelementptr inbounds %struct.newreno, %struct.newreno* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.newreno*, %struct.newreno** %3, align 8
  %17 = load %struct.cc_var*, %struct.cc_var** %2, align 8
  %18 = getelementptr inbounds %struct.cc_var, %struct.cc_var* %17, i32 0, i32 0
  store %struct.newreno* %16, %struct.newreno** %18, align 8
  br label %19

19:                                               ; preds = %9, %1
  %20 = load %struct.newreno*, %struct.newreno** %3, align 8
  ret %struct.newreno* %20
}

declare dso_local %struct.newreno* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
