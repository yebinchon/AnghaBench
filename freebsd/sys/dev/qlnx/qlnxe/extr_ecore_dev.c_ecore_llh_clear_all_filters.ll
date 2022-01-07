; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_clear_all_filters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_clear_all_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@ECORE_MF_LLH_PROTO_CLSS = common dso_local global i32 0, align 4
@ECORE_MF_LLH_MAC_CLSS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_llh_clear_all_filters(%struct.ecore_dev* %0) #0 {
  %2 = alloca %struct.ecore_dev*, align 8
  %3 = alloca i64, align 8
  store %struct.ecore_dev* %0, %struct.ecore_dev** %2, align 8
  %4 = load i32, i32* @ECORE_MF_LLH_PROTO_CLSS, align 4
  %5 = load %struct.ecore_dev*, %struct.ecore_dev** %2, align 8
  %6 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %5, i32 0, i32 1
  %7 = call i32 @OSAL_TEST_BIT(i32 %4, i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ECORE_MF_LLH_MAC_CLSS, align 4
  %11 = load %struct.ecore_dev*, %struct.ecore_dev** %2, align 8
  %12 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %11, i32 0, i32 1
  %13 = call i32 @OSAL_TEST_BIT(i32 %10, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  br label %32

16:                                               ; preds = %9, %1
  store i64 0, i64* %3, align 8
  br label %17

17:                                               ; preds = %29, %16
  %18 = load i64, i64* %3, align 8
  %19 = load %struct.ecore_dev*, %struct.ecore_dev** %2, align 8
  %20 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %18, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = load %struct.ecore_dev*, %struct.ecore_dev** %2, align 8
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @ecore_llh_clear_ppfid_filters(%struct.ecore_dev* %26, i64 %27)
  br label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %3, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %3, align 8
  br label %17

32:                                               ; preds = %15, %17
  ret void
}

declare dso_local i32 @OSAL_TEST_BIT(i32, i32*) #1

declare dso_local i32 @ecore_llh_clear_ppfid_filters(%struct.ecore_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
