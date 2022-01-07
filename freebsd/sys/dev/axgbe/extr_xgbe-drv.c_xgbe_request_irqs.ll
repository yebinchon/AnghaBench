; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-drv.c_xgbe_request_irqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-drv.c_xgbe_request_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, i32, i32, i32, i32, %struct.xgbe_prv_data*, i32 }
%struct.xgbe_channel = type { i32, i32, i32, i32, i32, i32, %struct.xgbe_channel*, i32 }

@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@xgbe_isr = common dso_local global i32 0, align 4
@xgbe_dma_isr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_request_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_request_irqs(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.xgbe_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  %7 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %8 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %11 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @INTR_MPSAFE, align 4
  %14 = load i32, i32* @INTR_TYPE_NET, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @xgbe_isr, align 4
  %17 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %18 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %19 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %18, i32 0, i32 1
  %20 = call i32 @bus_setup_intr(i32 %9, i32 %12, i32 %15, i32* null, i32 %16, %struct.xgbe_prv_data* %17, i32* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %108

25:                                               ; preds = %1
  %26 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %27 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %108

31:                                               ; preds = %25
  %32 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %33 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %32, i32 0, i32 6
  %34 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %33, align 8
  %35 = bitcast %struct.xgbe_prv_data* %34 to %struct.xgbe_channel*
  store %struct.xgbe_channel* %35, %struct.xgbe_channel** %4, align 8
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %62, %31
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %39 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %42, label %67

42:                                               ; preds = %36
  %43 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %44 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %47 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @INTR_MPSAFE, align 4
  %50 = load i32, i32* @INTR_TYPE_NET, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @xgbe_dma_isr, align 4
  %53 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %54 = bitcast %struct.xgbe_channel* %53 to %struct.xgbe_prv_data*
  %55 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %56 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %55, i32 0, i32 4
  %57 = call i32 @bus_setup_intr(i32 %45, i32 %48, i32 %51, i32* null, i32 %52, %struct.xgbe_prv_data* %54, i32* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %42
  br label %68

61:                                               ; preds = %42
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %5, align 4
  %65 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %66 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %65, i32 1
  store %struct.xgbe_channel* %66, %struct.xgbe_channel** %4, align 8
  br label %36

67:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %108

68:                                               ; preds = %60
  %69 = load i32, i32* %5, align 4
  %70 = add i32 %69, -1
  store i32 %70, i32* %5, align 4
  %71 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %72 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %71, i32 -1
  store %struct.xgbe_channel* %72, %struct.xgbe_channel** %4, align 8
  br label %73

73:                                               ; preds = %90, %68
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %76 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ult i32 %74, %77
  br i1 %78, label %79, label %95

79:                                               ; preds = %73
  %80 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %81 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %84 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %87 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @bus_teardown_intr(i32 %82, i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %79
  %91 = load i32, i32* %5, align 4
  %92 = add i32 %91, -1
  store i32 %92, i32* %5, align 4
  %93 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %94 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %93, i32 -1
  store %struct.xgbe_channel* %94, %struct.xgbe_channel** %4, align 8
  br label %73

95:                                               ; preds = %73
  %96 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %97 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %100 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %103 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @bus_teardown_intr(i32 %98, i32 %101, i32 %104)
  %106 = load i32, i32* %6, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %95, %67, %30, %23
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.xgbe_prv_data*, i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
