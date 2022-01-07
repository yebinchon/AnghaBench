; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_setup_txq_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_setup_txq_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_txqueue = type { i32, %struct.sysctl_oid_list*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.UPT1_TxStats }
%struct.UPT1_TxStats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"txq%d\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Transmit Queue\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"hstats\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Host Statistics\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"tso_packets\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"TSO packets\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"tso_bytes\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"TSO bytes\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"ucast_packets\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Unicast packets\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"unicast_bytes\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Unicast bytes\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"mcast_packets\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Multicast packets\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"mcast_bytes\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"Multicast bytes\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Errors\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"discard\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"Discards\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_txqueue*, %struct.sysctl_ctx_list*, %struct.sysctl_oid_list*)* @vmxnet3_setup_txq_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_setup_txq_sysctl(%struct.vmxnet3_txqueue* %0, %struct.sysctl_ctx_list* %1, %struct.sysctl_oid_list* %2) #0 {
  %4 = alloca %struct.vmxnet3_txqueue*, align 8
  %5 = alloca %struct.sysctl_ctx_list*, align 8
  %6 = alloca %struct.sysctl_oid_list*, align 8
  %7 = alloca %struct.sysctl_oid*, align 8
  %8 = alloca %struct.sysctl_oid*, align 8
  %9 = alloca %struct.sysctl_oid_list*, align 8
  %10 = alloca %struct.sysctl_oid_list*, align 8
  %11 = alloca %struct.UPT1_TxStats*, align 8
  %12 = alloca [16 x i8], align 16
  store %struct.vmxnet3_txqueue* %0, %struct.vmxnet3_txqueue** %4, align 8
  store %struct.sysctl_ctx_list* %1, %struct.sysctl_ctx_list** %5, align 8
  store %struct.sysctl_oid_list* %2, %struct.sysctl_oid_list** %6, align 8
  %13 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %4, align 8
  %14 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.UPT1_TxStats* %16, %struct.UPT1_TxStats** %11, align 8
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %18 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %4, align 8
  %19 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @snprintf(i8* %17, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %23 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %24 = load i32, i32* @OID_AUTO, align 4
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %26 = load i32, i32* @CTLFLAG_RD, align 4
  %27 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %22, %struct.sysctl_oid_list* %23, i32 %24, i8* %25, i32 %26, i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %27, %struct.sysctl_oid** %7, align 8
  %28 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %29 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %28)
  store %struct.sysctl_oid_list* %29, %struct.sysctl_oid_list** %9, align 8
  %30 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %4, align 8
  %31 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %30, i32 0, i32 1
  store %struct.sysctl_oid_list* %29, %struct.sysctl_oid_list** %31, align 8
  %32 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %33 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %34 = load i32, i32* @OID_AUTO, align 4
  %35 = load i32, i32* @CTLFLAG_RD, align 4
  %36 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %32, %struct.sysctl_oid_list* %33, i32 %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store %struct.sysctl_oid* %36, %struct.sysctl_oid** %8, align 8
  %37 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %38 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %37)
  store %struct.sysctl_oid_list* %38, %struct.sysctl_oid_list** %10, align 8
  %39 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %40 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %10, align 8
  %41 = load i32, i32* @OID_AUTO, align 4
  %42 = load i32, i32* @CTLFLAG_RD, align 4
  %43 = load %struct.UPT1_TxStats*, %struct.UPT1_TxStats** %11, align 8
  %44 = getelementptr inbounds %struct.UPT1_TxStats, %struct.UPT1_TxStats* %43, i32 0, i32 7
  %45 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %39, %struct.sysctl_oid_list* %40, i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %42, i32* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %46 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %47 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %10, align 8
  %48 = load i32, i32* @OID_AUTO, align 4
  %49 = load i32, i32* @CTLFLAG_RD, align 4
  %50 = load %struct.UPT1_TxStats*, %struct.UPT1_TxStats** %11, align 8
  %51 = getelementptr inbounds %struct.UPT1_TxStats, %struct.UPT1_TxStats* %50, i32 0, i32 6
  %52 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %46, %struct.sysctl_oid_list* %47, i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %49, i32* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %53 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %54 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %10, align 8
  %55 = load i32, i32* @OID_AUTO, align 4
  %56 = load i32, i32* @CTLFLAG_RD, align 4
  %57 = load %struct.UPT1_TxStats*, %struct.UPT1_TxStats** %11, align 8
  %58 = getelementptr inbounds %struct.UPT1_TxStats, %struct.UPT1_TxStats* %57, i32 0, i32 5
  %59 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %53, %struct.sysctl_oid_list* %54, i32 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %56, i32* %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %60 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %61 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %10, align 8
  %62 = load i32, i32* @OID_AUTO, align 4
  %63 = load i32, i32* @CTLFLAG_RD, align 4
  %64 = load %struct.UPT1_TxStats*, %struct.UPT1_TxStats** %11, align 8
  %65 = getelementptr inbounds %struct.UPT1_TxStats, %struct.UPT1_TxStats* %64, i32 0, i32 4
  %66 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %60, %struct.sysctl_oid_list* %61, i32 %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %63, i32* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %67 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %68 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %10, align 8
  %69 = load i32, i32* @OID_AUTO, align 4
  %70 = load i32, i32* @CTLFLAG_RD, align 4
  %71 = load %struct.UPT1_TxStats*, %struct.UPT1_TxStats** %11, align 8
  %72 = getelementptr inbounds %struct.UPT1_TxStats, %struct.UPT1_TxStats* %71, i32 0, i32 3
  %73 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %67, %struct.sysctl_oid_list* %68, i32 %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 %70, i32* %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %74 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %75 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %10, align 8
  %76 = load i32, i32* @OID_AUTO, align 4
  %77 = load i32, i32* @CTLFLAG_RD, align 4
  %78 = load %struct.UPT1_TxStats*, %struct.UPT1_TxStats** %11, align 8
  %79 = getelementptr inbounds %struct.UPT1_TxStats, %struct.UPT1_TxStats* %78, i32 0, i32 2
  %80 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %74, %struct.sysctl_oid_list* %75, i32 %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %77, i32* %79, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  %81 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %82 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %10, align 8
  %83 = load i32, i32* @OID_AUTO, align 4
  %84 = load i32, i32* @CTLFLAG_RD, align 4
  %85 = load %struct.UPT1_TxStats*, %struct.UPT1_TxStats** %11, align 8
  %86 = getelementptr inbounds %struct.UPT1_TxStats, %struct.UPT1_TxStats* %85, i32 0, i32 1
  %87 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %81, %struct.sysctl_oid_list* %82, i32 %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 %84, i32* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %88 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %89 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %10, align 8
  %90 = load i32, i32* @OID_AUTO, align 4
  %91 = load i32, i32* @CTLFLAG_RD, align 4
  %92 = load %struct.UPT1_TxStats*, %struct.UPT1_TxStats** %11, align 8
  %93 = getelementptr inbounds %struct.UPT1_TxStats, %struct.UPT1_TxStats* %92, i32 0, i32 0
  %94 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %88, %struct.sysctl_oid_list* %89, i32 %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i32 %91, i32* %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
