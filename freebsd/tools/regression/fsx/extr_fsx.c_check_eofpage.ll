; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_check_eofpage.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_check_eofpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@file_size = common dso_local global i32 0, align 4
@page_mask = common dso_local global i32 0, align 4
@page_size = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [71 x i8] c"Mapped %s: non-zero data past EOF (0x%llx) page offset 0x%x is 0x%04x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_eofpage(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %8, align 4
  %13 = add i32 %11, %12
  %14 = load i32, i32* @file_size, align 4
  %15 = load i32, i32* @page_mask, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = icmp ule i32 %13, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %68

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @page_mask, align 4
  %25 = and i32 %23, %24
  %26 = zext i32 %25 to i64
  %27 = add i64 %22, %26
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 %27, %29
  %31 = load i32, i32* @page_mask, align 4
  %32 = xor i32 %31, -1
  %33 = zext i32 %32 to i64
  %34 = and i64 %30, %33
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i32, i32* @file_size, align 4
  %37 = load i32, i32* @page_mask, align 4
  %38 = and i32 %36, %37
  %39 = zext i32 %38 to i64
  %40 = add i64 %35, %39
  store i64 %40, i64* %10, align 8
  br label %41

41:                                               ; preds = %65, %20
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @page_size, align 8
  %45 = add i64 %43, %44
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %41
  %48 = load i64, i64* %10, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = load i8, i8* %49, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* @file_size, align 4
  %55 = sub i32 %54, 1
  %56 = load i64, i64* %10, align 8
  %57 = load i32, i32* @page_mask, align 4
  %58 = zext i32 %57 to i64
  %59 = and i64 %56, %58
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @short_at(i64 %60)
  %62 = call i32 @prt(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i8* %53, i32 %55, i64 %59, i32 %61)
  %63 = call i32 @report_failure(i32 205)
  br label %64

64:                                               ; preds = %52, %47
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %10, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %10, align 8
  br label %41

68:                                               ; preds = %19, %41
  ret void
}

declare dso_local i32 @prt(i8*, i8*, i32, i64, i32) #1

declare dso_local i32 @short_at(i64) #1

declare dso_local i32 @report_failure(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
