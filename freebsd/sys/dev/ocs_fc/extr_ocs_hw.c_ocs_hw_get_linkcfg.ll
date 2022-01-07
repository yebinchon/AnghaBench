; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_get_linkcfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_get_linkcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Function not supported\0A\00", align 1
@OCS_HW_RTN_ERROR = common dso_local global i32 0, align 4
@SLI4_IF_TYPE_LANCER_FC_ETH = common dso_local global i64 0, align 8
@SLI4_IF_TYPE_BE3_SKH_PF = common dso_local global i64 0, align 8
@SLI4_IF_TYPE_BE3_SKH_VF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Function not supported for this IF_TYPE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i8*)* @ocs_hw_get_linkcfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_hw_get_linkcfg(%struct.TYPE_5__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = call i32 @sli_link_is_configurable(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ocs_log_debug(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %19, i32* %5, align 4
  br label %56

20:                                               ; preds = %4
  %21 = load i64, i64* @SLI4_IF_TYPE_LANCER_FC_ETH, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = call i64 @sli_get_if_type(i32* %23)
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @ocs_hw_get_linkcfg_lancer(%struct.TYPE_5__* %27, i32 %28, i32 %29, i8* %30)
  store i32 %31, i32* %5, align 4
  br label %56

32:                                               ; preds = %20
  %33 = load i64, i64* @SLI4_IF_TYPE_BE3_SKH_PF, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = call i64 @sli_get_if_type(i32* %35)
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load i64, i64* @SLI4_IF_TYPE_BE3_SKH_VF, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = call i64 @sli_get_if_type(i32* %41)
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38, %32
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @ocs_hw_get_linkcfg_skyhawk(%struct.TYPE_5__* %45, i32 %46, i32 %47, i8* %48)
  store i32 %49, i32* %5, align 4
  br label %56

50:                                               ; preds = %38
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ocs_log_test(i32 %53, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %50, %44, %26, %14
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @sli_link_is_configurable(i32*) #1

declare dso_local i32 @ocs_log_debug(i32, i8*) #1

declare dso_local i64 @sli_get_if_type(i32*) #1

declare dso_local i32 @ocs_hw_get_linkcfg_lancer(%struct.TYPE_5__*, i32, i32, i8*) #1

declare dso_local i32 @ocs_hw_get_linkcfg_skyhawk(%struct.TYPE_5__*, i32, i32, i8*) #1

declare dso_local i32 @ocs_log_test(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
