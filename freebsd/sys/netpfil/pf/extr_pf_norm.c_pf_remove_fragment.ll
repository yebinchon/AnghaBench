; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_norm.c_pf_remove_fragment.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_norm.c_pf_remove_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_fragment = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"frag != NULL\00", align 1
@pf_frag_tree = common dso_local global i32 0, align 4
@V_pf_frag_tree = common dso_local global i32 0, align 4
@V_pf_fragqueue = common dso_local global i32 0, align 4
@frag_next = common dso_local global i32 0, align 4
@V_pf_frag_z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pf_fragment*)* @pf_remove_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_remove_fragment(%struct.pf_fragment* %0) #0 {
  %2 = alloca %struct.pf_fragment*, align 8
  store %struct.pf_fragment* %0, %struct.pf_fragment** %2, align 8
  %3 = call i32 (...) @PF_FRAG_ASSERT()
  %4 = load %struct.pf_fragment*, %struct.pf_fragment** %2, align 8
  %5 = call i32 @KASSERT(%struct.pf_fragment* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @pf_frag_tree, align 4
  %7 = load %struct.pf_fragment*, %struct.pf_fragment** %2, align 8
  %8 = call i32 @RB_REMOVE(i32 %6, i32* @V_pf_frag_tree, %struct.pf_fragment* %7)
  %9 = load %struct.pf_fragment*, %struct.pf_fragment** %2, align 8
  %10 = load i32, i32* @frag_next, align 4
  %11 = call i32 @TAILQ_REMOVE(i32* @V_pf_fragqueue, %struct.pf_fragment* %9, i32 %10)
  %12 = load i32, i32* @V_pf_frag_z, align 4
  %13 = load %struct.pf_fragment*, %struct.pf_fragment** %2, align 8
  %14 = call i32 @uma_zfree(i32 %12, %struct.pf_fragment* %13)
  ret void
}

declare dso_local i32 @PF_FRAG_ASSERT(...) #1

declare dso_local i32 @KASSERT(%struct.pf_fragment*, i8*) #1

declare dso_local i32 @RB_REMOVE(i32, i32*, %struct.pf_fragment*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pf_fragment*, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.pf_fragment*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
