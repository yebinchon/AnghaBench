; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_rev-parse.c_try_parent_shorthands.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_rev-parse.c_try_parent_shorthands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.commit = type { %struct.commit_list* }
%struct.commit_list = type { %struct.TYPE_4__*, %struct.commit_list* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.object_id }

@.str = private unnamed_addr constant [3 x i8] c"^!\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"^@\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"^-\00", align 1
@the_repository = common dso_local global i32 0, align 4
@NORMAL = common dso_local global i32 0, align 4
@symbolic = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"%s^%d\00", align 1
@REVERSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @try_parent_shorthands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_parent_shorthands(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.object_id, align 4
  %6 = alloca %struct.commit*, align 8
  %7 = alloca %struct.commit_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = call i8* @strstr(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  store i32 1, i32* %9, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 2
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %139

23:                                               ; preds = %17
  br label %61

24:                                               ; preds = %1
  %25 = load i8*, i8** %3, align 8
  %26 = call i8* @strstr(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %26, i8** %4, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  store i32 1, i32* %10, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %139

34:                                               ; preds = %28
  br label %60

35:                                               ; preds = %24
  %36 = load i8*, i8** %3, align 8
  %37 = call i8* @strstr(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %37, i8** %4, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %58

39:                                               ; preds = %35
  store i32 1, i32* %9, align 4
  store i32 1, i32* %11, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  %47 = call i32 @strtoul(i8* %46, i8** %12, i32 10)
  store i32 %47, i32* %11, align 4
  %48 = load i8*, i8** %12, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52, %44
  store i32 0, i32* %2, align 4
  br label %139

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56, %39
  br label %59

58:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %139

59:                                               ; preds = %57
  br label %60

60:                                               ; preds = %59, %34
  br label %61

61:                                               ; preds = %60, %23
  %62 = load i8*, i8** %4, align 8
  store i8 0, i8* %62, align 1
  %63 = load i8*, i8** %3, align 8
  %64 = call i64 @get_oid_committish(i8* %63, %struct.object_id* %5)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @the_repository, align 4
  %68 = call %struct.commit* @lookup_commit_reference(i32 %67, %struct.object_id* %5)
  store %struct.commit* %68, %struct.commit** %6, align 8
  %69 = icmp ne %struct.commit* %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %66, %61
  %71 = load i8*, i8** %4, align 8
  store i8 94, i8* %71, align 1
  store i32 0, i32* %2, align 4
  br label %139

72:                                               ; preds = %66
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.commit*, %struct.commit** %6, align 8
  %78 = getelementptr inbounds %struct.commit, %struct.commit* %77, i32 0, i32 0
  %79 = load %struct.commit_list*, %struct.commit_list** %78, align 8
  %80 = call i32 @commit_list_count(%struct.commit_list* %79)
  %81 = icmp sgt i32 %76, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i8*, i8** %4, align 8
  store i8 94, i8* %83, align 1
  store i32 0, i32* %2, align 4
  br label %139

84:                                               ; preds = %75, %72
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32, i32* @NORMAL, align 4
  %89 = load i8*, i8** %3, align 8
  %90 = call i32 @show_rev(i32 %88, %struct.object_id* %5, i8* %89)
  br label %91

91:                                               ; preds = %87, %84
  %92 = load %struct.commit*, %struct.commit** %6, align 8
  %93 = getelementptr inbounds %struct.commit, %struct.commit* %92, i32 0, i32 0
  %94 = load %struct.commit_list*, %struct.commit_list** %93, align 8
  store %struct.commit_list* %94, %struct.commit_list** %7, align 8
  store i32 1, i32* %8, align 4
  br label %95

95:                                               ; preds = %131, %91
  %96 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %97 = icmp ne %struct.commit_list* %96, null
  br i1 %97, label %98, label %137

98:                                               ; preds = %95
  store i8* null, i8** %13, align 8
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %131

106:                                              ; preds = %101, %98
  %107 = load i64, i64* @symbolic, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i8*, i8** %3, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i8* @xstrfmt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %110, i32 %111)
  store i8* %112, i8** %13, align 8
  br label %113

113:                                              ; preds = %109, %106
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i32, i32* @NORMAL, align 4
  br label %120

118:                                              ; preds = %113
  %119 = load i32, i32* @REVERSED, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  %122 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %123 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i8*, i8** %13, align 8
  %128 = call i32 @show_rev(i32 %121, %struct.object_id* %126, i8* %127)
  %129 = load i8*, i8** %13, align 8
  %130 = call i32 @free(i8* %129)
  br label %131

131:                                              ; preds = %120, %105
  %132 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %133 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %132, i32 0, i32 1
  %134 = load %struct.commit_list*, %struct.commit_list** %133, align 8
  store %struct.commit_list* %134, %struct.commit_list** %7, align 8
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %8, align 4
  br label %95

137:                                              ; preds = %95
  %138 = load i8*, i8** %4, align 8
  store i8 94, i8* %138, align 1
  store i32 1, i32* %2, align 4
  br label %139

139:                                              ; preds = %137, %82, %70, %58, %55, %33, %22
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @get_oid_committish(i8*, %struct.object_id*) #1

declare dso_local %struct.commit* @lookup_commit_reference(i32, %struct.object_id*) #1

declare dso_local i32 @commit_list_count(%struct.commit_list*) #1

declare dso_local i32 @show_rev(i32, %struct.object_id*, i8*) #1

declare dso_local i8* @xstrfmt(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
