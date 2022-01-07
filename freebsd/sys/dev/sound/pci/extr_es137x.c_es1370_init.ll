; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_es1370_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_es1370_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.es_info = type { i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"fixed_rate\00", align 1
@es_caps = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"single_pcm_mixer\00", align 1
@DSP_DEFAULT_SPEED = common dso_local global i32 0, align 4
@CTRL_CDC_EN = common dso_local global i32 0, align 4
@CTRL_JYSTK_EN = common dso_local global i32 0, align 4
@CTRL_SERR_DIS = common dso_local global i32 0, align 4
@CTRL_SH_PCLKDIV = common dso_local global i32 0, align 4
@CTRL_SH_WTSRSEL = common dso_local global i32 0, align 4
@ES1370_REG_CONTROL = common dso_local global i32 0, align 4
@ES1370_REG_SERIAL_CONTROL = common dso_local global i32 0, align 4
@CODEC_RES_PD = common dso_local global i32 0, align 4
@CODEC_CSEL = common dso_local global i32 0, align 4
@CODEC_ADSEL = common dso_local global i32 0, align 4
@CODEC_MGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.es_info*)* @es1370_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es1370_init(%struct.es_info* %0) #0 {
  %2 = alloca %struct.es_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.es_info* %0, %struct.es_info** %2, align 8
  %6 = load %struct.es_info*, %struct.es_info** %2, align 8
  %7 = getelementptr inbounds %struct.es_info, %struct.es_info* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @device_get_name(i32 %8)
  %10 = load %struct.es_info*, %struct.es_info** %2, align 8
  %11 = getelementptr inbounds %struct.es_info, %struct.es_info* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @device_get_unit(i32 %12)
  %14 = call i64 @resource_int_value(i32 %9, i32 %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %4)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @es_caps, i32 0, i32 0), align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @es_caps, i32 0, i32 0), align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %24, %20
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @es_caps, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @es_caps, i32 0, i32 1), align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %26
  br label %33

33:                                               ; preds = %32, %16
  br label %36

34:                                               ; preds = %1
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @es_caps, i32 0, i32 1), align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %33
  %37 = load %struct.es_info*, %struct.es_info** %2, align 8
  %38 = getelementptr inbounds %struct.es_info, %struct.es_info* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @device_get_name(i32 %39)
  %41 = load %struct.es_info*, %struct.es_info** %2, align 8
  %42 = getelementptr inbounds %struct.es_info, %struct.es_info* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @device_get_unit(i32 %43)
  %45 = call i64 @resource_int_value(i32 %40, i32 %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %4)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %36
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 1, i32 0
  store i32 %51, i32* %5, align 4
  br label %53

52:                                               ; preds = %36
  store i32 1, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %47
  %54 = load %struct.es_info*, %struct.es_info** %2, align 8
  %55 = call i32 @ES_LOCK(%struct.es_info* %54)
  %56 = load %struct.es_info*, %struct.es_info** %2, align 8
  %57 = getelementptr inbounds %struct.es_info, %struct.es_info* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @ES_NUMPLAY(i8* %58)
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i32 1, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %53
  %63 = load %struct.es_info*, %struct.es_info** %2, align 8
  %64 = getelementptr inbounds %struct.es_info, %struct.es_info* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = call i8* @ES_SET_IS_ES1370(i8* %65, i32 1)
  %67 = load %struct.es_info*, %struct.es_info** %2, align 8
  %68 = getelementptr inbounds %struct.es_info, %struct.es_info* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* %3, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %62
  %72 = load %struct.es_info*, %struct.es_info** %2, align 8
  %73 = getelementptr inbounds %struct.es_info, %struct.es_info* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = call i8* @ES_SET_FIXED_RATE(i8* %74, i32 %75)
  %77 = load %struct.es_info*, %struct.es_info** %2, align 8
  %78 = getelementptr inbounds %struct.es_info, %struct.es_info* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  br label %87

79:                                               ; preds = %62
  %80 = load %struct.es_info*, %struct.es_info** %2, align 8
  %81 = getelementptr inbounds %struct.es_info, %struct.es_info* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = call i8* @ES_SET_FIXED_RATE(i8* %82, i32 0)
  %84 = load %struct.es_info*, %struct.es_info** %2, align 8
  %85 = getelementptr inbounds %struct.es_info, %struct.es_info* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* @DSP_DEFAULT_SPEED, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %79, %71
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load %struct.es_info*, %struct.es_info** %2, align 8
  %92 = getelementptr inbounds %struct.es_info, %struct.es_info* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = call i8* @ES_SET_SINGLE_PCM_MIX(i8* %93, i32 1)
  %95 = load %struct.es_info*, %struct.es_info** %2, align 8
  %96 = getelementptr inbounds %struct.es_info, %struct.es_info* %95, i32 0, i32 2
  store i8* %94, i8** %96, align 8
  br label %104

