; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_prepare_for_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_prepare_for_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, i32, i32, %struct.i40e_hw }
%struct.i40e_hw = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Shutdown LAN HMC failed with code %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Shutdown Admin queue failed with code %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixl_prepare_for_reset(%struct.ixl_pf* %0, i32 %1) #0 {
  %3 = alloca %struct.ixl_pf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %9 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %8, i32 0, i32 3
  store %struct.i40e_hw* %9, %struct.i40e_hw** %5, align 8
  %10 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %11 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %14 = call i32 @i40e_shutdown_lan_hmc(%struct.i40e_hw* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %17, %2
  %22 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %23 = call i32 @ixl_disable_intr0(%struct.i40e_hw* %22)
  %24 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %25 = call i32 @i40e_shutdown_adminq(%struct.i40e_hw* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %21
  %33 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %34 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %33, i32 0, i32 1
  %35 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %36 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %35, i32 0, i32 0
  %37 = call i32 @ixl_pf_qmgr_release(i32* %34, i32* %36)
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @i40e_shutdown_lan_hmc(%struct.i40e_hw*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @ixl_disable_intr0(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_shutdown_adminq(%struct.i40e_hw*) #1

declare dso_local i32 @ixl_pf_qmgr_release(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
