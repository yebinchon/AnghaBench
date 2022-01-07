; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_rmd160.c_RMD160Final.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_rmd160.c_RMD160Final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }

@PADDING = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RMD160Final(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [8 x i32], align 16
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @PUT_64BIT_LE(i32* %8, i32 %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sdiv i32 %15, 8
  %17 = srem i32 %16, 64
  %18 = sub nsw i32 64, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 9
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 64
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %21, %2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = load i32*, i32** @PADDING, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %27, 8
  %29 = call i32 @RMD160Update(%struct.TYPE_5__* %25, i32* %26, i32 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %32 = call i32 @RMD160Update(%struct.TYPE_5__* %30, i32* %31, i32 8)
  %33 = load i32*, i32** %3, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %57

35:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %53, %35
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 5
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = mul nsw i32 %41, 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @PUT_32BIT_LE(i32* %44, i32 %51)
  br label %53

53:                                               ; preds = %39
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %36

56:                                               ; preds = %36
  br label %57

57:                                               ; preds = %56, %24
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = call i32 @memset(%struct.TYPE_5__* %58, i32 0, i32 16)
  ret void
}

declare dso_local i32 @PUT_64BIT_LE(i32*, i32) #1

declare dso_local i32 @RMD160Update(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @PUT_32BIT_LE(i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
