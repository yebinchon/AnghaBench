; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_grc_attn_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_grc_attn_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, i32 }

@GRC_REG_TIMEOUT_ATTN_ACCESS_VALID = common dso_local global i32 0, align 4
@ECORE_GRC_ATTENTION_VALID_BIT = common dso_local global i32 0, align 4
@GRC_REG_TIMEOUT_ATTN_ACCESS_DATA_0 = common dso_local global i32 0, align 4
@GRC_REG_TIMEOUT_ATTN_ACCESS_DATA_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"GRC timeout [%08x:%08x] - %s Address [%08x] [Master %s] [PF: %02x %s %02x]\0A\00", align 1
@ECORE_GRC_ATTENTION_RDWR_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"Write to\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Read from\00", align 1
@ECORE_GRC_ATTENTION_ADDRESS_MASK = common dso_local global i32 0, align 4
@ECORE_GRC_ATTENTION_MASTER_MASK = common dso_local global i32 0, align 4
@ECORE_GRC_ATTENTION_MASTER_SHIFT = common dso_local global i32 0, align 4
@ECORE_GRC_ATTENTION_PF_MASK = common dso_local global i32 0, align 4
@ECORE_GRC_ATTENTION_PRIV_MASK = common dso_local global i32 0, align 4
@ECORE_GRC_ATTENTION_PRIV_SHIFT = common dso_local global i32 0, align 4
@ECORE_GRC_ATTENTION_PRIV_VF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"VF\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"(Irrelevant:)\00", align 1
@ECORE_GRC_ATTENTION_VF_MASK = common dso_local global i32 0, align 4
@ECORE_GRC_ATTENTION_VF_SHIFT = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*)* @ecore_grc_attn_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_grc_attn_cb(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca %struct.ecore_hwfn*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %2, align 8
  %5 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %6 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %7 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @GRC_REG_TIMEOUT_ATTN_ACCESS_VALID, align 4
  %10 = call i32 @ecore_rd(%struct.ecore_hwfn* %5, i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @ECORE_GRC_ATTENTION_VALID_BIT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %68

16:                                               ; preds = %1
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %19 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GRC_REG_TIMEOUT_ATTN_ACCESS_DATA_0, align 4
  %22 = call i32 @ecore_rd(%struct.ecore_hwfn* %17, i32 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %25 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GRC_REG_TIMEOUT_ATTN_ACCESS_DATA_1, align 4
  %28 = call i32 @ecore_rd(%struct.ecore_hwfn* %23, i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %30 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @ECORE_GRC_ATTENTION_RDWR_BIT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @ECORE_GRC_ATTENTION_ADDRESS_MASK, align 4
  %42 = and i32 %40, %41
  %43 = shl i32 %42, 2
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @ECORE_GRC_ATTENTION_MASTER_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @ECORE_GRC_ATTENTION_MASTER_SHIFT, align 4
  %48 = ashr i32 %46, %47
  %49 = call i32 @grc_timeout_attn_master_to_str(i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @ECORE_GRC_ATTENTION_PF_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @ECORE_GRC_ATTENTION_PRIV_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @ECORE_GRC_ATTENTION_PRIV_SHIFT, align 4
  %57 = ashr i32 %55, %56
  %58 = load i32, i32* @ECORE_GRC_ATTENTION_PRIV_VF, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @ECORE_GRC_ATTENTION_VF_MASK, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @ECORE_GRC_ATTENTION_VF_SHIFT, align 4
  %66 = ashr i32 %64, %65
  %67 = call i32 @DP_NOTICE(i32 %31, i32 0, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i8* %39, i32 %43, i32 %49, i32 %52, i8* %61, i32 %66)
  br label %68

68:                                               ; preds = %16, %15
  %69 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %70 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %71 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @GRC_REG_TIMEOUT_ATTN_ACCESS_VALID, align 4
  %74 = call i32 @ecore_wr(%struct.ecore_hwfn* %69, i32 %72, i32 %73, i32 0)
  %75 = load i32, i32* @ECORE_SUCCESS, align 4
  ret i32 %75
}

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @DP_NOTICE(i32, i32, i8*, i32, i32, i8*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @grc_timeout_attn_master_to_str(i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
