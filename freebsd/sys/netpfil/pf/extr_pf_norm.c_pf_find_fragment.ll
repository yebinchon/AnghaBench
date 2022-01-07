; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_norm.c_pf_find_fragment.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_norm.c_pf_find_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_fragment = type { i32 }
%struct.pf_fragment_cmp = type { i32 }
%struct.pf_frag_tree = type { i32 }

@pf_frag_tree = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i32 0, align 4
@V_pf_fragqueue = common dso_local global i32 0, align 4
@frag_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pf_fragment* (%struct.pf_fragment_cmp*, %struct.pf_frag_tree*)* @pf_find_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pf_fragment* @pf_find_fragment(%struct.pf_fragment_cmp* %0, %struct.pf_frag_tree* %1) #0 {
  %3 = alloca %struct.pf_fragment_cmp*, align 8
  %4 = alloca %struct.pf_frag_tree*, align 8
  %5 = alloca %struct.pf_fragment*, align 8
  store %struct.pf_fragment_cmp* %0, %struct.pf_fragment_cmp** %3, align 8
  store %struct.pf_frag_tree* %1, %struct.pf_frag_tree** %4, align 8
  %6 = call i32 (...) @PF_FRAG_ASSERT()
  %7 = load i32, i32* @pf_frag_tree, align 4
  %8 = load %struct.pf_frag_tree*, %struct.pf_frag_tree** %4, align 8
  %9 = load %struct.pf_fragment_cmp*, %struct.pf_fragment_cmp** %3, align 8
  %10 = bitcast %struct.pf_fragment_cmp* %9 to %struct.pf_fragment*
  %11 = call %struct.pf_fragment* @RB_FIND(i32 %7, %struct.pf_frag_tree* %8, %struct.pf_fragment* %10)
  store %struct.pf_fragment* %11, %struct.pf_fragment** %5, align 8
  %12 = load %struct.pf_fragment*, %struct.pf_fragment** %5, align 8
  %13 = icmp ne %struct.pf_fragment* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load i32, i32* @time_uptime, align 4
  %16 = load %struct.pf_fragment*, %struct.pf_fragment** %5, align 8
  %17 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.pf_fragment*, %struct.pf_fragment** %5, align 8
  %19 = load i32, i32* @frag_next, align 4
  %20 = call i32 @TAILQ_REMOVE(i32* @V_pf_fragqueue, %struct.pf_fragment* %18, i32 %19)
  %21 = load %struct.pf_fragment*, %struct.pf_fragment** %5, align 8
  %22 = load i32, i32* @frag_next, align 4
  %23 = call i32 @TAILQ_INSERT_HEAD(i32* @V_pf_fragqueue, %struct.pf_fragment* %21, i32 %22)
  br label %24

24:                                               ; preds = %14, %2
  %25 = load %struct.pf_fragment*, %struct.pf_fragment** %5, align 8
  ret %struct.pf_fragment* %25
}

declare dso_local i32 @PF_FRAG_ASSERT(...) #1

declare dso_local %struct.pf_fragment* @RB_FIND(i32, %struct.pf_frag_tree*, %struct.pf_fragment*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pf_fragment*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.pf_fragment*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
