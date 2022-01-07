; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_amrr.c_amrr_sysctlattach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_amrr.c_amrr_sysctlattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211_amrr* }
%struct.ieee80211_amrr = type { i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"amrr_rate_interval\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@amrr_sysctl_interval = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"amrr operation interval (ms)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"amrr_max_sucess_threshold\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"amrr_min_sucess_threshold\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211vap*, %struct.sysctl_ctx_list*, %struct.sysctl_oid*)* @amrr_sysctlattach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amrr_sysctlattach(%struct.ieee80211vap* %0, %struct.sysctl_ctx_list* %1, %struct.sysctl_oid* %2) #0 {
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.sysctl_ctx_list*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca %struct.ieee80211_amrr*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.sysctl_ctx_list* %1, %struct.sysctl_ctx_list** %5, align 8
  store %struct.sysctl_oid* %2, %struct.sysctl_oid** %6, align 8
  %8 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %8, i32 0, i32 0
  %10 = load %struct.ieee80211_amrr*, %struct.ieee80211_amrr** %9, align 8
  store %struct.ieee80211_amrr* %10, %struct.ieee80211_amrr** %7, align 8
  %11 = load %struct.ieee80211_amrr*, %struct.ieee80211_amrr** %7, align 8
  %12 = icmp ne %struct.ieee80211_amrr* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %41

14:                                               ; preds = %3
  %15 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %16 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %17 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %16)
  %18 = load i32, i32* @OID_AUTO, align 4
  %19 = load i32, i32* @CTLTYPE_INT, align 4
  %20 = load i32, i32* @CTLFLAG_RW, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %23 = load i32, i32* @amrr_sysctl_interval, align 4
  %24 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %15, i32 %17, i32 %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %21, %struct.ieee80211vap* %22, i32 0, i32 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %26 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %27 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %26)
  %28 = load i32, i32* @OID_AUTO, align 4
  %29 = load i32, i32* @CTLFLAG_RW, align 4
  %30 = load %struct.ieee80211_amrr*, %struct.ieee80211_amrr** %7, align 8
  %31 = getelementptr inbounds %struct.ieee80211_amrr, %struct.ieee80211_amrr* %30, i32 0, i32 1
  %32 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %25, i32 %27, i32 %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %29, i32* %31, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %33 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %34 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %35 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %34)
  %36 = load i32, i32* @OID_AUTO, align 4
  %37 = load i32, i32* @CTLFLAG_RW, align 4
  %38 = load %struct.ieee80211_amrr*, %struct.ieee80211_amrr** %7, align 8
  %39 = getelementptr inbounds %struct.ieee80211_amrr, %struct.ieee80211_amrr* %38, i32 0, i32 0
  %40 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %33, i32 %35, i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %37, i32* %39, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  br label %41

41:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.ieee80211vap*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
