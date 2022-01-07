; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote.c_config_read_branches.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote.c_config_read_branches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list_item = type { %struct.branch_info* }
%struct.branch_info = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"branch.\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c".remote\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c".merge\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c".rebase\00", align 1
@branch_list = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"more than one %s\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"preserve\00", align 1
@NORMAL_REBASE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"merges\00", align 1
@REBASE_MERGES = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"interactive\00", align 1
@INTERACTIVE_REBASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @config_read_branches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_read_branches(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.string_list_item*, align 8
  %11 = alloca %struct.branch_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @starts_with(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %155

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 7
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @strip_suffix(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64* %13)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %13, align 8
  %30 = call i8* @xmemdupz(i8* %28, i64 %29)
  store i8* %30, i8** %9, align 8
  store i32 0, i32* %12, align 4
  br label %50

31:                                               ; preds = %20
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @strip_suffix(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64* %13)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i8*, i8** %5, align 8
  %37 = load i64, i64* %13, align 8
  %38 = call i8* @xmemdupz(i8* %36, i64 %37)
  store i8* %38, i8** %9, align 8
  store i32 1, i32* %12, align 4
  br label %49

39:                                               ; preds = %31
  %40 = load i8*, i8** %5, align 8
  %41 = call i64 @strip_suffix(i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64* %13)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i8*, i8** %5, align 8
  %45 = load i64, i64* %13, align 8
  %46 = call i8* @xmemdupz(i8* %44, i64 %45)
  store i8* %46, i8** %9, align 8
  store i32 2, i32* %12, align 4
  br label %48

47:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %156

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48, %35
  br label %50

50:                                               ; preds = %49, %27
  %51 = load i8*, i8** %9, align 8
  %52 = call %struct.string_list_item* @string_list_insert(i32* @branch_list, i8* %51)
  store %struct.string_list_item* %52, %struct.string_list_item** %10, align 8
  %53 = load %struct.string_list_item*, %struct.string_list_item** %10, align 8
  %54 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %53, i32 0, i32 0
  %55 = load %struct.branch_info*, %struct.branch_info** %54, align 8
  %56 = icmp ne %struct.branch_info* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %50
  %58 = call %struct.branch_info* @xcalloc(i32 1, i32 16)
  %59 = load %struct.string_list_item*, %struct.string_list_item** %10, align 8
  %60 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %59, i32 0, i32 0
  store %struct.branch_info* %58, %struct.branch_info** %60, align 8
  br label %61

61:                                               ; preds = %57, %50
  %62 = load %struct.string_list_item*, %struct.string_list_item** %10, align 8
  %63 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %62, i32 0, i32 0
  %64 = load %struct.branch_info*, %struct.branch_info** %63, align 8
  store %struct.branch_info* %64, %struct.branch_info** %11, align 8
  %65 = load i32, i32* %12, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %61
  %68 = load %struct.branch_info*, %struct.branch_info** %11, align 8
  %69 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @warning(i32 %73, i8* %74)
  br label %76

76:                                               ; preds = %72, %67
  %77 = load i8*, i8** %6, align 8
  %78 = call i8* @xstrdup(i8* %77)
  %79 = load %struct.branch_info*, %struct.branch_info** %11, align 8
  %80 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  br label %154

81:                                               ; preds = %61
  %82 = load i32, i32* %12, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %116

84:                                               ; preds = %81
  %85 = load i8*, i8** %6, align 8
  %86 = call i8* @strchr(i8* %85, i8 signext 32)
  store i8* %86, i8** %14, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = call i8* @abbrev_branch(i8* %87)
  store i8* %88, i8** %6, align 8
  br label %89

89:                                               ; preds = %92, %84
  %90 = load i8*, i8** %14, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %110

92:                                               ; preds = %89
  %93 = load i8*, i8** %6, align 8
  %94 = load i8*, i8** %14, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = ptrtoint i8* %94 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  %99 = trunc i64 %98 to i32
  %100 = call i8* @xstrndup(i8* %93, i32 %99)
  store i8* %100, i8** %15, align 8
  %101 = load %struct.branch_info*, %struct.branch_info** %11, align 8
  %102 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %101, i32 0, i32 2
  %103 = load i8*, i8** %15, align 8
  %104 = call i32 @string_list_append(i32* %102, i8* %103)
  %105 = load i8*, i8** %14, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = call i8* @abbrev_branch(i8* %106)
  store i8* %107, i8** %6, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = call i8* @strchr(i8* %108, i8 signext 32)
  store i8* %109, i8** %14, align 8
  br label %89

110:                                              ; preds = %89
  %111 = load %struct.branch_info*, %struct.branch_info** %11, align 8
  %112 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %111, i32 0, i32 2
  %113 = load i8*, i8** %6, align 8
  %114 = call i8* @xstrdup(i8* %113)
  %115 = call i32 @string_list_append(i32* %112, i8* %114)
  br label %153

116:                                              ; preds = %81
  %117 = load i8*, i8** %6, align 8
  %118 = call i32 @git_parse_maybe_bool(i8* %117)
  store i32 %118, i32* %16, align 4
  %119 = load i32, i32* %16, align 4
  %120 = icmp sge i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load i32, i32* %16, align 4
  %123 = load %struct.branch_info*, %struct.branch_info** %11, align 8
  %124 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 8
  br label %152

125:                                              ; preds = %116
  %126 = load i8*, i8** %6, align 8
  %127 = call i32 @strcmp(i8* %126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = load i32, i32* @NORMAL_REBASE, align 4
  %131 = load %struct.branch_info*, %struct.branch_info** %11, align 8
  %132 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 8
  br label %151

133:                                              ; preds = %125
  %134 = load i8*, i8** %6, align 8
  %135 = call i32 @strcmp(i8* %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  %138 = load i32, i32* @REBASE_MERGES, align 4
  %139 = load %struct.branch_info*, %struct.branch_info** %11, align 8
  %140 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 8
  br label %150

141:                                              ; preds = %133
  %142 = load i8*, i8** %6, align 8
  %143 = call i32 @strcmp(i8* %142, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  %146 = load i32, i32* @INTERACTIVE_REBASE, align 4
  %147 = load %struct.branch_info*, %struct.branch_info** %11, align 8
  %148 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 8
  br label %149

149:                                              ; preds = %145, %141
  br label %150

150:                                              ; preds = %149, %137
  br label %151

151:                                              ; preds = %150, %129
  br label %152

152:                                              ; preds = %151, %121
  br label %153

153:                                              ; preds = %152, %110
  br label %154

154:                                              ; preds = %153, %76
  br label %155

155:                                              ; preds = %154, %3
  store i32 0, i32* %4, align 4
  br label %156

156:                                              ; preds = %155, %47
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i64 @strip_suffix(i8*, i8*, i64*) #1

declare dso_local i8* @xmemdupz(i8*, i64) #1

declare dso_local %struct.string_list_item* @string_list_insert(i32*, i8*) #1

declare dso_local %struct.branch_info* @xcalloc(i32, i32) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @abbrev_branch(i8*) #1

declare dso_local i8* @xstrndup(i8*, i32) #1

declare dso_local i32 @string_list_append(i32*, i8*) #1

declare dso_local i32 @git_parse_maybe_bool(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
