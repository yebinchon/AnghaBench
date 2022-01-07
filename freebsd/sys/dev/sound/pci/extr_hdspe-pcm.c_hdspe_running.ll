; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe-pcm.c_hdspe_running.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe-pcm.c_hdspe_running.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }
%struct.sc_pcminfo = type { i32, %struct.sc_chinfo* }
%struct.sc_chinfo = type { i64 }

@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*)* @hdspe_running to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdspe_running(%struct.sc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca %struct.sc_pcminfo*, align 8
  %5 = alloca %struct.sc_chinfo*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  %11 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %12 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @device_get_children(i32 %13, i32** %6, i32* %7)
  store i32 %14, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %59

17:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %52, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %55

22:                                               ; preds = %18
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.sc_pcminfo* @device_get_ivars(i32 %27)
  store %struct.sc_pcminfo* %28, %struct.sc_pcminfo** %4, align 8
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %48, %22
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %4, align 8
  %32 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %29
  %36 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %4, align 8
  %37 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %36, i32 0, i32 1
  %38 = load %struct.sc_chinfo*, %struct.sc_chinfo** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %38, i64 %40
  store %struct.sc_chinfo* %41, %struct.sc_chinfo** %5, align 8
  %42 = load %struct.sc_chinfo*, %struct.sc_chinfo** %5, align 8
  %43 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %59

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %29

51:                                               ; preds = %29
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %18

55:                                               ; preds = %18
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* @M_TEMP, align 4
  %58 = call i32 @free(i32* %56, i32 %57)
  store i32 0, i32* %2, align 4
  br label %63

59:                                               ; preds = %46, %16
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* @M_TEMP, align 4
  %62 = call i32 @free(i32* %60, i32 %61)
  store i32 1, i32* %2, align 4
  br label %63

63:                                               ; preds = %59, %55
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @device_get_children(i32, i32**, i32*) #1

declare dso_local %struct.sc_pcminfo* @device_get_ivars(i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
