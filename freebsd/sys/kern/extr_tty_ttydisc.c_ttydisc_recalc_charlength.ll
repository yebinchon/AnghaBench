; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_recalc_charlength.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_recalc_charlength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttydisc_recalc_length = type { i32, %struct.tty* }
%struct.tty = type { i32 }

@l = common dso_local global i32 0, align 4
@ECHOCTL = common dso_local global i32 0, align 4
@CTAB = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8, i32)* @ttydisc_recalc_charlength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttydisc_recalc_charlength(i8* %0, i8 signext %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttydisc_recalc_length*, align 8
  %8 = alloca %struct.tty*, align 8
  store i8* %0, i8** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ttydisc_recalc_length*
  store %struct.ttydisc_recalc_length* %10, %struct.ttydisc_recalc_length** %7, align 8
  %11 = load %struct.ttydisc_recalc_length*, %struct.ttydisc_recalc_length** %7, align 8
  %12 = getelementptr inbounds %struct.ttydisc_recalc_length, %struct.ttydisc_recalc_length* %11, i32 0, i32 1
  %13 = load %struct.tty*, %struct.tty** %12, align 8
  store %struct.tty* %13, %struct.tty** %8, align 8
  %14 = load i8, i8* %5, align 1
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @CTL_PRINT(i8 signext %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load i32, i32* @l, align 4
  %20 = load i32, i32* @ECHOCTL, align 4
  %21 = call i64 @CMP_FLAG(i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.ttydisc_recalc_length*, %struct.ttydisc_recalc_length** %7, align 8
  %25 = getelementptr inbounds %struct.ttydisc_recalc_length, %struct.ttydisc_recalc_length* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 2
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %23, %18
  br label %51

29:                                               ; preds = %3
  %30 = load i8, i8* %5, align 1
  %31 = sext i8 %30 to i32
  %32 = load i8, i8* @CTAB, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load %struct.ttydisc_recalc_length*, %struct.ttydisc_recalc_length** %7, align 8
  %37 = getelementptr inbounds %struct.ttydisc_recalc_length, %struct.ttydisc_recalc_length* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, 7
  %40 = sub nsw i32 8, %39
  %41 = load %struct.ttydisc_recalc_length*, %struct.ttydisc_recalc_length** %7, align 8
  %42 = getelementptr inbounds %struct.ttydisc_recalc_length, %struct.ttydisc_recalc_length* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %50

45:                                               ; preds = %29
  %46 = load %struct.ttydisc_recalc_length*, %struct.ttydisc_recalc_length** %7, align 8
  %47 = getelementptr inbounds %struct.ttydisc_recalc_length, %struct.ttydisc_recalc_length* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %45, %35
  br label %51

51:                                               ; preds = %50, %28
  ret void
}

declare dso_local i64 @CTL_PRINT(i8 signext, i32) #1

declare dso_local i64 @CMP_FLAG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
