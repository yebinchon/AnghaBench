; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_shrink_file_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_shrink_file_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_list = type { i64, i32, i32, i32* }

@max_open_files = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_list*)* @shrink_file_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shrink_file_list(%struct.file_list* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file_list*, align 8
  %4 = alloca %struct.file_list, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.file_list* %0, %struct.file_list** %3, align 8
  %9 = load %struct.file_list*, %struct.file_list** %3, align 8
  %10 = icmp eq %struct.file_list* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.file_list*, %struct.file_list** %3, align 8
  %13 = getelementptr inbounds %struct.file_list, %struct.file_list* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @max_open_files, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %1
  store i32 0, i32* %2, align 4
  br label %98

18:                                               ; preds = %11
  store i64 0, i64* %5, align 8
  %19 = call i32 @file_list_init(%struct.file_list* %4, i32 1)
  br label %20

20:                                               ; preds = %71, %18
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.file_list*, %struct.file_list** %3, align 8
  %23 = getelementptr inbounds %struct.file_list, %struct.file_list* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %77

26:                                               ; preds = %20
  %27 = load %struct.file_list*, %struct.file_list** %3, align 8
  %28 = getelementptr inbounds %struct.file_list, %struct.file_list* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = sub i64 %29, %30
  store i64 %31, i64* %7, align 8
  %32 = call i8* (...) @new_tmp_file_name()
  store i8* %32, i8** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @max_open_files, align 8
  %35 = icmp uge i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i64, i64* @max_open_files, align 8
  %38 = sub i64 %37, 1
  store i64 %38, i64* %7, align 8
  br label %39

39:                                               ; preds = %36, %26
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.file_list*, %struct.file_list** %3, align 8
  %42 = getelementptr inbounds %struct.file_list, %struct.file_list* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @merge_files_array(i64 %40, i32* %45, i8* %46)
  %48 = load %struct.file_list*, %struct.file_list** %3, align 8
  %49 = getelementptr inbounds %struct.file_list, %struct.file_list* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %39
  store i64 0, i64* %8, align 8
  br label %53

53:                                               ; preds = %67, %52
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = load %struct.file_list*, %struct.file_list** %3, align 8
  %59 = getelementptr inbounds %struct.file_list, %struct.file_list* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %61, %62
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @unlink(i32 %65)
  br label %67

67:                                               ; preds = %57
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %8, align 8
  br label %53

70:                                               ; preds = %53
  br label %71

71:                                               ; preds = %70, %39
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @file_list_add(%struct.file_list* %4, i8* %72, i32 0)
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* %5, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %5, align 8
  br label %20

77:                                               ; preds = %20
  %78 = load %struct.file_list*, %struct.file_list** %3, align 8
  %79 = getelementptr inbounds %struct.file_list, %struct.file_list* %78, i32 0, i32 1
  store i32 0, i32* %79, align 8
  %80 = load %struct.file_list*, %struct.file_list** %3, align 8
  %81 = call i32 @file_list_clean(%struct.file_list* %80)
  %82 = getelementptr inbounds %struct.file_list, %struct.file_list* %4, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.file_list*, %struct.file_list** %3, align 8
  %85 = getelementptr inbounds %struct.file_list, %struct.file_list* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = getelementptr inbounds %struct.file_list, %struct.file_list* %4, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.file_list*, %struct.file_list** %3, align 8
  %89 = getelementptr inbounds %struct.file_list, %struct.file_list* %88, i32 0, i32 3
  store i32* %87, i32** %89, align 8
  %90 = getelementptr inbounds %struct.file_list, %struct.file_list* %4, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.file_list*, %struct.file_list** %3, align 8
  %93 = getelementptr inbounds %struct.file_list, %struct.file_list* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = getelementptr inbounds %struct.file_list, %struct.file_list* %4, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.file_list*, %struct.file_list** %3, align 8
  %97 = getelementptr inbounds %struct.file_list, %struct.file_list* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  store i32 1, i32* %2, align 4
  br label %98

98:                                               ; preds = %77, %17
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @file_list_init(%struct.file_list*, i32) #1

declare dso_local i8* @new_tmp_file_name(...) #1

declare dso_local i32 @merge_files_array(i64, i32*, i8*) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @file_list_add(%struct.file_list*, i8*, i32) #1

declare dso_local i32 @file_list_clean(%struct.file_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
