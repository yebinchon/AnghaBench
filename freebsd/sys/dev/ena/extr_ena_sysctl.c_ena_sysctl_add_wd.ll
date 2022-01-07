; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena_sysctl.c_ena_sysctl_add_wd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena_sysctl.c_ena_sysctl_add_wd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, i32, i32, i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"wd_active\00", align 1
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Watchdog is active\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"keep_alive_timeout\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Timeout for Keep Alive messages\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"missing_tx_timeout\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Timeout for TX completion\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"missing_tx_max_queues\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Number of TX queues to check per run\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"missing_tx_threshold\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Max number of timeouted packets\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_adapter*)* @ena_sysctl_add_wd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_sysctl_add_wd(%struct.ena_adapter* %0) #0 {
  %2 = alloca %struct.ena_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca %struct.sysctl_oid_list*, align 8
  store %struct.ena_adapter* %0, %struct.ena_adapter** %2, align 8
  %7 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %10)
  store %struct.sysctl_ctx_list* %11, %struct.sysctl_ctx_list** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %12)
  store %struct.sysctl_oid* %13, %struct.sysctl_oid** %5, align 8
  %14 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %15 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %14)
  store %struct.sysctl_oid_list* %15, %struct.sysctl_oid_list** %6, align 8
  %16 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %17 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %18 = load i32, i32* @OID_AUTO, align 4
  %19 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %20 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %20, i32 0, i32 4
  %22 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %16, %struct.sysctl_oid_list* %17, i32 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %19, i32* %21, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %24 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %25 = load i32, i32* @OID_AUTO, align 4
  %26 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %27 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %27, i32 0, i32 3
  %29 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %23, %struct.sysctl_oid_list* %24, i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %26, i32* %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %30 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %31 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %32 = load i32, i32* @OID_AUTO, align 4
  %33 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %34 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %34, i32 0, i32 2
  %36 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %30, %struct.sysctl_oid_list* %31, i32 %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %33, i32* %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %37 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %38 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %39 = load i32, i32* @OID_AUTO, align 4
  %40 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %41 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %41, i32 0, i32 1
  %43 = call i32 @SYSCTL_ADD_U32(%struct.sysctl_ctx_list* %37, %struct.sysctl_oid_list* %38, i32 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %40, i32* %42, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %44 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %45 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %46 = load i32, i32* @OID_AUTO, align 4
  %47 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %48 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %48, i32 0, i32 0
  %50 = call i32 @SYSCTL_ADD_U32(%struct.sysctl_ctx_list* %44, %struct.sysctl_oid_list* %45, i32 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %47, i32* %49, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_U32(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
