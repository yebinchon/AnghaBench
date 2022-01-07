; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_norm.c_pf_create_fragment.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_norm.c_pf_create_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_frent = type { i32 }

@V_pf_frent_z = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@PFRES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pf_frent* (i32*)* @pf_create_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pf_frent* @pf_create_fragment(i32* %0) #0 {
  %2 = alloca %struct.pf_frent*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.pf_frent*, align 8
  store i32* %0, i32** %3, align 8
  %5 = call i32 (...) @PF_FRAG_ASSERT()
  %6 = load i32, i32* @V_pf_frent_z, align 4
  %7 = load i32, i32* @M_NOWAIT, align 4
  %8 = call %struct.pf_frent* @uma_zalloc(i32 %6, i32 %7)
  store %struct.pf_frent* %8, %struct.pf_frent** %4, align 8
  %9 = load %struct.pf_frent*, %struct.pf_frent** %4, align 8
  %10 = icmp eq %struct.pf_frent* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = call i32 (...) @pf_flush_fragments()
  %13 = load i32, i32* @V_pf_frent_z, align 4
  %14 = load i32, i32* @M_NOWAIT, align 4
  %15 = call %struct.pf_frent* @uma_zalloc(i32 %13, i32 %14)
  store %struct.pf_frent* %15, %struct.pf_frent** %4, align 8
  %16 = load %struct.pf_frent*, %struct.pf_frent** %4, align 8
  %17 = icmp eq %struct.pf_frent* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @PFRES_MEMORY, align 4
  %21 = call i32 @REASON_SET(i32* %19, i32 %20)
  store %struct.pf_frent* null, %struct.pf_frent** %2, align 8
  br label %25

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.pf_frent*, %struct.pf_frent** %4, align 8
  store %struct.pf_frent* %24, %struct.pf_frent** %2, align 8
  br label %25

25:                                               ; preds = %23, %18
  %26 = load %struct.pf_frent*, %struct.pf_frent** %2, align 8
  ret %struct.pf_frent* %26
}

declare dso_local i32 @PF_FRAG_ASSERT(...) #1

declare dso_local %struct.pf_frent* @uma_zalloc(i32, i32) #1

declare dso_local i32 @pf_flush_fragments(...) #1

declare dso_local i32 @REASON_SET(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
