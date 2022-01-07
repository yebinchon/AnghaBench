; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_device_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_device_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_device = type { i32, i32 }

@BHND_DF_HOSTB = common dso_local global i32 0, align 4
@BHND_DF_ADAPTER = common dso_local global i32 0, align 4
@BHND_ATTACH_ADAPTER = common dso_local global i64 0, align 8
@BHND_DF_SOC = common dso_local global i32 0, align 4
@BHND_ATTACH_NATIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bhnd_device* @bhnd_device_lookup(i64 %0, %struct.bhnd_device* %1, i64 %2) #0 {
  %4 = alloca %struct.bhnd_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bhnd_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bhnd_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.bhnd_device* %1, %struct.bhnd_device** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @device_get_parent(i64 %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = call i64 @bhnd_bus_find_hostb_device(i64 %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @bhnd_get_attach_type(i64 %17)
  store i64 %18, i64* %11, align 8
  %19 = load %struct.bhnd_device*, %struct.bhnd_device** %6, align 8
  store %struct.bhnd_device* %19, %struct.bhnd_device** %8, align 8
  br label %20

20:                                               ; preds = %79, %3
  %21 = load %struct.bhnd_device*, %struct.bhnd_device** %8, align 8
  %22 = call i32 @BHND_DEVICE_IS_END(%struct.bhnd_device* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %85

25:                                               ; preds = %20
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.bhnd_device*, %struct.bhnd_device** %8, align 8
  %28 = getelementptr inbounds %struct.bhnd_device, %struct.bhnd_device* %27, i32 0, i32 1
  %29 = call i32 @bhnd_device_matches(i64 %26, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %79

32:                                               ; preds = %25
  %33 = load %struct.bhnd_device*, %struct.bhnd_device** %8, align 8
  %34 = getelementptr inbounds %struct.bhnd_device, %struct.bhnd_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @BHND_DF_HOSTB, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load i32, i32* @BHND_DF_ADAPTER, align 4
  %42 = load i32, i32* %12, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %40, %32
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @BHND_DF_ADAPTER, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* @BHND_ATTACH_ADAPTER, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %79

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %44
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @BHND_DF_HOSTB, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* %9, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %79

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65, %55
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @BHND_DF_SOC, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* @BHND_ATTACH_NATIVE, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %79

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76, %66
  %78 = load %struct.bhnd_device*, %struct.bhnd_device** %8, align 8
  store %struct.bhnd_device* %78, %struct.bhnd_device** %4, align 8
  br label %86

79:                                               ; preds = %75, %64, %53, %31
  %80 = load %struct.bhnd_device*, %struct.bhnd_device** %8, align 8
  %81 = bitcast %struct.bhnd_device* %80 to i8*
  %82 = load i64, i64* %7, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  %84 = bitcast i8* %83 to %struct.bhnd_device*
  store %struct.bhnd_device* %84, %struct.bhnd_device** %8, align 8
  br label %20

85:                                               ; preds = %20
  store %struct.bhnd_device* null, %struct.bhnd_device** %4, align 8
  br label %86

86:                                               ; preds = %85, %77
  %87 = load %struct.bhnd_device*, %struct.bhnd_device** %4, align 8
  ret %struct.bhnd_device* %87
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local i64 @bhnd_bus_find_hostb_device(i64) #1

declare dso_local i64 @bhnd_get_attach_type(i64) #1

declare dso_local i32 @BHND_DEVICE_IS_END(%struct.bhnd_device*) #1

declare dso_local i32 @bhnd_device_matches(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
