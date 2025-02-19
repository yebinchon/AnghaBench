; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_ac97.c_ac97_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_ac97.c_ac97_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_info = type { i32 }

@AC97_REG_RESET = common dso_local global i32 0, align 4
@AC97_REG_POWER = common dso_local global i32 0, align 4
@AC97_POWER_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"AC97 reset timed out.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ac97_info*)* @ac97_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ac97_reset(%struct.ac97_info* %0) #0 {
  %2 = alloca %struct.ac97_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ac97_info* %0, %struct.ac97_info** %2, align 8
  %5 = load %struct.ac97_info*, %struct.ac97_info** %2, align 8
  %6 = load i32, i32* @AC97_REG_RESET, align 4
  %7 = call i32 @ac97_wrcd(%struct.ac97_info* %5, i32 %6, i32 0)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %23, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 500
  br i1 %10, label %11, label %26

11:                                               ; preds = %8
  %12 = load %struct.ac97_info*, %struct.ac97_info** %2, align 8
  %13 = load i32, i32* @AC97_REG_POWER, align 4
  %14 = call i32 @ac97_rdcd(%struct.ac97_info* %12, i32 %13)
  %15 = load i32, i32* @AC97_POWER_STATUS, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @AC97_POWER_STATUS, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %31

21:                                               ; preds = %11
  %22 = call i32 @DELAY(i32 1000)
  br label %23

23:                                               ; preds = %21
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %8

26:                                               ; preds = %8
  %27 = load %struct.ac97_info*, %struct.ac97_info** %2, align 8
  %28 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %26, %20
  ret void
}

declare dso_local i32 @ac97_wrcd(%struct.ac97_info*, i32, i32) #1

declare dso_local i32 @ac97_rdcd(%struct.ac97_info*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
