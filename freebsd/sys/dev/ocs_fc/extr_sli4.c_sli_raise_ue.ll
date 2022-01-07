; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_raise_ue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_raise_ue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@SLI4_IF_TYPE_BE3_SKH_PF = common dso_local global i64 0, align 8
@SLI4_REG_SW_UE_CSR1 = common dso_local global i32 0, align 4
@SLI4_REG_SW_UE_CSR2 = common dso_local global i32 0, align 4
@SLI4_SW_UE_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"invalid asic type %d\0A\00", align 1
@SLI4_IF_TYPE_LANCER_FC_ETH = common dso_local global i64 0, align 8
@SLI4_REG_SLIPORT_CONTROL = common dso_local global i32 0, align 4
@SLI4_SLIPORT_CONTROL_FDD = common dso_local global i32 0, align 4
@SLI4_SLIPORT_CONTROL_IP = common dso_local global i32 0, align 4
@SLI4_PHYDEV_CONTROL_FRST = common dso_local global i32 0, align 4
@SLI4_PHYDEV_CONTROL_DD = common dso_local global i32 0, align 4
@SLI4_REG_PHYSDEV_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid iftype=%d\0A\00", align 1
@FDD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_raise_ue(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* @SLI4_IF_TYPE_BE3_SKH_PF, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = call i64 @sli_get_if_type(%struct.TYPE_6__* %9)
  %11 = icmp eq i64 %8, %10
  br i1 %11, label %12, label %43

12:                                               ; preds = %2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = call i64 @sli_get_asic_type(%struct.TYPE_6__* %13)
  switch i64 %14, label %35 [
    i64 129, label %15
    i64 128, label %22
  ]

15:                                               ; preds = %12
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = load i32, i32* @SLI4_REG_SW_UE_CSR1, align 4
  %18 = call i32 @sli_reg_write(%struct.TYPE_6__* %16, i32 %17, i32 -1)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = load i32, i32* @SLI4_REG_SW_UE_CSR2, align 4
  %21 = call i32 @sli_reg_write(%struct.TYPE_6__* %19, i32 %20, i32 0)
  br label %42

22:                                               ; preds = %12
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SLI4_SW_UE_REG, align 4
  %27 = call i32 @ocs_config_read32(i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SLI4_SW_UE_REG, align 4
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, 16777216
  %34 = call i32 @ocs_config_write32(i32 %30, i32 %31, i32 %33)
  br label %42

35:                                               ; preds = %12
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = call i64 @sli_get_asic_type(%struct.TYPE_6__* %39)
  %41 = call i32 @ocs_log_test(i32 %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %40)
  store i32 -1, i32* %3, align 4
  br label %81

42:                                               ; preds = %22, %15
  br label %80

43:                                               ; preds = %2
  %44 = load i64, i64* @SLI4_IF_TYPE_LANCER_FC_ETH, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = call i64 @sli_get_if_type(%struct.TYPE_6__* %45)
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %48, label %72

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = load i32, i32* @SLI4_REG_SLIPORT_CONTROL, align 4
  %54 = load i32, i32* @SLI4_SLIPORT_CONTROL_FDD, align 4
  %55 = load i32, i32* @SLI4_SLIPORT_CONTROL_IP, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @sli_reg_write(%struct.TYPE_6__* %52, i32 %53, i32 %56)
  br label %71

58:                                               ; preds = %48
  %59 = load i32, i32* @SLI4_PHYDEV_CONTROL_FRST, align 4
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* @SLI4_PHYDEV_CONTROL_DD, align 4
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %62, %58
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = load i32, i32* @SLI4_REG_PHYSDEV_CONTROL, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @sli_reg_write(%struct.TYPE_6__* %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %66, %51
  br label %79

72:                                               ; preds = %43
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = call i64 @sli_get_if_type(%struct.TYPE_6__* %76)
  %78 = call i32 @ocs_log_test(i32 %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %77)
  store i32 -1, i32* %3, align 4
  br label %81

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %42
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %72, %35
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @sli_get_if_type(%struct.TYPE_6__*) #1

declare dso_local i64 @sli_get_asic_type(%struct.TYPE_6__*) #1

declare dso_local i32 @sli_reg_write(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @ocs_config_read32(i32, i32) #1

declare dso_local i32 @ocs_config_write32(i32, i32, i32) #1

declare dso_local i32 @ocs_log_test(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
