; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_ifcmds.c_ifcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_ifcmds.c_ifcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@curscale = common dso_local global i32 0, align 4
@CMDLINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"what scale? \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@matchline = common dso_local global i32* null, align 8
@needsort = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"pps\00", align 1
@showpps = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifcmd(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @prefix(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @get_scale(i8* %10)
  store i32 %11, i32* %5, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* @curscale, align 4
  br label %22

15:                                               ; preds = %9
  %16 = load i32, i32* @CMDLINE, align 4
  %17 = call i32 @move(i32 %16, i32 0)
  %18 = call i32 (...) @clrtoeol()
  %19 = call i32 @addstr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i8* (...) @get_helplist()
  %21 = call i32 @addstr(i8* %20)
  br label %22

22:                                               ; preds = %15, %13
  br label %67

23:                                               ; preds = %2
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @prefix(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %23
  %28 = load i8*, i8** %4, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = load i8*, i8** %4, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load i8*, i8** %4, align 8
  %37 = call i64 @memcmp(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i32*, i32** @matchline, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32*, i32** @matchline, align 8
  %44 = call i32 @free(i32* %43)
  br label %45

45:                                               ; preds = %42, %39
  store i32 1, i32* @needsort, align 4
  %46 = load i8*, i8** %4, align 8
  %47 = call i32* @strdup(i8* %46)
  store i32* %47, i32** @matchline, align 8
  br label %55

48:                                               ; preds = %35, %30, %27
  %49 = load i32*, i32** @matchline, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32*, i32** @matchline, align 8
  %53 = call i32 @free(i32* %52)
  br label %54

54:                                               ; preds = %51, %48
  store i32 1, i32* @needsort, align 4
  store i32* null, i32** @matchline, align 8
  br label %55

55:                                               ; preds = %54, %45
  br label %66

56:                                               ; preds = %23
  %57 = load i8*, i8** %3, align 8
  %58 = call i64 @prefix(i8* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32, i32* @showpps, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  store i32 %64, i32* @showpps, align 4
  br label %65

65:                                               ; preds = %60, %56
  br label %66

66:                                               ; preds = %65, %55
  br label %67

67:                                               ; preds = %66, %22
  ret i32 1
}

declare dso_local i64 @prefix(i8*, i8*) #1

declare dso_local i32 @get_scale(i8*) #1

declare dso_local i32 @move(i32, i32) #1

declare dso_local i32 @clrtoeol(...) #1

declare dso_local i32 @addstr(i8*) #1

declare dso_local i8* @get_helplist(...) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
