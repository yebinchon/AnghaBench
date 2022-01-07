; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/vmstat/extr_vmstat.c_print_intrcnts.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/vmstat/extr_vmstat.c_print_intrcnts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"interrupt\00", align 1
@aflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"{d:name/%-*s}{ket:name/%s} {:total/%20lu} {:rate/%10lu}\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"{L:/%-*s} {:total-interrupts/%20ju} {:total-rate/%10ju}\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Total\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i8*, i32, i64, i64)* @print_intrcnts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_intrcnts(i64* %0, i64* %1, i8* %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i64* %1, i64** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %23 = load i8*, i8** %9, align 8
  store i8* %23, i8** %15, align 8
  %24 = call i32 @xo_open_list(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %22, align 4
  %25 = load i64*, i64** %7, align 8
  store i64* %25, i64** %13, align 8
  %26 = load i64*, i64** %8, align 8
  store i64* %26, i64** %14, align 8
  br label %27

27:                                               ; preds = %88, %6
  %28 = load i32, i32* %22, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %91

31:                                               ; preds = %27
  %32 = load i8*, i8** %15, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %68

37:                                               ; preds = %31
  %38 = load i64*, i64** %13, align 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* @aflag, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %41, %37
  %45 = load i64*, i64** %13, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %14, align 8
  %48 = load i64, i64* %47, align 8
  %49 = sub i64 %46, %48
  store i64 %49, i64* %20, align 8
  %50 = load i64, i64* %20, align 8
  %51 = trunc i64 %50 to i32
  %52 = mul nsw i32 %51, 1000
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %12, align 8
  %55 = sdiv i64 %54, 2
  %56 = add nsw i64 %53, %55
  %57 = load i64, i64* %12, align 8
  %58 = sdiv i64 %56, %57
  store i64 %58, i64* %21, align 8
  %59 = call i32 @xo_open_instance(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %60 = load i64, i64* %11, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i8*, i8** %15, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = load i64, i64* %20, align 8
  %65 = load i64, i64* %21, align 8
  %66 = call i32 (i8*, i32, i8*, i8*, i64, ...) @xo_emit(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %61, i8* %62, i8* %63, i64 %64, i64 %65)
  %67 = call i32 @xo_close_instance(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %44, %41, %31
  %69 = load i8*, i8** %15, align 8
  %70 = call i64 @strlen(i8* %69)
  %71 = add nsw i64 %70, 1
  %72 = load i8*, i8** %15, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 %71
  store i8* %73, i8** %15, align 8
  %74 = load i64*, i64** %13, align 8
  %75 = getelementptr inbounds i64, i64* %74, i32 1
  store i64* %75, i64** %13, align 8
  %76 = load i64, i64* %74, align 8
  %77 = load i32, i32* %16, align 4
  %78 = sext i32 %77 to i64
  %79 = add i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %16, align 4
  %81 = load i64*, i64** %14, align 8
  %82 = getelementptr inbounds i64, i64* %81, i32 1
  store i64* %82, i64** %14, align 8
  %83 = load i64, i64* %81, align 8
  %84 = load i32, i32* %17, align 4
  %85 = sext i32 %84 to i64
  %86 = add i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %17, align 4
  br label %88

88:                                               ; preds = %68
  %89 = load i32, i32* %22, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %22, align 4
  br label %27

91:                                               ; preds = %27
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %17, align 4
  %94 = sub nsw i32 %92, %93
  store i32 %94, i32* %18, align 4
  %95 = load i32, i32* %18, align 4
  %96 = mul nsw i32 %95, 1000
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %12, align 8
  %99 = sdiv i64 %98, 2
  %100 = add nsw i64 %97, %99
  %101 = load i64, i64* %12, align 8
  %102 = sdiv i64 %100, %101
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %19, align 4
  %104 = call i32 @xo_close_list(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %105 = load i64, i64* %11, align 8
  %106 = trunc i64 %105 to i32
  %107 = load i32, i32* %18, align 4
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i8*
  %110 = load i32, i32* %19, align 4
  %111 = sext i32 %110 to i64
  %112 = call i32 (i8*, i32, i8*, i8*, i64, ...) @xo_emit(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %109, i64 %111)
  ret void
}

declare dso_local i32 @xo_open_list(i8*) #1

declare dso_local i32 @xo_open_instance(i8*) #1

declare dso_local i32 @xo_emit(i8*, i32, i8*, i8*, i64, ...) #1

declare dso_local i32 @xo_close_instance(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @xo_close_list(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
