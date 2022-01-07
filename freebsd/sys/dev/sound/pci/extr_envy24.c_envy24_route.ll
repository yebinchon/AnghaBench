; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_route.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }

@ENVY24_ROUTE_DAC_SPDIF = common dso_local global i32 0, align 4
@ENVY24_ROUTE_CLASS_MIX = common dso_local global i32 0, align 4
@ENVY24_ROUTE_DAC_1 = common dso_local global i32 0, align 4
@ENVY24_ROUTE_RIGHT = common dso_local global i32 0, align 4
@ENVY24_ROUTE_LEFT = common dso_local global i32 0, align 4
@ENVY24_MT_SPDOUT = common dso_local global i32 0, align 4
@ENVY24_MT_PSDOUT = common dso_local global i32 0, align 4
@ENVY24_MT_RECORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*, i32, i32, i32, i32)* @envy24_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @envy24_route(%struct.sc_info* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sc_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENVY24_ROUTE_DAC_SPDIF, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %5
  store i32 -1, i32* %6, align 4
  br label %137

23:                                               ; preds = %18
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @ENVY24_ROUTE_CLASS_MIX, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @ENVY24_ROUTE_DAC_1, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @ENVY24_ROUTE_DAC_SPDIF, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 -1, i32* %6, align 4
  br label %137

36:                                               ; preds = %31, %27, %23
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @ENVY24_ROUTE_RIGHT, align 4
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* @ENVY24_ROUTE_LEFT, align 4
  store i32 %41, i32* %15, align 4
  br label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @ENVY24_ROUTE_LEFT, align 4
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* @ENVY24_ROUTE_RIGHT, align 4
  store i32 %44, i32* %15, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @ENVY24_ROUTE_DAC_SPDIF, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %76

49:                                               ; preds = %45
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = shl i32 %51, 2
  %53 = or i32 %50, %52
  %54 = load i32, i32* %10, align 4
  %55 = shl i32 %54, 1
  %56 = load i32, i32* %14, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %14, align 4
  %59 = shl i32 %58, 3
  %60 = or i32 %57, %59
  %61 = shl i32 %60, 8
  %62 = or i32 %53, %61
  %63 = load i32, i32* %10, align 4
  %64 = shl i32 %63, 1
  %65 = load i32, i32* %15, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %15, align 4
  %68 = shl i32 %67, 3
  %69 = or i32 %66, %68
  %70 = shl i32 %69, 12
  %71 = or i32 %62, %70
  store i32 %71, i32* %12, align 4
  %72 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %73 = load i32, i32* @ENVY24_MT_SPDOUT, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @envy24_wrmt(%struct.sc_info* %72, i32 %73, i32 %74, i32 2)
  br label %136

76:                                               ; preds = %45
  %77 = load i32, i32* %8, align 4
  %78 = mul nsw i32 %77, 2
  %79 = shl i32 771, %78
  %80 = xor i32 %79, -1
  store i32 %80, i32* %13, align 4
  %81 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %82 = load i32, i32* @ENVY24_MT_PSDOUT, align 4
  %83 = call i32 @envy24_rdmt(%struct.sc_info* %81, i32 %82, i32 2)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %13, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = shl i32 %88, 8
  %90 = or i32 %87, %89
  %91 = load i32, i32* %8, align 4
  %92 = mul nsw i32 %91, 2
  %93 = shl i32 %90, %92
  %94 = or i32 %86, %93
  store i32 %94, i32* %12, align 4
  %95 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %96 = load i32, i32* @ENVY24_MT_PSDOUT, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @envy24_wrmt(%struct.sc_info* %95, i32 %96, i32 %97, i32 2)
  %99 = load i32, i32* %8, align 4
  %100 = mul nsw i32 %99, 8
  %101 = shl i32 255, %100
  %102 = xor i32 %101, -1
  store i32 %102, i32* %13, align 4
  %103 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %104 = load i32, i32* @ENVY24_MT_RECORD, align 4
  %105 = call i32 @envy24_rdmt(%struct.sc_info* %103, i32 %104, i32 4)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %13, align 4
  %108 = and i32 %106, %107
  %109 = load i32, i32* %10, align 4
  %110 = shl i32 %109, 1
  %111 = load i32, i32* %14, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* %14, align 4
  %114 = shl i32 %113, 3
  %115 = or i32 %112, %114
  %116 = load i32, i32* %10, align 4
  %117 = shl i32 %116, 1
  %118 = load i32, i32* %15, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* %15, align 4
  %121 = shl i32 %120, 3
  %122 = or i32 %119, %121
  %123 = shl i32 %122, 4
  %124 = or i32 %115, %123
  %125 = load i32, i32* %8, align 4
  %126 = mul nsw i32 %125, 8
  %127 = shl i32 %124, %126
  %128 = or i32 %108, %127
  store i32 %128, i32* %12, align 4
  %129 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %130 = load i32, i32* @ENVY24_MT_RECORD, align 4
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @envy24_wrmt(%struct.sc_info* %129, i32 %130, i32 %131, i32 4)
  %133 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %134 = load i32, i32* @ENVY24_MT_RECORD, align 4
  %135 = call i32 @envy24_wrmt(%struct.sc_info* %133, i32 %134, i32 0, i32 4)
  br label %136

136:                                              ; preds = %76, %49
  store i32 0, i32* %6, align 4
  br label %137

137:                                              ; preds = %136, %35, %22
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i32 @envy24_wrmt(%struct.sc_info*, i32, i32, i32) #1

declare dso_local i32 @envy24_rdmt(%struct.sc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
