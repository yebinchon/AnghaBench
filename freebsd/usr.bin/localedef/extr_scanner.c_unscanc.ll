; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_scanner.c_unscanc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_scanner.c_unscanc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nextline = common dso_local global i32 0, align 4
@is_stdin = common dso_local global i64 0, align 8
@stdin = common dso_local global i32 0, align 4
@input = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ungetc failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @unscanc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unscanc(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 10
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, i32* @nextline, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* @nextline, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = load i32, i32* %2, align 4
  %10 = load i64, i64* @is_stdin, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* @stdin, align 4
  br label %16

14:                                               ; preds = %8
  %15 = load i32, i32* @input, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %18 = call i64 @ungetc(i32 %9, i32 %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 @yyerror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %16
  ret void
}

declare dso_local i64 @ungetc(i32, i32) #1

declare dso_local i32 @yyerror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
