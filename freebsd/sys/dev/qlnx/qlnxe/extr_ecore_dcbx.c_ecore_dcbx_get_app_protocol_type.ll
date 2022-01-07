; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_get_app_protocol_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_get_app_protocol_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }

@DCBX_PROTOCOL_FCOE = common dso_local global i32 0, align 4
@DCBX_PROTOCOL_ROCE = common dso_local global i32 0, align 4
@DCBX_PROTOCOL_ISCSI = common dso_local global i32 0, align 4
@DCBX_PROTOCOL_ETH = common dso_local global i32 0, align 4
@DCBX_PROTOCOL_ROCE_V2 = common dso_local global i32 0, align 4
@DCBX_PROTOCOL_IWARP = common dso_local global i32 0, align 4
@DCBX_MAX_PROTOCOL_TYPE = common dso_local global i32 0, align 4
@ECORE_MSG_DCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"No action required, App TLV entry = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, i32, i32, i32*, i32)* @ecore_dcbx_get_app_protocol_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_dcbx_get_app_protocol_type(%struct.ecore_hwfn* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %11, align 4
  %15 = call i64 @ecore_dcbx_fcoe_tlv(i32 %12, i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @DCBX_PROTOCOL_FCOE, align 4
  %19 = load i32*, i32** %10, align 8
  store i32 %18, i32* %19, align 4
  br label %78

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i64 @ecore_dcbx_roce_tlv(i32 %21, i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @DCBX_PROTOCOL_ROCE, align 4
  %28 = load i32*, i32** %10, align 8
  store i32 %27, i32* %28, align 4
  br label %77

29:                                               ; preds = %20
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i64 @ecore_dcbx_iscsi_tlv(i32 %30, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @DCBX_PROTOCOL_ISCSI, align 4
  %37 = load i32*, i32** %10, align 8
  store i32 %36, i32* %37, align 4
  br label %76

38:                                               ; preds = %29
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i64 @ecore_dcbx_default_tlv(i32 %39, i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @DCBX_PROTOCOL_ETH, align 4
  %46 = load i32*, i32** %10, align 8
  store i32 %45, i32* %46, align 4
  br label %75

47:                                               ; preds = %38
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i64 @ecore_dcbx_roce_v2_tlv(i32 %48, i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @DCBX_PROTOCOL_ROCE_V2, align 4
  %55 = load i32*, i32** %10, align 8
  store i32 %54, i32* %55, align 4
  br label %74

56:                                               ; preds = %47
  %57 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i64 @ecore_dcbx_iwarp_tlv(%struct.ecore_hwfn* %57, i32 %58, i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* @DCBX_PROTOCOL_IWARP, align 4
  %65 = load i32*, i32** %10, align 8
  store i32 %64, i32* %65, align 4
  br label %73

66:                                               ; preds = %56
  %67 = load i32, i32* @DCBX_MAX_PROTOCOL_TYPE, align 4
  %68 = load i32*, i32** %10, align 8
  store i32 %67, i32* %68, align 4
  %69 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %70 = load i32, i32* @ECORE_MSG_DCB, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %69, i32 %70, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %71)
  store i32 0, i32* %6, align 4
  br label %79

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73, %53
  br label %75

75:                                               ; preds = %74, %44
  br label %76

76:                                               ; preds = %75, %35
  br label %77

77:                                               ; preds = %76, %26
  br label %78

78:                                               ; preds = %77, %17
  store i32 1, i32* %6, align 4
  br label %79

79:                                               ; preds = %78, %66
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i64 @ecore_dcbx_fcoe_tlv(i32, i32, i32) #1

declare dso_local i64 @ecore_dcbx_roce_tlv(i32, i32, i32) #1

declare dso_local i64 @ecore_dcbx_iscsi_tlv(i32, i32, i32) #1

declare dso_local i64 @ecore_dcbx_default_tlv(i32, i32, i32) #1

declare dso_local i64 @ecore_dcbx_roce_v2_tlv(i32, i32, i32) #1

declare dso_local i64 @ecore_dcbx_iwarp_tlv(%struct.ecore_hwfn*, i32, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
