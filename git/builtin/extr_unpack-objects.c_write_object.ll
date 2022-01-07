; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_unpack-objects.c_write_object.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_unpack-objects.c_write_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.object*, i32 }
%struct.object = type { i32 }
%struct.blob = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@strict = common dso_local global i32 0, align 4
@obj_list = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"failed to write object\00", align 1
@OBJ_BLOB = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@FLAG_WRITTEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"invalid blob object\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"invalid %s\00", align 1
@FLAG_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i64)* @write_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_object(i32 %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.blob*, align 8
  %10 = alloca %struct.object*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32, i32* @strict, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %41, label %14

14:                                               ; preds = %4
  %15 = load i8*, i8** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @type_name(i32 %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obj_list, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = call i64 @write_object_file(i8* %15, i64 %16, i32 %18, i32* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %14
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @added_object(i32 %29, i32 %30, i8* %31, i64 %32)
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @free(i8* %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obj_list, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store %struct.object* null, %struct.object** %40, align 8
  br label %140

41:                                               ; preds = %4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @OBJ_BLOB, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %91

45:                                               ; preds = %41
  %46 = load i8*, i8** %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @type_name(i32 %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obj_list, align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = call i64 @write_object_file(i8* %46, i64 %47, i32 %49, i32* %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %45
  %58 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %45
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @added_object(i32 %60, i32 %61, i8* %62, i64 %63)
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load i32, i32* @the_repository, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obj_list, align 8
  %69 = load i32, i32* %5, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = call %struct.blob* @lookup_blob(i32 %67, i32* %72)
  store %struct.blob* %73, %struct.blob** %9, align 8
  %74 = load %struct.blob*, %struct.blob** %9, align 8
  %75 = icmp ne %struct.blob* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %59
  %77 = load i32, i32* @FLAG_WRITTEN, align 4
  %78 = load %struct.blob*, %struct.blob** %9, align 8
  %79 = getelementptr inbounds %struct.blob, %struct.blob* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %77
  store i32 %82, i32* %80, align 4
  br label %85

83:                                               ; preds = %59
  %84 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %76
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obj_list, align 8
  %87 = load i32, i32* %5, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store %struct.object* null, %struct.object** %90, align 8
  br label %139

91:                                               ; preds = %41
  %92 = load i8*, i8** %7, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @type_name(i32 %94)
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obj_list, align 8
  %97 = load i32, i32* %5, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = call i32 @hash_object_file(i8* %92, i64 %93, i32 %95, i32* %100)
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i8*, i8** %7, align 8
  %105 = load i64, i64* %8, align 8
  %106 = call i32 @added_object(i32 %102, i32 %103, i8* %104, i64 %105)
  %107 = load i32, i32* @the_repository, align 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obj_list, align 8
  %109 = load i32, i32* %5, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32, i32* %6, align 4
  %114 = load i64, i64* %8, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = call %struct.object* @parse_object_buffer(i32 %107, i32* %112, i32 %113, i64 %114, i8* %115, i32* %11)
  store %struct.object* %116, %struct.object** %10, align 8
  %117 = load %struct.object*, %struct.object** %10, align 8
  %118 = icmp ne %struct.object* %117, null
  br i1 %118, label %123, label %119

119:                                              ; preds = %91
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @type_name(i32 %120)
  %122 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %119, %91
  %124 = load %struct.object*, %struct.object** %10, align 8
  %125 = load i8*, i8** %7, align 8
  %126 = load i64, i64* %8, align 8
  %127 = call i32 @add_object_buffer(%struct.object* %124, i8* %125, i64 %126)
  %128 = load i32, i32* @FLAG_OPEN, align 4
  %129 = load %struct.object*, %struct.object** %10, align 8
  %130 = getelementptr inbounds %struct.object, %struct.object* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  %133 = load %struct.object*, %struct.object** %10, align 8
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obj_list, align 8
  %135 = load i32, i32* %5, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  store %struct.object* %133, %struct.object** %138, align 8
  br label %139

139:                                              ; preds = %123, %85
  br label %140

140:                                              ; preds = %139, %28
  ret void
}

declare dso_local i64 @write_object_file(i8*, i64, i32, i32*) #1

declare dso_local i32 @type_name(i32) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @added_object(i32, i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.blob* @lookup_blob(i32, i32*) #1

declare dso_local i32 @hash_object_file(i8*, i64, i32, i32*) #1

declare dso_local %struct.object* @parse_object_buffer(i32, i32*, i32, i64, i8*, i32*) #1

declare dso_local i32 @add_object_buffer(%struct.object*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
