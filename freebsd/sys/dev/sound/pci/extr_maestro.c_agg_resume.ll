; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_agg_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_agg_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agg_info = type { i32, i32, i32, i64 }

@powerstate_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unable to reinitialize the mixer\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agg_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agg_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.agg_info*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.agg_info* @pcm_getdevinfo(i32 %6)
  store %struct.agg_info* %7, %struct.agg_info** %5, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %31, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.agg_info*, %struct.agg_info** %5, align 8
  %11 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %8
  %15 = load %struct.agg_info*, %struct.agg_info** %5, align 8
  %16 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = shl i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %14
  %23 = load %struct.agg_info*, %struct.agg_info** %5, align 8
  %24 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = call i32 @aggch_start_dac(i64 %28)
  br label %30

30:                                               ; preds = %22, %14
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %8

34:                                               ; preds = %8
  %35 = load %struct.agg_info*, %struct.agg_info** %5, align 8
  %36 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = shl i32 1, %38
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load %struct.agg_info*, %struct.agg_info** %5, align 8
  %44 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %43, i32 0, i32 2
  %45 = call i32 @aggch_start_adc(i32* %44)
  br label %46

46:                                               ; preds = %42, %34
  %47 = load %struct.agg_info*, %struct.agg_info** %5, align 8
  %48 = call i32 @agg_lock(%struct.agg_info* %47)
  %49 = load %struct.agg_info*, %struct.agg_info** %5, align 8
  %50 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %46
  %54 = load %struct.agg_info*, %struct.agg_info** %5, align 8
  %55 = load i32, i32* @powerstate_init, align 4
  %56 = call i32 @agg_power(%struct.agg_info* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %46
  %58 = load %struct.agg_info*, %struct.agg_info** %5, align 8
  %59 = call i32 @agg_unlock(%struct.agg_info* %58)
  %60 = load i32, i32* %3, align 4
  %61 = call i64 @mixer_reinit(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @device_printf(i32 %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @ENXIO, align 4
  store i32 %66, i32* %2, align 4
  br label %68

67:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %63
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.agg_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @aggch_start_dac(i64) #1

declare dso_local i32 @aggch_start_adc(i32*) #1

declare dso_local i32 @agg_lock(%struct.agg_info*) #1

declare dso_local i32 @agg_power(%struct.agg_info*, i32) #1

declare dso_local i32 @agg_unlock(%struct.agg_info*) #1

declare dso_local i64 @mixer_reinit(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
