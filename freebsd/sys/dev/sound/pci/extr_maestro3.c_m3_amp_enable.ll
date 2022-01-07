; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_amp_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_amp_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"bad sc->which\00", align 1
@GPIO_MASK = common dso_local global i32 0, align 4
@GPIO_DIRECTION = common dso_local global i32 0, align 4
@GPO_SECONDARY_AC97 = common dso_local global i32 0, align 4
@GPO_PRIMARY_AC97 = common dso_local global i32 0, align 4
@GPIO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_info*)* @m3_amp_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m3_amp_enable(%struct.sc_info* %0) #0 {
  %2 = alloca %struct.sc_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %2, align 8
  %7 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %8 = call i32 @M3_LOCK_ASSERT(%struct.sc_info* %7)
  %9 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %10 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %14 [
    i32 129, label %12
    i32 128, label %13
  ]

12:                                               ; preds = %1
  store i32 6144, i32* %4, align 4
  br label %16

13:                                               ; preds = %1
  store i32 4352, i32* %4, align 4
  br label %16

14:                                               ; preds = %1
  %15 = call i32 @panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %13, %12
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 %17, 8
  %19 = and i32 %18, 15
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = ashr i32 %20, 12
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %3, align 4
  %28 = shl i32 %26, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %3, align 4
  %30 = shl i32 1, %29
  store i32 %30, i32* %3, align 4
  %31 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %32 = load i32, i32* @GPIO_MASK, align 4
  %33 = load i32, i32* %3, align 4
  %34 = xor i32 %33, -1
  %35 = call i32 @m3_wr_2(%struct.sc_info* %31, i32 %32, i32 %34)
  %36 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %37 = load i32, i32* @GPIO_DIRECTION, align 4
  %38 = call i32 @m3_rd_2(%struct.sc_info* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %40 = load i32, i32* @GPIO_DIRECTION, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @m3_wr_2(%struct.sc_info* %39, i32 %40, i32 %43)
  %45 = load i32, i32* @GPO_SECONDARY_AC97, align 4
  %46 = load i32, i32* @GPO_PRIMARY_AC97, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %6, align 4
  %50 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %51 = load i32, i32* @GPIO_DATA, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @m3_wr_2(%struct.sc_info* %50, i32 %51, i32 %52)
  %54 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %55 = load i32, i32* @GPIO_MASK, align 4
  %56 = call i32 @m3_wr_2(%struct.sc_info* %54, i32 %55, i32 -1)
  ret void
}

declare dso_local i32 @M3_LOCK_ASSERT(%struct.sc_info*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @m3_wr_2(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @m3_rd_2(%struct.sc_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
