; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fast-export.c_import_marks.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fast-export.c_import_marks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.object_id = type { i32 }
%struct.object = type { i32 }
%struct.commit = type { %struct.object }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"corrupt mark line: %s\00", align 1
@last_idnum = common dso_local global i64 0, align 8
@the_repository = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"object not found: %s\00", align 1
@OBJ_COMMIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"not a commit? can't happen: %s\00", align 1
@SHOWN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Object %s already has a mark\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @import_marks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @import_marks(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [512 x i8], align 16
  %6 = alloca i32*, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.object_id, align 4
  %12 = alloca %struct.object*, align 8
  %13 = alloca %struct.commit*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i8*, i8** %3, align 8
  %19 = call i64 @stat(i8* %18, %struct.stat* %7)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %119

22:                                               ; preds = %17, %2
  %23 = load i8*, i8** %3, align 8
  %24 = call i32* @xfopen(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %24, i32** %6, align 8
  br label %25

25:                                               ; preds = %107, %86, %22
  %26 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @fgets(i8* %26, i32 512, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %116

30:                                               ; preds = %25
  %31 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %32 = call i8* @strchr(i8* %31, i8 signext 10)
  store i8* %32, i8** %9, align 8
  %33 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %34 = load i8, i8* %33, align 16
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 58
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i8*, i8** %9, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37, %30
  %41 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %42 = call i32 @die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i8*, i8** %9, align 8
  store i8 0, i8* %44, align 1
  %45 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = call i64 @strtoumax(i8* %46, i8** %10, i32 10)
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %43
  %51 = load i8*, i8** %10, align 8
  %52 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = icmp eq i8* %51, %53
  br i1 %54, label %65, label %55

55:                                               ; preds = %50
  %56 = load i8*, i8** %10, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 32
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = call i64 @get_oid_hex(i8* %62, %struct.object_id* %11)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60, %55, %50, %43
  %66 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %67 = call i32 @die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i64, i64* @last_idnum, align 8
  %70 = load i64, i64* %8, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i64, i64* %8, align 8
  store i64 %73, i64* @last_idnum, align 8
  br label %74

74:                                               ; preds = %72, %68
  %75 = load i32, i32* @the_repository, align 4
  %76 = call i32 @oid_object_info(i32 %75, %struct.object_id* %11, i32* null)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp ult i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = call i8* @oid_to_hex(%struct.object_id* %11)
  %81 = call i32 @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %79, %74
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* @OBJ_COMMIT, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %25

87:                                               ; preds = %82
  %88 = load i32, i32* @the_repository, align 4
  %89 = call %struct.commit* @lookup_commit(i32 %88, %struct.object_id* %11)
  store %struct.commit* %89, %struct.commit** %13, align 8
  %90 = load %struct.commit*, %struct.commit** %13, align 8
  %91 = icmp ne %struct.commit* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = call i8* @oid_to_hex(%struct.object_id* %11)
  %94 = call i32 @die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %92, %87
  %96 = load %struct.commit*, %struct.commit** %13, align 8
  %97 = getelementptr inbounds %struct.commit, %struct.commit* %96, i32 0, i32 0
  store %struct.object* %97, %struct.object** %12, align 8
  %98 = load %struct.object*, %struct.object** %12, align 8
  %99 = getelementptr inbounds %struct.object, %struct.object* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @SHOWN, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %95
  %105 = call i8* @oid_to_hex(%struct.object_id* %11)
  %106 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %105)
  br label %107

107:                                              ; preds = %104, %95
  %108 = load %struct.object*, %struct.object** %12, align 8
  %109 = load i64, i64* %8, align 8
  %110 = call i32 @mark_object(%struct.object* %108, i64 %109)
  %111 = load i32, i32* @SHOWN, align 4
  %112 = load %struct.object*, %struct.object** %12, align 8
  %113 = getelementptr inbounds %struct.object, %struct.object* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %25

116:                                              ; preds = %25
  %117 = load i32*, i32** %6, align 8
  %118 = call i32 @fclose(i32* %117)
  br label %119

119:                                              ; preds = %116, %21
  ret void
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32* @xfopen(i8*, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i64 @strtoumax(i8*, i8**, i32) #1

declare dso_local i64 @get_oid_hex(i8*, %struct.object_id*) #1

declare dso_local i32 @oid_object_info(i32, %struct.object_id*, i32*) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

declare dso_local %struct.commit* @lookup_commit(i32, %struct.object_id*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @mark_object(%struct.object*, i64) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
