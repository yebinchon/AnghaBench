; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_txrx.c_ixl_add_vsi_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_txrx.c_ixl_add_vsi_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_vsi = type { i32, %struct.sysctl_oid* }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"VSI Number\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_add_vsi_sysctls(i32 %0, %struct.ixl_vsi* %1, %struct.sysctl_ctx_list* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixl_vsi*, align 8
  %7 = alloca %struct.sysctl_ctx_list*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sysctl_oid*, align 8
  %10 = alloca %struct.sysctl_oid_list*, align 8
  %11 = alloca %struct.sysctl_oid_list*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.ixl_vsi* %1, %struct.ixl_vsi** %6, align 8
  store %struct.sysctl_ctx_list* %2, %struct.sysctl_ctx_list** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %12)
  store %struct.sysctl_oid* %13, %struct.sysctl_oid** %9, align 8
  %14 = load %struct.sysctl_oid*, %struct.sysctl_oid** %9, align 8
  %15 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %14)
  store %struct.sysctl_oid_list* %15, %struct.sysctl_oid_list** %10, align 8
  %16 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %17 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %10, align 8
  %18 = load i32, i32* @OID_AUTO, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* @CTLFLAG_RD, align 4
  %21 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %16, %struct.sysctl_oid_list* %17, i32 %18, i8* %19, i32 %20, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.ixl_vsi*, %struct.ixl_vsi** %6, align 8
  %23 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %22, i32 0, i32 1
  store %struct.sysctl_oid* %21, %struct.sysctl_oid** %23, align 8
  %24 = load %struct.ixl_vsi*, %struct.ixl_vsi** %6, align 8
  %25 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %24, i32 0, i32 1
  %26 = load %struct.sysctl_oid*, %struct.sysctl_oid** %25, align 8
  %27 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %26)
  store %struct.sysctl_oid_list* %27, %struct.sysctl_oid_list** %11, align 8
  %28 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %29 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %11, align 8
  %30 = load %struct.ixl_vsi*, %struct.ixl_vsi** %6, align 8
  %31 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %30, i32 0, i32 0
  %32 = call i32 @ixl_add_sysctls_eth_stats(%struct.sysctl_ctx_list* %28, %struct.sysctl_oid_list* %29, i32* %31)
  ret void
}

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @ixl_add_sysctls_eth_stats(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
