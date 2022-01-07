; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_unpack-file.c_create_temp_file.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_unpack-file.c_create_temp_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }

@create_temp_file.path = internal global [50 x i8] zeroinitializer, align 16
@OBJ_BLOB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unable to read blob object %s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c".merge_file_XXXXXX\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"unable to write temp-file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.object_id*)* @create_temp_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @create_temp_file(%struct.object_id* %0) #0 {
  %2 = alloca %struct.object_id*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %2, align 8
  %7 = load %struct.object_id*, %struct.object_id** %2, align 8
  %8 = call i8* @read_object_file(%struct.object_id* %7, i32* %4, i64* %5)
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @OBJ_BLOB, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11, %1
  %16 = load %struct.object_id*, %struct.object_id** %2, align 8
  %17 = call i32 @oid_to_hex(%struct.object_id* %16)
  %18 = call i32 @die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %15, %11
  %20 = call i32 @xsnprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @create_temp_file.path, i64 0, i64 0), i32 50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @xmkstemp(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @create_temp_file.path, i64 0, i64 0))
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @write_in_full(i32 %22, i8* %23, i64 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = call i32 @die_errno(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %19
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @close(i32 %30)
  ret i8* getelementptr inbounds ([50 x i8], [50 x i8]* @create_temp_file.path, i64 0, i64 0)
}

declare dso_local i8* @read_object_file(%struct.object_id*, i32*, i64*) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @xsnprintf(i8*, i32, i8*) #1

declare dso_local i32 @xmkstemp(i8*) #1

declare dso_local i64 @write_in_full(i32, i8*, i64) #1

declare dso_local i32 @die_errno(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
