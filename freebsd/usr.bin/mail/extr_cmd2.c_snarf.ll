; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd2.c_snarf.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd2.c_snarf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"No file specified.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @snarf(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  store i32 1, i32* %7, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @strlen(i8* %8)
  %10 = load i8*, i8** %4, align 8
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  %13 = getelementptr inbounds i8, i8* %12, i64 -1
  store i8* %13, i8** %6, align 8
  br label %14

14:                                               ; preds = %25, %2
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ugt i8* %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call i64 @isspace(i8 zeroext %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %18, %14
  %24 = phi i1 [ false, %14 ], [ %22, %18 ]
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 -1
  store i8* %27, i8** %6, align 8
  br label %14

28:                                               ; preds = %23
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %6, align 8
  store i8 0, i8* %30, align 1
  br label %31

31:                                               ; preds = %43, %28
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = icmp ugt i8* %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i8*, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = call i64 @isspace(i8 zeroext %37)
  %39 = icmp ne i64 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %35, %31
  %42 = phi i1 [ false, %31 ], [ %40, %35 ]
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 -1
  store i8* %45, i8** %6, align 8
  br label %31

46:                                               ; preds = %41
  %47 = load i8*, i8** %6, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %65

53:                                               ; preds = %46
  %54 = load i8*, i8** %6, align 8
  %55 = load i8, i8* %54, align 1
  %56 = call i64 @isspace(i8 zeroext %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %6, align 8
  store i8 0, i8* %59, align 1
  br label %63

61:                                               ; preds = %53
  %62 = load i32*, i32** %5, align 8
  store i32 0, i32* %62, align 4
  br label %63

63:                                               ; preds = %61, %58
  %64 = load i8*, i8** %6, align 8
  store i8* %64, i8** %3, align 8
  br label %65

65:                                               ; preds = %63, %51
  %66 = load i8*, i8** %3, align 8
  ret i8* %66
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
