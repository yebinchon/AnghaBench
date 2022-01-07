; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_minidump_machdep.c_write_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_minidump_machdep.c_write_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dumperinfo = type { i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@counter = common dso_local global i64 0, align 8
@progress = common dso_local global i64 0, align 8
@dumpsize = common dso_local global i32 0, align 4
@WD_LASTVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"pa is not supported\00", align 1
@ECANCELED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c" (CTRL-C to abort) \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dumperinfo*, i8*, i64)* @write_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_buffer(%struct.dumperinfo* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dumperinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.dumperinfo* %0, %struct.dumperinfo** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.dumperinfo*, %struct.dumperinfo** %5, align 8
  %13 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %11, align 8
  %15 = load i64, i64* %11, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %18, i64* %11, align 8
  br label %19

19:                                               ; preds = %17, %3
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %76, %19
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %77

23:                                               ; preds = %20
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @min(i64 %24, i64 %25)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @counter, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* @counter, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @progress, align 8
  %32 = sub i64 %31, %30
  store i64 %32, i64* @progress, align 8
  %33 = load i64, i64* @counter, align 8
  %34 = lshr i64 %33, 22
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %23
  %37 = load i64, i64* @progress, align 8
  %38 = load i32, i32* @dumpsize, align 4
  %39 = call i32 @report_progress(i64 %37, i32 %38)
  %40 = load i64, i64* @counter, align 8
  %41 = and i64 %40, 4194303
  store i64 %41, i64* @counter, align 8
  br label %42

42:                                               ; preds = %36, %23
  %43 = load i32, i32* @WD_LASTVAL, align 4
  %44 = call i32 @wdog_kern_pat(i32 %43)
  %45 = load i8*, i8** %6, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load %struct.dumperinfo*, %struct.dumperinfo** %5, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @dump_append(%struct.dumperinfo* %48, i8* %49, i32 0, i64 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %4, align 4
  br label %78

56:                                               ; preds = %47
  %57 = load i64, i64* %8, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 %57
  store i8* %59, i8** %6, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %7, align 8
  %62 = sub i64 %61, %60
  store i64 %62, i64* %7, align 8
  br label %65

63:                                               ; preds = %42
  %64 = call i32 @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %56
  %66 = call i32 (...) @cncheckc()
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %67, 3
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @ECANCELED, align 4
  store i32 %70, i32* %4, align 4
  br label %78

71:                                               ; preds = %65
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, -1
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %71
  br label %20

77:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %69, %54
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @report_progress(i64, i32) #1

declare dso_local i32 @wdog_kern_pat(i32) #1

declare dso_local i32 @dump_append(%struct.dumperinfo*, i8*, i32, i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @cncheckc(...) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
