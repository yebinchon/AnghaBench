; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_fio.c_getdeadletter.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_fio.c_getdeadletter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"DEAD\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"~/dead.letter\00", align 1
@PATHSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"~/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @getdeadletter() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = call i8* @value(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %4, i8** %1, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = load i8*, i8** %1, align 8
  %8 = call i8* @expand(i8* %7)
  store i8* %8, i8** %1, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6, %0
  %11 = call i8* @expand(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i8* %11, i8** %1, align 8
  br label %28

12:                                               ; preds = %6
  %13 = load i8*, i8** %1, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 47
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load i32, i32* @PATHSIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %2, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %3, align 8
  %22 = trunc i64 %19 to i32
  %23 = load i8*, i8** %1, align 8
  %24 = call i32 @snprintf(i8* %21, i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  %25 = call i8* @expand(i8* %21)
  store i8* %25, i8** %1, align 8
  %26 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %26)
  br label %27

27:                                               ; preds = %17, %12
  br label %28

28:                                               ; preds = %27, %10
  %29 = load i8*, i8** %1, align 8
  ret i8* %29
}

declare dso_local i8* @value(i8*) #1

declare dso_local i8* @expand(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
