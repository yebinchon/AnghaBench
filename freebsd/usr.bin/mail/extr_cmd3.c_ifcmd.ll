; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd3.c_ifcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd3.c_ifcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cond = common dso_local global i64 0, align 8
@CANY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Illegal nested \22if\22\0A\00", align 1
@CRCV = common dso_local global i64 0, align 8
@CSEND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Unrecognized if-keyword: \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifcmd(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  %5 = load i64, i64* @cond, align 8
  %6 = load i64, i64* @CANY, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %26

10:                                               ; preds = %1
  %11 = load i64, i64* @CANY, align 8
  store i64 %11, i64* @cond, align 8
  %12 = load i8**, i8*** %3, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %22 [
    i32 114, label %18
    i32 82, label %18
    i32 115, label %20
    i32 83, label %20
  ]

18:                                               ; preds = %10, %10
  %19 = load i64, i64* @CRCV, align 8
  store i64 %19, i64* @cond, align 8
  br label %25

20:                                               ; preds = %10, %10
  %21 = load i64, i64* @CSEND, align 8
  store i64 %21, i64* @cond, align 8
  br label %25

22:                                               ; preds = %10
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  store i32 1, i32* %2, align 4
  br label %26

25:                                               ; preds = %20, %18
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %22, %8
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
