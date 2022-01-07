; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_scanner.c_add_tok.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_scanner.c_add_tok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tokidx = common dso_local global i32 0, align 4
@toksz = common dso_local global i32 0, align 4
@token = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_tok(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @tokidx, align 4
  %4 = add nsw i32 %3, 1
  %5 = load i32, i32* @toksz, align 4
  %6 = icmp sge i32 %4, %5
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load i32, i32* @toksz, align 4
  %9 = add nsw i32 %8, 64
  store i32 %9, i32* @toksz, align 4
  %10 = load i8*, i8** @token, align 8
  %11 = load i32, i32* @toksz, align 4
  %12 = call i8* @realloc(i8* %10, i32 %11)
  store i8* %12, i8** @token, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = call i32 @yyerror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* @tokidx, align 4
  store i32 0, i32* @toksz, align 4
  br label %29

16:                                               ; preds = %7
  br label %17

17:                                               ; preds = %16, %1
  %18 = load i32, i32* %2, align 4
  %19 = trunc i32 %18 to i8
  %20 = load i8*, i8** @token, align 8
  %21 = load i32, i32* @tokidx, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @tokidx, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  store i8 %19, i8* %24, align 1
  %25 = load i8*, i8** @token, align 8
  %26 = load i32, i32* @tokidx, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8 0, i8* %28, align 1
  br label %29

29:                                               ; preds = %17, %14
  ret void
}

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @yyerror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
