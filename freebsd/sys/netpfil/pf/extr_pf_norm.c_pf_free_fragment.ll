; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_norm.c_pf_free_fragment.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_norm.c_pf_free_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_fragment = type { i32 }
%struct.pf_frent = type { i32 }

@fr_next = common dso_local global i32 0, align 4
@V_pf_frent_z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pf_fragment*)* @pf_free_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_free_fragment(%struct.pf_fragment* %0) #0 {
  %2 = alloca %struct.pf_fragment*, align 8
  %3 = alloca %struct.pf_frent*, align 8
  store %struct.pf_fragment* %0, %struct.pf_fragment** %2, align 8
  %4 = call i32 (...) @PF_FRAG_ASSERT()
  %5 = load %struct.pf_fragment*, %struct.pf_fragment** %2, align 8
  %6 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %5, i32 0, i32 0
  %7 = call %struct.pf_frent* @TAILQ_FIRST(i32* %6)
  store %struct.pf_frent* %7, %struct.pf_frent** %3, align 8
  br label %8

8:                                                ; preds = %24, %1
  %9 = load %struct.pf_frent*, %struct.pf_frent** %3, align 8
  %10 = icmp ne %struct.pf_frent* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %8
  %12 = load %struct.pf_fragment*, %struct.pf_fragment** %2, align 8
  %13 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %12, i32 0, i32 0
  %14 = load %struct.pf_frent*, %struct.pf_frent** %3, align 8
  %15 = load i32, i32* @fr_next, align 4
  %16 = call i32 @TAILQ_REMOVE(i32* %13, %struct.pf_frent* %14, i32 %15)
  %17 = load %struct.pf_frent*, %struct.pf_frent** %3, align 8
  %18 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @m_freem(i32 %19)
  %21 = load i32, i32* @V_pf_frent_z, align 4
  %22 = load %struct.pf_frent*, %struct.pf_frent** %3, align 8
  %23 = call i32 @uma_zfree(i32 %21, %struct.pf_frent* %22)
  br label %24

24:                                               ; preds = %11
  %25 = load %struct.pf_fragment*, %struct.pf_fragment** %2, align 8
  %26 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %25, i32 0, i32 0
  %27 = call %struct.pf_frent* @TAILQ_FIRST(i32* %26)
  store %struct.pf_frent* %27, %struct.pf_frent** %3, align 8
  br label %8

28:                                               ; preds = %8
  %29 = load %struct.pf_fragment*, %struct.pf_fragment** %2, align 8
  %30 = call i32 @pf_remove_fragment(%struct.pf_fragment* %29)
  ret void
}

declare dso_local i32 @PF_FRAG_ASSERT(...) #1

declare dso_local %struct.pf_frent* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pf_frent*, i32) #1

declare dso_local i32 @m_freem(i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.pf_frent*) #1

declare dso_local i32 @pf_remove_fragment(%struct.pf_fragment*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
