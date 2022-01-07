; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ess.c_ess_reset_dsp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ess.c_ess_reset_dsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ess_info = type { i32 }

@SBDSP_RST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"ess_reset_dsp 0x%lx failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ess_info*)* @ess_reset_dsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ess_reset_dsp(%struct.ess_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ess_info*, align 8
  store %struct.ess_info* %0, %struct.ess_info** %3, align 8
  %4 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %5 = load i32, i32* @SBDSP_RST, align 4
  %6 = call i32 @ess_wr(%struct.ess_info* %4, i32 %5, i32 3)
  %7 = call i32 @DELAY(i32 100)
  %8 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %9 = load i32, i32* @SBDSP_RST, align 4
  %10 = call i32 @ess_wr(%struct.ess_info* %8, i32 %9, i32 0)
  %11 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %12 = call i32 @ess_get_byte(%struct.ess_info* %11)
  %13 = icmp ne i32 %12, 170
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %16 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @rman_get_start(i32 %17)
  %19 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = call i32 @DEB(i32 %19)
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %24 = call i32 @ess_cmd(%struct.ess_info* %23, i32 198)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %22, %14
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @ess_wr(%struct.ess_info*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ess_get_byte(%struct.ess_info*) #1

declare dso_local i32 @DEB(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @rman_get_start(i32) #1

declare dso_local i32 @ess_cmd(%struct.ess_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
