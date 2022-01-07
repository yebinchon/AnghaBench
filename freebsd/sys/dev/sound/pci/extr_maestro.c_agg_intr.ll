; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_agg_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_agg_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agg_info = type { i64, i32, i32, i32, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@PORT_HOSTINT_STAT = common dso_local global i32 0, align 4
@HOSTINT_STAT_DSOUND = common dso_local global i32 0, align 4
@PCI_POWERSTATE_D1 = common dso_local global i64 0, align 8
@PORT_INT_STAT = common dso_local global i32 0, align 4
@HOSTINT_STAT_HWVOL = common dso_local global i32 0, align 4
@PORT_HWVOL_MASTER = common dso_local global i32 0, align 4
@HWVOL_MUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: unknown HWVOL event 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @agg_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @agg_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.agg_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.agg_info*
  store %struct.agg_info* %9, %struct.agg_info** %3, align 8
  %10 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %11 = load i32, i32* @PORT_HOSTINT_STAT, align 4
  %12 = call i32 @AGG_RD(%struct.agg_info* %10, i32 %11, i32 1)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %142

16:                                               ; preds = %1
  %17 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %18 = load i32, i32* @PORT_HOSTINT_STAT, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @AGG_WR(%struct.agg_info* %17, i32 %18, i32 %19, i32 1)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @HOSTINT_STAT_DSOUND, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %93

25:                                               ; preds = %16
  %26 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %27 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PCI_POWERSTATE_D1, align 8
  %30 = icmp sle i64 %28, %29
  br i1 %30, label %31, label %92

31:                                               ; preds = %25
  %32 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %33 = load i32, i32* @PORT_INT_STAT, align 4
  %34 = call i32 @AGG_WR(%struct.agg_info* %32, i32 %33, i32 1, i32 2)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %35

35:                                               ; preds = %67, %31
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %38 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %72

41:                                               ; preds = %35
  %42 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %43 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %41
  %49 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %50 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PCI_POWERSTATE_D1, align 8
  %53 = icmp sle i64 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %56 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %55, i32 0, i32 5
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @chn_intr(i32 %62)
  br label %65

64:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  br label %72

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65, %41
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = shl i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %35

72:                                               ; preds = %64, %35
  %73 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %74 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %6, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %72
  %80 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %81 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @PCI_POWERSTATE_D1, align 8
  %84 = icmp sle i64 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %87 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @chn_intr(i32 %89)
  br label %91

91:                                               ; preds = %85, %79, %72
  br label %92

92:                                               ; preds = %91, %25
  br label %93

93:                                               ; preds = %92, %16
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @HOSTINT_STAT_HWVOL, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %142

98:                                               ; preds = %93
  %99 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %100 = call i32 @agg_lock(%struct.agg_info* %99)
  %101 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %102 = load i32, i32* @PORT_HWVOL_MASTER, align 4
  %103 = call i32 @AGG_RD(%struct.agg_info* %101, i32 %102, i32 1)
  store i32 %103, i32* %7, align 4
  %104 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %105 = load i32, i32* @PORT_HWVOL_MASTER, align 4
  %106 = call i32 @AGG_WR(%struct.agg_info* %104, i32 %105, i32 129, i32 1)
  %107 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %108 = call i32 @agg_unlock(%struct.agg_info* %107)
  %109 = load i32, i32* %7, align 4
  switch i32 %109, label %121 [
    i32 128, label %110
    i32 130, label %115
    i32 129, label %120
  ]

110:                                              ; preds = %98
  %111 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %112 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @mixer_hwvol_step(i32 %113, i32 1, i32 1)
  br label %141

115:                                              ; preds = %98
  %116 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %117 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @mixer_hwvol_step(i32 %118, i32 -1, i32 -1)
  br label %141

120:                                              ; preds = %98
  br label %141

121:                                              ; preds = %98
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @HWVOL_MUTE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %128 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @mixer_hwvol_mute(i32 %129)
  br label %141

131:                                              ; preds = %121
  %132 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %133 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.agg_info*, %struct.agg_info** %3, align 8
  %136 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @device_get_nameunit(i32 %137)
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @device_printf(i32 %134, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %131, %126, %120, %115, %110
  br label %142

142:                                              ; preds = %15, %141, %93
  ret void
}

declare dso_local i32 @AGG_RD(%struct.agg_info*, i32, i32) #1

declare dso_local i32 @AGG_WR(%struct.agg_info*, i32, i32, i32) #1

declare dso_local i32 @chn_intr(i32) #1

declare dso_local i32 @agg_lock(%struct.agg_info*) #1

declare dso_local i32 @agg_unlock(%struct.agg_info*) #1

declare dso_local i32 @mixer_hwvol_step(i32, i32, i32) #1

declare dso_local i32 @mixer_hwvol_mute(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
