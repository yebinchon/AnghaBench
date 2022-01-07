; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_rate/onoe/extr_onoe.c_ath_rate_sysctlattach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_rate/onoe/extr_onoe.c_ath_rate_sysctlattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"rate_interval\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@ath_rateinterval = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"rate control: operation interval (ms)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"rate_raise\00", align 1
@ath_rate_raise = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"rate control: retry threshold to credit rate raise (%%)\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"rate_raise_threshold\00", align 1
@ath_rate_raise_threshold = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"rate control: # good periods before raising rate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*)* @ath_rate_sysctlattach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_rate_sysctlattach(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %5 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %7)
  store %struct.sysctl_ctx_list* %8, %struct.sysctl_ctx_list** %3, align 8
  %9 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %11)
  store %struct.sysctl_oid* %12, %struct.sysctl_oid** %4, align 8
  %13 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %14 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %15 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %14)
  %16 = load i32, i32* @OID_AUTO, align 4
  %17 = load i32, i32* @CTLFLAG_RW, align 4
  %18 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %13, i32 %15, i32 %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %17, i32* @ath_rateinterval, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %20 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %21 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %20)
  %22 = load i32, i32* @OID_AUTO, align 4
  %23 = load i32, i32* @CTLFLAG_RW, align 4
  %24 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %19, i32 %21, i32 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %23, i32* @ath_rate_raise, i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %25 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %26 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %27 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %26)
  %28 = load i32, i32* @OID_AUTO, align 4
  %29 = load i32, i32* @CTLFLAG_RW, align 4
  %30 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %25, i32 %27, i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %29, i32* @ath_rate_raise_threshold, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
