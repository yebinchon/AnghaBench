; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_file_header_heap_swim.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_file_header_heap_swim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_header = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_header**, i64)* @file_header_heap_swim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @file_header_heap_swim(%struct.file_header** %0, i64 %1) #0 {
  %3 = alloca %struct.file_header**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.file_header** %0, %struct.file_header*** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ugt i64 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = sub i64 %9, 1
  %11 = lshr i64 %10, 1
  store i64 %11, i64* %5, align 8
  %12 = load %struct.file_header**, %struct.file_header*** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds %struct.file_header*, %struct.file_header** %12, i64 %13
  %15 = load %struct.file_header*, %struct.file_header** %14, align 8
  %16 = load %struct.file_header**, %struct.file_header*** %3, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.file_header*, %struct.file_header** %16, i64 %17
  %19 = load %struct.file_header*, %struct.file_header** %18, align 8
  %20 = call i64 @file_header_cmp(%struct.file_header* %15, %struct.file_header* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %8
  %23 = load %struct.file_header**, %struct.file_header*** %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @file_header_swap(%struct.file_header** %23, i64 %24, i64 %25)
  %27 = load %struct.file_header**, %struct.file_header*** %3, align 8
  %28 = load i64, i64* %5, align 8
  call void @file_header_heap_swim(%struct.file_header** %27, i64 %28)
  br label %29

29:                                               ; preds = %22, %8
  br label %30

30:                                               ; preds = %29, %2
  ret void
}

declare dso_local i64 @file_header_cmp(%struct.file_header*, %struct.file_header*) #1

declare dso_local i32 @file_header_swap(%struct.file_header**, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
