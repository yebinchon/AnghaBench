; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_channel.c_snd_afmt2str.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_channel.c_snd_afmt2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64 }

@AFMTSTR_LEN = common dso_local global i64 0, align 8
@afmt_tab = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s:%d.%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @snd_afmt2str(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @AFMTSTR_LEN, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %3
  store i64 0, i64* %4, align 8
  br label %74

19:                                               ; preds = %14
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @memset(i8* %20, i32 0, i64 %21)
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @AFMT_ENCODING(i64 %23)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @AFMT_CHANNEL(i64 %25)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @AFMT_EXTCHANNEL(i64 %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp sle i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  store i64 0, i64* %4, align 8
  br label %74

33:                                               ; preds = %19
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %70, %33
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @afmt_tab, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %73

42:                                               ; preds = %34
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @afmt_tab, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %43, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %70

52:                                               ; preds = %42
  %53 = load i8*, i8** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @afmt_tab, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %9, align 8
  %63 = sub nsw i64 %61, %62
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @snprintf(i8* %53, i64 %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %60, i64 %63, i64 %64)
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i64 @SND_FORMAT(i64 %66, i64 %67, i64 %68)
  store i64 %69, i64* %4, align 8
  br label %74

70:                                               ; preds = %51
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %34

73:                                               ; preds = %34
  store i64 0, i64* %4, align 8
  br label %74

74:                                               ; preds = %73, %52, %32, %18
  %75 = load i64, i64* %4, align 8
  ret i64 %75
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @AFMT_ENCODING(i64) #1

declare dso_local i64 @AFMT_CHANNEL(i64) #1

declare dso_local i64 @AFMT_EXTCHANNEL(i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i64, i64) #1

declare dso_local i64 @SND_FORMAT(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
