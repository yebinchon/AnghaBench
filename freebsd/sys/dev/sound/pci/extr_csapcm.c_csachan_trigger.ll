; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csapcm.c_csachan_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csapcm.c_csachan_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csa_chinfo = type { i64, %struct.csa_info* }
%struct.csa_info = type { i32 }

@PCMTRIG_START = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @csachan_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csachan_trigger(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.csa_chinfo*, align 8
  %9 = alloca %struct.csa_info*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.csa_chinfo*
  store %struct.csa_chinfo* %11, %struct.csa_chinfo** %8, align 8
  %12 = load %struct.csa_chinfo*, %struct.csa_chinfo** %8, align 8
  %13 = getelementptr inbounds %struct.csa_chinfo, %struct.csa_chinfo* %12, i32 0, i32 1
  %14 = load %struct.csa_info*, %struct.csa_info** %13, align 8
  store %struct.csa_info* %14, %struct.csa_info** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @PCMTRIG_COMMON(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %56

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @PCMTRIG_START, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load %struct.csa_info*, %struct.csa_info** %9, align 8
  %25 = call i32 @csa_active(%struct.csa_info* %24, i32 1)
  %26 = load %struct.csa_chinfo*, %struct.csa_chinfo** %8, align 8
  %27 = call i32 @csa_setupchan(%struct.csa_chinfo* %26)
  %28 = load %struct.csa_chinfo*, %struct.csa_chinfo** %8, align 8
  %29 = getelementptr inbounds %struct.csa_chinfo, %struct.csa_chinfo* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PCMDIR_PLAY, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load %struct.csa_info*, %struct.csa_info** %9, align 8
  %35 = call i32 @csa_startplaydma(%struct.csa_info* %34)
  br label %39

36:                                               ; preds = %23
  %37 = load %struct.csa_info*, %struct.csa_info** %9, align 8
  %38 = call i32 @csa_startcapturedma(%struct.csa_info* %37)
  br label %39

39:                                               ; preds = %36, %33
  br label %55

40:                                               ; preds = %19
  %41 = load %struct.csa_chinfo*, %struct.csa_chinfo** %8, align 8
  %42 = getelementptr inbounds %struct.csa_chinfo, %struct.csa_chinfo* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PCMDIR_PLAY, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.csa_info*, %struct.csa_info** %9, align 8
  %48 = call i32 @csa_stopplaydma(%struct.csa_info* %47)
  br label %52

49:                                               ; preds = %40
  %50 = load %struct.csa_info*, %struct.csa_info** %9, align 8
  %51 = call i32 @csa_stopcapturedma(%struct.csa_info* %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load %struct.csa_info*, %struct.csa_info** %9, align 8
  %54 = call i32 @csa_active(%struct.csa_info* %53, i32 -1)
  br label %55

55:                                               ; preds = %52, %39
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %18
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @PCMTRIG_COMMON(i32) #1

declare dso_local i32 @csa_active(%struct.csa_info*, i32) #1

declare dso_local i32 @csa_setupchan(%struct.csa_chinfo*) #1

declare dso_local i32 @csa_startplaydma(%struct.csa_info*) #1

declare dso_local i32 @csa_startcapturedma(%struct.csa_info*) #1

declare dso_local i32 @csa_stopplaydma(%struct.csa_info*) #1

declare dso_local i32 @csa_stopcapturedma(%struct.csa_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
