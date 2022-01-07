; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_builtins.c_get_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_builtins.c_get_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32, i64 }

@SIG_DFL = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @get_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_line(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sigaction, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %10, i32 0, i32 1
  %13 = call i32 @sigemptyset(i32* %12)
  %14 = load i32, i32* @SIG_DFL, align 4
  %15 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %10, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* @SIGALRM, align 4
  %17 = call i32 @sigaction(i32 %16, %struct.sigaction* %10, %struct.sigaction* null)
  br label %18

18:                                               ; preds = %63, %3
  %19 = call i32 @alarm(i32 10)
  %20 = load i32, i32* %5, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = sub nsw i32 %22, %23
  %25 = call i32 @read(i32 %20, i8* %21, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = call i32 @alarm(i32 0)
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %69

31:                                               ; preds = %18
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 -1, i32* %4, align 4
  br label %69

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %57, %35
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %9, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %36
  %41 = load i8*, i8** %6, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 13
  br i1 %44, label %55, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %6, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 10
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load i8*, i8** %6, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50, %45, %40
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %69

57:                                               ; preds = %50
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %6, align 8
  br label %36

62:                                               ; preds = %36
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %18, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %55, %34, %29
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
