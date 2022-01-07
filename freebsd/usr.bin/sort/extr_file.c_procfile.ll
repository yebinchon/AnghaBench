; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_procfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_procfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sort_list = type { i64 }
%struct.file_list = type { i32 }
%struct.file_reader = type { i32 }
%struct.bwstring = type { i32 }

@available_free_memory = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @procfile(i8* %0, %struct.sort_list* %1, %struct.file_list* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sort_list*, align 8
  %6 = alloca %struct.file_list*, align 8
  %7 = alloca %struct.file_reader*, align 8
  %8 = alloca %struct.bwstring*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.sort_list* %1, %struct.sort_list** %5, align 8
  store %struct.file_list* %2, %struct.file_list** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call %struct.file_reader* @file_reader_init(i8* %10)
  store %struct.file_reader* %11, %struct.file_reader** %7, align 8
  %12 = load %struct.file_reader*, %struct.file_reader** %7, align 8
  %13 = icmp eq %struct.file_reader* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 @err(i32 2, i32* null)
  br label %16

16:                                               ; preds = %14, %3
  br label %17

17:                                               ; preds = %42, %16
  %18 = load %struct.file_reader*, %struct.file_reader** %7, align 8
  %19 = call %struct.bwstring* @file_reader_readline(%struct.file_reader* %18)
  store %struct.bwstring* %19, %struct.bwstring** %8, align 8
  %20 = load %struct.bwstring*, %struct.bwstring** %8, align 8
  %21 = icmp eq %struct.bwstring* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %43

23:                                               ; preds = %17
  %24 = load %struct.sort_list*, %struct.sort_list** %5, align 8
  %25 = load %struct.bwstring*, %struct.bwstring** %8, align 8
  %26 = call i32 @sort_list_add(%struct.sort_list* %24, %struct.bwstring* %25)
  %27 = load %struct.sort_list*, %struct.sort_list** %5, align 8
  %28 = getelementptr inbounds %struct.sort_list, %struct.sort_list* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @available_free_memory, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %23
  %33 = call i8* (...) @new_tmp_file_name()
  store i8* %33, i8** %9, align 8
  %34 = load %struct.sort_list*, %struct.sort_list** %5, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @sort_list_to_file(%struct.sort_list* %34, i8* %35)
  %37 = load %struct.file_list*, %struct.file_list** %6, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @file_list_add(%struct.file_list* %37, i8* %38, i32 0)
  %40 = load %struct.sort_list*, %struct.sort_list** %5, align 8
  %41 = call i32 @sort_list_clean(%struct.sort_list* %40)
  br label %42

42:                                               ; preds = %32, %23
  br label %17

43:                                               ; preds = %22
  %44 = load %struct.file_reader*, %struct.file_reader** %7, align 8
  %45 = call i32 @file_reader_free(%struct.file_reader* %44)
  ret i32 0
}

declare dso_local %struct.file_reader* @file_reader_init(i8*) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local %struct.bwstring* @file_reader_readline(%struct.file_reader*) #1

declare dso_local i32 @sort_list_add(%struct.sort_list*, %struct.bwstring*) #1

declare dso_local i8* @new_tmp_file_name(...) #1

declare dso_local i32 @sort_list_to_file(%struct.sort_list*, i8*) #1

declare dso_local i32 @file_list_add(%struct.file_list*, i8*, i32) #1

declare dso_local i32 @sort_list_clean(%struct.sort_list*) #1

declare dso_local i32 @file_reader_free(%struct.file_reader*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
