; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_file_headers_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_file_headers_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_header = type { i64 }
%struct.last_printed = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.file_header**, i32*)* @file_headers_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @file_headers_merge(i64 %0, %struct.file_header** %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file_header**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.last_printed, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.file_header** %1, %struct.file_header*** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = call i32 @memset(%struct.last_printed* %7, i32 0, i32 8)
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %22, %3
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load %struct.file_header**, %struct.file_header*** %5, align 8
  %16 = load i64, i64* %8, align 8
  %17 = getelementptr inbounds %struct.file_header*, %struct.file_header** %15, i64 %16
  %18 = load %struct.file_header*, %struct.file_header** %17, align 8
  %19 = load %struct.file_header**, %struct.file_header*** %5, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @file_header_list_push(%struct.file_header* %18, %struct.file_header** %19, i64 %20)
  br label %22

22:                                               ; preds = %14
  %23 = load i64, i64* %8, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %8, align 8
  br label %10

25:                                               ; preds = %10
  br label %26

26:                                               ; preds = %33, %25
  %27 = load %struct.file_header**, %struct.file_header*** %5, align 8
  %28 = getelementptr inbounds %struct.file_header*, %struct.file_header** %27, i64 0
  %29 = load %struct.file_header*, %struct.file_header** %28, align 8
  %30 = getelementptr inbounds %struct.file_header, %struct.file_header* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %26
  %34 = load %struct.file_header**, %struct.file_header*** %5, align 8
  %35 = getelementptr inbounds %struct.file_header*, %struct.file_header** %34, i64 0
  %36 = load %struct.file_header*, %struct.file_header** %35, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @file_header_print(%struct.file_header* %36, i32* %37, %struct.last_printed* %7)
  %39 = load %struct.file_header**, %struct.file_header*** %5, align 8
  %40 = getelementptr inbounds %struct.file_header*, %struct.file_header** %39, i64 0
  %41 = load %struct.file_header*, %struct.file_header** %40, align 8
  %42 = call i32 @file_header_read_next(%struct.file_header* %41)
  %43 = load %struct.file_header**, %struct.file_header*** %5, align 8
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @file_header_list_rearrange_from_header(%struct.file_header** %43, i64 %44)
  br label %26

46:                                               ; preds = %26
  %47 = getelementptr inbounds %struct.last_printed, %struct.last_printed* %7, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.last_printed, %struct.last_printed* %7, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @bwsfree(i64 %52)
  br label %54

54:                                               ; preds = %50, %46
  ret void
}

declare dso_local i32 @memset(%struct.last_printed*, i32, i32) #1

declare dso_local i32 @file_header_list_push(%struct.file_header*, %struct.file_header**, i64) #1

declare dso_local i32 @file_header_print(%struct.file_header*, i32*, %struct.last_printed*) #1

declare dso_local i32 @file_header_read_next(%struct.file_header*) #1

declare dso_local i32 @file_header_list_rearrange_from_header(%struct.file_header**, i64) #1

declare dso_local i32 @bwsfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
