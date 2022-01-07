; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_mac_veriexec.c_mac_veriexec_priv_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_mac_veriexec.c_mac_veriexec_priv_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }

@mac_veriexec_state = common dso_local global i32 0, align 4
@VERIEXEC_STATE_ENFORCE = common dso_local global i32 0, align 4
@curproc = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, i32)* @mac_veriexec_priv_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_veriexec_priv_check(%struct.ucred* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @mac_veriexec_state, align 4
  %7 = load i32, i32* @VERIEXEC_STATE_ENFORCE, align 4
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %23

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %21 [
    i32 128, label %13
  ]

13:                                               ; preds = %11
  %14 = load %struct.ucred*, %struct.ucred** %4, align 8
  %15 = load i32, i32* @curproc, align 4
  %16 = call i32 @mac_veriexec_proc_is_trusted(%struct.ucred* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @EPERM, align 4
  store i32 %19, i32* %3, align 4
  br label %23

20:                                               ; preds = %13
  br label %22

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21, %20
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %18, %10
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @mac_veriexec_proc_is_trusted(%struct.ucred*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
