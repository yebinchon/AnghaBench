; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_difftool.c_parse_index_info.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_difftool.c_parse_index_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"expected ':', got '%c'\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"expected ' ', got '%c'\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"expected object ID, got '%s'\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"missing status\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"unexpected trailer: '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, %struct.object_id*, %struct.object_id*, i8*)* @parse_index_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_index_info(i8* %0, i32* %1, i32* %2, %struct.object_id* %3, %struct.object_id* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.object_id*, align 8
  %12 = alloca %struct.object_id*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.object_id* %3, %struct.object_id** %11, align 8
  store %struct.object_id* %4, %struct.object_id** %12, align 8
  store i8* %5, i8** %13, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 58
  br i1 %17, label %18, label %23

18:                                               ; preds = %6
  %19 = load i8*, i8** %8, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 %22, i32* %7, align 4
  br label %118

23:                                               ; preds = %6
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = call i64 @strtol(i8* %25, i8** %8, i32 8)
  %27 = trunc i64 %26 to i32
  %28 = load i32*, i32** %9, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 32
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load i8*, i8** %8, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %7, align 4
  br label %118

38:                                               ; preds = %23
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = call i64 @strtol(i8* %40, i8** %8, i32 8)
  %42 = trunc i64 %41 to i32
  %43 = load i32*, i32** %10, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 32
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load i8*, i8** %8, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  store i32 %52, i32* %7, align 4
  br label %118

53:                                               ; preds = %38
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %8, align 8
  %56 = load %struct.object_id*, %struct.object_id** %11, align 8
  %57 = call i64 @parse_oid_hex(i8* %55, %struct.object_id* %56, i8** %8)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %60)
  store i32 %61, i32* %7, align 4
  br label %118

62:                                               ; preds = %53
  %63 = load i8*, i8** %8, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 32
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i8*, i8** %8, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  store i32 %71, i32* %7, align 4
  br label %118

72:                                               ; preds = %62
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %8, align 8
  %75 = load %struct.object_id*, %struct.object_id** %12, align 8
  %76 = call i64 @parse_oid_hex(i8* %74, %struct.object_id* %75, i8** %8)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %79)
  store i32 %80, i32* %7, align 4
  br label %118

81:                                               ; preds = %72
  %82 = load i8*, i8** %8, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 32
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load i8*, i8** %8, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  store i32 %90, i32* %7, align 4
  br label %118

91:                                               ; preds = %81
  %92 = load i8*, i8** %8, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %8, align 8
  %94 = load i8, i8* %93, align 1
  %95 = load i8*, i8** %13, align 8
  store i8 %94, i8* %95, align 1
  %96 = load i8*, i8** %13, align 8
  %97 = load i8, i8* %96, align 1
  %98 = icmp ne i8 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %91
  %100 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32 %100, i32* %7, align 4
  br label %118

101:                                              ; preds = %91
  %102 = load i8*, i8** %8, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %101
  %108 = load i8*, i8** %8, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = load i8, i8* %109, align 1
  %111 = call i32 @isdigit(i8 signext %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %107
  %114 = load i8*, i8** %8, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  %116 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %115)
  store i32 %116, i32* %7, align 4
  br label %118

117:                                              ; preds = %107, %101
  store i32 0, i32* %7, align 4
  br label %118

118:                                              ; preds = %117, %113, %99, %86, %78, %67, %59, %48, %33, %18
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @parse_oid_hex(i8*, %struct.object_id*, i8**) #1

declare dso_local i32 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
