; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fsck.c_fsck_loose.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fsck.c_fsck_loose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.object = type { i32 }

@ERROR_OBJECT = common dso_local global i32 0, align 4
@errors_found = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s: object corrupt or missing: %s\00", align 1
@OBJ_BLOB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"read_loose_object streamed a non-blob\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: object could not be parsed: %s\00", align 1
@REACHABLE = common dso_local global i32 0, align 4
@SEEN = common dso_local global i32 0, align 4
@HAS_OBJ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, i8*, i8*)* @fsck_loose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsck_loose(%struct.object_id* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.object*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.object_id*, %struct.object_id** %5, align 8
  %15 = call i64 @read_loose_object(i8* %13, %struct.object_id* %14, i32* %9, i64* %10, i8** %11)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load i32, i32* @ERROR_OBJECT, align 4
  %19 = load i32, i32* @errors_found, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* @errors_found, align 4
  %21 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.object_id*, %struct.object_id** %5, align 8
  %23 = call i32 @oid_to_hex(%struct.object_id* %22)
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @error(i32 %21, i32 %23, i8* %24)
  store i32 0, i32* %4, align 4
  br label %89

26:                                               ; preds = %3
  %27 = load i8*, i8** %11, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @OBJ_BLOB, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 @BUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %29, %26
  %36 = load i32, i32* @the_repository, align 4
  %37 = load %struct.object_id*, %struct.object_id** %5, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i64, i64* %10, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = call %struct.object* @parse_object_buffer(i32 %36, %struct.object_id* %37, i32 %38, i64 %39, i8* %40, i32* %12)
  store %struct.object* %41, %struct.object** %8, align 8
  %42 = load %struct.object*, %struct.object** %8, align 8
  %43 = icmp ne %struct.object* %42, null
  br i1 %43, label %59, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* @ERROR_OBJECT, align 4
  %46 = load i32, i32* @errors_found, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* @errors_found, align 4
  %48 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.object_id*, %struct.object_id** %5, align 8
  %50 = call i32 @oid_to_hex(%struct.object_id* %49)
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @error(i32 %48, i32 %50, i8* %51)
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %44
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 @free(i8* %56)
  br label %58

58:                                               ; preds = %55, %44
  store i32 0, i32* %4, align 4
  br label %89

59:                                               ; preds = %35
  %60 = load i32, i32* @REACHABLE, align 4
  %61 = load i32, i32* @SEEN, align 4
  %62 = or i32 %60, %61
  %63 = xor i32 %62, -1
  %64 = load %struct.object*, %struct.object** %8, align 8
  %65 = getelementptr inbounds %struct.object, %struct.object* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* @HAS_OBJ, align 4
  %69 = load %struct.object*, %struct.object** %8, align 8
  %70 = getelementptr inbounds %struct.object, %struct.object* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.object*, %struct.object** %8, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = load i64, i64* %10, align 8
  %76 = call i64 @fsck_obj(%struct.object* %73, i8* %74, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %59
  %79 = load i32, i32* @ERROR_OBJECT, align 4
  %80 = load i32, i32* @errors_found, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* @errors_found, align 4
  br label %82

82:                                               ; preds = %78, %59
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 @free(i8* %86)
  br label %88

88:                                               ; preds = %85, %82
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %58, %17
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i64 @read_loose_object(i8*, %struct.object_id*, i32*, i64*, i8**) #1

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local %struct.object* @parse_object_buffer(i32, %struct.object_id*, i32, i64, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @fsck_obj(%struct.object*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
