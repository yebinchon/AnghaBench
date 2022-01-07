; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_get-tar-commit-id.c_cmd_get_tar_commit_id.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_get-tar-commit-id.c_cmd_get_tar_commit_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ustar_header = type { i8* }

@HEADERSIZE = common dso_local global i32 0, align 4
@RECORDSIZE = common dso_local global i32 0, align 4
@builtin_get_tar_commit_id_usage = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"git get-tar-commit-id: read error\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"git get-tar-commit-id: EOF before reading tar header\00", align 1
@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c" comment=\00", align 1
@GIT_HASH_UNKNOWN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"git get-tar-commit-id: write error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_get_tar_commit_id(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ustar_header*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i32, i32* @HEADERSIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = bitcast i8* %20 to %struct.ustar_header*
  store %struct.ustar_header* %21, %struct.ustar_header** %10, align 8
  %22 = load i32, i32* @RECORDSIZE, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  store i8* %24, i8** %11, align 8
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @builtin_get_tar_commit_id_usage, align 4
  %29 = call i32 @usage(i32 %28)
  br label %30

30:                                               ; preds = %27, %3
  %31 = load i32, i32* @HEADERSIZE, align 4
  %32 = call i64 @read_in_full(i32 0, i8* %20, i32 %31)
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %13, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 @die_errno(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i64, i64* %13, align 8
  %39 = load i32, i32* @HEADERSIZE, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ne i64 %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 @die_errno(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %37
  %45 = load %struct.ustar_header*, %struct.ustar_header** %10, align 8
  %46 = getelementptr inbounds %struct.ustar_header, %struct.ustar_header* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 103
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %102

53:                                               ; preds = %44
  %54 = load i8*, i8** %11, align 8
  %55 = call i64 @strtol(i8* %54, i8** %15, i32 10)
  store i64 %55, i64* %14, align 8
  %56 = load i64, i64* @errno, align 8
  %57 = load i64, i64* @ERANGE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %66, label %59

59:                                               ; preds = %53
  %60 = load i8*, i8** %15, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = icmp eq i8* %60, %61
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load i64, i64* %14, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63, %59, %53
  store i32 1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %102

67:                                               ; preds = %63
  %68 = load i8*, i8** %15, align 8
  %69 = call i32 @skip_prefix(i8* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %12)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  store i32 1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %102

72:                                               ; preds = %67
  %73 = load i8*, i8** %12, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = load i64, i64* %14, align 8
  %79 = sub nsw i64 %78, %77
  store i64 %79, i64* %14, align 8
  %80 = load i64, i64* %14, align 8
  %81 = icmp slt i64 %80, 1
  br i1 %81, label %93, label %82

82:                                               ; preds = %72
  %83 = load i64, i64* %14, align 8
  %84 = srem i64 %83, 2
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i64, i64* %14, align 8
  %88 = sub nsw i64 %87, 1
  %89 = sdiv i64 %88, 2
  %90 = call i64 @hash_algo_by_length(i64 %89)
  %91 = load i64, i64* @GIT_HASH_UNKNOWN, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %86, %82, %72
  store i32 1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %102

94:                                               ; preds = %86
  %95 = load i8*, i8** %12, align 8
  %96 = load i64, i64* %14, align 8
  %97 = call i64 @write_in_full(i32 1, i8* %95, i64 %96)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = call i32 @die_errno(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %94
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %102

102:                                              ; preds = %101, %93, %71, %66, %52
  %103 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @usage(i32) #2

declare dso_local i64 @read_in_full(i32, i8*, i32) #2

declare dso_local i32 @die_errno(i8*) #2

declare dso_local i64 @strtol(i8*, i8**, i32) #2

declare dso_local i32 @skip_prefix(i8*, i8*, i8**) #2

declare dso_local i64 @hash_algo_by_length(i64) #2

declare dso_local i64 @write_in_full(i32, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
