; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmichan_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmichan_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_chinfo = type { i64, %struct.sc_info* }
%struct.sc_info = type { i32 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @cmichan_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmichan_trigger(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sc_chinfo*, align 8
  %9 = alloca %struct.sc_info*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.sc_chinfo*
  store %struct.sc_chinfo* %11, %struct.sc_chinfo** %8, align 8
  %12 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %13 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %12, i32 0, i32 1
  %14 = load %struct.sc_info*, %struct.sc_info** %13, align 8
  store %struct.sc_info* %14, %struct.sc_info** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @PCMTRIG_COMMON(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %56

19:                                               ; preds = %3
  %20 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %21 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @snd_mtxlock(i32 %22)
  %24 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %25 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PCMDIR_PLAY, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %19
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %39 [
    i32 129, label %31
    i32 128, label %35
    i32 130, label %35
  ]

31:                                               ; preds = %29
  %32 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %33 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %34 = call i32 @cmi_ch0_start(%struct.sc_info* %32, %struct.sc_chinfo* %33)
  br label %39

35:                                               ; preds = %29, %29
  %36 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %37 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %38 = call i32 @cmi_ch0_stop(%struct.sc_info* %36, %struct.sc_chinfo* %37)
  br label %39

39:                                               ; preds = %29, %35, %31
  br label %51

40:                                               ; preds = %19
  %41 = load i32, i32* %7, align 4
  switch i32 %41, label %50 [
    i32 129, label %42
    i32 128, label %46
    i32 130, label %46
  ]

42:                                               ; preds = %40
  %43 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %44 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %45 = call i32 @cmi_ch1_start(%struct.sc_info* %43, %struct.sc_chinfo* %44)
  br label %50

46:                                               ; preds = %40, %40
  %47 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %48 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %49 = call i32 @cmi_ch1_stop(%struct.sc_info* %47, %struct.sc_chinfo* %48)
  br label %50

50:                                               ; preds = %40, %46, %42
  br label %51

51:                                               ; preds = %50, %39
  %52 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %53 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @snd_mtxunlock(i32 %54)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %51, %18
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @PCMTRIG_COMMON(i32) #1

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @cmi_ch0_start(%struct.sc_info*, %struct.sc_chinfo*) #1

declare dso_local i32 @cmi_ch0_stop(%struct.sc_info*, %struct.sc_chinfo*) #1

declare dso_local i32 @cmi_ch1_start(%struct.sc_info*, %struct.sc_chinfo*) #1

declare dso_local i32 @cmi_ch1_stop(%struct.sc_info*, %struct.sc_chinfo*) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
