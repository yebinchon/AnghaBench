; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_file_list_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_file_list_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_list = type { i64, i64, i8** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @file_list_add(%struct.file_list* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.file_list*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.file_list* %0, %struct.file_list** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.file_list*, %struct.file_list** %4, align 8
  %8 = icmp ne %struct.file_list* %7, null
  br i1 %8, label %9, label %65

9:                                                ; preds = %3
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %65

12:                                               ; preds = %9
  %13 = load %struct.file_list*, %struct.file_list** %4, align 8
  %14 = getelementptr inbounds %struct.file_list, %struct.file_list* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.file_list*, %struct.file_list** %4, align 8
  %17 = getelementptr inbounds %struct.file_list, %struct.file_list* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp uge i64 %15, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %12
  %21 = load %struct.file_list*, %struct.file_list** %4, align 8
  %22 = getelementptr inbounds %struct.file_list, %struct.file_list* %21, i32 0, i32 2
  %23 = load i8**, i8*** %22, align 8
  %24 = icmp eq i8** %23, null
  br i1 %24, label %25, label %44

25:                                               ; preds = %20, %12
  %26 = load %struct.file_list*, %struct.file_list** %4, align 8
  %27 = getelementptr inbounds %struct.file_list, %struct.file_list* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = mul i64 %28, 2
  %30 = add i64 %29, 1
  %31 = load %struct.file_list*, %struct.file_list** %4, align 8
  %32 = getelementptr inbounds %struct.file_list, %struct.file_list* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load %struct.file_list*, %struct.file_list** %4, align 8
  %34 = getelementptr inbounds %struct.file_list, %struct.file_list* %33, i32 0, i32 2
  %35 = load i8**, i8*** %34, align 8
  %36 = load %struct.file_list*, %struct.file_list** %4, align 8
  %37 = getelementptr inbounds %struct.file_list, %struct.file_list* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = mul i64 %38, 8
  %40 = trunc i64 %39 to i32
  %41 = call i8** @sort_realloc(i8** %35, i32 %40)
  %42 = load %struct.file_list*, %struct.file_list** %4, align 8
  %43 = getelementptr inbounds %struct.file_list, %struct.file_list* %42, i32 0, i32 2
  store i8** %41, i8*** %43, align 8
  br label %44

44:                                               ; preds = %25, %20
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i8*, i8** %5, align 8
  %49 = call i8* @sort_strdup(i8* %48)
  br label %52

50:                                               ; preds = %44
  %51 = load i8*, i8** %5, align 8
  br label %52

52:                                               ; preds = %50, %47
  %53 = phi i8* [ %49, %47 ], [ %51, %50 ]
  %54 = load %struct.file_list*, %struct.file_list** %4, align 8
  %55 = getelementptr inbounds %struct.file_list, %struct.file_list* %54, i32 0, i32 2
  %56 = load i8**, i8*** %55, align 8
  %57 = load %struct.file_list*, %struct.file_list** %4, align 8
  %58 = getelementptr inbounds %struct.file_list, %struct.file_list* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i8*, i8** %56, i64 %59
  store i8* %53, i8** %60, align 8
  %61 = load %struct.file_list*, %struct.file_list** %4, align 8
  %62 = getelementptr inbounds %struct.file_list, %struct.file_list* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %62, align 8
  br label %65

65:                                               ; preds = %52, %9, %3
  ret void
}

declare dso_local i8** @sort_realloc(i8**, i32) #1

declare dso_local i8* @sort_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
