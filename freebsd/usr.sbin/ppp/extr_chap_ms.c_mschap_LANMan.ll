; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chap_ms.c_mschap_LANMan.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chap_ms.c_mschap_LANMan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mschap_LANMan.salt = internal global [9 x i8] c"KGS!@#$%\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mschap_LANMan(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [14 x i8], align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [16 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = getelementptr inbounds [14 x i8], [14 x i8]* %7, i64 0, i64 0
  %12 = getelementptr inbounds i8, i8* %11, i64 14
  store i8* %12, i8** %9, align 8
  %13 = getelementptr inbounds [14 x i8], [14 x i8]* %7, i64 0, i64 0
  store i8* %13, i8** %8, align 8
  br label %14

14:                                               ; preds = %30, %3
  %15 = load i8*, i8** %6, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i8*, i8** %8, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ult i8* %20, %21
  br label %23

23:                                               ; preds = %19, %14
  %24 = phi i1 [ false, %14 ], [ %22, %19 ]
  br i1 %24, label %25, label %35

25:                                               ; preds = %23
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  %28 = call signext i8 @toupper(i8 signext %27)
  %29 = load i8*, i8** %8, align 8
  store i8 %28, i8* %29, align 1
  br label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %6, align 8
  br label %14

35:                                               ; preds = %23
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = icmp ult i8* %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = trunc i64 %45 to i32
  %47 = call i32 @memset(i8* %40, i8 signext 0, i32 %46)
  br label %48

48:                                               ; preds = %39, %35
  %49 = getelementptr inbounds [14 x i8], [14 x i8]* %7, i64 0, i64 0
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %51 = call i32 @DesEncrypt(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @mschap_LANMan.salt, i64 0, i64 0), i8* %49, i8* %50)
  %52 = getelementptr inbounds [14 x i8], [14 x i8]* %7, i64 0, i64 0
  %53 = getelementptr inbounds i8, i8* %52, i64 7
  %54 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %55 = getelementptr inbounds i8, i8* %54, i64 8
  %56 = call i32 @DesEncrypt(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @mschap_LANMan.salt, i64 0, i64 0), i8* %53, i8* %55)
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 @ChallengeResponse(i8* %57, i8* %58, i8* %59)
  ret void
}

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @DesEncrypt(i8*, i8*, i8*) #1

declare dso_local i32 @ChallengeResponse(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
