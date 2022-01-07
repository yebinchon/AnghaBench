; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_show-branch.c_name_commits.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_show-branch.c_name_commits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.commit_list = type { %struct.commit_list*, %struct.commit* }
%struct.commit = type { %struct.commit_list* }
%struct.commit_name = type { i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s^\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s~%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"^%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit_list*, %struct.commit**, i8**, i32)* @name_commits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @name_commits(%struct.commit_list* %0, %struct.commit** %1, i8** %2, i32 %3) #0 {
  %5 = alloca %struct.commit_list*, align 8
  %6 = alloca %struct.commit**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.commit_list*, align 8
  %10 = alloca %struct.commit*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.commit_list*, align 8
  %13 = alloca %struct.commit_name*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.commit*, align 8
  %16 = alloca %struct.strbuf, align 4
  store %struct.commit_list* %0, %struct.commit_list** %5, align 8
  store %struct.commit** %1, %struct.commit*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  store %struct.commit_list* %17, %struct.commit_list** %9, align 8
  br label %18

18:                                               ; preds = %55, %4
  %19 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %20 = icmp ne %struct.commit_list* %19, null
  br i1 %20, label %21, label %59

21:                                               ; preds = %18
  %22 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %23 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %22, i32 0, i32 1
  %24 = load %struct.commit*, %struct.commit** %23, align 8
  store %struct.commit* %24, %struct.commit** %10, align 8
  %25 = load %struct.commit*, %struct.commit** %10, align 8
  %26 = call %struct.commit_name* @commit_to_name(%struct.commit* %25)
  %27 = icmp ne %struct.commit_name* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %55

29:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %51, %29
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %30
  %35 = load %struct.commit**, %struct.commit*** %6, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.commit*, %struct.commit** %35, i64 %37
  %39 = load %struct.commit*, %struct.commit** %38, align 8
  %40 = load %struct.commit*, %struct.commit** %10, align 8
  %41 = icmp eq %struct.commit* %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load %struct.commit*, %struct.commit** %10, align 8
  %44 = load i8**, i8*** %7, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @name_commit(%struct.commit* %43, i8* %48, i32 0)
  br label %54

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %30

54:                                               ; preds = %42, %30
  br label %55

55:                                               ; preds = %54, %28
  %56 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %57 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %56, i32 0, i32 0
  %58 = load %struct.commit_list*, %struct.commit_list** %57, align 8
  store %struct.commit_list* %58, %struct.commit_list** %9, align 8
  br label %18

59:                                               ; preds = %18
  br label %60

60:                                               ; preds = %79, %59
  store i32 0, i32* %11, align 4
  %61 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  store %struct.commit_list* %61, %struct.commit_list** %9, align 8
  br label %62

62:                                               ; preds = %74, %60
  %63 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %64 = icmp ne %struct.commit_list* %63, null
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %67 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %66, i32 0, i32 1
  %68 = load %struct.commit*, %struct.commit** %67, align 8
  %69 = call i64 @name_first_parent_chain(%struct.commit* %68)
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %65
  %75 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %76 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %75, i32 0, i32 0
  %77 = load %struct.commit_list*, %struct.commit_list** %76, align 8
  store %struct.commit_list* %77, %struct.commit_list** %9, align 8
  br label %62

78:                                               ; preds = %62
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %60, label %82

82:                                               ; preds = %79
  br label %83

83:                                               ; preds = %163, %82
  store i32 0, i32* %11, align 4
  %84 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  store %struct.commit_list* %84, %struct.commit_list** %9, align 8
  br label %85

85:                                               ; preds = %158, %83
  %86 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %87 = icmp ne %struct.commit_list* %86, null
  br i1 %87, label %88, label %162

88:                                               ; preds = %85
  %89 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %90 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %89, i32 0, i32 1
  %91 = load %struct.commit*, %struct.commit** %90, align 8
  store %struct.commit* %91, %struct.commit** %10, align 8
  %92 = load %struct.commit*, %struct.commit** %10, align 8
  %93 = call %struct.commit_name* @commit_to_name(%struct.commit* %92)
  %94 = icmp ne %struct.commit_name* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %88
  br label %158

96:                                               ; preds = %88
  %97 = load %struct.commit*, %struct.commit** %10, align 8
  %98 = call %struct.commit_name* @commit_to_name(%struct.commit* %97)
  store %struct.commit_name* %98, %struct.commit_name** %13, align 8
  %99 = load %struct.commit*, %struct.commit** %10, align 8
  %100 = getelementptr inbounds %struct.commit, %struct.commit* %99, i32 0, i32 0
  %101 = load %struct.commit_list*, %struct.commit_list** %100, align 8
  store %struct.commit_list* %101, %struct.commit_list** %12, align 8
  store i32 0, i32* %14, align 4
  br label %102

102:                                              ; preds = %149, %118, %96
  %103 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %104 = icmp ne %struct.commit_list* %103, null
  br i1 %104, label %105, label %157

105:                                              ; preds = %102
  %106 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %107 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %106, i32 0, i32 1
  %108 = load %struct.commit*, %struct.commit** %107, align 8
  store %struct.commit* %108, %struct.commit** %15, align 8
  %109 = bitcast %struct.strbuf* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %109, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %110 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %111 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %110, i32 0, i32 0
  %112 = load %struct.commit_list*, %struct.commit_list** %111, align 8
  store %struct.commit_list* %112, %struct.commit_list** %12, align 8
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %14, align 4
  %115 = load %struct.commit*, %struct.commit** %15, align 8
  %116 = call %struct.commit_name* @commit_to_name(%struct.commit* %115)
  %117 = icmp ne %struct.commit_name* %116, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %105
  br label %102

119:                                              ; preds = %105
  %120 = load %struct.commit_name*, %struct.commit_name** %13, align 8
  %121 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  switch i32 %122, label %133 [
    i32 0, label %123
    i32 1, label %128
  ]

123:                                              ; preds = %119
  %124 = load %struct.commit_name*, %struct.commit_name** %13, align 8
  %125 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @strbuf_addstr(%struct.strbuf* %16, i32 %126)
  br label %141

128:                                              ; preds = %119
  %129 = load %struct.commit_name*, %struct.commit_name** %13, align 8
  %130 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %131)
  br label %141

