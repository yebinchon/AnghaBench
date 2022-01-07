; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_tipout.c_intEMT.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_tipout.c_intEMT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fildes = common dso_local global i32* null, align 8
@SCRIPT = common dso_local global i32 0, align 4
@fscript = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@TRUE = common dso_local global i32 0, align 4
@repdes = common dso_local global i32* null, align 8
@sigbuf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @intEMT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intEMT(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca [256 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  store i8* %7, i8** %5, align 8
  %8 = load i32*, i32** @fildes, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @read(i32 %10, i8* %3, i32 1)
  br label %12

12:                                               ; preds = %25, %1
  %13 = load i8, i8* %3, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 10
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %19 = ptrtoint i8* %17 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  %22 = icmp ult i64 %21, 256
  br label %23

23:                                               ; preds = %16, %12
  %24 = phi i1 [ false, %12 ], [ %22, %16 ]
  br i1 %24, label %25, label %33

25:                                               ; preds = %23
  %26 = load i8, i8* %3, align 1
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %5, align 8
  store i8 %26, i8* %27, align 1
  %29 = load i32*, i32** @fildes, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @read(i32 %31, i8* %3, i32 1)
  br label %12

33:                                               ; preds = %23
  %34 = load i8*, i8** %5, align 8
  store i8 0, i8* %34, align 1
  %35 = load i32, i32* @SCRIPT, align 4
  %36 = call i32 @value(i32 %35)
  %37 = call i64 @boolean(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i32*, i32** @fscript, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32*, i32** @fscript, align 8
  %44 = call i32 @fclose(i32* %43)
  br label %45

45:                                               ; preds = %42, %39, %33
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %48 = icmp eq i8* %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i32, i32* @SCRIPT, align 4
  %51 = call i32 @value(i32 %50)
  %52 = load i32, i32* @FALSE, align 4
  %53 = call i32 @setboolean(i32 %51, i32 %52)
  store i8 121, i8* %6, align 1
  br label %65

54:                                               ; preds = %45
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %56 = call i32* @fopen(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %56, i32** @fscript, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i8 110, i8* %6, align 1
  br label %64

59:                                               ; preds = %54
  store i8 121, i8* %6, align 1
  %60 = load i32, i32* @SCRIPT, align 4
  %61 = call i32 @value(i32 %60)
  %62 = load i32, i32* @TRUE, align 4
  %63 = call i32 @setboolean(i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %58
  br label %65

65:                                               ; preds = %64, %49
  %66 = load i32*, i32** @repdes, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @write(i32 %68, i8* %6, i32 1)
  %70 = load i32, i32* @sigbuf, align 4
  %71 = call i32 @longjmp(i32 %70, i32 1)
  ret void
}

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i64 @boolean(i32) #1

declare dso_local i32 @value(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @setboolean(i32, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @longjmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
