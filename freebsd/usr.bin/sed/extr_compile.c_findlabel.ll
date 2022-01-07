; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_compile.c_findlabel.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_compile.c_findlabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.labhash = type { i32, i32, %struct.s_command*, %struct.labhash* }
%struct.s_command = type { i32 }

@labels = common dso_local global %struct.labhash** null, align 8
@LHMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.s_command* (i8*)* @findlabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.s_command* @findlabel(i8* %0) #0 {
  %2 = alloca %struct.s_command*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.labhash*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %5, align 8
  br label %10

10:                                               ; preds = %21, %1
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = load i32, i32* %6, align 4
  %16 = shl i32 %15, 5
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %14
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %5, align 8
  br label %10

24:                                               ; preds = %10
  %25 = load %struct.labhash**, %struct.labhash*** @labels, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @LHMASK, align 4
  %28 = and i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.labhash*, %struct.labhash** %25, i64 %29
  %31 = load %struct.labhash*, %struct.labhash** %30, align 8
  store %struct.labhash* %31, %struct.labhash** %4, align 8
  br label %32

32:                                               ; preds = %57, %24
  %33 = load %struct.labhash*, %struct.labhash** %4, align 8
  %34 = icmp ne %struct.labhash* %33, null
  br i1 %34, label %35, label %61

35:                                               ; preds = %32
  %36 = load %struct.labhash*, %struct.labhash** %4, align 8
  %37 = getelementptr inbounds %struct.labhash, %struct.labhash* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %35
  %42 = load i8*, i8** %3, align 8
  %43 = load %struct.labhash*, %struct.labhash** %4, align 8
  %44 = getelementptr inbounds %struct.labhash, %struct.labhash* %43, i32 0, i32 2
  %45 = load %struct.s_command*, %struct.s_command** %44, align 8
  %46 = getelementptr inbounds %struct.s_command, %struct.s_command* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @strcmp(i8* %42, i32 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = load %struct.labhash*, %struct.labhash** %4, align 8
  %52 = getelementptr inbounds %struct.labhash, %struct.labhash* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load %struct.labhash*, %struct.labhash** %4, align 8
  %54 = getelementptr inbounds %struct.labhash, %struct.labhash* %53, i32 0, i32 2
  %55 = load %struct.s_command*, %struct.s_command** %54, align 8
  store %struct.s_command* %55, %struct.s_command** %2, align 8
  br label %62

56:                                               ; preds = %41, %35
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.labhash*, %struct.labhash** %4, align 8
  %59 = getelementptr inbounds %struct.labhash, %struct.labhash* %58, i32 0, i32 3
  %60 = load %struct.labhash*, %struct.labhash** %59, align 8
  store %struct.labhash* %60, %struct.labhash** %4, align 8
  br label %32

61:                                               ; preds = %32
  store %struct.s_command* null, %struct.s_command** %2, align 8
  br label %62

62:                                               ; preds = %61, %50
  %63 = load %struct.s_command*, %struct.s_command** %2, align 8
  ret %struct.s_command* %63
}

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