97:                                               ; preds = %87
  %98 = load %struct.es_info*, %struct.es_info** %2, align 8
  %99 = getelementptr inbounds %struct.es_info, %struct.es_info* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = call i8* @ES_SET_SINGLE_PCM_MIX(i8* %100, i32 0)
  %102 = load %struct.es_info*, %struct.es_info** %2, align 8
  %103 = getelementptr inbounds %struct.es_info, %struct.es_info* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  br label %104

104:                                              ; preds = %97, %90
  %105 = load i32, i32* @CTRL_CDC_EN, align 4
  %106 = load i32, i32* @CTRL_JYSTK_EN, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @CTRL_SERR_DIS, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @DAC2_SRTODIV(i32 %110)
  %112 = load i32, i32* @CTRL_SH_PCLKDIV, align 4
  %113 = shl i32 %111, %112
  %114 = or i32 %109, %113
  %115 = load %struct.es_info*, %struct.es_info** %2, align 8
  %116 = getelementptr inbounds %struct.es_info, %struct.es_info* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* @CTRL_SH_WTSRSEL, align 4
  %118 = shl i32 3, %117
  %119 = load %struct.es_info*, %struct.es_info** %2, align 8
  %120 = getelementptr inbounds %struct.es_info, %struct.es_info* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  %123 = load %struct.es_info*, %struct.es_info** %2, align 8
  %124 = load i32, i32* @ES1370_REG_CONTROL, align 4
  %125 = load %struct.es_info*, %struct.es_info** %2, align 8
  %126 = getelementptr inbounds %struct.es_info, %struct.es_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @es_wr(%struct.es_info* %123, i32 %124, i32 %127, i32 4)
  %129 = load %struct.es_info*, %struct.es_info** %2, align 8
  %130 = getelementptr inbounds %struct.es_info, %struct.es_info* %129, i32 0, i32 1
  store i32 0, i32* %130, align 4
  %131 = load %struct.es_info*, %struct.es_info** %2, align 8
  %132 = load i32, i32* @ES1370_REG_SERIAL_CONTROL, align 4
  %133 = load %struct.es_info*, %struct.es_info** %2, align 8
  %134 = getelementptr inbounds %struct.es_info, %struct.es_info* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @es_wr(%struct.es_info* %131, i32 %132, i32 %135, i32 4)
  %137 = load %struct.es_info*, %struct.es_info** %2, align 8
  %138 = load i32, i32* @CODEC_RES_PD, align 4
  %139 = call i32 @es1370_wrcodec(%struct.es_info* %137, i32 %138, i32 3)
  %140 = load %struct.es_info*, %struct.es_info** %2, align 8
  %141 = load i32, i32* @CODEC_CSEL, align 4
  %142 = call i32 @es1370_wrcodec(%struct.es_info* %140, i32 %141, i32 0)
  %143 = load %struct.es_info*, %struct.es_info** %2, align 8
  %144 = load i32, i32* @CODEC_ADSEL, align 4
  %145 = call i32 @es1370_wrcodec(%struct.es_info* %143, i32 %144, i32 0)
  %146 = load %struct.es_info*, %struct.es_info** %2, align 8
  %147 = load i32, i32* @CODEC_MGAIN, align 4
  %148 = call i32 @es1370_wrcodec(%struct.es_info* %146, i32 %147, i32 0)
  %149 = load %struct.es_info*, %struct.es_info** %2, align 8
  %150 = call i32 @ES_UNLOCK(%struct.es_info* %149)
  ret i32 0
}

declare dso_local i64 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @ES_LOCK(%struct.es_info*) #1

declare dso_local i32 @ES_NUMPLAY(i8*) #1

declare dso_local i8* @ES_SET_IS_ES1370(i8*, i32) #1

declare dso_local i8* @ES_SET_FIXED_RATE(i8*, i32) #1

declare dso_local i8* @ES_SET_SINGLE_PCM_MIX(i8*, i32) #1

declare dso_local i32 @DAC2_SRTODIV(i32) #1

declare dso_local i32 @es_wr(%struct.es_info*, i32, i32, i32) #1

declare dso_local i32 @es1370_wrcodec(%struct.es_info*, i32, i32) #1

declare dso_local i32 @ES_UNLOCK(%struct.es_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
