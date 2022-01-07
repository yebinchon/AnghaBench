; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_handle_empr_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_handle_empr_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, %struct.i40e_hw, %struct.ixl_vsi }
%struct.i40e_hw = type { i32 }
%struct.ixl_vsi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@I40E_GLGEN_RSTAT = common dso_local global i32 0, align 4
@I40E_GLGEN_RSTAT_DEVSTATE_MASK = common dso_local global i32 0, align 4
@IXL_DBG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Reset wait count: %d\0A\00", align 1
@IXL_PF_STATE_ADAPTER_RESETTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_handle_empr_reset(%struct.ixl_pf* %0) #0 {
  %2 = alloca %struct.ixl_pf*, align 8
  %3 = alloca %struct.ixl_vsi*, align 8
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %2, align 8
  %8 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %9 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %8, i32 0, i32 2
  store %struct.ixl_vsi* %9, %struct.ixl_vsi** %3, align 8
  %10 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %11 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %10, i32 0, i32 1
  store %struct.i40e_hw* %11, %struct.i40e_hw** %4, align 8
  %12 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %13 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %23 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @ixl_prepare_for_reset(%struct.ixl_pf* %23, i32 %24)
  br label %26

26:                                               ; preds = %41, %1
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  %29 = icmp slt i32 %27, 100
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %32 = load i32, i32* @I40E_GLGEN_RSTAT, align 4
  %33 = call i32 @rd32(%struct.i40e_hw* %31, i32 %32)
  %34 = load i32, i32* @I40E_GLGEN_RSTAT_DEVSTATE_MASK, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = call i32 @i40e_msec_delay(i32 100)
  br label %41

40:                                               ; preds = %30
  br label %42

41:                                               ; preds = %38
  br label %26

42:                                               ; preds = %40, %26
  %43 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %44 = load i32, i32* @IXL_DBG_INFO, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @ixl_dbg(%struct.ixl_pf* %43, i32 %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %48 = call i32 @ixl_rebuild_hw_structs_after_reset(%struct.ixl_pf* %47)
  %49 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %50 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %49, i32 0, i32 0
  %51 = load i32, i32* @IXL_PF_STATE_ADAPTER_RESETTING, align 4
  %52 = call i32 @atomic_clear_int(i32* %50, i32 %51)
  ret void
}

declare dso_local i32 @ixl_prepare_for_reset(%struct.ixl_pf*, i32) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_msec_delay(i32) #1

declare dso_local i32 @ixl_dbg(%struct.ixl_pf*, i32, i8*, i32) #1

declare dso_local i32 @ixl_rebuild_hw_structs_after_reset(%struct.ixl_pf*) #1

declare dso_local i32 @atomic_clear_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
