; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_mgmt.c_parse_wwn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_mgmt.c_parse_wwn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"0x%2hhx%2hhx%2hhx%2hhx%2hhx%2hhx%2hhx%2hhx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_wwn(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @ocs_sscanf(i8* %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64* %6, i64* %7, i64* %8, i64* %9, i64* %10, i64* %11, i64* %12, i64* %13)
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  %18 = icmp eq i32 %17, 8
  br i1 %18, label %19, label %51

19:                                               ; preds = %2
  %20 = load i64, i64* %6, align 8
  %21 = trunc i64 %20 to i32
  %22 = shl i32 %21, 56
  %23 = load i64, i64* %7, align 8
  %24 = trunc i64 %23 to i32
  %25 = shl i32 %24, 48
  %26 = or i32 %22, %25
  %27 = load i64, i64* %8, align 8
  %28 = trunc i64 %27 to i32
  %29 = shl i32 %28, 40
  %30 = or i32 %26, %29
  %31 = load i64, i64* %9, align 8
  %32 = trunc i64 %31 to i32
  %33 = shl i32 %32, 32
  %34 = or i32 %30, %33
  %35 = load i64, i64* %10, align 8
  %36 = trunc i64 %35 to i32
  %37 = shl i32 %36, 24
  %38 = or i32 %34, %37
  %39 = load i64, i64* %11, align 8
  %40 = trunc i64 %39 to i32
  %41 = shl i32 %40, 16
  %42 = or i32 %38, %41
  %43 = load i64, i64* %12, align 8
  %44 = trunc i64 %43 to i32
  %45 = shl i32 %44, 8
  %46 = or i32 %42, %45
  %47 = load i64, i64* %13, align 8
  %48 = trunc i64 %47 to i32
  %49 = or i32 %46, %48
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  store i32 0, i32* %3, align 4
  br label %52

51:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %19
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @ocs_sscanf(i8*, i8*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
