; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_dump_is_ready.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_dump_is_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@SLI4_IF_TYPE_BE3_SKH_PF = common dso_local global i64 0, align 8
@SLI4_REG_UERR_STATUS_LO = common dso_local global i32 0, align 4
@SLI4_REG_UERR_STATUS_HI = common dso_local global i32 0, align 4
@SLI4_REG_UERR_MASK_LO = common dso_local global i32 0, align 4
@SLI4_REG_UERR_MASK_HI = common dso_local global i32 0, align 4
@SLI4_IF_TYPE_LANCER_FC_ETH = common dso_local global i64 0, align 8
@SLI4_REG_SLIPORT_STATUS = common dso_local global i32 0, align 4
@SLI4_REG_BMBX = common dso_local global i32 0, align 4
@SLI4_BMBX_RDY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"invalid iftype=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_dump_is_ready(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load i64, i64* @SLI4_IF_TYPE_BE3_SKH_PF, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = call i64 @sli_get_if_type(%struct.TYPE_5__* %12)
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = load i32, i32* @SLI4_REG_UERR_STATUS_LO, align 4
  %18 = call i32 @sli_reg_read(%struct.TYPE_5__* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = load i32, i32* @SLI4_REG_UERR_STATUS_HI, align 4
  %21 = call i32 @sli_reg_read(%struct.TYPE_5__* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = load i32, i32* @SLI4_REG_UERR_MASK_LO, align 4
  %24 = call i32 @sli_reg_read(%struct.TYPE_5__* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = load i32, i32* @SLI4_REG_UERR_MASK_HI, align 4
  %27 = call i32 @sli_reg_read(%struct.TYPE_5__* %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %9, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %15
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %10, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %15
  store i32 1, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %33
  br label %82

41:                                               ; preds = %1
  %42 = load i64, i64* @SLI4_IF_TYPE_LANCER_FC_ETH, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = call i64 @sli_get_if_type(%struct.TYPE_5__* %43)
  %45 = icmp eq i64 %42, %44
  br i1 %45, label %46, label %74

46:                                               ; preds = %41
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = load i32, i32* @SLI4_REG_SLIPORT_STATUS, align 4
  %49 = call i32 @sli_reg_read(%struct.TYPE_5__* %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %51 = load i32, i32* @SLI4_REG_BMBX, align 4
  %52 = call i32 @sli_reg_read(%struct.TYPE_5__* %50, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @SLI4_BMBX_RDY, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %46
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @SLI4_PORT_STATUS_READY(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @SLI4_PORT_STATUS_DUMP_PRESENT(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 1, i32* %4, align 4
  br label %72

66:                                               ; preds = %61
  %67 = load i32, i32* %5, align 4
  %68 = call i64 @SLI4_PORT_STATUS_FDP_PRESENT(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 2, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %66
  br label %72

72:                                               ; preds = %71, %65
  br label %73

73:                                               ; preds = %72, %57, %46
  br label %81

74:                                               ; preds = %41
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %79 = call i64 @sli_get_if_type(%struct.TYPE_5__* %78)
  %80 = call i32 @ocs_log_test(i32 %77, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %79)
  store i32 -1, i32* %2, align 4
  br label %84

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %40
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %74
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i64 @sli_get_if_type(%struct.TYPE_5__*) #1

declare dso_local i32 @sli_reg_read(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @SLI4_PORT_STATUS_READY(i32) #1

declare dso_local i64 @SLI4_PORT_STATUS_DUMP_PRESENT(i32) #1

declare dso_local i64 @SLI4_PORT_STATUS_FDP_PRESENT(i32) #1

declare dso_local i32 @ocs_log_test(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
