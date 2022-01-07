; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_add_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_add_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i32, i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"forced_collapse\00", align 1
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"Number of fragmented TX buffers of a frame allowed before forced collapsing\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"msi\00", align 1
@CTLFLAG_RDTUN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"Enable MSI\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"forced_udpcsum\00", align 1
@.str.5 = private unnamed_addr constant [84 x i8] c"Enable UDP checksum offloading even if controller can generate UDP checksum value 0\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@CTLTYPE_INT = common dso_local global i32 0, align 4
@bge_sysctl_ape_read = common dso_local global i32 0, align 4
@bge_sysctl_debug_info = common dso_local global i32 0, align 4
@bge_sysctl_mem_read = common dso_local global i32 0, align 4
@bge_sysctl_reg_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bge_softc*)* @bge_add_sysctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bge_add_sysctls(%struct.bge_softc* %0) #0 {
  %2 = alloca %struct.bge_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid_list*, align 8
  %5 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %2, align 8
  %6 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %7 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %8)
  store %struct.sysctl_ctx_list* %9, %struct.sysctl_ctx_list** %3, align 8
  %10 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %11 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @device_get_sysctl_tree(i32 %12)
  %14 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32 %13)
  store %struct.sysctl_oid_list* %14, %struct.sysctl_oid_list** %4, align 8
  %15 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %16 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @device_get_unit(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %20 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %22 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %23 = load i32, i32* @OID_AUTO, align 4
  %24 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %25 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %26 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %25, i32 0, i32 0
  %27 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %21, %struct.sysctl_oid_list* %22, i32 %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %24, i32* %26, i32 0, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %29 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %31 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %32 = load i32, i32* @OID_AUTO, align 4
  %33 = load i32, i32* @CTLFLAG_RDTUN, align 4
  %34 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %35 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %34, i32 0, i32 1
  %36 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %30, %struct.sysctl_oid_list* %31, i32 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %33, i32* %35, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %37 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %38 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %37, i32 0, i32 2
  store i32 0, i32* %38, align 4
  %39 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %40 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %41 = load i32, i32* @OID_AUTO, align 4
  %42 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %43 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %44 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %43, i32 0, i32 2
  %45 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %39, %struct.sysctl_oid_list* %40, i32 %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %42, i32* %44, i32 0, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.5, i64 0, i64 0))
  %46 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %47 = call i64 @BGE_IS_5705_PLUS(%struct.bge_softc* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %1
  %50 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %51 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %52 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %53 = call i32 @bge_add_sysctl_stats_regs(%struct.bge_softc* %50, %struct.sysctl_ctx_list* %51, %struct.sysctl_oid_list* %52)
  br label %59

54:                                               ; preds = %1
  %55 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %56 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %57 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %58 = call i32 @bge_add_sysctl_stats(%struct.bge_softc* %55, %struct.sysctl_ctx_list* %56, %struct.sysctl_oid_list* %57)
  br label %59

59:                                               ; preds = %54, %49
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i64 @BGE_IS_5705_PLUS(%struct.bge_softc*) #1

declare dso_local i32 @bge_add_sysctl_stats_regs(%struct.bge_softc*, %struct.sysctl_ctx_list*, %struct.sysctl_oid_list*) #1

declare dso_local i32 @bge_add_sysctl_stats(%struct.bge_softc*, %struct.sysctl_ctx_list*, %struct.sysctl_oid_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
