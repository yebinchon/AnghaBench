; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_gethwptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_gethwptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32, i32 }

@PCMDIR_PLAY = common dso_local global i32 0, align 4
@ENVY24_PLAY_BUFUNIT = common dso_local global i32 0, align 4
@ENVY24_MT_PCNT = common dso_local global i32 0, align 4
@ENVY24_REC_BUFUNIT = common dso_local global i32 0, align 4
@ENVY24_MT_RCNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*, i32)* @envy24_gethwptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @envy24_gethwptr(%struct.sc_info* %0, i32 %1) #0 {
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @PCMDIR_PLAY, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %14 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sdiv i32 %15, 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @ENVY24_PLAY_BUFUNIT, align 4
  %18 = sdiv i32 %17, 4
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @ENVY24_MT_PCNT, align 4
  store i32 %19, i32* %6, align 4
  br label %28

20:                                               ; preds = %2
  %21 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %22 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %23, 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @ENVY24_REC_BUFUNIT, align 4
  %26 = sdiv i32 %25, 4
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @ENVY24_MT_RCNT, align 4
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %20, %12
  %29 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @envy24_rdmt(%struct.sc_info* %29, i32 %30, i32 2)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %8, align 4
  %38 = sdiv i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  ret i32 %39
}

declare dso_local i32 @envy24_rdmt(%struct.sc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
