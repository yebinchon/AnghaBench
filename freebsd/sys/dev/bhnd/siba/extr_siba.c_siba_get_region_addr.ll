; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba.c_siba_get_region_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba.c_siba_get_region_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siba_devinfo = type { i32 }
%struct.siba_addrspace = type { i64, i64, i32 }
%struct.siba_cfg_block = type { i64, i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i32, i32, i32*, i64*)* @siba_get_region_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siba_get_region_addr(i64 %0, i64 %1, i32 %2, i32 %3, i32 %4, i32* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.siba_devinfo*, align 8
  %17 = alloca %struct.siba_addrspace*, align 8
  %18 = alloca %struct.siba_cfg_block*, align 8
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i64* %6, i64** %15, align 8
  %19 = load i64, i64* %10, align 8
  %20 = call i64 @device_get_parent(i64 %19)
  %21 = load i64, i64* %9, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %7
  %24 = load i64, i64* %9, align 8
  %25 = call i64 @device_get_parent(i64 %24)
  %26 = load i64, i64* %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32*, i32** %14, align 8
  %31 = load i64*, i64** %15, align 8
  %32 = call i32 @BHND_BUS_GET_REGION_ADDR(i64 %25, i64 %26, i32 %27, i32 %28, i32 %29, i32* %30, i64* %31)
  store i32 %32, i32* %8, align 4
  br label %75

33:                                               ; preds = %7
  %34 = load i64, i64* %10, align 8
  %35 = call %struct.siba_devinfo* @device_get_ivars(i64 %34)
  store %struct.siba_devinfo* %35, %struct.siba_devinfo** %16, align 8
  %36 = load %struct.siba_devinfo*, %struct.siba_devinfo** %16, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call %struct.siba_addrspace* @siba_find_addrspace(%struct.siba_devinfo* %36, i32 %37, i32 %38, i32 %39)
  store %struct.siba_addrspace* %40, %struct.siba_addrspace** %17, align 8
  %41 = load %struct.siba_addrspace*, %struct.siba_addrspace** %17, align 8
  %42 = icmp ne %struct.siba_addrspace* %41, null
  br i1 %42, label %43, label %56

43:                                               ; preds = %33
  %44 = load %struct.siba_addrspace*, %struct.siba_addrspace** %17, align 8
  %45 = getelementptr inbounds %struct.siba_addrspace, %struct.siba_addrspace* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %14, align 8
  store i32 %46, i32* %47, align 4
  %48 = load %struct.siba_addrspace*, %struct.siba_addrspace** %17, align 8
  %49 = getelementptr inbounds %struct.siba_addrspace, %struct.siba_addrspace* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.siba_addrspace*, %struct.siba_addrspace** %17, align 8
  %52 = getelementptr inbounds %struct.siba_addrspace, %struct.siba_addrspace* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %50, %53
  %55 = load i64*, i64** %15, align 8
  store i64 %54, i64* %55, align 8
  store i32 0, i32* %8, align 4
  br label %75

56:                                               ; preds = %33
  %57 = load %struct.siba_devinfo*, %struct.siba_devinfo** %16, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call %struct.siba_cfg_block* @siba_find_cfg_block(%struct.siba_devinfo* %57, i32 %58, i32 %59, i32 %60)
  store %struct.siba_cfg_block* %61, %struct.siba_cfg_block** %18, align 8
  %62 = load %struct.siba_cfg_block*, %struct.siba_cfg_block** %18, align 8
  %63 = icmp ne %struct.siba_cfg_block* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %56
  %65 = load %struct.siba_cfg_block*, %struct.siba_cfg_block** %18, align 8
  %66 = getelementptr inbounds %struct.siba_cfg_block, %struct.siba_cfg_block* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** %14, align 8
  store i32 %67, i32* %68, align 4
  %69 = load %struct.siba_cfg_block*, %struct.siba_cfg_block** %18, align 8
  %70 = getelementptr inbounds %struct.siba_cfg_block, %struct.siba_cfg_block* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** %15, align 8
  store i64 %71, i64* %72, align 8
  store i32 0, i32* %8, align 4
  br label %75

73:                                               ; preds = %56
  %74 = load i32, i32* @ENOENT, align 4
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %73, %64, %43, %23
  %76 = load i32, i32* %8, align 4
  ret i32 %76
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local i32 @BHND_BUS_GET_REGION_ADDR(i64, i64, i32, i32, i32, i32*, i64*) #1

declare dso_local %struct.siba_devinfo* @device_get_ivars(i64) #1

declare dso_local %struct.siba_addrspace* @siba_find_addrspace(%struct.siba_devinfo*, i32, i32, i32) #1

declare dso_local %struct.siba_cfg_block* @siba_find_cfg_block(%struct.siba_devinfo*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
