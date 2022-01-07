; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_rchan_trigger_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_rchan_trigger_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_rchinfo = type { i32, i64, i32, i32, i32, %struct.sc_info* }
%struct.sc_info = type { i32 }

@CHANGE = common dso_local global i32 0, align 4
@CALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"m3_rchan_trigger(adc=%d, go=0x%x{%s})\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"PCMTRIG_START\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"PCMTRIG_STOP\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"PCMTRIG_ABORT\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@KDATA_TIMER_COUNT_RELOAD = common dso_local global i64 0, align 8
@KDATA_TIMER_COUNT_CURRENT = common dso_local global i64 0, align 8
@HOST_INT_CTRL = common dso_local global i32 0, align 4
@CLKRUN_GEN_ENABLE = common dso_local global i32 0, align 4
@KDATA_ADC1_REQUEST = common dso_local global i64 0, align 8
@CDATA_INSTANCE_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @m3_rchan_trigger_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m3_rchan_trigger_locked(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sc_rchinfo*, align 8
  %9 = alloca %struct.sc_info*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.sc_rchinfo*
  store %struct.sc_rchinfo* %12, %struct.sc_rchinfo** %8, align 8
  %13 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %8, align 8
  %14 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %13, i32 0, i32 5
  %15 = load %struct.sc_info*, %struct.sc_info** %14, align 8
  store %struct.sc_info* %15, %struct.sc_info** %9, align 8
  %16 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %17 = call i32 @M3_LOCK_ASSERT(%struct.sc_info* %16)
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 129
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @CHANGE, align 4
  br label %38

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 128
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @CHANGE, align 4
  br label %36

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 132
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @CHANGE, align 4
  br label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @CALL, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  br label %36

36:                                               ; preds = %34, %25
  %37 = phi i32 [ %26, %25 ], [ %35, %34 ]
  br label %38

38:                                               ; preds = %36, %20
  %39 = phi i32 [ %21, %20 ], [ %37, %36 ]
  %40 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %8, align 8
  %41 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 129
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %58

47:                                               ; preds = %38
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 128
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %56

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 132
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  br label %56

56:                                               ; preds = %51, %50
  %57 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %50 ], [ %55, %51 ]
  br label %58

58:                                               ; preds = %56, %46
  %59 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %46 ], [ %57, %56 ]
  %60 = call i32 @M3_DEBUG(i32 %39, i8* %59)
  %61 = load i32, i32* %7, align 4
  switch i32 %61, label %146 [
    i32 129, label %62
    i32 128, label %105
    i32 132, label %105
    i32 130, label %145
    i32 131, label %145
  ]

62:                                               ; preds = %58
  %63 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %8, align 8
  %64 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %148

68:                                               ; preds = %62
  %69 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %8, align 8
  %70 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %8, align 8
  %72 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %71, i32 0, i32 3
  store i32 0, i32* %72, align 4
  %73 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %8, align 8
  %74 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %73, i32 0, i32 2
  store i32 0, i32* %74, align 8
  %75 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %76 = call i32 @m3_chan_active(%struct.sc_info* %75)
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %94

78:                                               ; preds = %68
  %79 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %80 = load i64, i64* @KDATA_TIMER_COUNT_RELOAD, align 8
  %81 = call i32 @m3_wr_assp_data(%struct.sc_info* %79, i64 %80, i32 240)
  %82 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %83 = load i64, i64* @KDATA_TIMER_COUNT_CURRENT, align 8
  %84 = call i32 @m3_wr_assp_data(%struct.sc_info* %82, i64 %83, i32 240)
  %85 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %86 = load i32, i32* @HOST_INT_CTRL, align 4
  %87 = call i32 @m3_rd_2(%struct.sc_info* %85, i32 %86)
  store i32 %87, i32* %10, align 4
  %88 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %89 = load i32, i32* @HOST_INT_CTRL, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @CLKRUN_GEN_ENABLE, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @m3_wr_2(%struct.sc_info* %88, i32 %89, i32 %92)
  br label %94

94:                                               ; preds = %78, %68
  %95 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %96 = load i64, i64* @KDATA_ADC1_REQUEST, align 8
  %97 = call i32 @m3_wr_assp_data(%struct.sc_info* %95, i64 %96, i32 1)
  %98 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %99 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %8, align 8
  %100 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @CDATA_INSTANCE_READY, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @m3_wr_assp_data(%struct.sc_info* %98, i64 %103, i32 1)
  br label %147

105:                                              ; preds = %58, %58
  %106 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %8, align 8
  %107 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i32 0, i32* %4, align 4
  br label %148

111:                                              ; preds = %105
  %112 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %8, align 8
  %113 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %112, i32 0, i32 0
  store i32 0, i32* %113, align 8
  %114 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %115 = call i32 @m3_chan_active(%struct.sc_info* %114)
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %134

117:                                              ; preds = %111
  %118 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %119 = load i64, i64* @KDATA_TIMER_COUNT_RELOAD, align 8
  %120 = call i32 @m3_wr_assp_data(%struct.sc_info* %118, i64 %119, i32 0)
  %121 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %122 = load i64, i64* @KDATA_TIMER_COUNT_CURRENT, align 8
  %123 = call i32 @m3_wr_assp_data(%struct.sc_info* %121, i64 %122, i32 0)
  %124 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %125 = load i32, i32* @HOST_INT_CTRL, align 4
  %126 = call i32 @m3_rd_2(%struct.sc_info* %124, i32 %125)
  store i32 %126, i32* %10, align 4
  %127 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %128 = load i32, i32* @HOST_INT_CTRL, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @CLKRUN_GEN_ENABLE, align 4
  %131 = xor i32 %130, -1
  %132 = and i32 %129, %131
  %133 = call i32 @m3_wr_2(%struct.sc_info* %127, i32 %128, i32 %132)
  br label %134

134:                                              ; preds = %117, %111
  %135 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %136 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %8, align 8
  %137 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @CDATA_INSTANCE_READY, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @m3_wr_assp_data(%struct.sc_info* %135, i64 %140, i32 0)
  %142 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %143 = load i64, i64* @KDATA_ADC1_REQUEST, align 8
  %144 = call i32 @m3_wr_assp_data(%struct.sc_info* %142, i64 %143, i32 0)
  br label %147

145:                                              ; preds = %58, %58
  br label %146

146:                                              ; preds = %58, %145
  br label %147

147:                                              ; preds = %146, %134, %94
  store i32 0, i32* %4, align 4
  br label %148

148:                                              ; preds = %147, %110, %67
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i32 @M3_LOCK_ASSERT(%struct.sc_info*) #1

declare dso_local i32 @M3_DEBUG(i32, i8*) #1

declare dso_local i32 @m3_chan_active(%struct.sc_info*) #1

declare dso_local i32 @m3_wr_assp_data(%struct.sc_info*, i64, i32) #1

declare dso_local i32 @m3_rd_2(%struct.sc_info*, i32) #1

declare dso_local i32 @m3_wr_2(%struct.sc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
