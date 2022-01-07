; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_badd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_badd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i64, i64, i32 (i8*, i8*)*)* @badd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @badd(i8* %0, i8* %1, i8* %2, i64 %3, i64 %4, i32 (i8*, i8*)* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32 (i8*, i8*)*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 (i8*, i8*)* %5, i32 (i8*, i8*)** %13, align 8
  %20 = load i64, i64* %11, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %6
  %23 = load i8*, i8** %10, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i64, i64* %12, align 8
  %26 = call i32 @memcpy(i8* %23, i8* %24, i64 %25)
  store i32 1, i32* %7, align 4
  br label %107

27:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  %28 = load i64, i64* %11, align 8
  %29 = sub i64 %28, 1
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %31

31:                                               ; preds = %61, %27
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %31
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %15, align 4
  %38 = add nsw i32 %36, %37
  %39 = sdiv i32 %38, 2
  store i32 %39, i32* %16, align 4
  %40 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %13, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load i32, i32* %16, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %12, align 8
  %46 = mul i64 %44, %45
  %47 = getelementptr i8, i8* %42, i64 %46
  %48 = call i32 %40(i8* %41, i8* %47)
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %18, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %107

52:                                               ; preds = %35
  %53 = load i32, i32* %18, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %16, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %14, align 4
  br label %61

58:                                               ; preds = %52
  %59 = load i32, i32* %16, align 4
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %15, align 4
  br label %61

61:                                               ; preds = %58, %55
  br label %31

62:                                               ; preds = %31
  %63 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %13, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* %16, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %12, align 8
  %69 = mul i64 %67, %68
  %70 = getelementptr i8, i8* %65, i64 %69
  %71 = call i32 %63(i8* %64, i8* %70)
  store i32 %71, i32* %18, align 4
  %72 = load i32, i32* %18, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %62
  %75 = load i32, i32* %16, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %17, align 4
  br label %79

77:                                               ; preds = %62
  %78 = load i32, i32* %16, align 4
  store i32 %78, i32* %17, align 4
  br label %79

79:                                               ; preds = %77, %74
  %80 = load i8*, i8** %10, align 8
  %81 = load i32, i32* %17, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* %12, align 8
  %84 = mul i64 %82, %83
  %85 = getelementptr i8, i8* %80, i64 %84
  store i8* %85, i8** %19, align 8
  %86 = load i64, i64* %11, align 8
  %87 = load i32, i32* %17, align 4
  %88 = sext i32 %87 to i64
  %89 = icmp ugt i64 %86, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %79
  %91 = load i8*, i8** %19, align 8
  %92 = load i64, i64* %12, align 8
  %93 = getelementptr i8, i8* %91, i64 %92
  %94 = load i8*, i8** %19, align 8
  %95 = load i64, i64* %11, align 8
  %96 = load i32, i32* %17, align 4
  %97 = sext i32 %96 to i64
  %98 = sub i64 %95, %97
  %99 = load i64, i64* %12, align 8
  %100 = mul i64 %98, %99
  %101 = call i32 @memmove(i8* %93, i8* %94, i64 %100)
  br label %102

102:                                              ; preds = %90, %79
  %103 = load i8*, i8** %19, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = load i64, i64* %12, align 8
  %106 = call i32 @memcpy(i8* %103, i8* %104, i64 %105)
  store i32 1, i32* %7, align 4
  br label %107

107:                                              ; preds = %102, %51, %22
  %108 = load i32, i32* %7, align 4
  ret i32 %108
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
