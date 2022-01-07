; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_ixl.c_ixl_save_pf_tunables.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_ixl.c_ixl_save_pf_tunables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, i32, i64, i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ixl_enable_tx_fc_filter = common dso_local global i32 0, align 4
@ixl_core_debug_mask = common dso_local global i32 0, align 4
@ixl_shared_debug_mask = common dso_local global i32 0, align 4
@ixl_enable_head_writeback = common dso_local global i32 0, align 4
@ixl_enable_vf_loopback = common dso_local global i32 0, align 4
@ixl_i2c_access_method = common dso_local global i32 0, align 4
@ixl_tx_itr = common dso_local global i64 0, align 8
@IXL_MAX_ITR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Invalid tx_itr value of %d set!\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"tx_itr must be between %d and %d, inclusive\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Using default value of %d instead\0A\00", align 1
@IXL_ITR_4K = common dso_local global i64 0, align 8
@ixl_rx_itr = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"Invalid rx_itr value of %d set!\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"rx_itr must be between %d and %d, inclusive\0A\00", align 1
@IXL_ITR_8K = common dso_local global i64 0, align 8
@ixl_dynamic_rx_itr = common dso_local global i32 0, align 4
@ixl_dynamic_tx_itr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixl_pf*)* @ixl_save_pf_tunables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_save_pf_tunables(%struct.ixl_pf* %0) #0 {
  %2 = alloca %struct.ixl_pf*, align 8
  %3 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %2, align 8
  %4 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %5 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %4, i32 0, i32 10
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @ixl_enable_tx_fc_filter, align 4
  %8 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %9 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %8, i32 0, i32 9
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @ixl_core_debug_mask, align 4
  %11 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %12 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %11, i32 0, i32 8
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @ixl_shared_debug_mask, align 4
  %14 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %15 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %14, i32 0, i32 7
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @ixl_enable_head_writeback, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %23 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load i32, i32* @ixl_enable_vf_loopback, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %31 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @ixl_i2c_access_method, align 4
  %33 = icmp sgt i32 %32, 3
  br i1 %33, label %37, label %34

34:                                               ; preds = %1
  %35 = load i32, i32* @ixl_i2c_access_method, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %1
  %38 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %39 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  br label %44

40:                                               ; preds = %34
  %41 = load i32, i32* @ixl_i2c_access_method, align 4
  %42 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %43 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i64, i64* @ixl_tx_itr, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load i64, i64* @ixl_tx_itr, align 8
  %49 = load i64, i64* @IXL_MAX_ITR, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %47, %44
  %52 = load i32, i32* %3, align 4
  %53 = load i64, i64* @ixl_tx_itr, align 8
  %54 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %53)
  %55 = load i32, i32* %3, align 4
  %56 = load i64, i64* @IXL_MAX_ITR, align 8
  %57 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %55, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 0, i64 %56)
  %58 = load i32, i32* %3, align 4
  %59 = load i64, i64* @IXL_ITR_4K, align 8
  %60 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %59)
  %61 = load i64, i64* @IXL_ITR_4K, align 8
  %62 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %63 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %62, i32 0, i32 3
  store i64 %61, i64* %63, align 8
  br label %68

64:                                               ; preds = %47
  %65 = load i64, i64* @ixl_tx_itr, align 8
  %66 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %67 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %66, i32 0, i32 3
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %51
  %69 = load i64, i64* @ixl_rx_itr, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = load i64, i64* @ixl_rx_itr, align 8
  %73 = load i64, i64* @IXL_MAX_ITR, align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %71, %68
  %76 = load i32, i32* %3, align 4
  %77 = load i64, i64* @ixl_rx_itr, align 8
  %78 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %77)
  %79 = load i32, i32* %3, align 4
  %80 = load i64, i64* @IXL_MAX_ITR, align 8
  %81 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %79, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i64 0, i64 %80)
  %82 = load i32, i32* %3, align 4
  %83 = load i64, i64* @IXL_ITR_8K, align 8
  %84 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %83)
  %85 = load i64, i64* @IXL_ITR_8K, align 8
  %86 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %87 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %86, i32 0, i32 2
  store i64 %85, i64* %87, align 8
  br label %92

88:                                               ; preds = %71
  %89 = load i64, i64* @ixl_rx_itr, align 8
  %90 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %91 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %88, %75
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
