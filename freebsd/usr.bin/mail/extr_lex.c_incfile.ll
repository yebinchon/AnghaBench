; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_lex.c_incfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_lex.c_incfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@msgCount = common dso_local global i32 0, align 4
@mailname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@mailsize = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @incfile() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = load i32, i32* @msgCount, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @mailname, align 4
  %7 = call i32* @Fopen(i32 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %42

11:                                               ; preds = %0
  %12 = call i32 (...) @holdsigs()
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @fsize(i32* %13)
  store i64 %14, i64* %2, align 8
  %15 = load i64, i64* %2, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 -1, i32* %1, align 4
  br label %42

18:                                               ; preds = %11
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* @mailsize, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 -1, i32* %1, align 4
  br label %42

23:                                               ; preds = %18
  %24 = load i64, i64* %2, align 8
  %25 = load i64, i64* @mailsize, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %1, align 4
  br label %42

28:                                               ; preds = %23
  %29 = load i32*, i32** %4, align 8
  %30 = load i64, i64* @mailsize, align 8
  %31 = call i32 @setptr(i32* %29, i64 %30)
  %32 = load i32, i32* @msgCount, align 4
  %33 = call i32 @setmsize(i32 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = call i64 @ftello(i32* %34)
  store i64 %35, i64* @mailsize, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @Fclose(i32* %36)
  %38 = call i32 (...) @relsesigs()
  %39 = load i32, i32* @msgCount, align 4
  %40 = load i32, i32* %3, align 4
  %41 = sub nsw i32 %39, %40
  store i32 %41, i32* %1, align 4
  br label %42

42:                                               ; preds = %28, %27, %22, %17, %10
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

declare dso_local i32* @Fopen(i32, i8*) #1

declare dso_local i32 @holdsigs(...) #1

declare dso_local i64 @fsize(i32*) #1

declare dso_local i32 @setptr(i32*, i64) #1

declare dso_local i32 @setmsize(i32) #1

declare dso_local i64 @ftello(i32*) #1

declare dso_local i32 @Fclose(i32*) #1

declare dso_local i32 @relsesigs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
