; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_rubword.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_rubword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }

@l = common dso_local global i32 0, align 4
@ALTWERASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*)* @ttydisc_rubword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttydisc_rubword(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %2, align 8
  br label %6

6:                                                ; preds = %17, %1
  %7 = load %struct.tty*, %struct.tty** %2, align 8
  %8 = getelementptr inbounds %struct.tty, %struct.tty* %7, i32 0, i32 0
  %9 = call i64 @ttyinq_peekchar(i32* %8, i8* %3, i32* %4)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  br label %48

12:                                               ; preds = %6
  %13 = load i8, i8* %3, align 1
  %14 = call i64 @CTL_WHITE(i8 signext %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  br label %20

17:                                               ; preds = %12
  %18 = load %struct.tty*, %struct.tty** %2, align 8
  %19 = call i32 @ttydisc_rubchar(%struct.tty* %18)
  br label %6

20:                                               ; preds = %16
  %21 = load i8, i8* %3, align 1
  %22 = call i32 @CTL_ALNUM(i8 signext %21)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %47, %20
  %24 = load %struct.tty*, %struct.tty** %2, align 8
  %25 = call i32 @ttydisc_rubchar(%struct.tty* %24)
  %26 = load %struct.tty*, %struct.tty** %2, align 8
  %27 = getelementptr inbounds %struct.tty, %struct.tty* %26, i32 0, i32 0
  %28 = call i64 @ttyinq_peekchar(i32* %27, i8* %3, i32* %4)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %48

31:                                               ; preds = %23
  %32 = load i8, i8* %3, align 1
  %33 = call i64 @CTL_WHITE(i8 signext %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %48

36:                                               ; preds = %31
  %37 = load i32, i32* @l, align 4
  %38 = load i32, i32* @ALTWERASE, align 4
  %39 = call i64 @CMP_FLAG(i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i8, i8* %3, align 1
  %43 = call i32 @CTL_ALNUM(i8 signext %42)
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %48

47:                                               ; preds = %41, %36
  br label %23

48:                                               ; preds = %46, %35, %30, %11
  ret void
}

declare dso_local i64 @ttyinq_peekchar(i32*, i8*, i32*) #1

declare dso_local i64 @CTL_WHITE(i8 signext) #1

declare dso_local i32 @ttydisc_rubchar(%struct.tty*) #1

declare dso_local i32 @CTL_ALNUM(i8 signext) #1

declare dso_local i64 @CMP_FLAG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