133:                                              ; preds = %119
  %134 = load %struct.commit_name*, %struct.commit_name** %13, align 8
  %135 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.commit_name*, %struct.commit_name** %13, align 8
  %138 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %136, i32 %139)
  br label %141

141:                                              ; preds = %133, %128, %123
  %142 = load i32, i32* %14, align 4
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = call i32 @strbuf_addch(%struct.strbuf* %16, i8 signext 94)
  br label %149

146:                                              ; preds = %141
  %147 = load i32, i32* %14, align 4
  %148 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %146, %144
  %150 = load %struct.commit*, %struct.commit** %15, align 8
  %151 = call i8* @strbuf_detach(%struct.strbuf* %16, i32* null)
  %152 = call i32 @name_commit(%struct.commit* %150, i8* %151, i32 0)
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %11, align 4
  %155 = load %struct.commit*, %struct.commit** %15, align 8
  %156 = call i64 @name_first_parent_chain(%struct.commit* %155)
  br label %102

157:                                              ; preds = %102
  br label %158

158:                                              ; preds = %157, %95
  %159 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %160 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %159, i32 0, i32 0
  %161 = load %struct.commit_list*, %struct.commit_list** %160, align 8
  store %struct.commit_list* %161, %struct.commit_list** %9, align 8
  br label %85

162:                                              ; preds = %85
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %11, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %83, label %166

166:                                              ; preds = %163
  ret void
}

declare dso_local %struct.commit_name* @commit_to_name(%struct.commit*) #1

declare dso_local i32 @name_commit(%struct.commit*, i8*, i32) #1

declare dso_local i64 @name_first_parent_chain(%struct.commit*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, ...) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
