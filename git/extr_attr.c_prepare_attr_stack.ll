; ModuleID = '/home/carl/AnghaBench/git/extr_attr.c_prepare_attr_stack.c'
source_filename = "/home/carl/AnghaBench/git/extr_attr.c_prepare_attr_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.index_state = type { i32 }
%struct.attr_stack = type { i32, i32, %struct.attr_stack* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@GITATTRIBUTES_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.index_state*, i8*, i32, %struct.attr_stack**)* @prepare_attr_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_attr_stack(%struct.index_state* %0, i8* %1, i32 %2, %struct.attr_stack** %3) #0 {
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.attr_stack**, align 8
  %9 = alloca %struct.attr_stack*, align 8
  %10 = alloca %struct.strbuf, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.attr_stack*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.attr_stack*, align 8
  %15 = alloca i8*, align 8
  store %struct.index_state* %0, %struct.index_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.attr_stack** %3, %struct.attr_stack*** %8, align 8
  %16 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %17 = load %struct.index_state*, %struct.index_state** %5, align 8
  %18 = load %struct.attr_stack**, %struct.attr_stack*** %8, align 8
  %19 = call i32 @bootstrap_attr_stack(%struct.index_state* %17, %struct.attr_stack** %18)
  %20 = load %struct.attr_stack**, %struct.attr_stack*** %8, align 8
  %21 = load %struct.attr_stack*, %struct.attr_stack** %20, align 8
  store %struct.attr_stack* %21, %struct.attr_stack** %9, align 8
  %22 = load %struct.attr_stack*, %struct.attr_stack** %9, align 8
  %23 = getelementptr inbounds %struct.attr_stack, %struct.attr_stack* %22, i32 0, i32 2
  %24 = load %struct.attr_stack*, %struct.attr_stack** %23, align 8
  %25 = load %struct.attr_stack**, %struct.attr_stack*** %8, align 8
  store %struct.attr_stack* %24, %struct.attr_stack** %25, align 8
  br label %26

26:                                               ; preds = %62, %4
  %27 = load %struct.attr_stack**, %struct.attr_stack*** %8, align 8
  %28 = load %struct.attr_stack*, %struct.attr_stack** %27, align 8
  %29 = getelementptr inbounds %struct.attr_stack, %struct.attr_stack* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %71

