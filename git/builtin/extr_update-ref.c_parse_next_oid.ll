; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_update-ref.c_parse_next_oid.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_update-ref.c_parse_next_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@line_termination = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [31 x i8] c"%s %s: expected SP but got: %s\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"%s %s: expected NUL but got: %s\00", align 1
@PARSE_SHA1_ALLOW_EMPTY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"%s %s: missing <newvalue>, treating as zero\00", align 1
@PARSE_SHA1_OLD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"%s %s: invalid <oldvalue>: %s\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"%s %s: invalid <newvalue>: %s\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"%s %s: unexpected end of input when reading <oldvalue>\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"%s %s: unexpected end of input when reading <newvalue>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, i8**, %struct.object_id*, i8*, i8*, i32)* @parse_next_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_next_oid(%struct.strbuf* %0, i8** %1, %struct.object_id* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.strbuf*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.object_id*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.strbuf, align 8
  %15 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %8, align 8
  store i8** %1, i8*** %9, align 8
  store %struct.object_id* %2, %struct.object_id** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = bitcast %struct.strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %15, align 4
  %17 = load i8**, i8*** %9, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %23 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  %27 = icmp eq i8* %18, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  br label %158

29:                                               ; preds = %6
  %30 = load i8, i8* @line_termination, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %81

32:                                               ; preds = %29
  %33 = load i8**, i8*** %9, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i8**, i8*** %9, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = load i8, i8* @line_termination, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37, %32
  store i32 1, i32* %7, align 4
  br label %168

46:                                               ; preds = %37
  %47 = load i8**, i8*** %9, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 32
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i8*, i8** %11, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load i8**, i8*** %9, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i8*, i8*, i8*, ...) @die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %53, i8* %54, i8* %56)
  br label %58

58:                                               ; preds = %52, %46
  %59 = load i8**, i8*** %9, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %59, align 8
  %62 = load i8**, i8*** %9, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = call i8* @parse_arg(i8* %63, %struct.strbuf* %14)
  %65 = load i8**, i8*** %9, align 8
  store i8* %64, i8** %65, align 8
  %66 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.object_id*, %struct.object_id** %10, align 8
  %73 = call i64 @get_oid(i8* %71, %struct.object_id* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %146

76:                                               ; preds = %69
  br label %80

77:                                               ; preds = %58
  %78 = load %struct.object_id*, %struct.object_id** %10, align 8
  %79 = call i32 @oidclr(%struct.object_id* %78)
  br label %80

80:                                               ; preds = %77, %76
  br label %143

81:                                               ; preds = %29
  %82 = load i8**, i8*** %9, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = load i8, i8* %83, align 1
  %85 = icmp ne i8 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load i8*, i8** %11, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = load i8**, i8*** %9, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 (i8*, i8*, i8*, ...) @die(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %87, i8* %88, i8* %90)
  br label %92

92:                                               ; preds = %86, %81
  %93 = load i8**, i8*** %9, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %93, align 8
  %96 = load i8**, i8*** %9, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %99 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %102 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %100, i64 %104
  %106 = icmp eq i8* %97, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %92
  br label %158

108:                                              ; preds = %92
  %109 = load i8**, i8*** %9, align 8
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @strbuf_addstr(%struct.strbuf* %14, i8* %110)
  %112 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i8**, i8*** %9, align 8
  %115 = load i8*, i8** %114, align 8
  %116 = sext i32 %113 to i64
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  store i8* %117, i8** %114, align 8
  %118 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %108
  %122 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.object_id*, %struct.object_id** %10, align 8
  %125 = call i64 @get_oid(i8* %123, %struct.object_id* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %146

128:                                              ; preds = %121
  br label %142

129:                                              ; preds = %108
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* @PARSE_SHA1_ALLOW_EMPTY, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load i8*, i8** %11, align 8
  %136 = load i8*, i8** %12, align 8
  %137 = call i32 @warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %135, i8* %136)
  %138 = load %struct.object_id*, %struct.object_id** %10, align 8
  %139 = call i32 @oidclr(%struct.object_id* %138)
  br label %141

140:                                              ; preds = %129
  store i32 1, i32* %15, align 4
  br label %141

141:                                              ; preds = %140, %134
  br label %142

142:                                              ; preds = %141, %128
  br label %143

143:                                              ; preds = %142, %80
  %144 = call i32 @strbuf_release(%struct.strbuf* %14)
  %145 = load i32, i32* %15, align 4
  store i32 %145, i32* %7, align 4
  br label %168

146:                                              ; preds = %127, %75
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* @PARSE_SHA1_OLD, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0)
  %153 = load i8*, i8** %11, align 8
  %154 = load i8*, i8** %12, align 8
  %155 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 (i8*, i8*, i8*, ...) @die(i8* %152, i8* %153, i8* %154, i8* %156)
  br label %158

158:                                              ; preds = %146, %107, %28
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* @PARSE_SHA1_OLD, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0)
  %165 = load i8*, i8** %11, align 8
  %166 = load i8*, i8** %12, align 8
  %167 = call i32 (i8*, i8*, i8*, ...) @die(i8* %164, i8* %165, i8* %166)
  br label %168

168:                                              ; preds = %158, %143, %45
  %169 = load i32, i32* %7, align 4
  ret i32 %169
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @die(i8*, i8*, i8*, ...) #2

declare dso_local i8* @parse_arg(i8*, %struct.strbuf*) #2

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #2

declare dso_local i32 @oidclr(%struct.object_id*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @warning(i8*, i8*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
