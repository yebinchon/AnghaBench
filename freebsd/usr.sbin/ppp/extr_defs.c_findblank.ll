; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_defs.c_findblank.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_defs.c_findblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PARSE_REDUCE = common dso_local global i32 0, align 4
@PARSE_NOHASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @findblank(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %75, %42, %2
  %8 = load i8*, i8** %4, align 8
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %78

11:                                               ; preds = %7
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 92
  br i1 %15, label %16, label %37

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @PARSE_REDUCE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = call i32 @memmove(i8* %22, i8* %24, i32 %26)
  %28 = load i8*, i8** %4, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  br label %78

32:                                               ; preds = %21
  br label %36

33:                                               ; preds = %16
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %4, align 8
  br label %36

36:                                               ; preds = %33, %32
  br label %75

37:                                               ; preds = %11
  %38 = load i8*, i8** %4, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 34
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load i8*, i8** %4, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = call i32 @memmove(i8* %43, i8* %45, i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %6, align 4
  br label %7

53:                                               ; preds = %37
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %73, label %56

56:                                               ; preds = %53
  %57 = load i8*, i8** %4, align 8
  %58 = load i8, i8* %57, align 1
  %59 = call i64 @issep(i8 signext %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %56
  %62 = load i8*, i8** %4, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 35
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @PARSE_NOHASH, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66, %56
  %72 = load i8*, i8** %4, align 8
  store i8* %72, i8** %3, align 8
  br label %86

73:                                               ; preds = %66, %61, %53
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74, %36
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %4, align 8
  br label %7

78:                                               ; preds = %31, %7
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %84

82:                                               ; preds = %78
  %83 = load i8*, i8** %4, align 8
  br label %84

84:                                               ; preds = %82, %81
  %85 = phi i8* [ null, %81 ], [ %83, %82 ]
  store i8* %85, i8** %3, align 8
  br label %86

86:                                               ; preds = %84, %71
  %87 = load i8*, i8** %3, align 8
  ret i8* %87
}

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @issep(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
