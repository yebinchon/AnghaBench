; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_hash-object.c_hash_fd.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_hash-object.c_hash_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.stat = type { i32 }
%struct.object_id = type { i32 }

@the_repository = common dso_local global %struct.TYPE_2__* null, align 8
@HASH_WRITE_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unable to add %s to database\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Unable to hash %s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"hash to stdout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i32, i32)* @hash_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hash_fd(i32 %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.stat, align 4
  %12 = alloca %struct.object_id, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @fstat(i32 %13, %struct.stat* %11)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @hash_literally(%struct.object_id* %12, i32 %20, i8* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %36, label %45

25:                                               ; preds = %16
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_repository, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @type_from_string(i8* %30)
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @index_fd(i32 %28, %struct.object_id* %12, i32 %29, %struct.stat* %11, i32 %31, i8* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %25, %19, %5
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @HASH_WRITE_OBJECT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0)
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @die(i8* %42, i8* %43)
  br label %45

45:                                               ; preds = %36, %25, %19
  %46 = call i8* @oid_to_hex(%struct.object_id* %12)
  %47 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* @stdout, align 4
  %49 = call i32 @maybe_flush_or_die(i32 %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @hash_literally(%struct.object_id*, i32, i8*, i32) #1

declare dso_local i64 @index_fd(i32, %struct.object_id*, i32, %struct.stat*, i32, i8*, i32) #1

declare dso_local i32 @type_from_string(i8*) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @maybe_flush_or_die(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
