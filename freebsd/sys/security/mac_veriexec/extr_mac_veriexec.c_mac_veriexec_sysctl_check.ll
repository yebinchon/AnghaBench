; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_mac_veriexec.c_mac_veriexec_sysctl_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_mac_veriexec.c_mac_veriexec_sysctl_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_req = type { i32 }

@mac_veriexec_state = common dso_local global i32 0, align 4
@VERIEXEC_STATE_ENFORCE = common dso_local global i32 0, align 4
@CTLFLAG_SECURE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.sysctl_oid*, i8*, i32, %struct.sysctl_req*)* @mac_veriexec_sysctl_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_veriexec_sysctl_check(%struct.ucred* %0, %struct.sysctl_oid* %1, i8* %2, i32 %3, %struct.sysctl_req* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.sysctl_oid*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sysctl_req*, align 8
  %12 = alloca %struct.sysctl_oid*, align 8
  store %struct.ucred* %0, %struct.ucred** %7, align 8
  store %struct.sysctl_oid* %1, %struct.sysctl_oid** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.sysctl_req* %4, %struct.sysctl_req** %11, align 8
  %13 = load i32, i32* @mac_veriexec_state, align 4
  %14 = load i32, i32* @VERIEXEC_STATE_ENFORCE, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %29

18:                                               ; preds = %5
  %19 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  store %struct.sysctl_oid* %19, %struct.sysctl_oid** %12, align 8
  %20 = load %struct.sysctl_oid*, %struct.sysctl_oid** %12, align 8
  %21 = getelementptr inbounds %struct.sysctl_oid, %struct.sysctl_oid* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CTLFLAG_SECURE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @EPERM, align 4
  store i32 %27, i32* %6, align 4
  br label %29

28:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %28, %26, %17
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
