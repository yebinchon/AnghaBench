; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/route6d/misc/extr_cksum.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/route6d/misc/extr_cksum.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buf = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@EOF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%x, %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i16*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %7 = load i32*, i32** @buf, align 8
  %8 = bitcast i32* %7 to i16*
  store i16* %8, i16** %3, align 8
  %9 = load i32*, i32** @buf, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 4
  %11 = bitcast i32* %10 to i16*
  store i16* %11, i16** %4, align 8
  br label %12

12:                                               ; preds = %16, %0
  %13 = call i64 @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %2)
  %14 = load i64, i64* @EOF, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load i32, i32* %2, align 4
  %18 = trunc i32 %17 to i16
  %19 = load i16*, i16** %3, align 8
  %20 = getelementptr inbounds i16, i16* %19, i32 1
  store i16* %20, i16** %3, align 8
  store i16 %18, i16* %19, align 2
  %21 = load i32, i32* %2, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %12

23:                                               ; preds = %12
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32*, i32** @buf, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** @buf, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 8
  %32 = add nsw i32 %27, %31
  %33 = and i32 %32, 255
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %39, %23
  %36 = load i16*, i16** %4, align 8
  %37 = load i16*, i16** %3, align 8
  %38 = icmp ne i16* %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i16*, i16** %4, align 8
  %41 = getelementptr inbounds i16, i16* %40, i32 1
  store i16* %41, i16** %4, align 8
  %42 = load i16, i16* %40, align 2
  %43 = zext i16 %42 to i32
  %44 = and i32 %43, 65535
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %5, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %5, align 8
  br label %35

48:                                               ; preds = %35
  %49 = load i64, i64* %5, align 8
  %50 = and i64 %49, 65535
  %51 = load i64, i64* %5, align 8
  %52 = lshr i64 %51, 16
  %53 = add i64 %50, %52
  %54 = and i64 %53, 65535
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %55, i64 %56)
  %58 = load i32, i32* %1, align 4
  ret i32 %58
}

declare dso_local i64 @scanf(i8*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
