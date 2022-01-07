; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_state_key_clone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_state_key_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_state_key = type { i32 }

@V_pf_state_key_z = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pf_state_key* @pf_state_key_clone(%struct.pf_state_key* %0) #0 {
  %2 = alloca %struct.pf_state_key*, align 8
  %3 = alloca %struct.pf_state_key*, align 8
  %4 = alloca %struct.pf_state_key*, align 8
  store %struct.pf_state_key* %0, %struct.pf_state_key** %3, align 8
  %5 = load i32, i32* @V_pf_state_key_z, align 4
  %6 = load i32, i32* @M_NOWAIT, align 4
  %7 = call %struct.pf_state_key* @uma_zalloc(i32 %5, i32 %6)
  store %struct.pf_state_key* %7, %struct.pf_state_key** %4, align 8
  %8 = load %struct.pf_state_key*, %struct.pf_state_key** %4, align 8
  %9 = icmp eq %struct.pf_state_key* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.pf_state_key* null, %struct.pf_state_key** %2, align 8
  br label %16

11:                                               ; preds = %1
  %12 = load %struct.pf_state_key*, %struct.pf_state_key** %3, align 8
  %13 = load %struct.pf_state_key*, %struct.pf_state_key** %4, align 8
  %14 = call i32 @bcopy(%struct.pf_state_key* %12, %struct.pf_state_key* %13, i32 4)
  %15 = load %struct.pf_state_key*, %struct.pf_state_key** %4, align 8
  store %struct.pf_state_key* %15, %struct.pf_state_key** %2, align 8
  br label %16

16:                                               ; preds = %11, %10
  %17 = load %struct.pf_state_key*, %struct.pf_state_key** %2, align 8
  ret %struct.pf_state_key* %17
}

declare dso_local %struct.pf_state_key* @uma_zalloc(i32, i32) #1

declare dso_local i32 @bcopy(%struct.pf_state_key*, %struct.pf_state_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
