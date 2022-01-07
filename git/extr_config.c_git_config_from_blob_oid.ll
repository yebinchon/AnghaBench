; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_git_config_from_blob_oid.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_git_config_from_blob_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"unable to load config blob object '%s'\00", align 1
@OBJ_BLOB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"reference '%s' does not point to a blob\00", align 1
@CONFIG_ORIGIN_BLOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_config_from_blob_oid(i32 %0, i8* %1, %struct.object_id* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store %struct.object_id* %2, %struct.object_id** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.object_id*, %struct.object_id** %8, align 8
  %15 = call i8* @read_object_file(%struct.object_id* %14, i32* %10, i64* %12)
  store i8* %15, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @error(i32 %19, i8* %20)
  store i32 %21, i32* %5, align 4
  br label %43

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @OBJ_BLOB, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i8*, i8** %11, align 8
  %28 = call i32 @free(i8* %27)
  %29 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @error(i32 %29, i8* %30)
  store i32 %31, i32* %5, align 4
  br label %43

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @CONFIG_ORIGIN_BLOB, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @git_config_from_mem(i32 %33, i32 %34, i8* %35, i8* %36, i64 %37, i8* %38, i32* null)
  store i32 %39, i32* %13, align 4
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @free(i8* %40)
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %32, %26, %18
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i8* @read_object_file(%struct.object_id*, i32*, i64*) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @git_config_from_mem(i32, i32, i8*, i8*, i64, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
