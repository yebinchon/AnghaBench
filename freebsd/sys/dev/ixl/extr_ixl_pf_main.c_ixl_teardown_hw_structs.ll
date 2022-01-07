; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_teardown_hw_structs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_teardown_hw_structs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, i32, i32, %struct.i40e_hw }
%struct.i40e_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [43 x i8] c"init: LAN HMC shutdown failure; status %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"init: Admin Queue shutdown failure; status %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixl_teardown_hw_structs(%struct.ixl_pf* %0) #0 {
  %2 = alloca %struct.ixl_pf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %7 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %6, i32 0, i32 3
  store %struct.i40e_hw* %7, %struct.i40e_hw** %4, align 8
  %8 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %9 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %12 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %18 = call i32 @i40e_shutdown_lan_hmc(%struct.i40e_hw* %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @i40e_stat_str(%struct.i40e_hw* %23, i32 %24)
  %26 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %47

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %30 = call i32 @ixl_disable_intr0(%struct.i40e_hw* %29)
  %31 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %32 = call i32 @i40e_shutdown_adminq(%struct.i40e_hw* %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @i40e_stat_str(%struct.i40e_hw* %37, i32 %38)
  %40 = call i32 @device_printf(i32 %36, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %35, %28
  %42 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %43 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %42, i32 0, i32 1
  %44 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %45 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %44, i32 0, i32 0
  %46 = call i32 @ixl_pf_qmgr_release(i32* %43, i32* %45)
  br label %47

47:                                               ; preds = %41, %21
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @i40e_shutdown_lan_hmc(%struct.i40e_hw*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @i40e_stat_str(%struct.i40e_hw*, i32) #1

declare dso_local i32 @ixl_disable_intr0(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_shutdown_adminq(%struct.i40e_hw*) #1

declare dso_local i32 @ixl_pf_qmgr_release(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
