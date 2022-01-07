; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_messages.c_dump_messages.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_messages.c_dump_messages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }

@msgs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [23 x i8] c"missing field 'yesstr'\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"missing field 'nostr'\00", align 1
@EOF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_messages() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @msgs, i32 0, i32 0), align 8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @msgs, i32 0, i32 0), align 8
  br label %7

7:                                                ; preds = %5, %0
  %8 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @msgs, i32 0, i32 1), align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 @warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @msgs, i32 0, i32 1), align 8
  br label %12

12:                                               ; preds = %10, %7
  %13 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @msgs, i32 0, i32 0), align 8
  %14 = call i8* @strchr(i8* %13, i8 signext 58)
  store i8* %14, i8** %2, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i8*, i8** %2, align 8
  store i8 0, i8* %17, align 1
  br label %18

18:                                               ; preds = %16, %12
  %19 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @msgs, i32 0, i32 1), align 8
  %20 = call i8* @strchr(i8* %19, i8 signext 58)
  store i8* %20, i8** %2, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i8*, i8** %2, align 8
  store i8 0, i8* %23, align 1
  br label %24

24:                                               ; preds = %22, %18
  %25 = call i32* (...) @open_category()
  store i32* %25, i32** %1, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %56

28:                                               ; preds = %24
  %29 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @msgs, i32 0, i32 2), align 8
  %30 = load i32*, i32** %1, align 8
  %31 = call i64 @putl_category(i8* %29, i32* %30)
  %32 = load i64, i64* @EOF, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %52, label %34

34:                                               ; preds = %28
  %35 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @msgs, i32 0, i32 3), align 8
  %36 = load i32*, i32** %1, align 8
  %37 = call i64 @putl_category(i8* %35, i32* %36)
  %38 = load i64, i64* @EOF, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %52, label %40

40:                                               ; preds = %34
  %41 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @msgs, i32 0, i32 0), align 8
  %42 = load i32*, i32** %1, align 8
  %43 = call i64 @putl_category(i8* %41, i32* %42)
  %44 = load i64, i64* @EOF, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @msgs, i32 0, i32 1), align 8
  %48 = load i32*, i32** %1, align 8
  %49 = call i64 @putl_category(i8* %47, i32* %48)
  %50 = load i64, i64* @EOF, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46, %40, %34, %28
  br label %56

53:                                               ; preds = %46
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @close_category(i32* %54)
  br label %56

56:                                               ; preds = %53, %52, %27
  ret void
}

declare dso_local i32 @warn(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32* @open_category(...) #1

declare dso_local i64 @putl_category(i8*, i32*) #1

declare dso_local i32 @close_category(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
