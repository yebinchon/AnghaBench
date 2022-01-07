; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba.c_siba_get_port_rid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba.c_siba_get_port_rid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siba_devinfo = type { i32 }
%struct.siba_addrspace = type { i32 }
%struct.siba_cfg_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i32, i32)* @siba_get_port_rid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siba_get_port_rid(i64 %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.siba_devinfo*, align 8
  %13 = alloca %struct.siba_addrspace*, align 8
  %14 = alloca %struct.siba_cfg_block*, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i64, i64* %8, align 8
  %16 = call i64 @device_get_parent(i64 %15)
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %5
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @device_get_parent(i64 %20)
  %22 = load i64, i64* %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @BHND_BUS_GET_PORT_RID(i64 %21, i64 %22, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  br label %54

27:                                               ; preds = %5
  %28 = load i64, i64* %8, align 8
  %29 = call %struct.siba_devinfo* @device_get_ivars(i64 %28)
  store %struct.siba_devinfo* %29, %struct.siba_devinfo** %12, align 8
  %30 = load %struct.siba_devinfo*, %struct.siba_devinfo** %12, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call %struct.siba_addrspace* @siba_find_addrspace(%struct.siba_devinfo* %30, i32 %31, i32 %32, i32 %33)
  store %struct.siba_addrspace* %34, %struct.siba_addrspace** %13, align 8
  %35 = load %struct.siba_addrspace*, %struct.siba_addrspace** %13, align 8
  %36 = icmp ne %struct.siba_addrspace* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load %struct.siba_addrspace*, %struct.siba_addrspace** %13, align 8
  %39 = getelementptr inbounds %struct.siba_addrspace, %struct.siba_addrspace* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %6, align 4
  br label %54

41:                                               ; preds = %27
  %42 = load %struct.siba_devinfo*, %struct.siba_devinfo** %12, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call %struct.siba_cfg_block* @siba_find_cfg_block(%struct.siba_devinfo* %42, i32 %43, i32 %44, i32 %45)
  store %struct.siba_cfg_block* %46, %struct.siba_cfg_block** %14, align 8
  %47 = load %struct.siba_cfg_block*, %struct.siba_cfg_block** %14, align 8
  %48 = icmp ne %struct.siba_cfg_block* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load %struct.siba_cfg_block*, %struct.siba_cfg_block** %14, align 8
  %51 = getelementptr inbounds %struct.siba_cfg_block, %struct.siba_cfg_block* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %6, align 4
  br label %54

53:                                               ; preds = %41
  store i32 -1, i32* %6, align 4
  br label %54

54:                                               ; preds = %53, %49, %37, %19
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local i32 @BHND_BUS_GET_PORT_RID(i64, i64, i32, i32, i32) #1

declare dso_local %struct.siba_devinfo* @device_get_ivars(i64) #1

declare dso_local %struct.siba_addrspace* @siba_find_addrspace(%struct.siba_devinfo*, i32, i32, i32) #1

declare dso_local %struct.siba_cfg_block* @siba_find_cfg_block(%struct.siba_devinfo*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
