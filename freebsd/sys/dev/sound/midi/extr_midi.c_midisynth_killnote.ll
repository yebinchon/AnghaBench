; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_midi.c_midisynth_killnote.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_midi.c_midisynth_killnote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @midisynth_killnote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @midisynth_killnote(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp sgt i32 %11, 127
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %14, 15
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %4
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %5, align 4
  br label %46

18:                                               ; preds = %13
  %19 = load i32, i32* %9, align 4
  %20 = icmp sgt i32 %19, 127
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 127, i32* %9, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 64
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 15
  %28 = or i32 144, %27
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  store i32 0, i32* %32, align 4
  br label %42

33:                                               ; preds = %22
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 15
  %36 = or i32 128, %35
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %8, align 4
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %9, align 4
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %33, %25
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %45 = call i32 @midisynth_writeraw(i8* %43, i32* %44, i32 3)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %42, %16
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @midisynth_writeraw(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
