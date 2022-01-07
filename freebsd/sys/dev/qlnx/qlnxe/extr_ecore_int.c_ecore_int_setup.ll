; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ecore_ptt = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_int_setup(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ptt*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %4, align 8
  %5 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %6 = icmp ne %struct.ecore_hwfn* %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %9 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %14 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %7, %2
  br label %31

18:                                               ; preds = %12
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %20 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %22 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @ecore_int_sb_setup(%struct.ecore_hwfn* %19, %struct.ecore_ptt* %20, i32* %24)
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %27 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %28 = call i32 @ecore_int_sb_attn_setup(%struct.ecore_hwfn* %26, %struct.ecore_ptt* %27)
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %30 = call i32 @ecore_int_sp_dpc_setup(%struct.ecore_hwfn* %29)
  br label %31

31:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @ecore_int_sb_setup(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*) #1

declare dso_local i32 @ecore_int_sb_attn_setup(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_int_sp_dpc_setup(%struct.ecore_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
