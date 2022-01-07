; ModuleID = '/home/carl/AnghaBench/freebsd/tools/bus_space/extr_bus.c_bs_subregion.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/bus_space/extr_bus.c_bs_subregion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i64, i32, i64, i64, i32, i8* }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bs_subregion(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.resource* @rid_lookup(i32 %14)
  store %struct.resource* %15, %struct.resource** %8, align 8
  %16 = load %struct.resource*, %struct.resource** %8, align 8
  %17 = icmp eq %struct.resource* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %84

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* %7, align 8
  %24 = icmp slt i64 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %19
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %84

27:                                               ; preds = %22
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = add nsw i64 %28, %29
  %31 = load %struct.resource*, %struct.resource** %8, align 8
  %32 = getelementptr inbounds %struct.resource, %struct.resource* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @ENOSPC, align 4
  store i32 %36, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %84

37:                                               ; preds = %27
  %38 = load %struct.resource*, %struct.resource** %8, align 8
  %39 = getelementptr inbounds %struct.resource, %struct.resource* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %12, align 4
  %41 = load %struct.resource*, %struct.resource** %8, align 8
  %42 = getelementptr inbounds %struct.resource, %struct.resource* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %10, align 8
  %44 = load %struct.resource*, %struct.resource** %8, align 8
  %45 = getelementptr inbounds %struct.resource, %struct.resource* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %11, align 8
  %47 = load %struct.resource*, %struct.resource** %8, align 8
  %48 = getelementptr inbounds %struct.resource, %struct.resource* %47, i32 0, i32 5
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %9, align 8
  %50 = call i32 (...) @rid_alloc()
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %37
  store i32 -1, i32* %4, align 4
  br label %84

54:                                               ; preds = %37
  %55 = load i32, i32* %13, align 4
  %56 = call %struct.resource* @rid_lookup(i32 %55)
  store %struct.resource* %56, %struct.resource** %8, align 8
  %57 = load %struct.resource*, %struct.resource** %8, align 8
  %58 = icmp eq %struct.resource* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 -1, i32* %4, align 4
  br label %84

60:                                               ; preds = %54
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.resource*, %struct.resource** %8, align 8
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.resource*, %struct.resource** %8, align 8
  %66 = getelementptr inbounds %struct.resource, %struct.resource* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %6, align 8
  %69 = add nsw i64 %67, %68
  %70 = load %struct.resource*, %struct.resource** %8, align 8
  %71 = getelementptr inbounds %struct.resource, %struct.resource* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.resource*, %struct.resource** %8, align 8
  %74 = getelementptr inbounds %struct.resource, %struct.resource* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* %6, align 8
  %77 = add nsw i64 %75, %76
  %78 = load %struct.resource*, %struct.resource** %8, align 8
  %79 = getelementptr inbounds %struct.resource, %struct.resource* %78, i32 0, i32 3
  store i64 %77, i64* %79, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = load %struct.resource*, %struct.resource** %8, align 8
  %82 = getelementptr inbounds %struct.resource, %struct.resource* %81, i32 0, i32 5
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %60, %59, %53, %35, %25, %18
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.resource* @rid_lookup(i32) #1

declare dso_local i32 @rid_alloc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
