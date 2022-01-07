; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/login/extr_login.c_motd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/login/extr_login.c_motd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@motdinterrupt = common dso_local global i64 0, align 8
@sigint = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @motd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @motd(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sigaction, align 8
  %5 = alloca %struct.sigaction, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %6, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %50

12:                                               ; preds = %1
  store i64 0, i64* @motdinterrupt, align 8
  %13 = load i32, i32* @sigint, align 4
  %14 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 2
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 0
  %17 = call i32 @sigfillset(i32* %16)
  %18 = load i32, i32* @SIGINT, align 4
  %19 = call i32 @sigaction(i32 %18, %struct.sigaction* %4, %struct.sigaction* %5)
  br label %20

20:                                               ; preds = %31, %12
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @fgetc(i32* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @EOF, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i64, i64* @motdinterrupt, align 8
  %27 = icmp ne i64 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %25, %20
  %30 = phi i1 [ false, %20 ], [ %28, %25 ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @putchar(i32 %32)
  br label %20

34:                                               ; preds = %29
  %35 = load i32, i32* @SIGINT, align 4
  %36 = call i32 @sigaction(i32 %35, %struct.sigaction* %5, %struct.sigaction* null)
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @EOF, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load i32*, i32** %6, align 8
  %42 = call i64 @ferror(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %34
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @fclose(i32* %45)
  store i32 -1, i32* %2, align 4
  br label %50

47:                                               ; preds = %40
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @fclose(i32* %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %47, %44, %11
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @putchar(i32) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
