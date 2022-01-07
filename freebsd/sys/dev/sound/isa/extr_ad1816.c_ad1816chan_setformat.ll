; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ad1816.c_ad1816chan_setformat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ad1816.c_ad1816chan_setformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad1816_chinfo = type { i64, %struct.ad1816_info* }
%struct.ad1816_info = type { i32 }

@AD1816_U8 = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i64 0, align 8
@AD1816_PLAY = common dso_local global i32 0, align 4
@AD1816_CAPT = common dso_local global i32 0, align 4
@AD1816_ALAW = common dso_local global i32 0, align 4
@AD1816_MULAW = common dso_local global i32 0, align 4
@AD1816_S16LE = common dso_local global i32 0, align 4
@AD1816_S16BE = common dso_local global i32 0, align 4
@AD1816_STEREO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @ad1816chan_setformat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1816chan_setformat(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ad1816_chinfo*, align 8
  %8 = alloca %struct.ad1816_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.ad1816_chinfo*
  store %struct.ad1816_chinfo* %12, %struct.ad1816_chinfo** %7, align 8
  %13 = load %struct.ad1816_chinfo*, %struct.ad1816_chinfo** %7, align 8
  %14 = getelementptr inbounds %struct.ad1816_chinfo, %struct.ad1816_chinfo* %13, i32 0, i32 1
  %15 = load %struct.ad1816_info*, %struct.ad1816_info** %14, align 8
  store %struct.ad1816_info* %15, %struct.ad1816_info** %8, align 8
  %16 = load i32, i32* @AD1816_U8, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.ad1816_info*, %struct.ad1816_info** %8, align 8
  %18 = call i32 @ad1816_lock(%struct.ad1816_info* %17)
  %19 = load %struct.ad1816_chinfo*, %struct.ad1816_chinfo** %7, align 8
  %20 = getelementptr inbounds %struct.ad1816_chinfo, %struct.ad1816_chinfo* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PCMDIR_PLAY, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load i32, i32* @AD1816_PLAY, align 4
  store i32 %25, i32* %10, align 4
  %26 = load %struct.ad1816_info*, %struct.ad1816_info** %8, align 8
  %27 = call i32 @ad1816_write(%struct.ad1816_info* %26, i32 8, i32 0)
  %28 = load %struct.ad1816_info*, %struct.ad1816_info** %8, align 8
  %29 = call i32 @ad1816_write(%struct.ad1816_info* %28, i32 9, i32 0)
  br label %36

30:                                               ; preds = %3
  %31 = load i32, i32* @AD1816_CAPT, align 4
  store i32 %31, i32* %10, align 4
  %32 = load %struct.ad1816_info*, %struct.ad1816_info** %8, align 8
  %33 = call i32 @ad1816_write(%struct.ad1816_info* %32, i32 10, i32 0)
  %34 = load %struct.ad1816_info*, %struct.ad1816_info** %8, align 8
  %35 = call i32 @ad1816_write(%struct.ad1816_info* %34, i32 11, i32 0)
  br label %36

36:                                               ; preds = %30, %24
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @AFMT_ENCODING(i32 %37)
  switch i32 %38, label %49 [
    i32 132, label %39
    i32 131, label %41
    i32 129, label %43
    i32 130, label %45
    i32 128, label %47
  ]

39:                                               ; preds = %36
  %40 = load i32, i32* @AD1816_ALAW, align 4
  store i32 %40, i32* %9, align 4
  br label %49

41:                                               ; preds = %36
  %42 = load i32, i32* @AD1816_MULAW, align 4
  store i32 %42, i32* %9, align 4
  br label %49

43:                                               ; preds = %36
  %44 = load i32, i32* @AD1816_S16LE, align 4
  store i32 %44, i32* %9, align 4
  br label %49

45:                                               ; preds = %36
  %46 = load i32, i32* @AD1816_S16BE, align 4
  store i32 %46, i32* %9, align 4
  br label %49

47:                                               ; preds = %36
  %48 = load i32, i32* @AD1816_U8, align 4
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %36, %47, %45, %43, %41, %39
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @AFMT_CHANNEL(i32 %50)
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* @AD1816_STEREO, align 4
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load %struct.ad1816_info*, %struct.ad1816_info** %8, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @io_wr(%struct.ad1816_info* %58, i32 %59, i32 %60)
  %62 = load %struct.ad1816_info*, %struct.ad1816_info** %8, align 8
  %63 = call i32 @ad1816_unlock(%struct.ad1816_info* %62)
  ret i32 0
}

declare dso_local i32 @ad1816_lock(%struct.ad1816_info*) #1

declare dso_local i32 @ad1816_write(%struct.ad1816_info*, i32, i32) #1

declare dso_local i32 @AFMT_ENCODING(i32) #1

declare dso_local i32 @AFMT_CHANNEL(i32) #1

declare dso_local i32 @io_wr(%struct.ad1816_info*, i32, i32) #1

declare dso_local i32 @ad1816_unlock(%struct.ad1816_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
