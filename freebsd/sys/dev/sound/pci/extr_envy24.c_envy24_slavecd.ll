; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_slavecd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_slavecd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }

@ENVY24_MT_AC97CMD = common dso_local global i32 0, align 4
@ENVY24_MT_AC97CMD_CLD = common dso_local global i32 0, align 4
@ENVY24_MT_AC97CMD_WRM = common dso_local global i32 0, align 4
@ENVY24_TIMEOUT = common dso_local global i32 0, align 4
@ENVY24_MT_AC97CMD_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*)* @envy24_slavecd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @envy24_slavecd(%struct.sc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  %6 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %7 = load i32, i32* @ENVY24_MT_AC97CMD, align 4
  %8 = load i32, i32* @ENVY24_MT_AC97CMD_CLD, align 4
  %9 = load i32, i32* @ENVY24_MT_AC97CMD_WRM, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @envy24_wrmt(%struct.sc_info* %6, i32 %7, i32 %10, i32 1)
  %12 = call i32 @DELAY(i32 10)
  %13 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %14 = load i32, i32* @ENVY24_MT_AC97CMD, align 4
  %15 = call i32 @envy24_wrmt(%struct.sc_info* %13, i32 %14, i32 0, i32 1)
  %16 = call i32 @DELAY(i32 1000)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %31, %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @ENVY24_TIMEOUT, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %23 = load i32, i32* @ENVY24_MT_AC97CMD, align 4
  %24 = call i32 @envy24_rdmt(%struct.sc_info* %22, i32 %23, i32 1)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @ENVY24_MT_AC97CMD_RDY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %35

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %17

34:                                               ; preds = %17
  store i32 -1, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @envy24_wrmt(%struct.sc_info*, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @envy24_rdmt(%struct.sc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
