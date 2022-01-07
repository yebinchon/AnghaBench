; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_unpack-objects.c_check_object.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_unpack-objects.c_check_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.object*, i32, i8*, %struct.fsck_options*)* }
%struct.object = type { i32, i32, i32 }
%struct.fsck_options = type { i32 }
%struct.obj_buffer = type { i32, i32 }

@FLAG_WRITTEN = common dso_local global i32 0, align 4
@OBJ_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"object type mismatch\00", align 1
@FLAG_OPEN = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"object of unexpected type\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Whoops! Cannot find object '%s'\00", align 1
@fsck_options = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"fsck error in packed object\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Error on reachable objects of %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object*, i32, i8*, %struct.fsck_options*)* @check_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_object(%struct.object* %0, i32 %1, i8* %2, %struct.fsck_options* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.fsck_options*, align 8
  %10 = alloca %struct.obj_buffer*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.object* %0, %struct.object** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.fsck_options* %3, %struct.fsck_options** %9, align 8
  %13 = load %struct.object*, %struct.object** %6, align 8
  %14 = icmp ne %struct.object* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %99

16:                                               ; preds = %4
  %17 = load %struct.object*, %struct.object** %6, align 8
  %18 = getelementptr inbounds %struct.object, %struct.object* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @FLAG_WRITTEN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %99

24:                                               ; preds = %16
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @OBJ_ANY, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load %struct.object*, %struct.object** %6, align 8
  %30 = getelementptr inbounds %struct.object, %struct.object* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %28, %24
  %37 = load %struct.object*, %struct.object** %6, align 8
  %38 = getelementptr inbounds %struct.object, %struct.object* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @FLAG_OPEN, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %64, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @the_repository, align 4
  %45 = load %struct.object*, %struct.object** %6, align 8
  %46 = getelementptr inbounds %struct.object, %struct.object* %45, i32 0, i32 2
  %47 = call i32 @oid_object_info(i32 %44, i32* %46, i64* %11)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.object*, %struct.object** %6, align 8
  %50 = getelementptr inbounds %struct.object, %struct.object* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %48, %51
  br i1 %52, label %56, label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %12, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53, %43
  %57 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %53
  %59 = load i32, i32* @FLAG_WRITTEN, align 4
  %60 = load %struct.object*, %struct.object** %6, align 8
  %61 = getelementptr inbounds %struct.object, %struct.object* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  store i32 0, i32* %5, align 4
  br label %99

64:                                               ; preds = %36
  %65 = load %struct.object*, %struct.object** %6, align 8
  %66 = call %struct.obj_buffer* @lookup_object_buffer(%struct.object* %65)
  store %struct.obj_buffer* %66, %struct.obj_buffer** %10, align 8
  %67 = load %struct.obj_buffer*, %struct.obj_buffer** %10, align 8
  %68 = icmp ne %struct.obj_buffer* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load %struct.object*, %struct.object** %6, align 8
  %71 = getelementptr inbounds %struct.object, %struct.object* %70, i32 0, i32 2
  %72 = call i32 @oid_to_hex(i32* %71)
  %73 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %69, %64
  %75 = load %struct.object*, %struct.object** %6, align 8
  %76 = load %struct.obj_buffer*, %struct.obj_buffer** %10, align 8
  %77 = getelementptr inbounds %struct.obj_buffer, %struct.obj_buffer* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.obj_buffer*, %struct.obj_buffer** %10, align 8
  %80 = getelementptr inbounds %struct.obj_buffer, %struct.obj_buffer* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @fsck_object(%struct.object* %75, i32 %78, i32 %81, %struct.TYPE_4__* @fsck_options)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %74
  store i32 (%struct.object*, i32, i8*, %struct.fsck_options*)* @check_object, i32 (%struct.object*, i32, i8*, %struct.fsck_options*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fsck_options, i32 0, i32 0), align 8
  %87 = load %struct.object*, %struct.object** %6, align 8
  %88 = call i64 @fsck_walk(%struct.object* %87, i32* null, %struct.TYPE_4__* @fsck_options)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load %struct.object*, %struct.object** %6, align 8
  %92 = getelementptr inbounds %struct.object, %struct.object* %91, i32 0, i32 2
  %93 = call i32 @oid_to_hex(i32* %92)
  %94 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %90, %86
  %96 = load %struct.object*, %struct.object** %6, align 8
  %97 = load %struct.obj_buffer*, %struct.obj_buffer** %10, align 8
  %98 = call i32 @write_cached_object(%struct.object* %96, %struct.obj_buffer* %97)
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %95, %58, %23, %15
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @oid_object_info(i32, i32*, i64*) #1

declare dso_local %struct.obj_buffer* @lookup_object_buffer(%struct.object*) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i64 @fsck_object(%struct.object*, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i64 @fsck_walk(%struct.object*, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @write_cached_object(%struct.object*, %struct.obj_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
