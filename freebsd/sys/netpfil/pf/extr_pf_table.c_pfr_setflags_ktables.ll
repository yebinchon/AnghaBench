; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_setflags_ktables.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_setflags_ktables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_ktableworkq = type { i32 }
%struct.pfr_ktable = type { i32 }

@pfrkt_workq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pfr_ktableworkq*)* @pfr_setflags_ktables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfr_setflags_ktables(%struct.pfr_ktableworkq* %0) #0 {
  %2 = alloca %struct.pfr_ktableworkq*, align 8
  %3 = alloca %struct.pfr_ktable*, align 8
  %4 = alloca %struct.pfr_ktable*, align 8
  store %struct.pfr_ktableworkq* %0, %struct.pfr_ktableworkq** %2, align 8
  %5 = load %struct.pfr_ktableworkq*, %struct.pfr_ktableworkq** %2, align 8
  %6 = call %struct.pfr_ktable* @SLIST_FIRST(%struct.pfr_ktableworkq* %5)
  store %struct.pfr_ktable* %6, %struct.pfr_ktable** %3, align 8
  br label %7

7:                                                ; preds = %19, %1
  %8 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %9 = icmp ne %struct.pfr_ktable* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %7
  %11 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %12 = load i32, i32* @pfrkt_workq, align 4
  %13 = call %struct.pfr_ktable* @SLIST_NEXT(%struct.pfr_ktable* %11, i32 %12)
  store %struct.pfr_ktable* %13, %struct.pfr_ktable** %4, align 8
  %14 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %15 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %16 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pfr_setflags_ktable(%struct.pfr_ktable* %14, i32 %17)
  br label %19

19:                                               ; preds = %10
  %20 = load %struct.pfr_ktable*, %struct.pfr_ktable** %4, align 8
  store %struct.pfr_ktable* %20, %struct.pfr_ktable** %3, align 8
  br label %7

21:                                               ; preds = %7
  ret void
}

declare dso_local %struct.pfr_ktable* @SLIST_FIRST(%struct.pfr_ktableworkq*) #1

declare dso_local %struct.pfr_ktable* @SLIST_NEXT(%struct.pfr_ktable*, i32) #1

declare dso_local i32 @pfr_setflags_ktable(%struct.pfr_ktable*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
