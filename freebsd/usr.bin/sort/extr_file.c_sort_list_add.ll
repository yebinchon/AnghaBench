; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_sort_list_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_sort_list_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sort_list = type { i64, i64, i64, i32* }
%struct.bwstring = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sort_list_add(%struct.sort_list* %0, %struct.bwstring* %1) #0 {
  %3 = alloca %struct.sort_list*, align 8
  %4 = alloca %struct.bwstring*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.sort_list* %0, %struct.sort_list** %3, align 8
  store %struct.bwstring* %1, %struct.bwstring** %4, align 8
  %7 = load %struct.sort_list*, %struct.sort_list** %3, align 8
  %8 = icmp ne %struct.sort_list* %7, null
  br i1 %8, label %9, label %84

9:                                                ; preds = %2
  %10 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %11 = icmp ne %struct.bwstring* %10, null
  br i1 %11, label %12, label %84

12:                                               ; preds = %9
  %13 = load %struct.sort_list*, %struct.sort_list** %3, align 8
  %14 = getelementptr inbounds %struct.sort_list, %struct.sort_list* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load %struct.sort_list*, %struct.sort_list** %3, align 8
  %17 = getelementptr inbounds %struct.sort_list, %struct.sort_list* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %12
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.sort_list*, %struct.sort_list** %3, align 8
  %23 = getelementptr inbounds %struct.sort_list, %struct.sort_list* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp uge i64 %21, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %20, %12
  %27 = load %struct.sort_list*, %struct.sort_list** %3, align 8
  %28 = getelementptr inbounds %struct.sort_list, %struct.sort_list* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, 1
  %31 = add i64 %30, 1024
  store i64 %31, i64* %6, align 8
  %32 = load %struct.sort_list*, %struct.sort_list** %3, align 8
  %33 = getelementptr inbounds %struct.sort_list, %struct.sort_list* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = mul i64 8, %35
  %37 = trunc i64 %36 to i32
  %38 = call i32* @sort_realloc(i32* %34, i32 %37)
  %39 = load %struct.sort_list*, %struct.sort_list** %3, align 8
  %40 = getelementptr inbounds %struct.sort_list, %struct.sort_list* %39, i32 0, i32 3
  store i32* %38, i32** %40, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.sort_list*, %struct.sort_list** %3, align 8
  %43 = getelementptr inbounds %struct.sort_list, %struct.sort_list* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub i64 %41, %44
  %46 = mul i64 %45, 8
  %47 = load %struct.sort_list*, %struct.sort_list** %3, align 8
  %48 = getelementptr inbounds %struct.sort_list, %struct.sort_list* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, %46
  store i64 %50, i64* %48, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.sort_list*, %struct.sort_list** %3, align 8
  %53 = getelementptr inbounds %struct.sort_list, %struct.sort_list* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %26, %20
  %55 = call i32 (...) @sort_list_item_alloc()
  %56 = load %struct.sort_list*, %struct.sort_list** %3, align 8
  %57 = getelementptr inbounds %struct.sort_list, %struct.sort_list* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %5, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %55, i32* %60, align 4
  %61 = load %struct.sort_list*, %struct.sort_list** %3, align 8
  %62 = getelementptr inbounds %struct.sort_list, %struct.sort_list* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %68 = call i32 @sort_list_item_set(i32 %66, %struct.bwstring* %67)
  %69 = load %struct.sort_list*, %struct.sort_list** %3, align 8
  %70 = getelementptr inbounds %struct.sort_list, %struct.sort_list* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* %5, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @sort_list_item_size(i32 %74)
  %76 = load %struct.sort_list*, %struct.sort_list** %3, align 8
  %77 = getelementptr inbounds %struct.sort_list, %struct.sort_list* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, %75
  store i64 %79, i64* %77, align 8
  %80 = load %struct.sort_list*, %struct.sort_list** %3, align 8
  %81 = getelementptr inbounds %struct.sort_list, %struct.sort_list* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %81, align 8
  br label %84

84:                                               ; preds = %54, %9, %2
  ret void
}

declare dso_local i32* @sort_realloc(i32*, i32) #1

declare dso_local i32 @sort_list_item_alloc(...) #1

declare dso_local i32 @sort_list_item_set(i32, %struct.bwstring*) #1

declare dso_local i64 @sort_list_item_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
