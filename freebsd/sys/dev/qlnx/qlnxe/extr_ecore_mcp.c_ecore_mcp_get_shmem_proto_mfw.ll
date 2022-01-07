; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_get_shmem_proto_mfw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_get_shmem_proto_mfw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@DRV_MSG_CODE_GET_PF_RDMA_PROTOCOL = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@FW_MSG_CODE_OK = common dso_local global i64 0, align 8
@ECORE_MSG_IFUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"MFW lacks support for command; Returns %08x\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_PCI_ETH = common dso_local global i32 0, align 4
@ECORE_PCI_ETH_ROCE = common dso_local global i32 0, align 4
@ECORE_PCI_ETH_IWARP = common dso_local global i32 0, align 4
@ECORE_PCI_ETH_RDMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"MFW answers GET_PF_RDMA_PROTOCOL but param is %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"According to capabilities, L2 personality is %08x [resp %08x param %08x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*)* @ecore_mcp_get_shmem_proto_mfw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_mcp_get_shmem_proto_mfw(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %12 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %13 = load i32, i32* @DRV_MSG_CODE_GET_PF_RDMA_PROTOCOL, align 4
  %14 = call i32 @ecore_mcp_cmd(%struct.ecore_hwfn* %11, %struct.ecore_ptt* %12, i32 %13, i32 0, i64* %8, i64* %9)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @ECORE_SUCCESS, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %4, align 4
  br label %59

20:                                               ; preds = %3
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @FW_MSG_CODE_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %26 = load i32, i32* @ECORE_MSG_IFUP, align 4
  %27 = load i64, i64* %8, align 8
  %28 = call i32 (%struct.ecore_hwfn*, i32, i8*, i64, ...) @DP_VERBOSE(%struct.ecore_hwfn* %25, i32 %26, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %29, i32* %4, align 4
  br label %59

30:                                               ; preds = %20
  %31 = load i64, i64* %9, align 8
  switch i64 %31, label %44 [
    i64 129, label %32
    i64 128, label %35
    i64 130, label %38
    i64 131, label %41
  ]

32:                                               ; preds = %30
  %33 = load i32, i32* @ECORE_PCI_ETH, align 4
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  br label %49

35:                                               ; preds = %30
  %36 = load i32, i32* @ECORE_PCI_ETH_ROCE, align 4
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  br label %49

38:                                               ; preds = %30
  %39 = load i32, i32* @ECORE_PCI_ETH_IWARP, align 4
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  br label %49

41:                                               ; preds = %30
  %42 = load i32, i32* @ECORE_PCI_ETH_RDMA, align 4
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  br label %49

44:                                               ; preds = %30
  %45 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %45, i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  %48 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %48, i32* %4, align 4
  br label %59

49:                                               ; preds = %41, %38, %35, %32
  %50 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %51 = load i32, i32* @ECORE_MSG_IFUP, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %52, align 4
  %54 = zext i32 %53 to i64
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i32 (%struct.ecore_hwfn*, i32, i8*, i64, ...) @DP_VERBOSE(%struct.ecore_hwfn* %50, i32 %51, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i64 %54, i64 %55, i64 %56)
  %58 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %49, %44, %24, %18
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @ecore_mcp_cmd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i64*, i64*) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i64, ...) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
