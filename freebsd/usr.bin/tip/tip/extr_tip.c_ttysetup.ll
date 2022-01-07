; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_tip.c_ttysetup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_tip.c_ttysetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32, i32, i32, i32*, i32 }

@FD = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@DC = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@HARDWAREFLOW = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@ISTRIP = common dso_local global i32 0, align 4
@ICRNL = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@IEXTEN = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@TAND = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@TCSAFLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttysetup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.termios, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @FD, align 4
  %6 = call i64 @tcgetattr(i32 %5, %struct.termios* %4)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %87

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @cfsetspeed(%struct.termios* %4, i32 %10)
  %12 = load i32, i32* @CSIZE, align 4
  %13 = load i32, i32* @PARENB, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, %15
  store i32 %18, i32* %16, align 8
  %19 = load i32, i32* @CS8, align 4
  %20 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %19
  store i32 %22, i32* %20, align 8
  %23 = load i32, i32* @DC, align 4
  %24 = call i32 @value(i32 %23)
  %25 = call i64 @boolean(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %9
  %28 = load i32, i32* @CLOCAL, align 4
  %29 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %27, %9
  %33 = load i32, i32* @HARDWAREFLOW, align 4
  %34 = call i32 @value(i32 %33)
  %35 = call i64 @boolean(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* @CRTSCTS, align 4
  %39 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %38
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %37, %32
  %43 = load i32, i32* @ISTRIP, align 4
  %44 = load i32, i32* @ICRNL, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %46
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @OPOST, align 4
  %51 = xor i32 %50, -1
  %52 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %51
  store i32 %54, i32* %52, align 8
  %55 = load i32, i32* @ICANON, align 4
  %56 = load i32, i32* @ISIG, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @IEXTEN, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @ECHO, align 4
  %61 = or i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %62
  store i32 %65, i32* %63, align 8
  %66 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @VMIN, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 1, i32* %69, align 4
  %70 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @VTIME, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32 0, i32* %73, align 4
  %74 = load i32, i32* @TAND, align 4
  %75 = call i32 @value(i32 %74)
  %76 = call i64 @boolean(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %42
  %79 = load i32, i32* @IXOFF, align 4
  %80 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %79
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %78, %42
  %84 = load i32, i32* @FD, align 4
  %85 = load i32, i32* @TCSAFLUSH, align 4
  %86 = call i32 @tcsetattr(i32 %84, i32 %85, %struct.termios* %4)
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %83, %8
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i64 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @cfsetspeed(%struct.termios*, i32) #1

declare dso_local i64 @boolean(i32) #1

declare dso_local i32 @value(i32) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
