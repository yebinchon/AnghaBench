; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_pch.c_compare_names.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_pch.c_compare_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_name = type { i8*, i32 }

@SIZE_MAX = common dso_local global i64 0, align 8
@INDEX_FILE = common dso_local global i32 0, align 4
@OLD_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.file_name*, i32)* @compare_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @compare_names(%struct.file_name* %0, i32 %1) #0 {
  %3 = alloca %struct.file_name*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.file_name* %0, %struct.file_name** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* null, i8** %9, align 8
  %12 = load i64, i64* @SIZE_MAX, align 8
  store i64 %12, i64* %7, align 8
  store i64 %12, i64* %6, align 8
  store i64 %12, i64* %5, align 8
  %13 = load i32, i32* @INDEX_FILE, align 4
  store i32 %13, i32* %11, align 4
  br label %14

14:                                               ; preds = %75, %2
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* @OLD_FILE, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %78

18:                                               ; preds = %14
  %19 = load %struct.file_name*, %struct.file_name** %3, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.file_name, %struct.file_name* %19, i64 %21
  %23 = getelementptr inbounds %struct.file_name, %struct.file_name* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %18
  %28 = load %struct.file_name*, %struct.file_name** %3, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.file_name, %struct.file_name* %28, i64 %30
  %32 = getelementptr inbounds %struct.file_name, %struct.file_name* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35, %18
  br label %75

39:                                               ; preds = %35, %27
  %40 = load i8*, i8** %10, align 8
  %41 = call i64 @num_components(i8* %40)
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %75

45:                                               ; preds = %39
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %5, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i64, i64* %8, align 8
  store i64 %50, i64* %5, align 8
  %51 = load i8*, i8** %10, align 8
  store i8* %51, i8** %9, align 8
  br label %52

52:                                               ; preds = %49, %45
  %53 = load i8*, i8** %10, align 8
  %54 = call i8* @basename(i8* %53)
  %55 = call i64 @strlen(i8* %54)
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %6, align 8
  %57 = icmp ugt i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %75

59:                                               ; preds = %52
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i64, i64* %8, align 8
  store i64 %64, i64* %6, align 8
  %65 = load i8*, i8** %10, align 8
  store i8* %65, i8** %9, align 8
  br label %66

66:                                               ; preds = %63, %59
  %67 = load i8*, i8** %10, align 8
  %68 = call i64 @strlen(i8* %67)
  store i64 %68, i64* %8, align 8
  %69 = load i64, i64* %7, align 8
  %70 = icmp ugt i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %75

72:                                               ; preds = %66
  %73 = load i64, i64* %8, align 8
  store i64 %73, i64* %7, align 8
  %74 = load i8*, i8** %10, align 8
  store i8* %74, i8** %9, align 8
  br label %75

75:                                               ; preds = %72, %71, %58, %44, %38
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %11, align 4
  br label %14

78:                                               ; preds = %14
  %79 = load i8*, i8** %9, align 8
  ret i8* %79
}

declare dso_local i64 @num_components(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @basename(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
