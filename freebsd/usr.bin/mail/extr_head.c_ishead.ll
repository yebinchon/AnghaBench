; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_head.c_ishead.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_head.c_ishead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.headline = type { i32* }

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"From \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"No date field\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Date field not legal date\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ishead(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.headline, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i32, i32* @BUFSIZ, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @strncmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %34

16:                                               ; preds = %1
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @parse(i8* %17, %struct.headline* %4, i8* %11)
  %19 = getelementptr inbounds %struct.headline, %struct.headline* %4, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @fail(i8* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %34

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.headline, %struct.headline* %4, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @isdate(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @fail(i8* %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %34

33:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %30, %22, %15
  %35 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %35)
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @parse(i8*, %struct.headline*, i8*) #2

declare dso_local i32 @fail(i8*, i8*) #2

declare dso_local i32 @isdate(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
