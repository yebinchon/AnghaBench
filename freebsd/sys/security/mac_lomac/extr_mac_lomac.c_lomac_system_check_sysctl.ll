; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_system_check_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_system_check_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_req = type { i32* }
%struct.mac_lomac = type { i32 }

@lomac_enabled = common dso_local global i32 0, align 4
@CTLFLAG_ANYBODY = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.sysctl_oid*, i8*, i32, %struct.sysctl_req*)* @lomac_system_check_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lomac_system_check_sysctl(%struct.ucred* %0, %struct.sysctl_oid* %1, i8* %2, i32 %3, %struct.sysctl_req* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.sysctl_oid*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sysctl_req*, align 8
  %12 = alloca %struct.mac_lomac*, align 8
  store %struct.ucred* %0, %struct.ucred** %7, align 8
  store %struct.sysctl_oid* %1, %struct.sysctl_oid** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.sysctl_req* %4, %struct.sysctl_req** %11, align 8
  %13 = load i32, i32* @lomac_enabled, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %40

16:                                               ; preds = %5
  %17 = load %struct.ucred*, %struct.ucred** %7, align 8
  %18 = getelementptr inbounds %struct.ucred, %struct.ucred* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.mac_lomac* @SLOT(i32 %19)
  store %struct.mac_lomac* %20, %struct.mac_lomac** %12, align 8
  %21 = load %struct.sysctl_req*, %struct.sysctl_req** %11, align 8
  %22 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %16
  %26 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %27 = getelementptr inbounds %struct.sysctl_oid, %struct.sysctl_oid* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CTLFLAG_ANYBODY, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load %struct.mac_lomac*, %struct.mac_lomac** %12, align 8
  %34 = call i64 @lomac_subject_privileged(%struct.mac_lomac* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @EPERM, align 4
  store i32 %37, i32* %6, align 4
  br label %40

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %25, %16
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %39, %36, %15
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local %struct.mac_lomac* @SLOT(i32) #1

declare dso_local i64 @lomac_subject_privileged(%struct.mac_lomac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
