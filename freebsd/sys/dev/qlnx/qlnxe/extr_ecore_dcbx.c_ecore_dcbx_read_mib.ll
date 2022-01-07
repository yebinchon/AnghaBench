; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_read_mib.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_read_mib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_INVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"MIB read err, unknown mib type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32)* @ecore_dcbx_read_mib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_dcbx_read_mib(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %36 [
    i32 130, label %10
    i32 128, label %18
    i32 131, label %23
    i32 129, label %27
    i32 132, label %32
  ]

10:                                               ; preds = %3
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %12 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %13 = call i32 @ecore_dcbx_read_dscp_mib(%struct.ecore_hwfn* %11, %struct.ecore_ptt* %12)
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %15 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @ecore_dcbx_read_operational_mib(%struct.ecore_hwfn* %14, %struct.ecore_ptt* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  br label %40

18:                                               ; preds = %3
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %20 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @ecore_dcbx_read_remote_mib(%struct.ecore_hwfn* %19, %struct.ecore_ptt* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  br label %40

23:                                               ; preds = %3
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %25 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %26 = call i32 @ecore_dcbx_read_local_mib(%struct.ecore_hwfn* %24, %struct.ecore_ptt* %25)
  store i32 %26, i32* %7, align 4
  br label %40

27:                                               ; preds = %3
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %29 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ecore_dcbx_read_remote_lldp_mib(%struct.ecore_hwfn* %28, %struct.ecore_ptt* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  br label %40

32:                                               ; preds = %3
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %34 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %35 = call i32 @ecore_dcbx_read_local_lldp_mib(%struct.ecore_hwfn* %33, %struct.ecore_ptt* %34)
  store i32 %35, i32* %7, align 4
  br label %40

36:                                               ; preds = %3
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @DP_ERR(%struct.ecore_hwfn* %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %36, %32, %27, %23, %18, %10
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @ecore_dcbx_read_dscp_mib(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_dcbx_read_operational_mib(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @ecore_dcbx_read_remote_mib(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @ecore_dcbx_read_local_mib(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_dcbx_read_remote_lldp_mib(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @ecore_dcbx_read_local_lldp_mib(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
