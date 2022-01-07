; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptocheck.c_generate_iv.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptocheck.c_generate_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, %struct.alg*)* @generate_iv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @generate_iv(i64 %0, %struct.alg* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.alg*, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.alg* %1, %struct.alg** %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i8* @alloc_buffer(i64 %6)
  store i8* %7, i8** %5, align 8
  %8 = load %struct.alg*, %struct.alg** %4, align 8
  %9 = getelementptr inbounds %struct.alg, %struct.alg* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %61 [
    i32 129, label %11
    i32 128, label %28
  ]

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = load i64, i64* %3, align 8
  %14 = sub i64 %13, 4
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  store i8 0, i8* %15, align 1
  %16 = load i8*, i8** %5, align 8
  %17 = load i64, i64* %3, align 8
  %18 = sub i64 %17, 3
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  store i8 0, i8* %19, align 1
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* %3, align 8
  %22 = sub i64 %21, 2
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  store i8 0, i8* %23, align 1
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %3, align 8
  %26 = sub i64 %25, 1
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  store i8 0, i8* %27, align 1
  br label %61

28:                                               ; preds = %2
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* %3, align 8
  %31 = sub i64 %30, 8
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8 0, i8* %32, align 1
  %33 = load i8*, i8** %5, align 8
  %34 = load i64, i64* %3, align 8
  %35 = sub i64 %34, 7
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  store i8 0, i8* %36, align 1
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %3, align 8
  %39 = sub i64 %38, 6
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %5, align 8
  %42 = load i64, i64* %3, align 8
  %43 = sub i64 %42, 5
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  store i8 0, i8* %44, align 1
  %45 = load i8*, i8** %5, align 8
  %46 = load i64, i64* %3, align 8
  %47 = sub i64 %46, 4
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8 0, i8* %48, align 1
  %49 = load i8*, i8** %5, align 8
  %50 = load i64, i64* %3, align 8
  %51 = sub i64 %50, 3
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** %5, align 8
  %54 = load i64, i64* %3, align 8
  %55 = sub i64 %54, 2
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  store i8 0, i8* %56, align 1
  %57 = load i8*, i8** %5, align 8
  %58 = load i64, i64* %3, align 8
  %59 = sub i64 %58, 1
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  store i8 0, i8* %60, align 1
  br label %61

61:                                               ; preds = %2, %28, %11
  %62 = load i8*, i8** %5, align 8
  ret i8* %62
}

declare dso_local i8* @alloc_buffer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
