; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_backupfile.c_find_backup_file_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_backupfile.c_find_backup_file_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@backup_type = common dso_local global i64 0, align 8
@simple = common dso_local global i64 0, align 8
@simple_backup_suffix = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c".~\00", align 1
@numbered_existing = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @find_backup_file_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i64, i64* @backup_type, align 8
  %9 = load i64, i64* @simple, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = load i8*, i8** @simple_backup_suffix, align 8
  %14 = call i8* @concat(i8* %12, i8* %13)
  store i8* %14, i8** %2, align 8
  br label %71

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = call i8* @strdup(i8* %16)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i8* null, i8** %2, align 8
  br label %71

21:                                               ; preds = %15
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @basename(i8* %22)
  %24 = call i8* @concat(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %24, i8** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @free(i8* %25)
  %27 = load i8*, i8** %5, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i8* null, i8** %2, align 8
  br label %71

30:                                               ; preds = %21
  %31 = load i8*, i8** %3, align 8
  %32 = call i8* @strdup(i8* %31)
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @free(i8* %36)
  store i8* null, i8** %2, align 8
  br label %71

38:                                               ; preds = %30
  %39 = load i8*, i8** %6, align 8
  %40 = call i8* @dirname(i8* %39)
  store i8* %40, i8** %4, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @free(i8* %44)
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @free(i8* %46)
  store i8* null, i8** %2, align 8
  br label %71

48:                                               ; preds = %38
  %49 = load i8*, i8** %5, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @max_backup_version(i8* %49, i8* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @free(i8* %52)
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load i64, i64* @backup_type, align 8
  %57 = load i64, i64* @numbered_existing, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %48
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i8*, i8** %3, align 8
  %64 = load i8*, i8** @simple_backup_suffix, align 8
  %65 = call i8* @concat(i8* %63, i8* %64)
  store i8* %65, i8** %2, align 8
  br label %71

66:                                               ; preds = %59, %48
  %67 = load i8*, i8** %3, align 8
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  %70 = call i8* @make_version_name(i8* %67, i32 %69)
  store i8* %70, i8** %2, align 8
  br label %71

71:                                               ; preds = %66, %62, %43, %35, %29, %20, %11
  %72 = load i8*, i8** %2, align 8
  ret i8* %72
}

declare dso_local i8* @concat(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @basename(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @dirname(i8*) #1

declare dso_local i32 @max_backup_version(i8*, i8*) #1

declare dso_local i8* @make_version_name(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
