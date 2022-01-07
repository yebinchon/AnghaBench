; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_replace.c_import_object.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_replace.c_import_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i8**, i32, i32, i32 }
%struct.strbuf = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.object_id = type { i32 }
%struct.stat = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unable to open %s for reading\00", align 1
@OBJ_TREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"mktree\00", align 1
@__const.import_object.argv = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"unable to spawn mktree\00", align 1
@the_hash_algo = common dso_local global %struct.TYPE_4__* null, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"unable to read from mktree\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"mktree reported failure\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"mktree did not return an object name\00", align 1
@HASH_FORMAT_CHECK = common dso_local global i32 0, align 4
@HASH_WRITE_OBJECT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"unable to fstat %s\00", align 1
@the_repository = common dso_local global %struct.TYPE_3__* null, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"unable to write object to database\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, i32, i32, i8*)* @import_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @import_object(%struct.object_id* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x i8*], align 16
  %12 = alloca %struct.child_process, align 8
  %13 = alloca %struct.strbuf, align 4
  %14 = alloca %struct.stat, align 4
  %15 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i32, i32* @O_RDONLY, align 4
  %18 = call i32 @open(i8* %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 (i32, ...) @error_errno(i32 %22, i8* %23)
  store i32 %24, i32* %5, align 4
  br label %116

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %88, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @OBJ_TREE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %88

32:                                               ; preds = %28
  %33 = bitcast [2 x i8*]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %33, i8* align 16 bitcast ([2 x i8*]* @__const.import_object.argv to i8*), i64 16, i1 false)
  %34 = bitcast %struct.child_process* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 24, i1 false)
  %35 = bitcast %struct.strbuf* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %36 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  %37 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 0
  store i8** %36, i8*** %37, align 8
  %38 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 1
  store i32 1, i32* %38, align 8
  %39 = load i32, i32* %10, align 4
  %40 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 3
  store i32 -1, i32* %41, align 8
  %42 = call i64 @start_command(%struct.child_process* %12)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %32
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @close(i32 %45)
  %47 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %48 = call i32 @error(i32 %47)
  store i32 %48, i32* %5, align 4
  br label %116

49:                                               ; preds = %32
  %50 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  %56 = call i64 @strbuf_read(%struct.strbuf* %13, i32 %51, i64 %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %49
  %59 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %60 = call i32 (i32, ...) @error_errno(i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @close(i32 %61)
  %63 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @close(i32 %64)
  store i32 -1, i32* %5, align 4
  br label %116

66:                                               ; preds = %49
  %67 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @close(i32 %68)
  %70 = call i64 @finish_command(%struct.child_process* %12)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = call i32 @strbuf_release(%struct.strbuf* %13)
  %74 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %75 = call i32 @error(i32 %74)
  store i32 %75, i32* %5, align 4
  br label %116

76:                                               ; preds = %66
  %77 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.object_id*, %struct.object_id** %6, align 8
  %80 = call i64 @get_oid_hex(i32 %78, %struct.object_id* %79)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = call i32 @strbuf_release(%struct.strbuf* %13)
  %84 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %85 = call i32 @error(i32 %84)
  store i32 %85, i32* %5, align 4
  br label %116

86:                                               ; preds = %76
  %87 = call i32 @strbuf_release(%struct.strbuf* %13)
  br label %115

88:                                               ; preds = %28, %25
  %89 = load i32, i32* @HASH_FORMAT_CHECK, align 4
  %90 = load i32, i32* @HASH_WRITE_OBJECT, align 4
  %91 = or i32 %89, %90
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i64 @fstat(i32 %92, %struct.stat* %14)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %97 = load i8*, i8** %9, align 8
  %98 = call i32 (i32, ...) @error_errno(i32 %96, i8* %97)
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @close(i32 %99)
  store i32 -1, i32* %5, align 4
  br label %116

101:                                              ; preds = %88
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** @the_repository, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.object_id*, %struct.object_id** %6, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %15, align 4
  %109 = call i64 @index_fd(i32 %104, %struct.object_id* %105, i32 %106, %struct.stat* %14, i32 %107, i32* null, i32 %108)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %101
  %112 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %113 = call i32 @error(i32 %112)
  store i32 %113, i32* %5, align 4
  br label %116

114:                                              ; preds = %101
  br label %115

115:                                              ; preds = %114, %86
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %115, %111, %95, %82, %72, %58, %44, %21
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @error_errno(i32, ...) #1

declare dso_local i32 @_(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @start_command(%struct.child_process*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @error(i32) #1

declare dso_local i64 @strbuf_read(%struct.strbuf*, i32, i64) #1

declare dso_local i64 @finish_command(%struct.child_process*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i64 @get_oid_hex(i32, %struct.object_id*) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @index_fd(i32, %struct.object_id*, i32, %struct.stat*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
