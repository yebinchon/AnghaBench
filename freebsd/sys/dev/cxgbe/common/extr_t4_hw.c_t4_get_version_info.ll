; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_get_version_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_get_version_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_get_version_info(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %1
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = load %struct.adapter*, %struct.adapter** %2, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 5
  %15 = call i32 @t4_get_fw_version(%struct.adapter* %11, i32* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %18, %10
  br label %24

24:                                               ; preds = %23
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.adapter*, %struct.adapter** %2, align 8
  %27 = load %struct.adapter*, %struct.adapter** %2, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  %30 = call i32 @t4_get_bs_version(%struct.adapter* %26, i32* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %33, %25
  br label %39

39:                                               ; preds = %38
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.adapter*, %struct.adapter** %2, align 8
  %42 = load %struct.adapter*, %struct.adapter** %2, align 8
  %43 = getelementptr inbounds %struct.adapter, %struct.adapter* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  %45 = call i32 @t4_get_tp_version(%struct.adapter* %41, i32* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %48, %40
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.adapter*, %struct.adapter** %2, align 8
  %57 = load %struct.adapter*, %struct.adapter** %2, align 8
  %58 = getelementptr inbounds %struct.adapter, %struct.adapter* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = call i32 @t4_get_exprom_version(%struct.adapter* %56, i32* %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = load i32, i32* %3, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %63, %55
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.adapter*, %struct.adapter** %2, align 8
  %72 = load %struct.adapter*, %struct.adapter** %2, align 8
  %73 = getelementptr inbounds %struct.adapter, %struct.adapter* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = call i32 @t4_get_scfg_version(%struct.adapter* %71, i32* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %70
  %79 = load i32, i32* %3, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %78, %70
  br label %84

84:                                               ; preds = %83
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.adapter*, %struct.adapter** %2, align 8
  %87 = load %struct.adapter*, %struct.adapter** %2, align 8
  %88 = getelementptr inbounds %struct.adapter, %struct.adapter* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = call i32 @t4_get_vpd_version(%struct.adapter* %86, i32* %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %85
  %94 = load i32, i32* %3, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %93, %85
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @t4_get_fw_version(%struct.adapter*, i32*) #1

declare dso_local i32 @t4_get_bs_version(%struct.adapter*, i32*) #1

declare dso_local i32 @t4_get_tp_version(%struct.adapter*, i32*) #1

declare dso_local i32 @t4_get_exprom_version(%struct.adapter*, i32*) #1

declare dso_local i32 @t4_get_scfg_version(%struct.adapter*, i32*) #1

declare dso_local i32 @t4_get_vpd_version(%struct.adapter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
