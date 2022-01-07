; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-mdio.c_xgbe_phy_adjust_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-mdio.c_xgbe_phy_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i64, i64, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_3__ = type { i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.1*)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.xgbe_prv_data.1 = type opaque

@SPEED_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_phy_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_phy_adjust_link(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %3 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %4 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %3, i32 0, i32 4
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %93

8:                                                ; preds = %1
  %9 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %10 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %14 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 8
  %15 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %16 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %19 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %17, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %8
  %24 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %25 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32 (%struct.xgbe_prv_data.1*)*, i32 (%struct.xgbe_prv_data.1*)** %26, align 8
  %28 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %29 = bitcast %struct.xgbe_prv_data* %28 to %struct.xgbe_prv_data.1*
  %30 = call i32 %27(%struct.xgbe_prv_data.1* %29)
  %31 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %32 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %36 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %23, %8
  %38 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %39 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %42 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %40, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %37
  %47 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %48 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.0*)** %49, align 8
  %51 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %52 = bitcast %struct.xgbe_prv_data* %51 to %struct.xgbe_prv_data.0*
  %53 = call i32 %50(%struct.xgbe_prv_data.0* %52)
  %54 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %55 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %59 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %46, %37
  %61 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %62 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %65 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %63, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %60
  %70 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %71 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %75 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  br label %76

76:                                               ; preds = %69, %60
  %77 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %78 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %81 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %79, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %76
  %86 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %87 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %91 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %90, i32 0, i32 3
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %85, %76
  br label %105

93:                                               ; preds = %1
  %94 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %95 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %100 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %99, i32 0, i32 3
  store i64 0, i64* %100, align 8
  %101 = load i64, i64* @SPEED_UNKNOWN, align 8
  %102 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %103 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %102, i32 0, i32 2
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %98, %93
  br label %105

105:                                              ; preds = %104, %92
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
