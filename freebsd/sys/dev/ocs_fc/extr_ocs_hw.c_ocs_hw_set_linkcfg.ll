; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_set_linkcfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_set_linkcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Function not supported\0A\00", align 1
@OCS_HW_RTN_ERROR = common dso_local global i32 0, align 4
@SLI4_IF_TYPE_LANCER_FC_ETH = common dso_local global i64 0, align 8
@SLI4_IF_TYPE_BE3_SKH_PF = common dso_local global i64 0, align 8
@SLI4_IF_TYPE_BE3_SKH_VF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Function not supported for this IF_TYPE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i32, i8*)* @ocs_hw_set_linkcfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_hw_set_linkcfg(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = call i32 @sli_link_is_configurable(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %5
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ocs_log_debug(i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %21, i32* %6, align 4
  br label %60

22:                                               ; preds = %5
  %23 = load i64, i64* @SLI4_IF_TYPE_LANCER_FC_ETH, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = call i64 @sli_get_if_type(i32* %25)
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i8*, i8** %11, align 8
  %34 = call i32 @ocs_hw_set_linkcfg_lancer(%struct.TYPE_5__* %29, i32 %30, i32 %31, i32 %32, i8* %33)
  store i32 %34, i32* %6, align 4
  br label %60

35:                                               ; preds = %22
  %36 = load i64, i64* @SLI4_IF_TYPE_BE3_SKH_PF, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = call i64 @sli_get_if_type(i32* %38)
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load i64, i64* @SLI4_IF_TYPE_BE3_SKH_VF, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = call i64 @sli_get_if_type(i32* %44)
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41, %35
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 @ocs_hw_set_linkcfg_skyhawk(%struct.TYPE_5__* %48, i32 %49, i32 %50, i32 %51, i8* %52)
  store i32 %53, i32* %6, align 4
  br label %60

54:                                               ; preds = %41
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ocs_log_test(i32 %57, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %54, %47, %28, %16
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @sli_link_is_configurable(i32*) #1

declare dso_local i32 @ocs_log_debug(i32, i8*) #1

declare dso_local i64 @sli_get_if_type(i32*) #1

declare dso_local i32 @ocs_hw_set_linkcfg_lancer(%struct.TYPE_5__*, i32, i32, i32, i8*) #1

declare dso_local i32 @ocs_hw_set_linkcfg_skyhawk(%struct.TYPE_5__*, i32, i32, i32, i8*) #1

declare dso_local i32 @ocs_log_test(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
