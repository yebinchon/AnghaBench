; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_read_object_list_from_stdin.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_read_object_list_from_stdin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }

@GIT_MAX_HEXSZ = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i64 0, align 8
@stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"BUG: fgets returned NULL, not EOF, not error!\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"fgets\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"expected edge object ID, got garbage:\0A %s\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"expected object ID, got garbage:\0A %s\00", align 1
@OBJ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @read_object_list_from_stdin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_object_list_from_stdin() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.object_id, align 4
  %4 = alloca i8*, align 8
  %5 = load i32, i32* @GIT_MAX_HEXSZ, align 4
  %6 = add nsw i32 %5, 1
  %7 = sext i32 %6 to i64
  %8 = load i64, i64* @PATH_MAX, align 8
  %9 = add nsw i64 %7, %8
  %10 = add nsw i64 %9, 2
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %1, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %2, align 8
  br label %13

13:                                               ; preds = %62, %52, %35, %0
  %14 = trunc i64 %10 to i32
  %15 = load i32, i32* @stdin, align 4
  %16 = call i32 @fgets(i8* %12, i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @stdin, align 4
  %20 = call i64 @feof(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %70

23:                                               ; preds = %18
  %24 = load i32, i32* @stdin, align 4
  %25 = call i32 @ferror(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %23
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @EINTR, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 @die_errno(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %29
  %36 = load i32, i32* @stdin, align 4
  %37 = call i32 @clearerr(i32 %36)
  br label %13

38:                                               ; preds = %13
  %39 = getelementptr inbounds i8, i8* %12, i64 0
  %40 = load i8, i8* %39, align 16
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 45
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = getelementptr inbounds i8, i8* %12, i64 1
  %45 = call i64 @get_oid_hex(i8* %44, %struct.object_id* %3)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 (i8*, ...) @die(i8* %50, i8* %12)
  br label %52

52:                                               ; preds = %47, %43
  %53 = call i32 @add_preferred_base(%struct.object_id* %3)
  br label %13

54:                                               ; preds = %38
  %55 = call i64 @parse_oid_hex(i8* %12, %struct.object_id* %3, i8** %4)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 (i8*, ...) @die(i8* %60, i8* %12)
  br label %62

62:                                               ; preds = %57, %54
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = call i32 @add_preferred_base_object(i8* %64)
  %66 = load i32, i32* @OBJ_NONE, align 4
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = call i32 @add_object_entry(%struct.object_id* %3, i32 %66, i8* %68, i32 0)
  br label %13

70:                                               ; preds = %22
  %71 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %71)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fgets(i8*, i32, i32) #2

declare dso_local i64 @feof(i32) #2

declare dso_local i32 @ferror(i32) #2

declare dso_local i32 @die(i8*, ...) #2

declare dso_local i32 @die_errno(i8*) #2

declare dso_local i32 @clearerr(i32) #2

declare dso_local i64 @get_oid_hex(i8*, %struct.object_id*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @add_preferred_base(%struct.object_id*) #2

declare dso_local i64 @parse_oid_hex(i8*, %struct.object_id*, i8**) #2

declare dso_local i32 @add_preferred_base_object(i8*) #2

declare dso_local i32 @add_object_entry(%struct.object_id*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
