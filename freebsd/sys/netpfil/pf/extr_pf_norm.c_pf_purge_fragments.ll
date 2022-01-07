; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_norm.c_pf_purge_fragments.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_norm.c_pf_purge_fragments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_fragment = type { i64, i32 }

@V_pf_fragqueue = common dso_local global i32 0, align 4
@pf_fragqueue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"expiring %d(%p)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pf_purge_fragments(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pf_fragment*, align 8
  store i64 %0, i64* %2, align 8
  %4 = call i32 (...) @PF_FRAG_LOCK()
  br label %5

5:                                                ; preds = %16, %1
  %6 = load i32, i32* @pf_fragqueue, align 4
  %7 = call %struct.pf_fragment* @TAILQ_LAST(i32* @V_pf_fragqueue, i32 %6)
  store %struct.pf_fragment* %7, %struct.pf_fragment** %3, align 8
  %8 = icmp ne %struct.pf_fragment* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %5
  %10 = load %struct.pf_fragment*, %struct.pf_fragment** %3, align 8
  %11 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %2, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %25

16:                                               ; preds = %9
  %17 = load %struct.pf_fragment*, %struct.pf_fragment** %3, align 8
  %18 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.pf_fragment*, %struct.pf_fragment** %3, align 8
  %21 = bitcast %struct.pf_fragment* %20 to i8*
  %22 = call i32 @DPFPRINTF(i8* %21)
  %23 = load %struct.pf_fragment*, %struct.pf_fragment** %3, align 8
  %24 = call i32 @pf_free_fragment(%struct.pf_fragment* %23)
  br label %5

25:                                               ; preds = %15, %5
  %26 = call i32 (...) @PF_FRAG_UNLOCK()
  ret void
}

declare dso_local i32 @PF_FRAG_LOCK(...) #1

declare dso_local %struct.pf_fragment* @TAILQ_LAST(i32*, i32) #1

declare dso_local i32 @DPFPRINTF(i8*) #1

declare dso_local i32 @pf_free_fragment(%struct.pf_fragment*) #1

declare dso_local i32 @PF_FRAG_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
