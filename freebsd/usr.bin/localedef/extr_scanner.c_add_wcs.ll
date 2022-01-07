; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_scanner.c_add_wcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_scanner.c_add_wcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wideidx = common dso_local global i32 0, align 4
@widesz = common dso_local global i32 0, align 4
@widestr = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_wcs(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i32, i32* @wideidx, align 4
  %4 = add nsw i32 %3, 1
  %5 = load i32, i32* @widesz, align 4
  %6 = icmp sge i32 %4, %5
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = load i32, i32* @widesz, align 4
  %9 = add nsw i32 %8, 64
  store i32 %9, i32* @widesz, align 4
  %10 = load i64*, i64** @widestr, align 8
  %11 = load i32, i32* @widesz, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 8
  %14 = trunc i64 %13 to i32
  %15 = call i64* @realloc(i64* %10, i32 %14)
  store i64* %15, i64** @widestr, align 8
  %16 = load i64*, i64** @widestr, align 8
  %17 = icmp eq i64* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %7
  %19 = call i32 @yyerror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* @wideidx, align 4
  store i32 0, i32* @widesz, align 4
  br label %32

20:                                               ; preds = %7
  br label %21

21:                                               ; preds = %20, %1
  %22 = load i64, i64* %2, align 8
  %23 = load i64*, i64** @widestr, align 8
  %24 = load i32, i32* @wideidx, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @wideidx, align 4
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i64, i64* %23, i64 %26
  store i64 %22, i64* %27, align 8
  %28 = load i64*, i64** @widestr, align 8
  %29 = load i32, i32* @wideidx, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %21, %18
  ret void
}

declare dso_local i64* @realloc(i64*, i32) #1

declare dso_local i32 @yyerror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
