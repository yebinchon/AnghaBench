; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/vmstat/extr_vmstat.c_doresize.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/vmstat/extr_vmstat.c_doresize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winsize = type { i32 }

@stdout = common dso_local global i32 0, align 4
@TIOCGWINSZ = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"ioctl\00", align 1
@winlines = common dso_local global i32 0, align 4
@VMSTAT_DEFAULT_LINES = common dso_local global i32 0, align 4
@wresized = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @doresize() #0 {
  %1 = alloca %struct.winsize, align 4
  %2 = alloca i32, align 4
  br label %3

3:                                                ; preds = %14, %0
  %4 = load i32, i32* @stdout, align 4
  %5 = call i32 @fileno(i32 %4)
  %6 = load i32, i32* @TIOCGWINSZ, align 4
  %7 = call i32 @ioctl(i32 %5, i32 %6, %struct.winsize* %1)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load i64, i64* @errno, align 8
  %12 = load i64, i64* @EINTR, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %3

15:                                               ; preds = %10, %3
  %16 = load i32, i32* %2, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @xo_err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %15
  br label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.winsize, %struct.winsize* %1, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 3
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.winsize, %struct.winsize* %1, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 3
  store i32 %28, i32* @winlines, align 4
  br label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @VMSTAT_DEFAULT_LINES, align 4
  store i32 %30, i32* @winlines, align 4
  br label %31

31:                                               ; preds = %29, %25
  br label %32

32:                                               ; preds = %31
  store i64 0, i64* @wresized, align 8
  ret void
}

declare dso_local i32 @ioctl(i32, i32, %struct.winsize*) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32 @xo_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
