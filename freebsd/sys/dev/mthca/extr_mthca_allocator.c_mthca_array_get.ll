; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_allocator.c_mthca_array_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_allocator.c_mthca_array_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_array = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8** }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@MTHCA_ARRAY_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mthca_array_get(%struct.mthca_array* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mthca_array*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mthca_array* %0, %struct.mthca_array** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 8
  %10 = load i32, i32* @PAGE_SHIFT, align 4
  %11 = zext i32 %10 to i64
  %12 = lshr i64 %9, %11
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load %struct.mthca_array*, %struct.mthca_array** %4, align 8
  %15 = getelementptr inbounds %struct.mthca_array, %struct.mthca_array* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = icmp ne i8** %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %2
  %24 = load %struct.mthca_array*, %struct.mthca_array** %4, align 8
  %25 = getelementptr inbounds %struct.mthca_array, %struct.mthca_array* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8**, i8*** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @MTHCA_ARRAY_MASK, align 4
  %34 = and i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %31, i64 %35
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %3, align 8
  br label %39

38:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %39

39:                                               ; preds = %38, %23
  %40 = load i8*, i8** %3, align 8
  ret i8* %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
