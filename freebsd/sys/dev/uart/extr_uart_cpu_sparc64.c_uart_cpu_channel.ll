; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_cpu_sparc64.c_uart_cpu_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_cpu_sparc64.c_uart_cpu_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"/aliases\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ssp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @uart_cpu_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_cpu_channel(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [64 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @strcpy(i8* %8, i8* %9)
  %11 = call i32 @OF_finddevice(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %5, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %17 = call i32 @OF_getprop(i32 %14, i8* %15, i8* %16, i32 64)
  br label %18

18:                                               ; preds = %13, %1
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %20 = call i32 @strlen(i8* %19)
  store i32 %20, i32* %6, align 4
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %22 = call i8* @strrchr(i8* %21, i8 signext 58)
  store i8* %22, i8** %7, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %59

25:                                               ; preds = %18
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %25
  %38 = load i8*, i8** %7, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 97
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i8*, i8** %7, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 98
  br i1 %46, label %47, label %53

47:                                               ; preds = %42, %37
  %48 = load i8*, i8** %7, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = sub nsw i32 %50, 97
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %2, align 4
  br label %59

53:                                               ; preds = %42, %25
  %54 = load i8*, i8** %7, align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 1, i32* %2, align 4
  br label %59

58:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %57, %47, %24
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i32 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
