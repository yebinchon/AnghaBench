; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_shortlog.c_insert_one_record.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_shortlog.c_insert_one_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.shortlog = type { i8*, i64, i32 }
%struct.string_list_item = type { i32* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"[PATCH\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"/.../\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shortlog*, i8*, i8*)* @insert_one_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_one_record(%struct.shortlog* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.shortlog*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.string_list_item*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.strbuf, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.shortlog* %0, %struct.shortlog** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %16 = load %struct.shortlog*, %struct.shortlog** %4, align 8
  %17 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %16, i32 0, i32 2
  %18 = load i8*, i8** %5, align 8
  %19 = call %struct.string_list_item* @string_list_insert(i32* %17, i8* %18)
  store %struct.string_list_item* %19, %struct.string_list_item** %7, align 8
  %20 = load %struct.shortlog*, %struct.shortlog** %4, align 8
  %21 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load %struct.string_list_item*, %struct.string_list_item** %7, align 8
  %26 = call i64 @UTIL_TO_INT(%struct.string_list_item* %25)
  %27 = add nsw i64 %26, 1
  %28 = inttoptr i64 %27 to i8*
  %29 = bitcast i8* %28 to i32*
  %30 = load %struct.string_list_item*, %struct.string_list_item** %7, align 8
  %31 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %30, i32 0, i32 0
  store i32* %29, i32** %31, align 8
  br label %154

32:                                               ; preds = %3
  %33 = load %struct.shortlog*, %struct.shortlog** %4, align 8
  %34 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %8, align 8
  %36 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  br label %37

37:                                               ; preds = %49, %32
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = call i64 @isspace(i8 signext %44)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %42, %37
  %48 = phi i1 [ false, %37 ], [ %46, %42 ]
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %6, align 8
  br label %37

52:                                               ; preds = %47
  %53 = load i8*, i8** %6, align 8
  %54 = call i8* @strchr(i8* %53, i8 signext 10)
  store i8* %54, i8** %12, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = load i8*, i8** %6, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @strlen(i8* %59)
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  store i8* %62, i8** %12, align 8
  br label %63

63:                                               ; preds = %57, %52
  %64 = load i8*, i8** %6, align 8
  %65 = call i64 @starts_with(i8* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %63
  %68 = load i8*, i8** %6, align 8
  %69 = call i8* @strchr(i8* %68, i8 signext 93)
  store i8* %69, i8** %13, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = load i8*, i8** %12, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i8*, i8** %13, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = icmp ult i8* %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75, %72
  %80 = load i8*, i8** %13, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  store i8* %81, i8** %6, align 8
  br label %82

82:                                               ; preds = %79, %75, %67
  br label %83

83:                                               ; preds = %82, %63
  br label %84

84:                                               ; preds = %101, %83
  %85 = load i8*, i8** %6, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load i8*, i8** %6, align 8
  %91 = load i8, i8* %90, align 1
  %92 = call i64 @isspace(i8 signext %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load i8*, i8** %6, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 10
  br label %99

99:                                               ; preds = %94, %89, %84
  %100 = phi i1 [ false, %89 ], [ false, %84 ], [ %98, %94 ]
  br i1 %100, label %101, label %104

101:                                              ; preds = %99
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %6, align 8
  br label %84

104:                                              ; preds = %99
  %105 = load i8*, i8** %6, align 8
  %106 = call i32 @format_subject(%struct.strbuf* %11, i8* %105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %107 = call i8* @strbuf_detach(%struct.strbuf* %11, i32* null)
  store i8* %107, i8** %9, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %139

110:                                              ; preds = %104
  %111 = load i8*, i8** %8, align 8
  %112 = call i32 @strlen(i8* %111)
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = icmp sgt i32 %113, 5
  br i1 %114, label %115, label %138

115:                                              ; preds = %110
  br label %116

116:                                              ; preds = %121, %115
  %117 = load i8*, i8** %9, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = call i8* @strstr(i8* %117, i8* %118)
  store i8* %119, i8** %10, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %137

121:                                              ; preds = %116
  %122 = load i8*, i8** %10, align 8
  %123 = call i32 @strlen(i8* %122)
  %124 = load i32, i32* %14, align 4
  %125 = sub nsw i32 %123, %124
  store i32 %125, i32* %15, align 4
  %126 = load i8*, i8** %10, align 8
  %127 = call i32 @memcpy(i8* %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %128 = load i8*, i8** %10, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 5
  %130 = load i8*, i8** %10, align 8
  %131 = load i32, i32* %14, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i32, i32* %15, align 4
  %135 = add nsw i32 %134, 1
  %136 = call i32 @memmove(i8* %129, i8* %133, i32 %135)
  br label %116

137:                                              ; preds = %116
  br label %138

138:                                              ; preds = %137, %110
  br label %139

139:                                              ; preds = %138, %104
  %140 = load %struct.string_list_item*, %struct.string_list_item** %7, align 8
  %141 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = icmp eq i32* %142, null
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = call i32* @xcalloc(i32 1, i32 4)
  %146 = load %struct.string_list_item*, %struct.string_list_item** %7, align 8
  %147 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %146, i32 0, i32 0
  store i32* %145, i32** %147, align 8
  br label %148

148:                                              ; preds = %144, %139
  %149 = load %struct.string_list_item*, %struct.string_list_item** %7, align 8
  %150 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load i8*, i8** %9, align 8
  %153 = call i32 @string_list_append(i32* %151, i8* %152)
  br label %154

154:                                              ; preds = %148, %24
  ret void
}

declare dso_local %struct.string_list_item* @string_list_insert(i32*, i8*) #1

declare dso_local i64 @UTIL_TO_INT(%struct.string_list_item*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @format_subject(%struct.strbuf*, i8*, i8*) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32* @xcalloc(i32, i32) #1

declare dso_local i32 @string_list_append(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
