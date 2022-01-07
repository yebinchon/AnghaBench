; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sp_commands.c_ecore_set_hw_tunn_mode_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sp_commands.c_ecore_set_hw_tunn_mode_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_tunnel_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i64 }

@.str = private unnamed_addr constant [44 x i8] c"A0 chip: tunnel hw config is not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_tunnel_info*)* @ecore_set_hw_tunn_mode_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_set_hw_tunn_mode_port(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_tunnel_info* %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca %struct.ecore_tunnel_info*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store %struct.ecore_tunnel_info* %2, %struct.ecore_tunnel_info** %6, align 8
  %7 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %8 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @ECORE_IS_BB_A0(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %14 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %13, i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %48

15:                                               ; preds = %3
  %16 = load %struct.ecore_tunnel_info*, %struct.ecore_tunnel_info** %6, align 8
  %17 = getelementptr inbounds %struct.ecore_tunnel_info, %struct.ecore_tunnel_info* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %23 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %24 = load %struct.ecore_tunnel_info*, %struct.ecore_tunnel_info** %6, align 8
  %25 = getelementptr inbounds %struct.ecore_tunnel_info, %struct.ecore_tunnel_info* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ecore_set_vxlan_dest_port(%struct.ecore_hwfn* %22, %struct.ecore_ptt* %23, i32 %27)
  br label %29

29:                                               ; preds = %21, %15
  %30 = load %struct.ecore_tunnel_info*, %struct.ecore_tunnel_info** %6, align 8
  %31 = getelementptr inbounds %struct.ecore_tunnel_info, %struct.ecore_tunnel_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %37 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %38 = load %struct.ecore_tunnel_info*, %struct.ecore_tunnel_info** %6, align 8
  %39 = getelementptr inbounds %struct.ecore_tunnel_info, %struct.ecore_tunnel_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ecore_set_geneve_dest_port(%struct.ecore_hwfn* %36, %struct.ecore_ptt* %37, i32 %41)
  br label %43

43:                                               ; preds = %35, %29
  %44 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %45 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %46 = load %struct.ecore_tunnel_info*, %struct.ecore_tunnel_info** %6, align 8
  %47 = call i32 @ecore_set_hw_tunn_mode(%struct.ecore_hwfn* %44, %struct.ecore_ptt* %45, %struct.ecore_tunnel_info* %46)
  br label %48

48:                                               ; preds = %43, %12
  ret void
}

declare dso_local i64 @ECORE_IS_BB_A0(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @ecore_set_vxlan_dest_port(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @ecore_set_geneve_dest_port(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @ecore_set_hw_tunn_mode(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_tunnel_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
