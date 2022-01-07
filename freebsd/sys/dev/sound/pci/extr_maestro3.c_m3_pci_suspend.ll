; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_pci_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_pci_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32, i32*, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"m3_pci_suspend\0A\00", align 1
@PCMTRIG_STOP = common dso_local global i32 0, align 4
@HOST_INT_CTRL = common dso_local global i32 0, align 4
@ASSP_CONTROL_C = common dso_local global i32 0, align 4
@REV_B_CODE_MEMORY_BEGIN = common dso_local global i32 0, align 4
@REV_B_CODE_MEMORY_END = common dso_local global i32 0, align 4
@REV_B_DATA_MEMORY_BEGIN = common dso_local global i32 0, align 4
@REV_B_DATA_MEMORY_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @m3_pci_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m3_pci_suspend(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.sc_info* @pcm_getdevinfo(i32 %6)
  store %struct.sc_info* %7, %struct.sc_info** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @CHANGE, align 4
  %9 = call i32 @M3_DEBUG(i32 %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %11 = call i32 @M3_LOCK(%struct.sc_info* %10)
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %38, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %15 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %12
  %19 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %20 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %19, i32 0, i32 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %18
  %29 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %30 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %29, i32 0, i32 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = load i32, i32* @PCMTRIG_STOP, align 4
  %36 = call i32 @m3_pchan_trigger_locked(i32* null, %struct.TYPE_4__* %34, i32 %35)
  br label %37

37:                                               ; preds = %28, %18
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %12

41:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %68, %41
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %45 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %42
  %49 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %50 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %49, i32 0, i32 3
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %48
  %59 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %60 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %59, i32 0, i32 3
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = load i32, i32* @PCMTRIG_STOP, align 4
  %66 = call i32 @m3_rchan_trigger_locked(i32* null, %struct.TYPE_3__* %64, i32 %65)
  br label %67

67:                                               ; preds = %58, %48
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %42

71:                                               ; preds = %42
  %72 = call i32 @DELAY(i32 10000)
  %73 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %74 = load i32, i32* @HOST_INT_CTRL, align 4
  %75 = call i32 @m3_wr_2(%struct.sc_info* %73, i32 %74, i32 0)
  %76 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %77 = load i32, i32* @ASSP_CONTROL_C, align 4
  %78 = call i32 @m3_wr_1(%struct.sc_info* %76, i32 %77, i32 0)
  %79 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %80 = call i32 @m3_assp_halt(%struct.sc_info* %79)
  %81 = load i32, i32* @REV_B_CODE_MEMORY_BEGIN, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %97, %71
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @REV_B_CODE_MEMORY_END, align 4
  %85 = icmp sle i32 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %82
  %87 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @m3_rd_assp_code(%struct.sc_info* %87, i32 %88)
  %90 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %91 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  store i32 %89, i32* %96, align 4
  br label %97

97:                                               ; preds = %86
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  br label %82

100:                                              ; preds = %82
  %101 = load i32, i32* @REV_B_DATA_MEMORY_BEGIN, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %117, %100
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @REV_B_DATA_MEMORY_END, align 4
  %105 = icmp sle i32 %103, %104
  br i1 %105, label %106, label %120

106:                                              ; preds = %102
  %107 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @m3_rd_assp_data(%struct.sc_info* %107, i32 %108)
  %110 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %111 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %5, align 4
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  store i32 %109, i32* %116, align 4
  br label %117

117:                                              ; preds = %106
  %118 = load i32, i32* %4, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %4, align 4
  br label %102

120:                                              ; preds = %102
  %121 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %122 = call i32 @m3_power(%struct.sc_info* %121, i32 3)
  %123 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %124 = call i32 @M3_UNLOCK(%struct.sc_info* %123)
  ret i32 0
}

declare dso_local %struct.sc_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @M3_DEBUG(i32, i8*) #1

declare dso_local i32 @M3_LOCK(%struct.sc_info*) #1

declare dso_local i32 @m3_pchan_trigger_locked(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @m3_rchan_trigger_locked(i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @m3_wr_2(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @m3_wr_1(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @m3_assp_halt(%struct.sc_info*) #1

declare dso_local i32 @m3_rd_assp_code(%struct.sc_info*, i32) #1

declare dso_local i32 @m3_rd_assp_data(%struct.sc_info*, i32) #1

declare dso_local i32 @m3_power(%struct.sc_info*, i32) #1

declare dso_local i32 @M3_UNLOCK(%struct.sc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
