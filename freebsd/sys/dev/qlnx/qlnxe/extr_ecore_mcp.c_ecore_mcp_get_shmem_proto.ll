; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_get_shmem_proto.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_get_shmem_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.public_func = type { i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@FUNC_MF_CFG_PROTOCOL_MASK = common dso_local global i32 0, align 4
@ECORE_PCI_ISCSI = common dso_local global i32 0, align 4
@ECORE_PCI_FCOE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"RoCE personality is not a valid value!\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.public_func*, %struct.ecore_ptt*, i32*)* @ecore_mcp_get_shmem_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_mcp_get_shmem_proto(%struct.ecore_hwfn* %0, %struct.public_func* %1, %struct.ecore_ptt* %2, i32* %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.public_func*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.public_func* %1, %struct.public_func** %6, align 8
  store %struct.ecore_ptt* %2, %struct.ecore_ptt** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.public_func*, %struct.public_func** %6, align 8
  %12 = getelementptr inbounds %struct.public_func, %struct.public_func* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @FUNC_MF_CFG_PROTOCOL_MASK, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %37 [
    i32 131, label %16
    i32 129, label %28
    i32 130, label %31
    i32 128, label %34
  ]

16:                                               ; preds = %4
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %18 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @ecore_mcp_get_shmem_proto_mfw(%struct.ecore_hwfn* %17, %struct.ecore_ptt* %18, i32* %19)
  %21 = load i32, i32* @ECORE_SUCCESS, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @ecore_mcp_get_shmem_proto_legacy(%struct.ecore_hwfn* %24, i32* %25)
  br label %27

27:                                               ; preds = %23, %16
  br label %39

28:                                               ; preds = %4
  %29 = load i32, i32* @ECORE_PCI_ISCSI, align 4
  %30 = load i32*, i32** %8, align 8
  store i32 %29, i32* %30, align 4
  br label %39

31:                                               ; preds = %4
  %32 = load i32, i32* @ECORE_PCI_FCOE, align 4
  %33 = load i32*, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  br label %39

34:                                               ; preds = %4
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %36 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %35, i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %4, %34
  %38 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %37, %31, %28, %27
  %40 = load i32, i32* %9, align 4
  ret i32 %40
}

declare dso_local i32 @ecore_mcp_get_shmem_proto_mfw(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*) #1

declare dso_local i32 @ecore_mcp_get_shmem_proto_legacy(%struct.ecore_hwfn*, i32*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
