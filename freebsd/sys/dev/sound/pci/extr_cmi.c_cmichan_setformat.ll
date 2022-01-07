; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmichan_setformat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmichan_setformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_chinfo = type { i32, i64, i32, %struct.sc_info* }
%struct.sc_info = type { i32 }

@AFMT_S16_LE = common dso_local global i32 0, align 4
@CMPCI_REG_FORMAT_16BIT = common dso_local global i32 0, align 4
@CMPCI_REG_FORMAT_8BIT = common dso_local global i32 0, align 4
@CMPCI_REG_FORMAT_STEREO = common dso_local global i32 0, align 4
@CMPCI_REG_FORMAT_MONO = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i64 0, align 8
@CMPCI_REG_CHANNEL_FORMAT = common dso_local global i32 0, align 4
@CMPCI_REG_CH0_FORMAT_SHIFT = common dso_local global i32 0, align 4
@CMPCI_REG_CH0_FORMAT_MASK = common dso_local global i32 0, align 4
@CMPCI_REG_CH1_FORMAT_SHIFT = common dso_local global i32 0, align 4
@CMPCI_REG_CH1_FORMAT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @cmichan_setformat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmichan_setformat(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sc_chinfo*, align 8
  %8 = alloca %struct.sc_info*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.sc_chinfo*
  store %struct.sc_chinfo* %11, %struct.sc_chinfo** %7, align 8
  %12 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %13 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %12, i32 0, i32 3
  %14 = load %struct.sc_info*, %struct.sc_info** %13, align 8
  store %struct.sc_info* %14, %struct.sc_info** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @AFMT_S16_LE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* @CMPCI_REG_FORMAT_16BIT, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %22 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %21, i32 0, i32 0
  store i32 2, i32* %22, align 8
  br label %27

23:                                               ; preds = %3
  %24 = load i32, i32* @CMPCI_REG_FORMAT_8BIT, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %26 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @AFMT_CHANNEL(i32 %28)
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i32, i32* @CMPCI_REG_FORMAT_STEREO, align 4
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %36 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %37, 2
  store i32 %38, i32* %36, align 8
  br label %43

39:                                               ; preds = %27
  %40 = load i32, i32* @CMPCI_REG_FORMAT_MONO, align 4
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %39, %31
  %44 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %45 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @snd_mtxlock(i32 %46)
  %48 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %49 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PCMDIR_PLAY, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %43
  %54 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %55 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %54, i32 0, i32 3
  %56 = load %struct.sc_info*, %struct.sc_info** %55, align 8
  %57 = load i32, i32* @CMPCI_REG_CHANNEL_FORMAT, align 4
  %58 = load i32, i32* @CMPCI_REG_CH0_FORMAT_SHIFT, align 4
  %59 = load i32, i32* @CMPCI_REG_CH0_FORMAT_MASK, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @cmi_partial_wr4(%struct.sc_info* %56, i32 %57, i32 %58, i32 %59, i32 %60)
  br label %71

62:                                               ; preds = %43
  %63 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %64 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %63, i32 0, i32 3
  %65 = load %struct.sc_info*, %struct.sc_info** %64, align 8
  %66 = load i32, i32* @CMPCI_REG_CHANNEL_FORMAT, align 4
  %67 = load i32, i32* @CMPCI_REG_CH1_FORMAT_SHIFT, align 4
  %68 = load i32, i32* @CMPCI_REG_CH1_FORMAT_MASK, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @cmi_partial_wr4(%struct.sc_info* %65, i32 %66, i32 %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %62, %53
  %72 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %73 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @snd_mtxunlock(i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %78 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  ret i32 0
}

declare dso_local i32 @AFMT_CHANNEL(i32) #1

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @cmi_partial_wr4(%struct.sc_info*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
