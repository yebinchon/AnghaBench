; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_seeotheruids/extr_mac_seeotheruids.c_seeotheruids_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_seeotheruids/extr_mac_seeotheruids.c_seeotheruids_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i64, i64 }

@seeotheruids_enabled = common dso_local global i32 0, align 4
@primarygroup_enabled = common dso_local global i64 0, align 8
@specificgid_enabled = common dso_local global i64 0, align 8
@specificgid = common dso_local global i64 0, align 8
@suser_privileged = common dso_local global i64 0, align 8
@PRIV_SEEOTHERUIDS = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.ucred*)* @seeotheruids_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seeotheruids_check(%struct.ucred* %0, %struct.ucred* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca %struct.ucred*, align 8
  store %struct.ucred* %0, %struct.ucred** %4, align 8
  store %struct.ucred* %1, %struct.ucred** %5, align 8
  %6 = load i32, i32* @seeotheruids_enabled, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

9:                                                ; preds = %2
  %10 = load i64, i64* @primarygroup_enabled, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = load %struct.ucred*, %struct.ucred** %4, align 8
  %14 = getelementptr inbounds %struct.ucred, %struct.ucred* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ucred*, %struct.ucred** %5, align 8
  %17 = getelementptr inbounds %struct.ucred, %struct.ucred* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %59

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21, %9
  %23 = load i64, i64* @specificgid_enabled, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load %struct.ucred*, %struct.ucred** %4, align 8
  %27 = getelementptr inbounds %struct.ucred, %struct.ucred* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @specificgid, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load i64, i64* @specificgid, align 8
  %33 = load %struct.ucred*, %struct.ucred** %4, align 8
  %34 = call i64 @groupmember(i64 %32, %struct.ucred* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %25
  store i32 0, i32* %3, align 4
  br label %59

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %22
  %39 = load %struct.ucred*, %struct.ucred** %4, align 8
  %40 = getelementptr inbounds %struct.ucred, %struct.ucred* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ucred*, %struct.ucred** %5, align 8
  %43 = getelementptr inbounds %struct.ucred, %struct.ucred* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %59

47:                                               ; preds = %38
  %48 = load i64, i64* @suser_privileged, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load %struct.ucred*, %struct.ucred** %4, align 8
  %52 = load i32, i32* @PRIV_SEEOTHERUIDS, align 4
  %53 = call i64 @priv_check_cred(%struct.ucred* %51, i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %59

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %47
  %58 = load i32, i32* @ESRCH, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %55, %46, %36, %20, %8
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @groupmember(i64, %struct.ucred*) #1

declare dso_local i64 @priv_check_cred(%struct.ucred*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
