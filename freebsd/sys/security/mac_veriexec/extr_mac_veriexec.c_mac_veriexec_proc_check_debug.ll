; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_mac_veriexec.c_mac_veriexec_proc_check_debug.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_mac_veriexec.c_mac_veriexec_proc_check_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.proc = type { i32 }

@mac_veriexec_state = common dso_local global i32 0, align 4
@VERIEXEC_STATE_ENFORCE = common dso_local global i32 0, align 4
@VERIEXEC_NOTRACE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.proc*)* @mac_veriexec_proc_check_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_veriexec_proc_check_debug(%struct.ucred* %0, %struct.proc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %4, align 8
  store %struct.proc* %1, %struct.proc** %5, align 8
  %8 = load i32, i32* @mac_veriexec_state, align 4
  %9 = load i32, i32* @VERIEXEC_STATE_ENFORCE, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

13:                                               ; preds = %2
  %14 = load %struct.ucred*, %struct.ucred** %4, align 8
  %15 = load %struct.proc*, %struct.proc** %5, align 8
  %16 = call i32 @mac_veriexec_metadata_get_executable_flags(%struct.ucred* %14, %struct.proc* %15, i32* %7, i32 0)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %30

20:                                               ; preds = %13
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @VERIEXEC_NOTRACE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @EACCES, align 4
  br label %28

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %28, %19, %12
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @mac_veriexec_metadata_get_executable_flags(%struct.ucred*, %struct.proc*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
