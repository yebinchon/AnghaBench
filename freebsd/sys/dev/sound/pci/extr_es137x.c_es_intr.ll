; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_es_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_es_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es_info = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ES1370_REG_STATUS = common dso_local global i32 0, align 4
@STAT_INTR = common dso_local global i32 0, align 4
@STAT_ADC = common dso_local global i32 0, align 4
@SCTRL_R1INTEN = common dso_local global i32 0, align 4
@STAT_DAC1 = common dso_local global i32 0, align 4
@SCTRL_P1INTEN = common dso_local global i32 0, align 4
@STAT_DAC2 = common dso_local global i32 0, align 4
@SCTRL_P2INTEN = common dso_local global i32 0, align 4
@ES1370_REG_SERIAL_CONTROL = common dso_local global i32 0, align 4
@ES_ADC = common dso_local global i64 0, align 8
@ES_DAC1 = common dso_local global i64 0, align 8
@ES_DAC2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @es_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @es_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.es_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.es_info*
  store %struct.es_info* %7, %struct.es_info** %3, align 8
  %8 = load %struct.es_info*, %struct.es_info** %3, align 8
  %9 = call i32 @ES_LOCK(%struct.es_info* %8)
  %10 = load %struct.es_info*, %struct.es_info** %3, align 8
  %11 = getelementptr inbounds %struct.es_info, %struct.es_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.es_info*, %struct.es_info** %3, align 8
  %16 = call i32 @ES_UNLOCK(%struct.es_info* %15)
  br label %115

17:                                               ; preds = %1
  %18 = load %struct.es_info*, %struct.es_info** %3, align 8
  %19 = load i32, i32* @ES1370_REG_STATUS, align 4
  %20 = call i32 @es_rd(%struct.es_info* %18, i32 %19, i32 4)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @STAT_INTR, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load %struct.es_info*, %struct.es_info** %3, align 8
  %27 = call i32 @ES_UNLOCK(%struct.es_info* %26)
  br label %115

28:                                               ; preds = %17
  %29 = load %struct.es_info*, %struct.es_info** %3, align 8
  %30 = getelementptr inbounds %struct.es_info, %struct.es_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @STAT_ADC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load i32, i32* @SCTRL_R1INTEN, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %36, %28
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @STAT_DAC1, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i32, i32* @SCTRL_P1INTEN, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %46, %41
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @STAT_DAC2, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i32, i32* @SCTRL_P2INTEN, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %56, %51
  %62 = load %struct.es_info*, %struct.es_info** %3, align 8
  %63 = load i32, i32* @ES1370_REG_SERIAL_CONTROL, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @es_wr(%struct.es_info* %62, i32 %63, i32 %64, i32 4)
  %66 = load %struct.es_info*, %struct.es_info** %3, align 8
  %67 = load i32, i32* @ES1370_REG_SERIAL_CONTROL, align 4
  %68 = load %struct.es_info*, %struct.es_info** %3, align 8
  %69 = getelementptr inbounds %struct.es_info, %struct.es_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @es_wr(%struct.es_info* %66, i32 %67, i32 %70, i32 4)
  %72 = load %struct.es_info*, %struct.es_info** %3, align 8
  %73 = call i32 @ES_UNLOCK(%struct.es_info* %72)
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @STAT_ADC, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %61
  %79 = load %struct.es_info*, %struct.es_info** %3, align 8
  %80 = getelementptr inbounds %struct.es_info, %struct.es_info* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i64, i64* @ES_ADC, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @chn_intr(i32 %85)
  br label %87

87:                                               ; preds = %78, %61
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @STAT_DAC1, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load %struct.es_info*, %struct.es_info** %3, align 8
  %94 = getelementptr inbounds %struct.es_info, %struct.es_info* %93, i32 0, i32 2
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = load i64, i64* @ES_DAC1, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @chn_intr(i32 %99)
  br label %101

101:                                              ; preds = %92, %87
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @STAT_DAC2, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load %struct.es_info*, %struct.es_info** %3, align 8
  %108 = getelementptr inbounds %struct.es_info, %struct.es_info* %107, i32 0, i32 2
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load i64, i64* @ES_DAC2, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @chn_intr(i32 %113)
  br label %115

115:                                              ; preds = %14, %25, %106, %101
  ret void
}

declare dso_local i32 @ES_LOCK(%struct.es_info*) #1

declare dso_local i32 @ES_UNLOCK(%struct.es_info*) #1

declare dso_local i32 @es_rd(%struct.es_info*, i32, i32) #1

declare dso_local i32 @es_wr(%struct.es_info*, i32, i32, i32) #1

declare dso_local i32 @chn_intr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
