; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_norm.c_pf_flush_fragments.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_norm.c_pf_flush_fragments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_fragment = type { i32 }

@V_pf_frent_z = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"trying to free %d frag entriess\0A\00", align 1
@V_pf_fragqueue = common dso_local global i32 0, align 4
@pf_fragqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pf_flush_fragments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_flush_fragments() #0 {
  %1 = alloca %struct.pf_fragment*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (...) @PF_FRAG_ASSERT()
  %4 = load i32, i32* @V_pf_frent_z, align 4
  %5 = call i32 @uma_zone_get_cur(i32 %4)
  %6 = mul nsw i32 %5, 9
  %7 = sdiv i32 %6, 10
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to i8*
  %11 = call i32 @DPFPRINTF(i8* %10)
  br label %12

12:                                               ; preds = %26, %0
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @V_pf_frent_z, align 4
  %15 = call i32 @uma_zone_get_cur(i32 %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load i32, i32* @pf_fragqueue, align 4
  %19 = call %struct.pf_fragment* @TAILQ_LAST(i32* @V_pf_fragqueue, i32 %18)
  store %struct.pf_fragment* %19, %struct.pf_fragment** %1, align 8
  %20 = load %struct.pf_fragment*, %struct.pf_fragment** %1, align 8
  %21 = icmp ne %struct.pf_fragment* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.pf_fragment*, %struct.pf_fragment** %1, align 8
  %24 = call i32 @pf_free_fragment(%struct.pf_fragment* %23)
  br label %26

25:                                               ; preds = %17
  br label %27

26:                                               ; preds = %22
  br label %12

27:                                               ; preds = %25, %12
  ret void
}

declare dso_local i32 @PF_FRAG_ASSERT(...) #1

declare dso_local i32 @uma_zone_get_cur(i32) #1

declare dso_local i32 @DPFPRINTF(i8*) #1

declare dso_local %struct.pf_fragment* @TAILQ_LAST(i32*, i32) #1

declare dso_local i32 @pf_free_fragment(%struct.pf_fragment*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
