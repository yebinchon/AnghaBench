; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_ll2_establish_connection_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_ll2_establish_connection_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ll2_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@CORE_RX_ACTION_ON_ERROR_PACKET_TOO_BIG = common dso_local global i32 0, align 4
@CORE_RX_ACTION_ON_ERROR_NO_BUFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ll2_info*)* @ecore_ll2_establish_connection_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_ll2_establish_connection_rx(%struct.ecore_hwfn* %0, %struct.ecore_ll2_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ll2_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ll2_info* %1, %struct.ecore_ll2_info** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %5, align 8
  %10 = call i32 @ECORE_LL2_RX_REGISTERED(%struct.ecore_ll2_info* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %13, i32* %3, align 4
  br label %45

14:                                               ; preds = %2
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %16 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %5, align 8
  %17 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @DIRECT_REG_WR(%struct.ecore_hwfn* %15, i32 %19, i32 0)
  %21 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %5, align 8
  %22 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @ecore_ll2_get_error_choice(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @CORE_RX_ACTION_ON_ERROR_PACKET_TOO_BIG, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @SET_FIELD(i32 %27, i32 %28, i32 %29)
  %31 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %5, align 8
  %32 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @ecore_ll2_get_error_choice(i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @CORE_RX_ACTION_ON_ERROR_NO_BUFF, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @SET_FIELD(i32 %37, i32 %38, i32 %39)
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %42 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @ecore_sp_ll2_rx_queue_start(%struct.ecore_hwfn* %41, %struct.ecore_ll2_info* %42, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %14, %12
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @ECORE_LL2_RX_REGISTERED(%struct.ecore_ll2_info*) #1

declare dso_local i32 @DIRECT_REG_WR(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @ecore_ll2_get_error_choice(i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @ecore_sp_ll2_rx_queue_start(%struct.ecore_hwfn*, %struct.ecore_ll2_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
