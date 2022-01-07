; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_new_tmp_file_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_new_tmp_file_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@new_tmp_file_name.tfcounter = internal global i64 0, align 8
@new_tmp_file_name.fn = internal global i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [10 x i8] c".bsdsort.\00", align 1
@tmpdir = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"%s/%s%d.%lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @new_tmp_file_name() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = load i8*, i8** @tmpdir, align 8
  %4 = call i32 @strlen(i8* %3)
  %5 = add nsw i32 %4, 1
  %6 = load i8*, i8** @new_tmp_file_name.fn, align 8
  %7 = call i32 @strlen(i8* %6)
  %8 = add nsw i32 %5, %7
  %9 = add nsw i32 %8, 32
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = call i8* @sort_malloc(i64 %12)
  store i8* %13, i8** %1, align 8
  %14 = load i8*, i8** %1, align 8
  %15 = load i8*, i8** @tmpdir, align 8
  %16 = load i8*, i8** @new_tmp_file_name.fn, align 8
  %17 = call i64 (...) @getpid()
  %18 = trunc i64 %17 to i32
  %19 = load i64, i64* @new_tmp_file_name.tfcounter, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* @new_tmp_file_name.tfcounter, align 8
  %21 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %15, i8* %16, i32 %18, i64 %19)
  %22 = load i8*, i8** %1, align 8
  %23 = call i32 @tmp_file_atexit(i8* %22)
  %24 = load i8*, i8** %1, align 8
  ret i8* %24
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @sort_malloc(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i32, i64) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @tmp_file_atexit(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
