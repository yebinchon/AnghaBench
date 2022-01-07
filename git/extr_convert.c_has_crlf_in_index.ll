; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_has_crlf_in_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_has_crlf_in_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }

@CONVERT_STAT_BITS_BIN = common dso_local global i32 0, align 4
@CONVERT_STAT_BITS_TXT_CRLF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, i8*)* @has_crlf_in_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_crlf_in_index(%struct.index_state* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.index_state*, %struct.index_state** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i8* @read_blob_data_from_index(%struct.index_state* %11, i8* %12, i64* %6)
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

17:                                               ; preds = %2
  %18 = load i8*, i8** %7, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i8* @memchr(i8* %18, i8 signext 13, i64 %19)
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %17
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @gather_convert_stats(i8* %24, i64 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @CONVERT_STAT_BITS_BIN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @CONVERT_STAT_BITS_TXT_CRLF, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 1, i32* %9, align 4
  br label %37

37:                                               ; preds = %36, %31, %23
  br label %38

38:                                               ; preds = %37, %17
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %16
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i8* @read_blob_data_from_index(%struct.index_state*, i8*, i64*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i32 @gather_convert_stats(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
