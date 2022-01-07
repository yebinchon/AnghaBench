; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_agg_rdcodec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_agg_rdcodec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agg_info = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"agg_rdcodec() PROGLESS timed out.\0A\00", align 1
@PORT_CODEC_CMD = common dso_local global i32 0, align 4
@CODEC_CMD_READ = common dso_local global i32 0, align 4
@PORT_CODEC_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"agg_rdcodec() RW_DONE timed out.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.agg_info*, i32)* @agg_rdcodec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agg_rdcodec(%struct.agg_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.agg_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.agg_info* %0, %struct.agg_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %8 = call i64 @agg_codec_wait4idle(%struct.agg_info* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %12 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @device_printf(i32 %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %36

15:                                               ; preds = %2
  %16 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %17 = load i32, i32* @PORT_CODEC_CMD, align 4
  %18 = load i32, i32* @CODEC_CMD_READ, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @AGG_WR(%struct.agg_info* %16, i32 %17, i32 %20, i32 1)
  %22 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %23 = call i64 @agg_codec_wait4idle(%struct.agg_info* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %15
  %26 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %27 = load i32, i32* @PORT_CODEC_REG, align 4
  %28 = call i32 @AGG_RD(%struct.agg_info* %26, i32 %27, i32 2)
  store i32 %28, i32* %6, align 4
  br label %34

29:                                               ; preds = %15
  %30 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %31 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %34

34:                                               ; preds = %29, %25
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %10
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @agg_codec_wait4idle(%struct.agg_info*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @AGG_WR(%struct.agg_info*, i32, i32, i32) #1

declare dso_local i32 @AGG_RD(%struct.agg_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
