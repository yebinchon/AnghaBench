; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_describe.c_compare_pt.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_describe.c_compare_pt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.possible_tag = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @compare_pt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_pt(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.possible_tag*, align 8
  %7 = alloca %struct.possible_tag*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.possible_tag*
  store %struct.possible_tag* %9, %struct.possible_tag** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.possible_tag*
  store %struct.possible_tag* %11, %struct.possible_tag** %7, align 8
  %12 = load %struct.possible_tag*, %struct.possible_tag** %6, align 8
  %13 = getelementptr inbounds %struct.possible_tag, %struct.possible_tag* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.possible_tag*, %struct.possible_tag** %7, align 8
  %16 = getelementptr inbounds %struct.possible_tag, %struct.possible_tag* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.possible_tag*, %struct.possible_tag** %6, align 8
  %21 = getelementptr inbounds %struct.possible_tag, %struct.possible_tag* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.possible_tag*, %struct.possible_tag** %7, align 8
  %24 = getelementptr inbounds %struct.possible_tag, %struct.possible_tag* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %46

28:                                               ; preds = %2
  %29 = load %struct.possible_tag*, %struct.possible_tag** %6, align 8
  %30 = getelementptr inbounds %struct.possible_tag, %struct.possible_tag* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.possible_tag*, %struct.possible_tag** %7, align 8
  %33 = getelementptr inbounds %struct.possible_tag, %struct.possible_tag* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  %37 = load %struct.possible_tag*, %struct.possible_tag** %6, align 8
  %38 = getelementptr inbounds %struct.possible_tag, %struct.possible_tag* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.possible_tag*, %struct.possible_tag** %7, align 8
  %41 = getelementptr inbounds %struct.possible_tag, %struct.possible_tag* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %3, align 4
  br label %46

45:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %36, %19
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
