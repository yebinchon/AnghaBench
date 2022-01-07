; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_solo.c_ess_reset_dsp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_solo.c_ess_reset_dsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ess_info = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"ess_reset_dsp\0A\00", align 1
@SBDSP_RST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"ess_reset_dsp failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ess_info*)* @ess_reset_dsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ess_reset_dsp(%struct.ess_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ess_info*, align 8
  store %struct.ess_info* %0, %struct.ess_info** %3, align 8
  %4 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @DEB(i32 %4)
  %6 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %7 = load i32, i32* @SBDSP_RST, align 4
  %8 = call i32 @ess_wr(%struct.ess_info* %6, i32 %7, i32 3)
  %9 = call i32 @DELAY(i32 100)
  %10 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %11 = load i32, i32* @SBDSP_RST, align 4
  %12 = call i32 @ess_wr(%struct.ess_info* %10, i32 %11, i32 0)
  %13 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %14 = call i32 @ess_get_byte(%struct.ess_info* %13)
  %15 = icmp ne i32 %14, 170
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 @DEB(i32 %17)
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %23

20:                                               ; preds = %1
  %21 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %22 = call i32 @ess_cmd(%struct.ess_info* %21, i32 198)
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %20, %16
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @DEB(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ess_wr(%struct.ess_info*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ess_get_byte(%struct.ess_info*) #1

declare dso_local i32 @ess_cmd(%struct.ess_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
