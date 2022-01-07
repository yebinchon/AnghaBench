; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_sysctl.c_ath_sysctl_stats_attach_rxphyerr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_sysctl.c_ath_sysctl_stats_attach_rxphyerr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"rx_phy_err\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Per-code RX PHY Errors\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.sysctl_oid_list*)* @ath_sysctl_stats_attach_rxphyerr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_sysctl_stats_attach_rxphyerr(%struct.ath_softc* %0, %struct.sysctl_oid_list* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.sysctl_oid_list*, align 8
  %5 = alloca %struct.sysctl_ctx_list*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca %struct.sysctl_oid_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [8 x i8], align 1
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.sysctl_oid_list* %1, %struct.sysctl_oid_list** %4, align 8
  %10 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %12)
  store %struct.sysctl_ctx_list* %13, %struct.sysctl_ctx_list** %5, align 8
  %14 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %16)
  store %struct.sysctl_oid* %17, %struct.sysctl_oid** %6, align 8
  %18 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %19 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %18)
  store %struct.sysctl_oid_list* %19, %struct.sysctl_oid_list** %7, align 8
  %20 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %21 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %22 = load i32, i32* @OID_AUTO, align 4
  %23 = load i32, i32* @CTLFLAG_RD, align 4
  %24 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %20, %struct.sysctl_oid_list* %21, i32 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %23, i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %24, %struct.sysctl_oid** %6, align 8
  %25 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %26 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %25)
  store %struct.sysctl_oid_list* %26, %struct.sysctl_oid_list** %7, align 8
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %47, %2
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 64
  br i1 %29, label %30, label %50

30:                                               ; preds = %27
  %31 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @snprintf(i8* %31, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %35 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %36 = load i32, i32* @OID_AUTO, align 4
  %37 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %38 = load i32, i32* @CTLFLAG_RD, align 4
  %39 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %40 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %34, %struct.sysctl_oid_list* %35, i32 %36, i8* %37, i32 %38, i32* %45, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %30
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %27

50:                                               ; preds = %27
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
