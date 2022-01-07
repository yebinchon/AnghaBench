; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/unzip/extr_unzip.c_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/unzip/extr_unzip.c_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }
%struct.tm = type { i32 }

@y_str = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"%m-%d-%G %R\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%m-%d-%g %R\00", align 1
@zipinfo_mode = common dso_local global i32 0, align 4
@v_opt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c" %8ju  %s   %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"%8ju  Stored  %7ju   0%%  %s  %08x  %s\0A\00", align 1
@Z1_opt = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive*, %struct.archive_entry*)* @list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list(%struct.archive* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_entry*, align 8
  %5 = alloca [20 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct.tm*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %4, align 8
  %8 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %9 = call i32 @archive_entry_mtime(%struct.archive_entry* %8)
  store i32 %9, i32* %6, align 4
  %10 = call %struct.tm* @localtime(i32* %6)
  store %struct.tm* %10, %struct.tm** %7, align 8
  %11 = load i64*, i64** @y_str, align 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %16 = load %struct.tm*, %struct.tm** %7, align 8
  %17 = call i32 @strftime(i8* %15, i32 20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.tm* %16)
  br label %22

18:                                               ; preds = %2
  %19 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %20 = load %struct.tm*, %struct.tm** %7, align 8
  %21 = call i32 @strftime(i8* %19, i32 20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.tm* %20)
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i32, i32* @zipinfo_mode, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %56, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @v_opt, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %30 = call i64 @archive_entry_size(%struct.archive_entry* %29)
  %31 = trunc i64 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %35 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %36 = call i8* @archive_entry_pathname(%struct.archive_entry* %35)
  %37 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %33, i8* %34, i8* %36)
  br label %55

38:                                               ; preds = %25
  %39 = load i32, i32* @v_opt, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %43 = call i64 @archive_entry_size(%struct.archive_entry* %42)
  %44 = trunc i64 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %48 = call i64 @archive_entry_size(%struct.archive_entry* %47)
  %49 = trunc i64 %48 to i32
  %50 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %51 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %52 = call i8* @archive_entry_pathname(%struct.archive_entry* %51)
  %53 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %46, i32 %49, i8* %50, i32 0, i8* %52)
  br label %54

54:                                               ; preds = %41, %38
  br label %55

55:                                               ; preds = %54, %28
  br label %64

56:                                               ; preds = %22
  %57 = load i64, i64* @Z1_opt, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %61 = call i8* @archive_entry_pathname(%struct.archive_entry* %60)
  %62 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %59, %56
  br label %64

64:                                               ; preds = %63, %55
  %65 = load %struct.archive*, %struct.archive** %3, align 8
  %66 = call i32 @archive_read_data_skip(%struct.archive* %65)
  %67 = call i32 @ac(i32 %66)
  ret void
}

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i64 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @ac(i32) #1

declare dso_local i32 @archive_read_data_skip(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
