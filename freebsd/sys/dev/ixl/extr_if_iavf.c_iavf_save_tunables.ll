; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_save_tunables.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_save_tunables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { i64, i64, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@iavf_core_debug_mask = common dso_local global i32 0, align 4
@iavf_shared_debug_mask = common dso_local global i32 0, align 4
@iavf_enable_head_writeback = common dso_local global i32 0, align 4
@iavf_tx_itr = common dso_local global i64 0, align 8
@IXL_MAX_ITR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Invalid tx_itr value of %d set!\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"tx_itr must be between %d and %d, inclusive\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Using default value of %d instead\0A\00", align 1
@IXL_ITR_4K = common dso_local global i64 0, align 8
@iavf_rx_itr = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"Invalid rx_itr value of %d set!\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"rx_itr must be between %d and %d, inclusive\0A\00", align 1
@IXL_ITR_8K = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iavf_sc*)* @iavf_save_tunables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_save_tunables(%struct.iavf_sc* %0) #0 {
  %2 = alloca %struct.iavf_sc*, align 8
  %3 = alloca i32, align 4
  store %struct.iavf_sc* %0, %struct.iavf_sc** %2, align 8
  %4 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %5 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %4, i32 0, i32 5
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @iavf_core_debug_mask, align 4
  %8 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %9 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* @iavf_shared_debug_mask, align 4
  %11 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %12 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 4
  %14 = load i32, i32* @iavf_enable_head_writeback, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %20 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = load i64, i64* @iavf_tx_itr, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %1
  %25 = load i64, i64* @iavf_tx_itr, align 8
  %26 = load i64, i64* @IXL_MAX_ITR, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %24, %1
  %29 = load i32, i32* %3, align 4
  %30 = load i64, i64* @iavf_tx_itr, align 8
  %31 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load i32, i32* %3, align 4
  %33 = load i64, i64* @IXL_MAX_ITR, align 8
  %34 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %32, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 0, i64 %33)
  %35 = load i32, i32* %3, align 4
  %36 = load i64, i64* @IXL_ITR_4K, align 8
  %37 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %36)
  %38 = load i64, i64* @IXL_ITR_4K, align 8
  %39 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %40 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  br label %45

41:                                               ; preds = %24
  %42 = load i64, i64* @iavf_tx_itr, align 8
  %43 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %44 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %41, %28
  %46 = load i64, i64* @iavf_rx_itr, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load i64, i64* @iavf_rx_itr, align 8
  %50 = load i64, i64* @IXL_MAX_ITR, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %48, %45
  %53 = load i32, i32* %3, align 4
  %54 = load i64, i64* @iavf_rx_itr, align 8
  %55 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %54)
  %56 = load i32, i32* %3, align 4
  %57 = load i64, i64* @IXL_MAX_ITR, align 8
  %58 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %56, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i64 0, i64 %57)
  %59 = load i32, i32* %3, align 4
  %60 = load i64, i64* @IXL_ITR_8K, align 8
  %61 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %60)
  %62 = load i64, i64* @IXL_ITR_8K, align 8
  %63 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %64 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %69

65:                                               ; preds = %48
  %66 = load i64, i64* @iavf_rx_itr, align 8
  %67 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %68 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %52
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
