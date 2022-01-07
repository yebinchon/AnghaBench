; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_sort_pack_list.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_sort_pack_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pack_list = type { %struct.pack_list* }

@cmp_remaining_objects = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pack_list**)* @sort_pack_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_pack_list(%struct.pack_list** %0) #0 {
  %2 = alloca %struct.pack_list**, align 8
  %3 = alloca %struct.pack_list**, align 8
  %4 = alloca %struct.pack_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.pack_list** %0, %struct.pack_list*** %2, align 8
  %7 = load %struct.pack_list**, %struct.pack_list*** %2, align 8
  %8 = load %struct.pack_list*, %struct.pack_list** %7, align 8
  %9 = call i64 @pack_list_size(%struct.pack_list* %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ult i64 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %71

13:                                               ; preds = %1
  %14 = load i64, i64* %6, align 8
  %15 = call %struct.pack_list** @xcalloc(i64 %14, i32 8)
  store %struct.pack_list** %15, %struct.pack_list*** %3, align 8
  store i64 0, i64* %6, align 8
  %16 = load %struct.pack_list**, %struct.pack_list*** %2, align 8
  %17 = load %struct.pack_list*, %struct.pack_list** %16, align 8
  store %struct.pack_list* %17, %struct.pack_list** %4, align 8
  br label %18

18:                                               ; preds = %27, %13
  %19 = load %struct.pack_list*, %struct.pack_list** %4, align 8
  %20 = icmp ne %struct.pack_list* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load %struct.pack_list*, %struct.pack_list** %4, align 8
  %23 = load %struct.pack_list**, %struct.pack_list*** %3, align 8
  %24 = load i64, i64* %6, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %6, align 8
  %26 = getelementptr inbounds %struct.pack_list*, %struct.pack_list** %23, i64 %24
  store %struct.pack_list* %22, %struct.pack_list** %26, align 8
  br label %27

27:                                               ; preds = %21
  %28 = load %struct.pack_list*, %struct.pack_list** %4, align 8
  %29 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %28, i32 0, i32 0
  %30 = load %struct.pack_list*, %struct.pack_list** %29, align 8
  store %struct.pack_list* %30, %struct.pack_list** %4, align 8
  br label %18

31:                                               ; preds = %18
  %32 = load %struct.pack_list**, %struct.pack_list*** %3, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i32, i32* @cmp_remaining_objects, align 4
  %35 = call i32 @QSORT(%struct.pack_list** %32, i64 %33, i32 %34)
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %55, %31
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %6, align 8
  %40 = sub i64 %39, 1
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %36
  %43 = load %struct.pack_list**, %struct.pack_list*** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.pack_list*, %struct.pack_list** %43, i64 %46
  %48 = load %struct.pack_list*, %struct.pack_list** %47, align 8
  %49 = load %struct.pack_list**, %struct.pack_list*** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.pack_list*, %struct.pack_list** %49, i64 %51
  %53 = load %struct.pack_list*, %struct.pack_list** %52, align 8
  %54 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %53, i32 0, i32 0
  store %struct.pack_list* %48, %struct.pack_list** %54, align 8
  br label %55

55:                                               ; preds = %42
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %36

58:                                               ; preds = %36
  %59 = load %struct.pack_list**, %struct.pack_list*** %3, align 8
  %60 = load i64, i64* %6, align 8
  %61 = sub i64 %60, 1
  %62 = getelementptr inbounds %struct.pack_list*, %struct.pack_list** %59, i64 %61
  %63 = load %struct.pack_list*, %struct.pack_list** %62, align 8
  %64 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %63, i32 0, i32 0
  store %struct.pack_list* null, %struct.pack_list** %64, align 8
  %65 = load %struct.pack_list**, %struct.pack_list*** %3, align 8
  %66 = getelementptr inbounds %struct.pack_list*, %struct.pack_list** %65, i64 0
  %67 = load %struct.pack_list*, %struct.pack_list** %66, align 8
  %68 = load %struct.pack_list**, %struct.pack_list*** %2, align 8
  store %struct.pack_list* %67, %struct.pack_list** %68, align 8
  %69 = load %struct.pack_list**, %struct.pack_list*** %3, align 8
  %70 = call i32 @free(%struct.pack_list** %69)
  br label %71

71:                                               ; preds = %58, %12
  ret void
}

declare dso_local i64 @pack_list_size(%struct.pack_list*) #1

declare dso_local %struct.pack_list** @xcalloc(i64, i32) #1

declare dso_local i32 @QSORT(%struct.pack_list**, i64, i32) #1

declare dso_local i32 @free(%struct.pack_list**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
