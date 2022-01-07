; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sleepqueue.c_sleepq_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sleepqueue.c_sleepq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sleepqueue = type { i32, i64*, i32* }

@NR_SLEEPQS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @sleepq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sleepq_init(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sleepqueue*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @bzero(i8* %9, i32 %10)
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.sleepqueue*
  store %struct.sleepqueue* %13, %struct.sleepqueue** %7, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %32, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @NR_SLEEPQS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load %struct.sleepqueue*, %struct.sleepqueue** %7, align 8
  %20 = getelementptr inbounds %struct.sleepqueue, %struct.sleepqueue* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i32 @TAILQ_INIT(i32* %24)
  %26 = load %struct.sleepqueue*, %struct.sleepqueue** %7, align 8
  %27 = getelementptr inbounds %struct.sleepqueue, %struct.sleepqueue* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %18
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %14

35:                                               ; preds = %14
  %36 = load %struct.sleepqueue*, %struct.sleepqueue** %7, align 8
  %37 = getelementptr inbounds %struct.sleepqueue, %struct.sleepqueue* %36, i32 0, i32 0
  %38 = call i32 @LIST_INIT(i32* %37)
  ret i32 0
}

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
