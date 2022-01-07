; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_v7.local.c_username.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_v7.local.c_username.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"LOGNAME\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Cannot associate a name with uid %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @username() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %4, i8** %2, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i8*, i8** %2, align 8
  store i8* %7, i8** %1, align 8
  br label %23

8:                                                ; preds = %0
  %9 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %9, i8** %2, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i8*, i8** %2, align 8
  store i8* %12, i8** %1, align 8
  br label %23

13:                                               ; preds = %8
  %14 = call i64 (...) @getuid()
  store i64 %14, i64* %3, align 8
  %15 = call i8* @getname(i64 %14)
  store i8* %15, i8** %2, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i8*, i8** %2, align 8
  store i8* %18, i8** %1, align 8
  br label %23

19:                                               ; preds = %13
  %20 = load i64, i64* %3, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  store i8* null, i8** %1, align 8
  br label %23

23:                                               ; preds = %19, %17, %11, %6
  %24 = load i8*, i8** %1, align 8
  ret i8* %24
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @getname(i64) #1

declare dso_local i64 @getuid(...) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
