; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_fw_error_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_fw_error_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@SLI4_REG_SLIPORT_SEMAPHORE = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"error reading SLIPORT_SEMAPHORE register\0A\00", align 1
@SLI4_IF_TYPE_BE3_SKH_PF = common dso_local global i64 0, align 8
@SLI4_IF_TYPE_BE3_SKH_VF = common dso_local global i64 0, align 8
@SLI4_REG_UERR_MASK_LO = common dso_local global i32 0, align 4
@SLI4_REG_UERR_MASK_HI = common dso_local global i32 0, align 4
@SLI4_REG_UERR_STATUS_LO = common dso_local global i32 0, align 4
@SLI4_REG_UERR_STATUS_HI = common dso_local global i32 0, align 4
@SLI4_IF_TYPE_LANCER_FC_ETH = common dso_local global i64 0, align 8
@SLI4_REG_SLIPORT_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_fw_error_status(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = load i32, i32* @SLI4_REG_SLIPORT_SEMAPHORE, align 4
  %13 = call i64 @sli_reg_read(%struct.TYPE_4__* %11, i32 %12)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* @UINT32_MAX, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ocs_log_err(i32 %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %85

22:                                               ; preds = %1
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @SLI4_PORT_SEMAPHORE_IN_ERR(i64 %23)
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %83

30:                                               ; preds = %22
  %31 = load i64, i64* @SLI4_IF_TYPE_BE3_SKH_PF, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load i64, i64* @SLI4_IF_TYPE_BE3_SKH_VF, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %36, %30
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = load i32, i32* @SLI4_REG_UERR_MASK_LO, align 4
  %45 = call i64 @sli_reg_read(%struct.TYPE_4__* %43, i32 %44)
  store i64 %45, i64* %6, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = load i32, i32* @SLI4_REG_UERR_MASK_HI, align 4
  %48 = call i64 @sli_reg_read(%struct.TYPE_4__* %46, i32 %47)
  store i64 %48, i64* %7, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %50 = load i32, i32* @SLI4_REG_UERR_STATUS_LO, align 4
  %51 = call i64 @sli_reg_read(%struct.TYPE_4__* %49, i32 %50)
  store i64 %51, i64* %8, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %53 = load i32, i32* @SLI4_REG_UERR_STATUS_HI, align 4
  %54 = call i64 @sli_reg_read(%struct.TYPE_4__* %52, i32 %53)
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %8, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %42
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %9, align 8
  %62 = and i64 %60, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59, %42
  store i32 1, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %59
  br label %82

66:                                               ; preds = %36
  %67 = load i64, i64* @SLI4_IF_TYPE_LANCER_FC_ETH, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %66
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %74 = load i32, i32* @SLI4_REG_SLIPORT_STATUS, align 4
  %75 = call i64 @sli_reg_read(%struct.TYPE_4__* %73, i32 %74)
  store i64 %75, i64* %10, align 8
  %76 = load i64, i64* %10, align 8
  %77 = call i64 @SLI4_PORT_STATUS_ERROR(i64 %76)
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 1, i32 0
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %72, %66
  br label %82

82:                                               ; preds = %81, %65
  br label %83

83:                                               ; preds = %82, %22
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %17
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i64 @sli_reg_read(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @ocs_log_err(i32, i8*) #1

declare dso_local i64 @SLI4_PORT_SEMAPHORE_IN_ERR(i64) #1

declare dso_local i64 @SLI4_PORT_STATUS_ERROR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
