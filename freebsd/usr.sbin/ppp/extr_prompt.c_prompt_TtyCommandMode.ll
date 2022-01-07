; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_prompt.c_prompt_TtyCommandMode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_prompt.c_prompt_TtyCommandMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prompt = type { i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.termios = type { i32, i32, i32 }

@ECHO = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@TCSADRAIN = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prompt_TtyCommandMode(%struct.prompt* %0) #0 {
  %2 = alloca %struct.prompt*, align 8
  %3 = alloca %struct.termios, align 4
  %4 = alloca i32, align 4
  store %struct.prompt* %0, %struct.prompt** %2, align 8
  %5 = load %struct.prompt*, %struct.prompt** %2, align 8
  %6 = getelementptr inbounds %struct.prompt, %struct.prompt* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @tcgetattr(i32 %7, %struct.termios* %3)
  %9 = load i32, i32* @ECHO, align 4
  %10 = load i32, i32* @ISIG, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @ICANON, align 4
  %13 = or i32 %11, %12
  %14 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %13
  store i32 %16, i32* %14, align 4
  %17 = load %struct.prompt*, %struct.prompt** %2, align 8
  %18 = getelementptr inbounds %struct.prompt, %struct.prompt* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @OPOST, align 4
  %23 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %22
  store i32 %25, i32* %23, align 4
  %26 = load %struct.prompt*, %struct.prompt** %2, align 8
  %27 = getelementptr inbounds %struct.prompt, %struct.prompt* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @TCSADRAIN, align 4
  %30 = call i32 @tcsetattr(i32 %28, i32 %29, %struct.termios* %3)
  %31 = load %struct.prompt*, %struct.prompt** %2, align 8
  %32 = getelementptr inbounds %struct.prompt, %struct.prompt* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @F_GETFL, align 4
  %35 = call i32 @fcntl(i32 %33, i32 %34, i32 0)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %1
  %39 = load i32, i32* @O_NONBLOCK, align 4
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load %struct.prompt*, %struct.prompt** %2, align 8
  %43 = getelementptr inbounds %struct.prompt, %struct.prompt* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @F_SETFL, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @fcntl(i32 %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %38, %1
  %49 = load %struct.prompt*, %struct.prompt** %2, align 8
  %50 = getelementptr inbounds %struct.prompt, %struct.prompt* %49, i32 0, i32 0
  store i32* null, i32** %50, align 8
  ret void
}

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
