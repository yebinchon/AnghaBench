; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_main.c_kread_counters.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_main.c_kread_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"kread_counters: invalid counter set size\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@kvmd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kread_counters(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = call i64 (...) @kvmd_init()
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %63

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = urem i64 %16, 4
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @xo_warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %63

21:                                               ; preds = %15
  %22 = load i64, i64* %7, align 8
  %23 = udiv i64 %22, 4
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = mul i64 %24, 4
  %26 = call i32* @malloc(i64 %25)
  store i32* %26, i32** %9, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 @xo_err(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %21
  %31 = load i32, i32* %5, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = load i64, i64* %11, align 8
  %34 = mul i64 %33, 4
  %35 = call i64 @kread(i32 %31, i32* %32, i64 %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @free(i32* %38)
  store i32 -1, i32* %4, align 4
  br label %63

40:                                               ; preds = %30
  %41 = load i8*, i8** %6, align 8
  %42 = bitcast i8* %41 to i32*
  store i32* %42, i32** %8, align 8
  store i64 0, i64* %10, align 8
  br label %43

43:                                               ; preds = %57, %40
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load i32, i32* @kvmd, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @kvm_counter_u64_fetch(i32 %48, i32 %52)
  %54 = load i32*, i32** %8, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 %53, i32* %56, align 4
  br label %57

57:                                               ; preds = %47
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %10, align 8
  br label %43

60:                                               ; preds = %43
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @free(i32* %61)
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %37, %19, %14
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @kvmd_init(...) #1

declare dso_local i32 @xo_warnx(i8*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @xo_err(i32, i8*) #1

declare dso_local i64 @kread(i32, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @kvm_counter_u64_fetch(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
