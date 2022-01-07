; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_agg_power.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_agg_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agg_info = type { i32, i32 }

@AC97_REG_POWER = common dso_local global i32 0, align 4
@PORT_RINGBUS_CTRL = common dso_local global i32 0, align 4
@RINGBUS_CTRL_ACLINK_ENABLED = common dso_local global i32 0, align 4
@RINGBUS_CTRL_RINGBUS_ENABLED = common dso_local global i32 0, align 4
@PORT_HOSTINT_CTRL = common dso_local global i32 0, align 4
@PORT_HOSTINT_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agg_info*, i32)* @agg_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @agg_power(%struct.agg_info* %0, i32 %1) #0 {
  %3 = alloca %struct.agg_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.agg_info* %0, %struct.agg_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %7 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %124

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %118 [
    i32 131, label %15
    i32 130, label %15
    i32 129, label %62
    i32 128, label %93
  ]

15:                                               ; preds = %13, %13
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %61 [
    i32 129, label %17
    i32 128, label %47
    i32 131, label %55
    i32 130, label %55
  ]

17:                                               ; preds = %15
  %18 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %19 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @pci_set_powerstate(i32 %20, i32 %21)
  %23 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %24 = load i32, i32* @AC97_REG_POWER, align 4
  %25 = call i32 @agg_wrcodec(%struct.agg_info* %23, i32 %24, i32 0)
  %26 = call i32 @DELAY(i32 100)
  %27 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %28 = load i32, i32* @PORT_RINGBUS_CTRL, align 4
  %29 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %30 = load i32, i32* @PORT_RINGBUS_CTRL, align 4
  %31 = call i32 @AGG_RD(%struct.agg_info* %29, i32 %30, i32 4)
  %32 = load i32, i32* @RINGBUS_CTRL_ACLINK_ENABLED, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = load i32, i32* @RINGBUS_CTRL_RINGBUS_ENABLED, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @AGG_WR(%struct.agg_info* %27, i32 %28, i32 %36, i32 4)
  %38 = call i32 @DELAY(i32 50)
  %39 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %40 = load i32, i32* @PORT_RINGBUS_CTRL, align 4
  %41 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %42 = load i32, i32* @PORT_RINGBUS_CTRL, align 4
  %43 = call i32 @AGG_RD(%struct.agg_info* %41, i32 %42, i32 4)
  %44 = load i32, i32* @RINGBUS_CTRL_ACLINK_ENABLED, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @AGG_WR(%struct.agg_info* %39, i32 %40, i32 %45, i32 4)
  br label %61

47:                                               ; preds = %15
  %48 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %49 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pci_set_powerstate(i32 %50, i32 131)
  %52 = call i32 @DELAY(i32 100)
  %53 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %54 = call i32 @agg_init(%struct.agg_info* %53)
  br label %55

55:                                               ; preds = %15, %15, %47
  %56 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %57 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @pci_set_powerstate(i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %15, %55, %17
  br label %120

62:                                               ; preds = %13
  %63 = load i32, i32* %5, align 4
  switch i32 %63, label %87 [
    i32 128, label %64
    i32 131, label %72
    i32 130, label %72
  ]

64:                                               ; preds = %62
  %65 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %66 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @pci_set_powerstate(i32 %67, i32 131)
  %69 = call i32 @DELAY(i32 100)
  %70 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %71 = call i32 @agg_init(%struct.agg_info* %70)
  br label %72

72:                                               ; preds = %62, %62, %64
  %73 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %74 = load i32, i32* @PORT_RINGBUS_CTRL, align 4
  %75 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %76 = load i32, i32* @PORT_RINGBUS_CTRL, align 4
  %77 = call i32 @AGG_RD(%struct.agg_info* %75, i32 %76, i32 4)
  %78 = load i32, i32* @RINGBUS_CTRL_RINGBUS_ENABLED, align 4
  %79 = xor i32 %78, -1
  %80 = and i32 %77, %79
  %81 = call i32 @AGG_WR(%struct.agg_info* %73, i32 %74, i32 %80, i32 4)
  %82 = call i32 @DELAY(i32 100)
  %83 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %84 = load i32, i32* @AC97_REG_POWER, align 4
  %85 = call i32 @agg_wrcodec(%struct.agg_info* %83, i32 %84, i32 768)
  %86 = call i32 @DELAY(i32 100)
  br label %87

87:                                               ; preds = %62, %72
  %88 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %89 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @pci_set_powerstate(i32 %90, i32 %91)
  br label %120

93:                                               ; preds = %13
  %94 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %95 = load i32, i32* @AC97_REG_POWER, align 4
  %96 = call i32 @agg_wrcodec(%struct.agg_info* %94, i32 %95, i32 57088)
  %97 = call i32 @DELAY(i32 100)
  %98 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %99 = load i32, i32* @PORT_RINGBUS_CTRL, align 4
  %100 = call i32 @AGG_WR(%struct.agg_info* %98, i32 %99, i32 0, i32 4)
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 129
  br i1 %102, label %103, label %106

103:                                              ; preds = %93
  %104 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %105 = call i32 @wp_stoptimer(%struct.agg_info* %104)
  br label %106

106:                                              ; preds = %103, %93
  %107 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %108 = load i32, i32* @PORT_HOSTINT_CTRL, align 4
  %109 = call i32 @AGG_WR(%struct.agg_info* %107, i32 %108, i32 0, i32 2)
  %110 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %111 = load i32, i32* @PORT_HOSTINT_STAT, align 4
  %112 = call i32 @AGG_WR(%struct.agg_info* %110, i32 %111, i32 255, i32 1)
  %113 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %114 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @pci_set_powerstate(i32 %115, i32 %116)
  br label %120

118:                                              ; preds = %13
  %119 = load i32, i32* %5, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %118, %106, %87, %61
  %121 = load i32, i32* %4, align 4
  %122 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %123 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %120, %12
  ret void
}

declare dso_local i32 @pci_set_powerstate(i32, i32) #1

declare dso_local i32 @agg_wrcodec(%struct.agg_info*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @AGG_WR(%struct.agg_info*, i32, i32, i32) #1

declare dso_local i32 @AGG_RD(%struct.agg_info*, i32, i32) #1

declare dso_local i32 @agg_init(%struct.agg_info*) #1

declare dso_local i32 @wp_stoptimer(%struct.agg_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
