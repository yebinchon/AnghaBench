; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_config_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_config_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.0*, i64, i32)*, i64 (%struct.ixgbe_hw.1*, i64*, i32*)*, i64 }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_4__ = type { i64 }

@IXGBE_REQUEST_TASK_MOD = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ixgbe_config_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_config_link(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.adapter* @iflib_get_softc(i32 %9)
  store %struct.adapter* %10, %struct.adapter** %3, align 8
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 3
  store %struct.ixgbe_hw* %12, %struct.ixgbe_hw** %4, align 8
  store i64 0, i64* %6, align 8
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %14 = call i32 @ixgbe_is_sfp(%struct.ixgbe_hw* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load i32, i32* @IXGBE_REQUEST_TASK_MOD, align 4
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @iflib_admin_intr_deferred(i32 %23)
  br label %92

25:                                               ; preds = %1
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %27 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %34 = load %struct.adapter*, %struct.adapter** %3, align 8
  %35 = getelementptr inbounds %struct.adapter, %struct.adapter* %34, i32 0, i32 1
  %36 = load %struct.adapter*, %struct.adapter** %3, align 8
  %37 = getelementptr inbounds %struct.adapter, %struct.adapter* %36, i32 0, i32 0
  %38 = load i32, i32* @FALSE, align 4
  %39 = call i64 @ixgbe_check_link(%struct.ixgbe_hw* %33, i32* %35, i32* %37, i32 %38)
  store i64 %39, i64* %6, align 8
  br label %40

40:                                               ; preds = %32, %25
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %92

44:                                               ; preds = %40
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %46 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* %5, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %44
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %53 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64 (%struct.ixgbe_hw.1*, i64*, i32*)*, i64 (%struct.ixgbe_hw.1*, i64*, i32*)** %55, align 8
  %57 = icmp ne i64 (%struct.ixgbe_hw.1*, i64*, i32*)* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %51
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %60 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i64 (%struct.ixgbe_hw.1*, i64*, i32*)*, i64 (%struct.ixgbe_hw.1*, i64*, i32*)** %62, align 8
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %65 = bitcast %struct.ixgbe_hw* %64 to %struct.ixgbe_hw.1*
  %66 = call i64 %63(%struct.ixgbe_hw.1* %65, i64* %5, i32* %8)
  store i64 %66, i64* %6, align 8
  br label %67

67:                                               ; preds = %58, %51, %44
  %68 = load i64, i64* %6, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %92

71:                                               ; preds = %67
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %73 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64 (%struct.ixgbe_hw.0*, i64, i32)*, i64 (%struct.ixgbe_hw.0*, i64, i32)** %75, align 8
  %77 = icmp ne i64 (%struct.ixgbe_hw.0*, i64, i32)* %76, null
  br i1 %77, label %78, label %91

78:                                               ; preds = %71
  %79 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %80 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i64 (%struct.ixgbe_hw.0*, i64, i32)*, i64 (%struct.ixgbe_hw.0*, i64, i32)** %82, align 8
  %84 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %85 = bitcast %struct.ixgbe_hw* %84 to %struct.ixgbe_hw.0*
  %86 = load i64, i64* %5, align 8
  %87 = load %struct.adapter*, %struct.adapter** %3, align 8
  %88 = getelementptr inbounds %struct.adapter, %struct.adapter* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i64 %83(%struct.ixgbe_hw.0* %85, i64 %86, i32 %89)
  store i64 %90, i64* %6, align 8
  br label %91

91:                                               ; preds = %78, %71
  br label %92

92:                                               ; preds = %43, %70, %91, %17
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @ixgbe_is_sfp(%struct.ixgbe_hw*) #1

declare dso_local i32 @iflib_admin_intr_deferred(i32) #1

declare dso_local i64 @ixgbe_check_link(%struct.ixgbe_hw*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
