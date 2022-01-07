; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_try_create_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_try_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i8* }
%struct.apply_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.stat = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@has_symlinks = common dso_local global i64 0, align 8
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to write to '%s'\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"closing file '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, i8*, i32, i8*, i64)* @try_create_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_create_file(%struct.apply_state* %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.apply_state*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.strbuf, align 8
  %15 = alloca %struct.stat, align 4
  store %struct.apply_state* %0, %struct.apply_state** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = bitcast %struct.strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %17 = load i32, i32* %9, align 4
  %18 = call i64 @S_ISGITLINK(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %5
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @lstat(i8* %21, %struct.stat* %15)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @S_ISDIR(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %114

30:                                               ; preds = %24, %20
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @mkdir(i8* %31, i32 511)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %6, align 4
  br label %114

37:                                               ; preds = %5
  %38 = load i64, i64* @has_symlinks, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @S_ISLNK(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load i8*, i8** %10, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @symlink(i8* %45, i8* %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %6, align 4
  br label %114

52:                                               ; preds = %40, %37
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* @O_CREAT, align 4
  %55 = load i32, i32* @O_EXCL, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @O_WRONLY, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, 64
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 511, i32 438
  %64 = call i32 @open(i8* %53, i32 %58, i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  store i32 1, i32* %6, align 4
  br label %114

68:                                               ; preds = %52
  %69 = load %struct.apply_state*, %struct.apply_state** %7, align 8
  %70 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = load i64, i64* %11, align 8
  %77 = call i64 @convert_to_working_tree(i32 %73, i8* %74, i8* %75, i64 %76, %struct.strbuf* %14)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %68
  %80 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %11, align 8
  %82 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %10, align 8
  br label %84

84:                                               ; preds = %79, %68
  %85 = load i32, i32* %12, align 4
  %86 = load i8*, i8** %10, align 8
  %87 = load i64, i64* %11, align 8
  %88 = call i64 @write_in_full(i32 %85, i8* %86, i64 %87)
  %89 = icmp slt i64 %88, 0
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %84
  %94 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %95 = load i8*, i8** %8, align 8
  %96 = call i32 @error_errno(i32 %94, i8* %95)
  br label %97

97:                                               ; preds = %93, %84
  %98 = call i32 @strbuf_release(%struct.strbuf* %14)
  %99 = load i32, i32* %12, align 4
  %100 = call i64 @close(i32 %99)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %97
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %107 = load i8*, i8** %8, align 8
  %108 = call i32 @error_errno(i32 %106, i8* %107)
  store i32 %108, i32* %6, align 4
  br label %114

109:                                              ; preds = %102, %97
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 -1, i32 0
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %109, %105, %67, %44, %30, %29
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @S_ISGITLINK(i32) #2

declare dso_local i32 @lstat(i8*, %struct.stat*) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i32 @mkdir(i8*, i32) #2

declare dso_local i64 @S_ISLNK(i32) #2

declare dso_local i32 @symlink(i8*, i8*) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i64 @convert_to_working_tree(i32, i8*, i8*, i64, %struct.strbuf*) #2

declare dso_local i64 @write_in_full(i32, i8*, i64) #2

declare dso_local i32 @error_errno(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i64 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
