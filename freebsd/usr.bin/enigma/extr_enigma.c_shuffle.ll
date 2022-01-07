; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/enigma/extr_enigma.c_shuffle.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/enigma/extr_enigma.c_shuffle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@shuffle.seed = internal global i32 123, align 4
@ROTORSZ = common dso_local global i32 0, align 4
@buf = common dso_local global i32* null, align 8
@MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @shuffle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shuffle(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %55, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @ROTORSZ, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %58

12:                                               ; preds = %8
  %13 = load i32, i32* @shuffle.seed, align 4
  %14 = mul nsw i32 5, %13
  %15 = load i32*, i32** @buf, align 8
  %16 = load i32, i32* %3, align 4
  %17 = srem i32 %16, 13
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %14, %20
  store i32 %21, i32* @shuffle.seed, align 4
  %22 = load i32, i32* @shuffle.seed, align 4
  %23 = srem i32 %22, 65521
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @ROTORSZ, align 4
  %25 = sub nsw i32 %24, 1
  %26 = load i32, i32* %3, align 4
  %27 = sub nsw i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  %33 = urem i32 %30, %32
  store i32 %33, i32* %4, align 4
  %34 = load i8*, i8** %2, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  store i32 %39, i32* %6, align 4
  %40 = load i8*, i8** %2, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = load i8*, i8** %2, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8 %44, i8* %48, align 1
  %49 = load i32, i32* %6, align 4
  %50 = trunc i32 %49 to i8
  %51 = load i8*, i8** %2, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  store i8 %50, i8* %54, align 1
  br label %55

55:                                               ; preds = %12
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %8

58:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
