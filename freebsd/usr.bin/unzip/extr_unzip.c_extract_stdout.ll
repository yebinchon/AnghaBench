; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/unzip/extr_unzip.c_extract_stdout.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/unzip/extr_unzip.c_extract_stdout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"skipping non-regular entry '%s'\00", align 1
@c_opt = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"x %s\0A\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive*, %struct.archive_entry*)* @extract_stdout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extract_stdout(%struct.archive* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %3, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %4, align 8
  %7 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %8 = call i32 @archive_entry_pathname(%struct.archive_entry* %7)
  %9 = call i8* @pathdup(i32 %8)
  store i8* %9, i8** %5, align 8
  %10 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %11 = call i32 @archive_entry_filetype(%struct.archive_entry* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @S_ISDIR(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @S_ISREG(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @S_ISLNK(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @warningx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load %struct.archive*, %struct.archive** %3, align 8
  %27 = call i32 @archive_read_data_skip(%struct.archive* %26)
  %28 = call i32 @ac(i32 %27)
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @free(i8* %29)
  br label %64

31:                                               ; preds = %19, %15, %2
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @S_ISDIR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load %struct.archive*, %struct.archive** %3, align 8
  %37 = call i32 @archive_read_data_skip(%struct.archive* %36)
  %38 = call i32 @ac(i32 %37)
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @free(i8* %39)
  br label %64

41:                                               ; preds = %31
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @accept_pathname(i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = load %struct.archive*, %struct.archive** %3, align 8
  %47 = call i32 @archive_read_data_skip(%struct.archive* %46)
  %48 = call i32 @ac(i32 %47)
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @free(i8* %49)
  br label %64

51:                                               ; preds = %41
  %52 = load i64, i64* @c_opt, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load %struct.archive*, %struct.archive** %3, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* @STDOUT_FILENO, align 4
  %61 = call i32 @extract2fd(%struct.archive* %58, i8* %59, i32 %60)
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 @free(i8* %62)
  br label %64

64:                                               ; preds = %57, %45, %35, %23
  ret void
}

declare dso_local i8* @pathdup(i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i32 @warningx(i8*, i8*) #1

declare dso_local i32 @ac(i32) #1

declare dso_local i32 @archive_read_data_skip(%struct.archive*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @accept_pathname(i8*) #1

declare dso_local i32 @info(i8*, i8*) #1

declare dso_local i32 @extract2fd(%struct.archive*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
