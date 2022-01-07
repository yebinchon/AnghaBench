; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_mtree.c_skip_to.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_mtree.c_skip_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @skip_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skip_to(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @getc(i32* %7)
  store i32 %8, i32* %6, align 4
  br label %9

9:                                                ; preds = %20, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @EOF, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32* @strchr(i8* %14, i32 %15)
  %17 = icmp eq i32* %16, null
  br label %18

18:                                               ; preds = %13, %9
  %19 = phi i1 [ false, %9 ], [ %17, %13 ]
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @getc(i32* %21)
  store i32 %22, i32* %6, align 4
  br label %9

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @EOF, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @ungetc(i32 %28, i32* %29)
  store i32 0, i32* %3, align 4
  br label %40

31:                                               ; preds = %23
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @ferror(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @errno, align 4
  br label %38

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ -1, %37 ]
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %27
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @getc(i32*) #1

declare dso_local i32* @strchr(i8*, i32) #1

declare dso_local i32 @ungetc(i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
