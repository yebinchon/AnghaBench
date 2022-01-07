; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_agg_wrcodec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_agg_wrcodec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agg_info = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"agg_wrcodec() PROGLESS timed out.\0A\00", align 1
@PORT_CODEC_REG = common dso_local global i32 0, align 4
@PORT_CODEC_CMD = common dso_local global i32 0, align 4
@CODEC_CMD_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"agg_wrcodec() RW_DONE timed out.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.agg_info*, i32, i32)* @agg_wrcodec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agg_wrcodec(%struct.agg_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.agg_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.agg_info* %0, %struct.agg_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.agg_info*, %struct.agg_info** %5, align 8
  %9 = call i64 @agg_codec_wait4idle(%struct.agg_info* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.agg_info*, %struct.agg_info** %5, align 8
  %13 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @device_printf(i32 %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %36

16:                                               ; preds = %3
  %17 = load %struct.agg_info*, %struct.agg_info** %5, align 8
  %18 = load i32, i32* @PORT_CODEC_REG, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @AGG_WR(%struct.agg_info* %17, i32 %18, i32 %19, i32 2)
  %21 = load %struct.agg_info*, %struct.agg_info** %5, align 8
  %22 = load i32, i32* @PORT_CODEC_CMD, align 4
  %23 = load i32, i32* @CODEC_CMD_WRITE, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @AGG_WR(%struct.agg_info* %21, i32 %22, i32 %25, i32 1)
  %27 = load %struct.agg_info*, %struct.agg_info** %5, align 8
  %28 = call i64 @agg_codec_wait4idle(%struct.agg_info* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %16
  %31 = load %struct.agg_info*, %struct.agg_info** %5, align 8
  %32 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %36

35:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %30, %11
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i64 @agg_codec_wait4idle(%struct.agg_info*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @AGG_WR(%struct.agg_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
