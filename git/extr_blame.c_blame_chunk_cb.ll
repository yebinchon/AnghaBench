; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_blame_chunk_cb.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_blame_chunk_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_chunk_cb_data = type { i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"internal error in blame::blame_chunk_cb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64, i8*)* @blame_chunk_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blame_chunk_cb(i64 %0, i64 %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.blame_chunk_cb_data*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i8*, i8** %10, align 8
  %13 = bitcast i8* %12 to %struct.blame_chunk_cb_data*
  store %struct.blame_chunk_cb_data* %13, %struct.blame_chunk_cb_data** %11, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %8, align 8
  %16 = sub nsw i64 %14, %15
  %17 = load %struct.blame_chunk_cb_data*, %struct.blame_chunk_cb_data** %11, align 8
  %18 = getelementptr inbounds %struct.blame_chunk_cb_data, %struct.blame_chunk_cb_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = call i32 @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %5
  %24 = load %struct.blame_chunk_cb_data*, %struct.blame_chunk_cb_data** %11, align 8
  %25 = getelementptr inbounds %struct.blame_chunk_cb_data, %struct.blame_chunk_cb_data* %24, i32 0, i32 5
  %26 = load %struct.blame_chunk_cb_data*, %struct.blame_chunk_cb_data** %11, align 8
  %27 = getelementptr inbounds %struct.blame_chunk_cb_data, %struct.blame_chunk_cb_data* %26, i32 0, i32 4
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %8, align 8
  %31 = sub nsw i64 %29, %30
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.blame_chunk_cb_data*, %struct.blame_chunk_cb_data** %11, align 8
  %37 = getelementptr inbounds %struct.blame_chunk_cb_data, %struct.blame_chunk_cb_data* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.blame_chunk_cb_data*, %struct.blame_chunk_cb_data** %11, align 8
  %40 = getelementptr inbounds %struct.blame_chunk_cb_data, %struct.blame_chunk_cb_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.blame_chunk_cb_data*, %struct.blame_chunk_cb_data** %11, align 8
  %43 = getelementptr inbounds %struct.blame_chunk_cb_data, %struct.blame_chunk_cb_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @blame_chunk(i32* %25, i32* %27, i64 %28, i64 %31, i64 %34, i64 %35, i32 %38, i32 %41, i32 %44)
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = add nsw i64 %49, %50
  %52 = sub nsw i64 %48, %51
  %53 = load %struct.blame_chunk_cb_data*, %struct.blame_chunk_cb_data** %11, align 8
  %54 = getelementptr inbounds %struct.blame_chunk_cb_data, %struct.blame_chunk_cb_data* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  ret i32 0
}

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @blame_chunk(i32*, i32*, i64, i64, i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
