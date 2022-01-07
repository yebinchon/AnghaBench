; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_sysv_msg.c_mac_sysvmsq_check_msgmsq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_sysv_msg.c_mac_sysvmsq_check_msgmsq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.msg = type { i32 }
%struct.msqid_kernel = type { i32 }

@sysvmsq_check_msgmsq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_sysvmsq_check_msgmsq(%struct.ucred* %0, %struct.msg* %1, %struct.msqid_kernel* %2) #0 {
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca %struct.msg*, align 8
  %6 = alloca %struct.msqid_kernel*, align 8
  %7 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %4, align 8
  store %struct.msg* %1, %struct.msg** %5, align 8
  store %struct.msqid_kernel* %2, %struct.msqid_kernel** %6, align 8
  %8 = load i32, i32* @sysvmsq_check_msgmsq, align 4
  %9 = load %struct.ucred*, %struct.ucred** %4, align 8
  %10 = load %struct.msg*, %struct.msg** %5, align 8
  %11 = load %struct.msg*, %struct.msg** %5, align 8
  %12 = getelementptr inbounds %struct.msg, %struct.msg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.msqid_kernel*, %struct.msqid_kernel** %6, align 8
  %15 = load %struct.msqid_kernel*, %struct.msqid_kernel** %6, align 8
  %16 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @MAC_POLICY_CHECK_NOSLEEP(i32 %8, %struct.ucred* %9, %struct.msg* %10, i32 %13, %struct.msqid_kernel* %14, i32 %17)
  %19 = load i32, i32* @sysvmsq_check_msgmsq, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.ucred*, %struct.ucred** %4, align 8
  %22 = load %struct.msg*, %struct.msg** %5, align 8
  %23 = load %struct.msqid_kernel*, %struct.msqid_kernel** %6, align 8
  %24 = call i32 @MAC_CHECK_PROBE3(i32 %19, i32 %20, %struct.ucred* %21, %struct.msg* %22, %struct.msqid_kernel* %23)
  %25 = load i32, i32* %7, align 4
  ret i32 %25
}

declare dso_local i32 @MAC_POLICY_CHECK_NOSLEEP(i32, %struct.ucred*, %struct.msg*, i32, %struct.msqid_kernel*, i32) #1

declare dso_local i32 @MAC_CHECK_PROBE3(i32, i32, %struct.ucred*, %struct.msg*, %struct.msqid_kernel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
