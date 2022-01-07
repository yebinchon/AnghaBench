; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_merge_files_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_merge_files_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_header = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8**, i8*)* @merge_files_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_files_array(i64 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.file_header**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = icmp ne i8** %10, null
  br i1 %11, label %12, label %67

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %67

15:                                               ; preds = %12
  %16 = load i8*, i8** %6, align 8
  %17 = call i32* @openfile(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 @err(i32 2, i32* null)
  br label %22

22:                                               ; preds = %20, %15
  %23 = load i64, i64* %4, align 8
  %24 = add i64 %23, 1
  %25 = mul i64 %24, 8
  %26 = call %struct.file_header** @sort_malloc(i64 %25)
  store %struct.file_header** %26, %struct.file_header*** %7, align 8
  store i64 0, i64* %9, align 8
  br label %27

27:                                               ; preds = %41, %22
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load %struct.file_header**, %struct.file_header*** %7, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds %struct.file_header*, %struct.file_header** %32, i64 %33
  %35 = load i8**, i8*** %5, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds i8*, i8** %35, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @file_header_init(%struct.file_header** %34, i8* %38, i64 %39)
  br label %41

41:                                               ; preds = %31
  %42 = load i64, i64* %9, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %9, align 8
  br label %27

44:                                               ; preds = %27
  %45 = load i64, i64* %4, align 8
  %46 = load %struct.file_header**, %struct.file_header*** %7, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @file_headers_merge(i64 %45, %struct.file_header** %46, i32* %47)
  store i64 0, i64* %9, align 8
  br label %49

49:                                               ; preds = %58, %44
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %4, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load %struct.file_header**, %struct.file_header*** %7, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds %struct.file_header*, %struct.file_header** %54, i64 %55
  %57 = call i32 @file_header_close(%struct.file_header** %56)
  br label %58

58:                                               ; preds = %53
  %59 = load i64, i64* %9, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %9, align 8
  br label %49

61:                                               ; preds = %49
  %62 = load %struct.file_header**, %struct.file_header*** %7, align 8
  %63 = call i32 @sort_free(%struct.file_header** %62)
  %64 = load i32*, i32** %8, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @closefile(i32* %64, i8* %65)
  br label %67

67:                                               ; preds = %61, %12, %3
  ret void
}

declare dso_local i32* @openfile(i8*, i8*) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local %struct.file_header** @sort_malloc(i64) #1

declare dso_local i32 @file_header_init(%struct.file_header**, i8*, i64) #1

declare dso_local i32 @file_headers_merge(i64, %struct.file_header**, i32*) #1

declare dso_local i32 @file_header_close(%struct.file_header**) #1

declare dso_local i32 @sort_free(%struct.file_header**) #1

declare dso_local i32 @closefile(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