32:                                               ; preds = %26
  %33 = load %struct.attr_stack**, %struct.attr_stack*** %8, align 8
  %34 = load %struct.attr_stack*, %struct.attr_stack** %33, align 8
  %35 = getelementptr inbounds %struct.attr_stack, %struct.attr_stack* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %11, align 4
  %37 = load %struct.attr_stack**, %struct.attr_stack*** %8, align 8
  %38 = load %struct.attr_stack*, %struct.attr_stack** %37, align 8
  store %struct.attr_stack* %38, %struct.attr_stack** %12, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %32
  %43 = load %struct.attr_stack*, %struct.attr_stack** %12, align 8
  %44 = getelementptr inbounds %struct.attr_stack, %struct.attr_stack* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @strncmp(i32 %45, i8* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 47
  br i1 %60, label %61, label %62

61:                                               ; preds = %53, %50
  br label %71

62:                                               ; preds = %53, %42, %32
  %63 = load %struct.attr_stack*, %struct.attr_stack** %12, align 8
  %64 = call i32 @debug_pop(%struct.attr_stack* %63)
  %65 = load %struct.attr_stack*, %struct.attr_stack** %12, align 8
  %66 = getelementptr inbounds %struct.attr_stack, %struct.attr_stack* %65, i32 0, i32 2
  %67 = load %struct.attr_stack*, %struct.attr_stack** %66, align 8
  %68 = load %struct.attr_stack**, %struct.attr_stack*** %8, align 8
  store %struct.attr_stack* %67, %struct.attr_stack** %68, align 8
  %69 = load %struct.attr_stack*, %struct.attr_stack** %12, align 8
  %70 = call i32 @attr_stack_free(%struct.attr_stack* %69)
  br label %26

71:                                               ; preds = %61, %26
  %72 = load %struct.attr_stack**, %struct.attr_stack*** %8, align 8
  %73 = load %struct.attr_stack*, %struct.attr_stack** %72, align 8
  %74 = getelementptr inbounds %struct.attr_stack, %struct.attr_stack* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @assert(i32 %75)
  %77 = load %struct.attr_stack**, %struct.attr_stack*** %8, align 8
  %78 = load %struct.attr_stack*, %struct.attr_stack** %77, align 8
  %79 = getelementptr inbounds %struct.attr_stack, %struct.attr_stack* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @strbuf_addstr(%struct.strbuf* %10, i32 %80)
  br label %82

82:                                               ; preds = %130, %71
  %83 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %158

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  store i64 %90, i64* %13, align 8
  %91 = load i64, i64* %13, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = icmp ult i64 %91, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %87
  %96 = load i8*, i8** %6, align 8
  %97 = load i64, i64* %13, align 8
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = call i64 @is_dir_sep(i8 signext %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load i64, i64* %13, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %13, align 8
  br label %105

105:                                              ; preds = %102, %95, %87
  br label %106

106:                                              ; preds = %121, %105
  %107 = load i64, i64* %13, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = icmp ult i64 %107, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = load i8*, i8** %6, align 8
  %113 = load i64, i64* %13, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = call i64 @is_dir_sep(i8 signext %115)
  %117 = icmp ne i64 %116, 0
  %118 = xor i1 %117, true
  br label %119

119:                                              ; preds = %111, %106
  %120 = phi i1 [ false, %106 ], [ %118, %111 ]
  br i1 %120, label %121, label %124

121:                                              ; preds = %119
  %122 = load i64, i64* %13, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %13, align 8
  br label %106

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = call i32 @strbuf_addch(%struct.strbuf* %10, i8 signext 47)
  br label %130

130:                                              ; preds = %128, %124
  %131 = load i8*, i8** %6, align 8
  %132 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %131, i64 %134
  %136 = load i64, i64* %13, align 8
  %137 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = sub i64 %136, %139
  %141 = call i32 @strbuf_add(%struct.strbuf* %10, i8* %135, i64 %140)
  %142 = load i32, i32* @GITATTRIBUTES_FILE, align 4
  %143 = call i32 @strbuf_addf(%struct.strbuf* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %142)
  %144 = load %struct.index_state*, %struct.index_state** %5, align 8
  %145 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call %struct.attr_stack* @read_attr(%struct.index_state* %144, i32 %146, i32 0)
  store %struct.attr_stack* %147, %struct.attr_stack** %14, align 8
  %148 = load i64, i64* %13, align 8
  %149 = call i32 @strbuf_setlen(%struct.strbuf* %10, i64 %148)
  %150 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i8* @xstrdup(i32 %151)
  store i8* %152, i8** %15, align 8
  %153 = load %struct.attr_stack**, %struct.attr_stack*** %8, align 8
  %154 = load %struct.attr_stack*, %struct.attr_stack** %14, align 8
  %155 = load i8*, i8** %15, align 8
  %156 = load i64, i64* %13, align 8
  %157 = call i32 @push_stack(%struct.attr_stack** %153, %struct.attr_stack* %154, i8* %155, i64 %156)
  br label %82

158:                                              ; preds = %82
  %159 = load %struct.attr_stack**, %struct.attr_stack*** %8, align 8
  %160 = load %struct.attr_stack*, %struct.attr_stack** %9, align 8
  %161 = call i32 @push_stack(%struct.attr_stack** %159, %struct.attr_stack* %160, i8* null, i64 0)
  %162 = call i32 @strbuf_release(%struct.strbuf* %10)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bootstrap_attr_stack(%struct.index_state*, %struct.attr_stack**) #2

declare dso_local i32 @strncmp(i32, i8*, i32) #2

declare dso_local i32 @debug_pop(%struct.attr_stack*) #2

declare dso_local i32 @attr_stack_free(%struct.attr_stack*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #2

declare dso_local i64 @is_dir_sep(i8 signext) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i64) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #2

declare dso_local %struct.attr_stack* @read_attr(%struct.index_state*, i32, i32) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #2

declare dso_local i8* @xstrdup(i32) #2

declare dso_local i32 @push_stack(%struct.attr_stack**, %struct.attr_stack*, i8*, i64) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
