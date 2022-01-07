; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c__sglist_append_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c__sglist_append_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sglist = type { i64, i64 }
%struct.sglist_seg = type { i64, i64 }

@EFBIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sglist*, %struct.sglist_seg**, i64, i64)* @_sglist_append_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_sglist_append_range(%struct.sglist* %0, %struct.sglist_seg** %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sglist*, align 8
  %7 = alloca %struct.sglist_seg**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sglist_seg*, align 8
  store %struct.sglist* %0, %struct.sglist** %6, align 8
  store %struct.sglist_seg** %1, %struct.sglist_seg*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.sglist_seg**, %struct.sglist_seg*** %7, align 8
  %12 = load %struct.sglist_seg*, %struct.sglist_seg** %11, align 8
  store %struct.sglist_seg* %12, %struct.sglist_seg** %10, align 8
  %13 = load %struct.sglist_seg*, %struct.sglist_seg** %10, align 8
  %14 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.sglist_seg*, %struct.sglist_seg** %10, align 8
  %17 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %15, %18
  %20 = load i64, i64* %8, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load i64, i64* %9, align 8
  %24 = load %struct.sglist_seg*, %struct.sglist_seg** %10, align 8
  %25 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %26, %23
  store i64 %27, i64* %25, align 8
  br label %53

28:                                               ; preds = %4
  %29 = load %struct.sglist*, %struct.sglist** %6, align 8
  %30 = getelementptr inbounds %struct.sglist, %struct.sglist* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.sglist*, %struct.sglist** %6, align 8
  %33 = getelementptr inbounds %struct.sglist, %struct.sglist* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @EFBIG, align 4
  store i32 %37, i32* %5, align 4
  br label %54

38:                                               ; preds = %28
  %39 = load %struct.sglist_seg*, %struct.sglist_seg** %10, align 8
  %40 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %39, i32 1
  store %struct.sglist_seg* %40, %struct.sglist_seg** %10, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.sglist_seg*, %struct.sglist_seg** %10, align 8
  %43 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load %struct.sglist_seg*, %struct.sglist_seg** %10, align 8
  %46 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.sglist*, %struct.sglist** %6, align 8
  %48 = getelementptr inbounds %struct.sglist, %struct.sglist* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = load %struct.sglist_seg*, %struct.sglist_seg** %10, align 8
  %52 = load %struct.sglist_seg**, %struct.sglist_seg*** %7, align 8
  store %struct.sglist_seg* %51, %struct.sglist_seg** %52, align 8
  br label %53

53:                                               ; preds = %38, %22
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %36
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
