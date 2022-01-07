; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_verify-commit.c_verify_commit.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_verify-commit.c_verify_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.object = type { i64 }
%struct.commit = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"commit '%s' not found.\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: unable to read file.\00", align 1
@OBJ_COMMIT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"%s: cannot verify a non-commit object of type %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @verify_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_commit(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.object_id, align 4
  %7 = alloca %struct.object*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @get_oid(i8* %8, %struct.object_id* %6)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %12)
  store i32 %13, i32* %3, align 4
  br label %40

14:                                               ; preds = %2
  %15 = load i32, i32* @the_repository, align 4
  %16 = call %struct.object* @parse_object(i32 %15, %struct.object_id* %6)
  store %struct.object* %16, %struct.object** %7, align 8
  %17 = load %struct.object*, %struct.object** %7, align 8
  %18 = icmp ne %struct.object* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  store i32 %21, i32* %3, align 4
  br label %40

22:                                               ; preds = %14
  %23 = load %struct.object*, %struct.object** %7, align 8
  %24 = getelementptr inbounds %struct.object, %struct.object* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @OBJ_COMMIT, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load i8*, i8** %4, align 8
  %30 = load %struct.object*, %struct.object** %7, align 8
  %31 = getelementptr inbounds %struct.object, %struct.object* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i8* @type_name(i64 %32)
  %34 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %29, i8* %33)
  store i32 %34, i32* %3, align 4
  br label %40

35:                                               ; preds = %22
  %36 = load %struct.object*, %struct.object** %7, align 8
  %37 = bitcast %struct.object* %36 to %struct.commit*
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @run_gpg_verify(%struct.commit* %37, i32 %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %35, %28, %19, %11
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local i32 @error(i8*, i8*, ...) #1

declare dso_local %struct.object* @parse_object(i32, %struct.object_id*) #1

declare dso_local i8* @type_name(i64) #1

declare dso_local i32 @run_gpg_verify(%struct.commit*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
