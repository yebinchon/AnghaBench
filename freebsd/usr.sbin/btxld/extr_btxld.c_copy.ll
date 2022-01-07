; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/btxld/extr_btxld.c_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/btxld/extr_btxld.c_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"%s: Short read\00", align 1
@fname = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64, i32)* @copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy(i32 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [8192 x i8], align 16
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  br label %11

11:                                               ; preds = %30, %4
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %11
  store i64 8192, i64* %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ugt i64 8192, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i64, i64* %7, align 8
  store i64 %18, i64* %10, align 8
  br label %19

19:                                               ; preds = %17, %14
  %20 = load i32, i32* %5, align 4
  %21 = getelementptr inbounds [8192 x i8], [8192 x i8]* %9, i64 0, i64 0
  %22 = load i64, i64* %10, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @readx(i32 %20, i8* %21, i64 %22, i32 %23)
  %25 = load i64, i64* %10, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @fname, align 4
  %29 = call i32 @errx(i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %27, %19
  %31 = load i32, i32* %6, align 4
  %32 = getelementptr inbounds [8192 x i8], [8192 x i8]* %9, i64 0, i64 0
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @writex(i32 %31, i8* %32, i64 %33)
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %7, align 8
  %37 = sub i64 %36, %35
  store i64 %37, i64* %7, align 8
  store i32 -1, i32* %8, align 4
  br label %11

38:                                               ; preds = %11
  ret void
}

declare dso_local i64 @readx(i32, i8*, i64, i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @writex(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
