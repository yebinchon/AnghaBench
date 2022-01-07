; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_system_check_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_system_check_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_req = type { i32* }
%struct.mac_biba = type { i32 }

@biba_enabled = common dso_local global i32 0, align 4
@CTLFLAG_ANYBODY = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.sysctl_oid*, i8*, i32, %struct.sysctl_req*)* @biba_system_check_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @biba_system_check_sysctl(%struct.ucred* %0, %struct.sysctl_oid* %1, i8* %2, i32 %3, %struct.sysctl_req* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.sysctl_oid*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sysctl_req*, align 8
  %12 = alloca %struct.mac_biba*, align 8
  %13 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %7, align 8
  store %struct.sysctl_oid* %1, %struct.sysctl_oid** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.sysctl_req* %4, %struct.sysctl_req** %11, align 8
  %14 = load i32, i32* @biba_enabled, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %48

17:                                               ; preds = %5
  %18 = load %struct.ucred*, %struct.ucred** %7, align 8
  %19 = getelementptr inbounds %struct.ucred, %struct.ucred* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.mac_biba* @SLOT(i32 %20)
  store %struct.mac_biba* %21, %struct.mac_biba** %12, align 8
  %22 = load %struct.sysctl_req*, %struct.sysctl_req** %11, align 8
  %23 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %47

26:                                               ; preds = %17
  %27 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %28 = getelementptr inbounds %struct.sysctl_oid, %struct.sysctl_oid* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CTLFLAG_ANYBODY, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %26
  %34 = load %struct.mac_biba*, %struct.mac_biba** %12, align 8
  %35 = call i32 @biba_subject_dominate_high(%struct.mac_biba* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @EACCES, align 4
  store i32 %38, i32* %6, align 4
  br label %48

39:                                               ; preds = %33
  %40 = load %struct.mac_biba*, %struct.mac_biba** %12, align 8
  %41 = call i32 @biba_subject_privileged(%struct.mac_biba* %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %6, align 4
  br label %48

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %26, %17
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %47, %44, %37, %16
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local %struct.mac_biba* @SLOT(i32) #1

declare dso_local i32 @biba_subject_dominate_high(%struct.mac_biba*) #1

declare dso_local i32 @biba_subject_privileged(%struct.mac_biba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
