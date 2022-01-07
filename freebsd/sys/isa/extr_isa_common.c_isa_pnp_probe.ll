; ModuleID = '/home/carl/AnghaBench/freebsd/sys/isa/extr_isa_common.c_isa_pnp_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/isa/extr_isa_common.c_isa_pnp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isa_pnp_id = type { i64, i64 }
%struct.isa_device = type { i64, i64, i32 }

@ENOENT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.isa_pnp_id*)* @isa_pnp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isa_pnp_probe(i32 %0, i32 %1, %struct.isa_pnp_id* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.isa_pnp_id*, align 8
  %8 = alloca %struct.isa_device*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.isa_pnp_id* %2, %struct.isa_pnp_id** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call %struct.isa_device* @DEVTOISA(i32 %9)
  store %struct.isa_device* %10, %struct.isa_device** %8, align 8
  %11 = load %struct.isa_device*, %struct.isa_device** %8, align 8
  %12 = getelementptr inbounds %struct.isa_device, %struct.isa_device* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOENT, align 4
  store i32 %16, i32* %4, align 4
  br label %61

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %56, %17
  %19 = load %struct.isa_pnp_id*, %struct.isa_pnp_id** %7, align 8
  %20 = icmp ne %struct.isa_pnp_id* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.isa_pnp_id*, %struct.isa_pnp_id** %7, align 8
  %23 = getelementptr inbounds %struct.isa_pnp_id, %struct.isa_pnp_id* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %21, %18
  %27 = phi i1 [ false, %18 ], [ %25, %21 ]
  br i1 %27, label %28, label %59

28:                                               ; preds = %26
  %29 = load %struct.isa_device*, %struct.isa_device** %8, align 8
  %30 = getelementptr inbounds %struct.isa_device, %struct.isa_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.isa_pnp_id*, %struct.isa_pnp_id** %7, align 8
  %33 = getelementptr inbounds %struct.isa_pnp_id, %struct.isa_pnp_id* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %28
  %37 = load %struct.isa_device*, %struct.isa_device** %8, align 8
  %38 = getelementptr inbounds %struct.isa_device, %struct.isa_device* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.isa_pnp_id*, %struct.isa_pnp_id** %7, align 8
  %41 = getelementptr inbounds %struct.isa_pnp_id, %struct.isa_pnp_id* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %36, %28
  %45 = load %struct.isa_pnp_id*, %struct.isa_pnp_id** %7, align 8
  %46 = getelementptr inbounds %struct.isa_pnp_id, %struct.isa_pnp_id* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.isa_pnp_id*, %struct.isa_pnp_id** %7, align 8
  %52 = getelementptr inbounds %struct.isa_pnp_id, %struct.isa_pnp_id* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @device_set_desc(i32 %50, i64 %53)
  br label %55

55:                                               ; preds = %49, %44
  store i32 0, i32* %4, align 4
  br label %61

56:                                               ; preds = %36
  %57 = load %struct.isa_pnp_id*, %struct.isa_pnp_id** %7, align 8
  %58 = getelementptr inbounds %struct.isa_pnp_id, %struct.isa_pnp_id* %57, i32 1
  store %struct.isa_pnp_id* %58, %struct.isa_pnp_id** %7, align 8
  br label %18

59:                                               ; preds = %26
  %60 = load i32, i32* @ENXIO, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %55, %15
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.isa_device* @DEVTOISA(i32) #1

declare dso_local i32 @device_set_desc(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
