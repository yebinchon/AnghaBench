; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_remote.c_getremote.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_remote.c_getremote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@getremote.next = internal global i8* null, align 8
@getremote.lookedup = internal global i32 0, align 4
@NOSTR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"HOST\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: no host specified\0A\00", align 1
@__progname = common dso_local global i8* null, align 8
@DV = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @getremote(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @getremote.lookedup, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = load i8*, i8** @NOSTR, align 8
  %10 = icmp eq i8* %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %3, align 8
  %13 = load i8*, i8** @NOSTR, align 8
  %14 = icmp eq i8* %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i32, i32* @stderr, align 4
  %17 = load i8*, i8** @__progname, align 8
  %18 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  %19 = call i32 @exit(i32 3) #3
  unreachable

20:                                               ; preds = %11, %7
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @getremcap(i8* %21)
  %23 = load i8*, i8** @DV, align 8
  store i8* %23, i8** @getremote.next, align 8
  %24 = load i32, i32* @getremote.lookedup, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @getremote.lookedup, align 4
  br label %26

26:                                               ; preds = %20, %1
  %27 = load i8*, i8** @getremote.next, align 8
  %28 = load i8*, i8** @NOSTR, align 8
  %29 = icmp eq i8* %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i8*, i8** @NOSTR, align 8
  store i8* %31, i8** %2, align 8
  br label %46

32:                                               ; preds = %26
  %33 = load i8*, i8** @getremote.next, align 8
  %34 = call i8* @strchr(i8* %33, i8 signext 44)
  store i8* %34, i8** %4, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i8*, i8** @getremote.next, align 8
  store i8* %37, i8** @DV, align 8
  %38 = load i8*, i8** @NOSTR, align 8
  store i8* %38, i8** @getremote.next, align 8
  br label %44

39:                                               ; preds = %32
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %4, align 8
  store i8 0, i8* %40, align 1
  %42 = load i8*, i8** @getremote.next, align 8
  store i8* %42, i8** @DV, align 8
  %43 = load i8*, i8** %4, align 8
  store i8* %43, i8** @getremote.next, align 8
  br label %44

44:                                               ; preds = %39, %36
  %45 = load i8*, i8** @DV, align 8
  store i8* %45, i8** %2, align 8
  br label %46

46:                                               ; preds = %44, %30
  %47 = load i8*, i8** %2, align 8
  ret i8* %47
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @getremcap(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
