; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/c99/extr_c99.c_addarg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/c99/extr_c99.c_addarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nargs = common dso_local global i32 0, align 4
@cargs = common dso_local global i32 0, align 4
@args = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @addarg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addarg(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @nargs, align 4
  %4 = add nsw i32 %3, 1
  %5 = load i32, i32* @cargs, align 4
  %6 = icmp sge i32 %4, %5
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load i32, i32* @cargs, align 4
  %9 = add nsw i32 %8, 16
  store i32 %9, i32* @cargs, align 4
  %10 = load i32**, i32*** @args, align 8
  %11 = load i32, i32* @cargs, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 8, %12
  %14 = trunc i64 %13 to i32
  %15 = call i32** @realloc(i32** %10, i32 %14)
  store i32** %15, i32*** @args, align 8
  %16 = icmp eq i32** %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %7
  %18 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %7
  br label %20

20:                                               ; preds = %19, %1
  %21 = load i8*, i8** %2, align 8
  %22 = call i32* @strdup(i8* %21)
  %23 = load i32**, i32*** @args, align 8
  %24 = load i32, i32* @nargs, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @nargs, align 4
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i32*, i32** %23, i64 %26
  store i32* %22, i32** %27, align 8
  %28 = icmp eq i32* %22, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %20
  %32 = load i32**, i32*** @args, align 8
  %33 = load i32, i32* @nargs, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  store i32* null, i32** %35, align 8
  ret void
}

declare dso_local i32** @realloc(i32**, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
