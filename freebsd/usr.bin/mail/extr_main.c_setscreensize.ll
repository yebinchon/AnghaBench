; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_main.c_setscreensize.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_main.c_setscreensize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32 }
%struct.winsize = type { i64, i64 }

@TIOCGWINSZ = common dso_local global i32 0, align 4
@B9600 = common dso_local global i64 0, align 8
@B1200 = common dso_local global i64 0, align 8
@screenheight = common dso_local global i32 0, align 4
@realscreenheight = common dso_local global i32 0, align 4
@screenwidth = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setscreensize() #0 {
  %1 = alloca %struct.termios, align 4
  %2 = alloca %struct.winsize, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @TIOCGWINSZ, align 4
  %5 = bitcast %struct.winsize* %2 to i8*
  %6 = call i64 @ioctl(i32 1, i32 %4, i8* %5)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.winsize, %struct.winsize* %2, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %struct.winsize, %struct.winsize* %2, i32 0, i32 0
  store i64 0, i64* %10, align 8
  br label %11

11:                                               ; preds = %8, %0
  %12 = call i64 @tcgetattr(i32 1, %struct.termios* %1)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i64, i64* @B9600, align 8
  store i64 %15, i64* %3, align 8
  br label %18

16:                                               ; preds = %11
  %17 = call i64 @cfgetospeed(%struct.termios* %1)
  store i64 %17, i64* %3, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @B1200, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 9, i32* @screenheight, align 4
  br label %39

23:                                               ; preds = %18
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @B1200, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 14, i32* @screenheight, align 4
  br label %38

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.winsize, %struct.winsize* %2, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.winsize, %struct.winsize* %2, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* @screenheight, align 4
  br label %37

36:                                               ; preds = %28
  store i32 24, i32* @screenheight, align 4
  br label %37

37:                                               ; preds = %36, %32
  br label %38

38:                                               ; preds = %37, %27
  br label %39

39:                                               ; preds = %38, %22
  %40 = getelementptr inbounds %struct.winsize, %struct.winsize* %2, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* @realscreenheight, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 24, i32* @realscreenheight, align 4
  br label %45

45:                                               ; preds = %44, %39
  %46 = getelementptr inbounds %struct.winsize, %struct.winsize* %2, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* @screenwidth, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i64 80, i64* @screenwidth, align 8
  br label %50

50:                                               ; preds = %49, %45
  ret void
}

declare dso_local i64 @ioctl(i32, i32, i8*) #1

declare dso_local i64 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i64 @cfgetospeed(%struct.termios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
