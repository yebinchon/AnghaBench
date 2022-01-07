; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_pchan_trigger_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_pchan_trigger_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_pchinfo = type { i32, i64, i32, i32, i32, %struct.sc_info* }
%struct.sc_info = type { i32 }

@CHANGE = common dso_local global i32 0, align 4
@CALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"m3_pchan_trigger(dac=%d, go=0x%x{%s})\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"PCMTRIG_START\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"PCMTRIG_STOP\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"PCMTRIG_ABORT\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@KDATA_TIMER_COUNT_RELOAD = common dso_local global i64 0, align 8
@KDATA_TIMER_COUNT_CURRENT = common dso_local global i64 0, align 8
@HOST_INT_CTRL = common dso_local global i32 0, align 4
@CLKRUN_GEN_ENABLE = common dso_local global i32 0, align 4
@CDATA_INSTANCE_READY = common dso_local global i64 0, align 8
@KDATA_MIXER_TASK_NUMBER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @m3_pchan_trigger_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m3_pchan_trigger_locked(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sc_pchinfo*, align 8
  %9 = alloca %struct.sc_info*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.sc_pchinfo*
  store %struct.sc_pchinfo* %12, %struct.sc_pchinfo** %8, align 8
  %13 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %8, align 8
  %14 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %13, i32 0, i32 5
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
  %40 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %8, align 8
  %41 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %40, i32 0, i32 4
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
  switch i32 %61, label %160 [
    i32 129, label %62
    i32 128, label %112
    i32 132, label %112
    i32 130, label %159
    i32 131, label %159
  ]

62:                                               ; preds = %58
  %63 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %8, align 8
  %64 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %162

68:                                               ; preds = %62
  %69 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %8, align 8
  %70 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %8, align 8
  %72 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %71, i32 0, i32 3
  store i32 0, i32* %72, align 4
  %73 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %8, align 8
  %74 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %73, i32 0, i32 2
  store i32 0, i32* %74, align 8
  %75 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %76 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %80 = call i32 @m3_chan_active(%struct.sc_info* %79)
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %98

82:                                               ; preds = %68
  %83 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %84 = load i64, i64* @KDATA_TIMER_COUNT_RELOAD, align 8
  %85 = call i32 @m3_wr_assp_data(%struct.sc_info* %83, i64 %84, i32 240)
  %86 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %87 = load i64, i64* @KDATA_TIMER_COUNT_CURRENT, align 8
  %88 = call i32 @m3_wr_assp_data(%struct.sc_info* %86, i64 %87, i32 240)
  %89 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %90 = load i32, i32* @HOST_INT_CTRL, align 4
  %91 = call i32 @m3_rd_2(%struct.sc_info* %89, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %93 = load i32, i32* @HOST_INT_CTRL, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @CLKRUN_GEN_ENABLE, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @m3_wr_2(%struct.sc_info* %92, i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %82, %68
  %99 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %100 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %8, align 8
  %101 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @CDATA_INSTANCE_READY, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @m3_wr_assp_data(%struct.sc_info* %99, i64 %104, i32 1)
  %106 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %107 = load i64, i64* @KDATA_MIXER_TASK_NUMBER, align 8
  %108 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %109 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @m3_wr_assp_data(%struct.sc_info* %106, i64 %107, i32 %110)
  br label %161

112:                                              ; preds = %58, %58
  %113 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %8, align 8
  %114 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  store i32 0, i32* %4, align 4
  br label %162

118:                                              ; preds = %112
  %119 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %8, align 8
  %120 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %119, i32 0, i32 0
  store i32 0, i32* %120, align 8
  %121 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %122 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %122, align 4
  %125 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %126 = call i32 @m3_chan_active(%struct.sc_info* %125)
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %145

128:                                              ; preds = %118
  %129 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %130 = load i64, i64* @KDATA_TIMER_COUNT_RELOAD, align 8
  %131 = call i32 @m3_wr_assp_data(%struct.sc_info* %129, i64 %130, i32 0)
  %132 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %133 = load i64, i64* @KDATA_TIMER_COUNT_CURRENT, align 8
  %134 = call i32 @m3_wr_assp_data(%struct.sc_info* %132, i64 %133, i32 0)
  %135 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %136 = load i32, i32* @HOST_INT_CTRL, align 4
  %137 = call i32 @m3_rd_2(%struct.sc_info* %135, i32 %136)
  store i32 %137, i32* %10, align 4
  %138 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %139 = load i32, i32* @HOST_INT_CTRL, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* @CLKRUN_GEN_ENABLE, align 4
  %142 = xor i32 %141, -1
  %143 = and i32 %140, %142
  %144 = call i32 @m3_wr_2(%struct.sc_info* %138, i32 %139, i32 %143)
  br label %145

145:                                              ; preds = %128, %118
  %146 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %147 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %8, align 8
  %148 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @CDATA_INSTANCE_READY, align 8
  %151 = add nsw i64 %149, %150
  %152 = call i32 @m3_wr_assp_data(%struct.sc_info* %146, i64 %151, i32 0)
  %153 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %154 = load i64, i64* @KDATA_MIXER_TASK_NUMBER, align 8
  %155 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %156 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @m3_wr_assp_data(%struct.sc_info* %153, i64 %154, i32 %157)
  br label %161

159:                                              ; preds = %58, %58
  br label %160

160:                                              ; preds = %58, %159
  br label %161

161:                                              ; preds = %160, %145, %98
  store i32 0, i32* %4, align 4
  br label %162

162:                                              ; preds = %161, %117, %67
  %163 = load i32, i32* %4, align 4
  ret i32 %163
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
