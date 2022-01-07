; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fsck.c_fsck_head_link.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fsck.c_fsck_head_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }

@verbose = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Checking %s link\00", align 1
@ERROR_REFS = common dso_local global i32 0, align 4
@errors_found = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"invalid %s\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"%s points to something strange (%s)\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"%s: detached HEAD points at nothing\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"notice: %s points to an unborn branch (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, %struct.object_id*)* @fsck_head_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsck_head_link(i8* %0, i8** %1, %struct.object_id* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store %struct.object_id* %2, %struct.object_id** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i64, i64* @verbose, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 (i32, i32, i8*, ...) @fprintf_ln(i32 %12, i32 %13, i8* %14)
  br label %16

16:                                               ; preds = %11, %3
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.object_id*, %struct.object_id** %7, align 8
  %19 = call i8* @resolve_ref_unsafe(i8* %17, i32 0, %struct.object_id* %18, i32* null)
  %20 = load i8**, i8*** %6, align 8
  store i8* %19, i8** %20, align 8
  %21 = load i8**, i8*** %6, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @ERROR_REFS, align 4
  %26 = load i32, i32* @errors_found, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* @errors_found, align 4
  %28 = call i32 @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 (i32, i8*, ...) @error(i32 %28, i8* %29)
  store i32 %30, i32* %4, align 4
  br label %76

31:                                               ; preds = %16
  %32 = load i8**, i8*** %6, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @strcmp(i8* %33, i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i32 1, i32* %8, align 4
  br label %53

38:                                               ; preds = %31
  %39 = load i8**, i8*** %6, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @starts_with(i8* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @ERROR_REFS, align 4
  %45 = load i32, i32* @errors_found, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* @errors_found, align 4
  %47 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i8*, i8** %5, align 8
  %49 = load i8**, i8*** %6, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i32, i8*, ...) @error(i32 %47, i8* %48, i8* %50)
  store i32 %51, i32* %4, align 4
  br label %76

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %37
  %54 = load %struct.object_id*, %struct.object_id** %7, align 8
  %55 = call i64 @is_null_oid(%struct.object_id* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i32, i32* @ERROR_REFS, align 4
  %62 = load i32, i32* @errors_found, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* @errors_found, align 4
  %64 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 (i32, i8*, ...) @error(i32 %64, i8* %65)
  store i32 %66, i32* %4, align 4
  br label %76

67:                                               ; preds = %57
  %68 = load i32, i32* @stderr, align 4
  %69 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %70 = load i8*, i8** %5, align 8
  %71 = load i8**, i8*** %6, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 11
  %74 = call i32 (i32, i32, i8*, ...) @fprintf_ln(i32 %68, i32 %69, i8* %70, i8* %73)
  br label %75

75:                                               ; preds = %67, %53
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %60, %43, %24
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @fprintf_ln(i32, i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @resolve_ref_unsafe(i8*, i32, %struct.object_id*, i32*) #1

declare dso_local i32 @error(i32, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @starts_with(i8*, i8*) #1

declare dso_local i64 @is_null_oid(%struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
