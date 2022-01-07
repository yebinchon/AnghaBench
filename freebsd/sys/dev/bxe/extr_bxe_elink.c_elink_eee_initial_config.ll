; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_eee_initial_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_eee_initial_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i32 }
%struct.elink_vars = type { i32 }

@SHMEM_EEE_SUPPORTED_SHIFT = common dso_local global i32 0, align 4
@ELINK_EEE_MODE_ENABLE_LPI = common dso_local global i32 0, align 4
@SHMEM_EEE_LPI_REQUESTED_BIT = common dso_local global i32 0, align 4
@ELINK_EEE_MODE_ADV_LPI = common dso_local global i32 0, align 4
@SHMEM_EEE_REQUESTED_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elink_params*, %struct.elink_vars*, i64)* @elink_eee_initial_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_eee_initial_config(%struct.elink_params* %0, %struct.elink_vars* %1, i64 %2) #0 {
  %4 = alloca %struct.elink_params*, align 8
  %5 = alloca %struct.elink_vars*, align 8
  %6 = alloca i64, align 8
  store %struct.elink_params* %0, %struct.elink_params** %4, align 8
  store %struct.elink_vars* %1, %struct.elink_vars** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i32, i32* @SHMEM_EEE_SUPPORTED_SHIFT, align 4
  %10 = shl i32 %8, %9
  %11 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %12 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %16 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ELINK_EEE_MODE_ENABLE_LPI, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i32, i32* @SHMEM_EEE_LPI_REQUESTED_BIT, align 4
  %23 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %24 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %34

27:                                               ; preds = %3
  %28 = load i32, i32* @SHMEM_EEE_LPI_REQUESTED_BIT, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %31 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %27, %21
  %35 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %36 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ELINK_EEE_MODE_ADV_LPI, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load i32, i32* @SHMEM_EEE_REQUESTED_BIT, align 4
  %43 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %44 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %54

47:                                               ; preds = %34
  %48 = load i32, i32* @SHMEM_EEE_REQUESTED_BIT, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %51 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %47, %41
  %55 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %56 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %57 = call i32 @elink_eee_set_timers(%struct.elink_params* %55, %struct.elink_vars* %56)
  ret i32 %57
}

declare dso_local i32 @elink_eee_set_timers(%struct.elink_params*, %struct.elink_vars*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
