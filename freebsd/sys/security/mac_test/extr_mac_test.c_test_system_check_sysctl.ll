; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_test/extr_mac_test.c_test_system_check_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_test/extr_mac_test.c_test_system_check_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_req = type { i32 }

@MAGIC_CRED = common dso_local global i32 0, align 4
@system_check_sysctl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.sysctl_oid*, i8*, i32, %struct.sysctl_req*)* @test_system_check_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_system_check_sysctl(%struct.ucred* %0, %struct.sysctl_oid* %1, i8* %2, i32 %3, %struct.sysctl_req* %4) #0 {
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca %struct.sysctl_oid*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sysctl_req*, align 8
  store %struct.ucred* %0, %struct.ucred** %6, align 8
  store %struct.sysctl_oid* %1, %struct.sysctl_oid** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.sysctl_req* %4, %struct.sysctl_req** %10, align 8
  %11 = load %struct.ucred*, %struct.ucred** %6, align 8
  %12 = getelementptr inbounds %struct.ucred, %struct.ucred* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MAGIC_CRED, align 4
  %15 = call i32 @LABEL_CHECK(i32 %13, i32 %14)
  %16 = load i32, i32* @system_check_sysctl, align 4
  %17 = call i32 @COUNTER_INC(i32 %16)
  ret i32 0
}

declare dso_local i32 @LABEL_CHECK(i32, i32) #1

declare dso_local i32 @COUNTER_INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
