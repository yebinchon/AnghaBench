; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/darwin-x64/gbdk/examples/gb/extr_galaxy.c_door.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/darwin-x64/gbdk/examples/gb/extr_galaxy.c_door.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@doorstate = common dso_local global i64 0, align 8
@OPENING = common dso_local global i64 0, align 8
@doorpos = common dso_local global i64 0, align 8
@film = common dso_local global i32* null, align 8
@NBDFRAMES = common dso_local global i64 0, align 8
@OPENED = common dso_local global i64 0, align 8
@CLOSING = common dso_local global i64 0, align 8
@CLOSED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @door() #0 {
  %1 = load i64, i64* @doorstate, align 8
  %2 = load i64, i64* @OPENING, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %18

4:                                                ; preds = %0
  %5 = load i64, i64* @doorpos, align 8
  %6 = add i64 %5, 1
  store i64 %6, i64* @doorpos, align 8
  %7 = load i32*, i32** @film, align 8
  %8 = load i64, i64* @doorpos, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @set_win_tiles(i32 2, i32 2, i32 12, i32 6, i32 %10)
  %12 = load i64, i64* @doorpos, align 8
  %13 = load i64, i64* @NBDFRAMES, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i64, i64* @OPENED, align 8
  store i64 %16, i64* @doorstate, align 8
  br label %17

17:                                               ; preds = %15, %4
  br label %36

18:                                               ; preds = %0
  %19 = load i64, i64* @doorstate, align 8
  %20 = load i64, i64* @CLOSING, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load i64, i64* @doorpos, align 8
  %24 = add i64 %23, -1
  store i64 %24, i64* @doorpos, align 8
  %25 = load i32*, i32** @film, align 8
  %26 = load i64, i64* @doorpos, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @set_win_tiles(i32 2, i32 2, i32 12, i32 6, i32 %28)
  %30 = load i64, i64* @doorpos, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i64, i64* @CLOSED, align 8
  store i64 %33, i64* @doorstate, align 8
  br label %34

34:                                               ; preds = %32, %22
  br label %35

35:                                               ; preds = %34, %18
  br label %36

36:                                               ; preds = %35, %17
  ret void
}

declare dso_local i32 @set_win_tiles(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
