; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/unzip/extr_unzip.c_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/unzip/extr_unzip.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"    testing: %s\09\00", align 1
@buffer = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, %struct.archive_entry*)* @test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test(%struct.archive* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %9 = call i32 @archive_entry_filetype(%struct.archive_entry* %8)
  %10 = call i64 @S_ISDIR(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

13:                                               ; preds = %2
  %14 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %15 = call i32 @archive_entry_pathname(%struct.archive_entry* %14)
  %16 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %22, %13
  %18 = load %struct.archive*, %struct.archive** %4, align 8
  %19 = load i32, i32* @buffer, align 4
  %20 = call i64 @archive_read_data(%struct.archive* %18, i32 %19, i32 4)
  store i64 %20, i64* %6, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %17

23:                                               ; preds = %17
  %24 = load i64, i64* %6, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.archive*, %struct.archive** %4, align 8
  %28 = call i32 @archive_error_string(%struct.archive* %27)
  %29 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %34

32:                                               ; preds = %23
  %33 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %26
  %35 = load %struct.archive*, %struct.archive** %4, align 8
  %36 = call i32 @archive_read_data_skip(%struct.archive* %35)
  %37 = call i32 @ac(i32 %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %34, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @info(i8*, ...) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i64 @archive_read_data(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_error_string(%struct.archive*) #1

declare dso_local i32 @ac(i32) #1

declare dso_local i32 @archive_read_data_skip(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
