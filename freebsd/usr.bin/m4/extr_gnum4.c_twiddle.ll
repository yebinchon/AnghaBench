; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_gnum4.c_twiddle.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_gnum4.c_twiddle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"[_a-zA-Z0-9]\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"[^_a-zA-Z0-9]\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"[[:<:]]\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"[[:>:]]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @twiddle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @twiddle(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp eq i32 %5, 94
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i8*, i8** %2, align 8
  %9 = load i8, i8* %8, align 1
  %10 = call i32 @addchar(i8 signext %9)
  %11 = load i8*, i8** %2, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %2, align 8
  br label %13

13:                                               ; preds = %7, %1
  %14 = load i8*, i8** %2, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 43
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 @addchar(i8 signext 92)
  br label %20

20:                                               ; preds = %18, %13
  br label %21

21:                                               ; preds = %72, %52, %20
  %22 = load i8*, i8** %2, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %78

26:                                               ; preds = %21
  %27 = load i8*, i8** %2, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 92
  br i1 %30, label %31, label %55

31:                                               ; preds = %26
  %32 = load i8*, i8** %2, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  switch i32 %35, label %49 [
    i32 40, label %36
    i32 41, label %36
    i32 124, label %36
    i32 119, label %41
    i32 87, label %43
    i32 60, label %45
    i32 62, label %47
  ]

36:                                               ; preds = %31, %31, %31
  %37 = load i8*, i8** %2, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = call i32 @addchar(i8 signext %39)
  br label %52

41:                                               ; preds = %31
  %42 = call i32 @addconstantstring(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %52

43:                                               ; preds = %31
  %44 = call i32 @addconstantstring(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %52

45:                                               ; preds = %31
  %46 = call i32 @addconstantstring(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %52

47:                                               ; preds = %31
  %48 = call i32 @addconstantstring(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %52

49:                                               ; preds = %31
  %50 = load i8*, i8** %2, align 8
  %51 = call i32 @addchars(i8* %50, i32 2)
  br label %52

52:                                               ; preds = %49, %47, %45, %43, %41, %36
  %53 = load i8*, i8** %2, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  store i8* %54, i8** %2, align 8
  br label %21

55:                                               ; preds = %26
  %56 = load i8*, i8** %2, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 40
  br i1 %59, label %70, label %60

60:                                               ; preds = %55
  %61 = load i8*, i8** %2, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 41
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load i8*, i8** %2, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 124
  br i1 %69, label %70, label %72

70:                                               ; preds = %65, %60, %55
  %71 = call i32 @addchar(i8 signext 92)
  br label %72

72:                                               ; preds = %70, %65
  %73 = load i8*, i8** %2, align 8
  %74 = load i8, i8* %73, align 1
  %75 = call i32 @addchar(i8 signext %74)
  %76 = load i8*, i8** %2, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %2, align 8
  br label %21

78:                                               ; preds = %21
  %79 = call i8* (...) @getstring()
  ret i8* %79
}

declare dso_local i32 @addchar(i8 signext) #1

declare dso_local i32 @addconstantstring(i8*) #1

declare dso_local i32 @addchars(i8*, i32) #1

declare dso_local i8* @getstring(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
