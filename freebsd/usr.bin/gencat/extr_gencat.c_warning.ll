; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gencat/extr_gencat.c_warning.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gencat/extr_gencat.c_warning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s: %s on line %ld\0A\00", align 1
@lineno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@curline = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"^\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @warning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @warning(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @stderr, align 4
  %7 = call i8* (...) @getprogname()
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* @lineno, align 4
  %10 = call i32 (i32, i8*, ...) @fprintf(i32 %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %7, i8* %8, i32 %9)
  %11 = load i32, i32* @stderr, align 4
  %12 = load i8*, i8** @curline, align 8
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  %14 = load i8*, i8** %3, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = load i8*, i8** @curline, align 8
  store i8* %17, i8** %5, align 8
  br label %18

18:                                               ; preds = %25, %16
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @putc(i8 signext 32, i32 %23)
  br label %25

25:                                               ; preds = %22
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %5, align 8
  br label %18

28:                                               ; preds = %18
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %2
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @getprogname(...) #1

declare dso_local i32 @putc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
