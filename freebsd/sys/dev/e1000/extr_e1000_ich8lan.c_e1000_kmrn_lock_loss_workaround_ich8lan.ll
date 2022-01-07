; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_kmrn_lock_loss_workaround_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_kmrn_lock_loss_workaround_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.TYPE_4__ = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"e1000_kmrn_lock_loss_workaround_ich8lan\00", align 1
@E1000_SUCCESS = common dso_local global i64 0, align 8
@IGP3_KMRN_DIAG = common dso_local global i32 0, align 4
@IGP3_KMRN_DIAG_PCS_LOCK_LOSS = common dso_local global i32 0, align 4
@E1000_PHY_CTRL = common dso_local global i32 0, align 4
@E1000_PHY_CTRL_GBE_DISABLE = common dso_local global i32 0, align 4
@E1000_PHY_CTRL_NOND0A_GBE_DISABLE = common dso_local global i32 0, align 4
@E1000_ERR_PHY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_kmrn_lock_loss_workaround_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_kmrn_lock_loss_workaround_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_dev_spec_ich8lan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.e1000_dev_spec_ich8lan* %12, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %15 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %19, i64* %2, align 8
  br label %96

20:                                               ; preds = %1
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %22 = call i64 @e1000_phy_has_link_generic(%struct.e1000_hw* %21, i32 1, i32 0, i32* %9)
  store i64 %22, i64* %6, align 8
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %26, i64* %2, align 8
  br label %96

27:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %76, %27
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 10
  br i1 %30, label %31, label %79

31:                                               ; preds = %28
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %33 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %35, align 8
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %38 = bitcast %struct.e1000_hw* %37 to %struct.e1000_hw.1*
  %39 = load i32, i32* @IGP3_KMRN_DIAG, align 4
  %40 = call i64 %36(%struct.e1000_hw.1* %38, i32 %39, i32* %8)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i64, i64* %6, align 8
  store i64 %44, i64* %2, align 8
  br label %96

45:                                               ; preds = %31
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %47 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %49, align 8
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %52 = bitcast %struct.e1000_hw* %51 to %struct.e1000_hw.1*
  %53 = load i32, i32* @IGP3_KMRN_DIAG, align 4
  %54 = call i64 %50(%struct.e1000_hw.1* %52, i32 %53, i32* %8)
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %45
  %58 = load i64, i64* %6, align 8
  store i64 %58, i64* %2, align 8
  br label %96

59:                                               ; preds = %45
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @IGP3_KMRN_DIAG_PCS_LOCK_LOSS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %65, i64* %2, align 8
  br label %96

66:                                               ; preds = %59
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %68 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %70, align 8
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %73 = bitcast %struct.e1000_hw* %72 to %struct.e1000_hw.0*
  %74 = call i32 %71(%struct.e1000_hw.0* %73)
  %75 = call i32 @msec_delay_irq(i32 5)
  br label %76

76:                                               ; preds = %66
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %28

79:                                               ; preds = %28
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %81 = load i32, i32* @E1000_PHY_CTRL, align 4
  %82 = call i32 @E1000_READ_REG(%struct.e1000_hw* %80, i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* @E1000_PHY_CTRL_GBE_DISABLE, align 4
  %84 = load i32, i32* @E1000_PHY_CTRL_NOND0A_GBE_DISABLE, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* %5, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %5, align 4
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %89 = load i32, i32* @E1000_PHY_CTRL, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %88, i32 %89, i32 %90)
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %93 = call i32 @e1000_gig_downshift_workaround_ich8lan(%struct.e1000_hw* %92)
  %94 = load i64, i64* @E1000_ERR_PHY, align 8
  %95 = sub nsw i64 0, %94
  store i64 %95, i64* %2, align 8
  br label %96

96:                                               ; preds = %79, %64, %57, %43, %25, %18
  %97 = load i64, i64* %2, align 8
  ret i64 %97
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_phy_has_link_generic(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i32 @msec_delay_irq(i32) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_gig_downshift_workaround_ich8lan(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
