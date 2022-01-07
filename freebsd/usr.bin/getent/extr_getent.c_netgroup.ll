; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/getent/extr_getent.c_netgroup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/getent/extr_getent.c_netgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RV_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Enumeration not supported on netgroup\0A\00", align 1
@RV_NOENUM = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c" (%s,%s,%s)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @netgroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netgroup(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = icmp sgt i32 %11, 1
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i8**, i8*** %4, align 8
  %16 = icmp ne i8** %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* @RV_OK, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @RV_NOENUM, align 4
  store i32 %25, i32* %9, align 4
  br label %86

26:                                               ; preds = %2
  store i32 2, i32* %10, align 4
  br label %27

27:                                               ; preds = %82, %26
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %85

31:                                               ; preds = %27
  %32 = load i8**, i8*** %4, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @setnetgrent(i8* %36)
  store i32 1, i32* %8, align 4
  br label %38

38:                                               ; preds = %72, %31
  %39 = call i64 @getnetgrent(i8** %5, i8** %6, i8** %7)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %75

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  %45 = load i8**, i8*** %4, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* @stdout, align 4
  %51 = call i32 @fputs(i8* %49, i32 %50)
  br label %52

52:                                               ; preds = %44, %41
  %53 = load i8*, i8** %5, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i8*, i8** %5, align 8
  br label %58

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i8* [ %56, %55 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %57 ]
  %60 = load i8*, i8** %6, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i8*, i8** %6, align 8
  br label %65

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i8* [ %63, %62 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %64 ]
  %67 = load i8*, i8** %7, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i8*, i8** %7, align 8
  br label %72

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i8* [ %70, %69 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %71 ]
  %74 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %59, i8* %66, i8* %73)
  br label %38

75:                                               ; preds = %38
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = call i32 @putchar(i8 signext 10)
  br label %80

80:                                               ; preds = %78, %75
  %81 = call i32 (...) @endnetgrent()
  br label %82

82:                                               ; preds = %80
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %27

85:                                               ; preds = %27
  br label %86

86:                                               ; preds = %85, %22
  %87 = load i32, i32* %9, align 4
  ret i32 %87
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @setnetgrent(i8*) #1

declare dso_local i64 @getnetgrent(i8**, i8**, i8**) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @endnetgrent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
