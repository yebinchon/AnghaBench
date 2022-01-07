; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_handle_split_cb.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_handle_split_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.handle_split_cb_data = type { i64, i64, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64, i8*)* @handle_split_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_split_cb(i64 %0, i64 %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.handle_split_cb_data*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i8*, i8** %10, align 8
  %13 = bitcast i8* %12 to %struct.handle_split_cb_data*
  store %struct.handle_split_cb_data* %13, %struct.handle_split_cb_data** %11, align 8
  %14 = load %struct.handle_split_cb_data*, %struct.handle_split_cb_data** %11, align 8
  %15 = getelementptr inbounds %struct.handle_split_cb_data, %struct.handle_split_cb_data* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.handle_split_cb_data*, %struct.handle_split_cb_data** %11, align 8
  %18 = getelementptr inbounds %struct.handle_split_cb_data, %struct.handle_split_cb_data* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.handle_split_cb_data*, %struct.handle_split_cb_data** %11, align 8
  %21 = getelementptr inbounds %struct.handle_split_cb_data, %struct.handle_split_cb_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.handle_split_cb_data*, %struct.handle_split_cb_data** %11, align 8
  %24 = getelementptr inbounds %struct.handle_split_cb_data, %struct.handle_split_cb_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.handle_split_cb_data*, %struct.handle_split_cb_data** %11, align 8
  %28 = getelementptr inbounds %struct.handle_split_cb_data, %struct.handle_split_cb_data* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.handle_split_cb_data*, %struct.handle_split_cb_data** %11, align 8
  %31 = getelementptr inbounds %struct.handle_split_cb_data, %struct.handle_split_cb_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @handle_split(i32 %16, i32 %19, i64 %22, i64 %25, i64 %26, i32 %29, i32 %32)
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = add nsw i64 %34, %35
  %37 = load %struct.handle_split_cb_data*, %struct.handle_split_cb_data** %11, align 8
  %38 = getelementptr inbounds %struct.handle_split_cb_data, %struct.handle_split_cb_data* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = add nsw i64 %39, %40
  %42 = load %struct.handle_split_cb_data*, %struct.handle_split_cb_data** %11, align 8
  %43 = getelementptr inbounds %struct.handle_split_cb_data, %struct.handle_split_cb_data* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  ret i32 0
}

declare dso_local i32 @handle_split(i32, i32, i64, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
