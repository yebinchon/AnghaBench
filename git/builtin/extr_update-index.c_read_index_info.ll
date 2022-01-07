; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_update-index.c_read_index_info.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_update-index.c_read_index_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.strbuf = type { i8* }
%struct.object_id = type { i32 }

@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"git update-index: bad quoting of path name\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Ignoring path %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"git update-index: unable to remove %s\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"git update-index: unable to update %s\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"malformed index info %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @read_index_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_index_info(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.strbuf, align 8
  %5 = alloca %struct.strbuf, align 8
  %6 = alloca i64 (%struct.strbuf*, i32)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.object_id, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  %17 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %18 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i64 (%struct.strbuf*, i32)* @strbuf_getline_nul, i64 (%struct.strbuf*, i32)* @strbuf_getline_lf
  store i64 (%struct.strbuf*, i32)* %22, i64 (%struct.strbuf*, i32)** %6, align 8
  br label %23

23:                                               ; preds = %179, %178, %145, %1
  %24 = load i64 (%struct.strbuf*, i32)*, i64 (%struct.strbuf*, i32)** %6, align 8
  %25 = load i32, i32* @stdin, align 4
  %26 = call i64 %24(%struct.strbuf* %4, i32 %25)
  %27 = load i64, i64* @EOF, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %183

29:                                               ; preds = %23
  store i64 0, i64* @errno, align 8
  %30 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strtoul(i8* %31, i8** %7, i32 8)
  store i64 %32, i64* %12, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp eq i8* %33, %35
  br i1 %36, label %51, label %37

37:                                               ; preds = %29
  %38 = load i8*, i8** %7, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 32
  br i1 %41, label %51, label %42

42:                                               ; preds = %37
  %43 = load i64, i64* @errno, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* %12, align 8
  %47 = trunc i64 %46 to i32
  %48 = zext i32 %47 to i64
  %49 = load i64, i64* %12, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %42, %37, %29
  br label %179

52:                                               ; preds = %45
  %53 = load i64, i64* %12, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %11, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = call i8* @strchr(i8* %55, i8 signext 9)
  store i8* %56, i8** %8, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %52
  %60 = load i8*, i8** %8, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = icmp slt i64 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %59, %52
  br label %179

70:                                               ; preds = %59
  %71 = load i8*, i8** %8, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 -2
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 32
  br i1 %75, label %76, label %98

76:                                               ; preds = %70
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 -1
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp sle i32 48, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %76
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 -1
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp sle i32 %86, 51
  br i1 %87, label %88, label %98

88:                                               ; preds = %82
  %89 = load i8*, i8** %8, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 -1
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = sub nsw i32 %92, 48
  store i32 %93, i32* %13, align 4
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  store i8* %95, i8** %7, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 -2
  store i8* %97, i8** %8, align 8
  br label %101

98:                                               ; preds = %82, %76, %70
  store i32 0, i32* %13, align 4
  %99 = load i8*, i8** %8, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  store i8* %100, i8** %7, align 8
  br label %101

101:                                              ; preds = %98, %88
  %102 = load i8*, i8** %8, align 8
  %103 = load i32, i32* %3, align 4
  %104 = sext i32 %103 to i64
  %105 = sub i64 0, %104
  %106 = getelementptr inbounds i8, i8* %102, i64 %105
  %107 = call i64 @get_oid_hex(i8* %106, %struct.object_id* %10)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %119, label %109

109:                                              ; preds = %101
  %110 = load i8*, i8** %8, align 8
  %111 = load i32, i32* %3, align 4
  %112 = add nsw i32 %111, 1
  %113 = sub nsw i32 0, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %110, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 32
  br i1 %118, label %119, label %120

119:                                              ; preds = %109, %101
  br label %179

120:                                              ; preds = %109
  %121 = load i8*, i8** %7, align 8
  store i8* %121, i8** %9, align 8
  %122 = load i32, i32* %2, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %140, label %124

124:                                              ; preds = %120
  %125 = load i8*, i8** %9, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 0
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 34
  br i1 %129, label %130, label %140

130:                                              ; preds = %124
  %131 = call i32 @strbuf_reset(%struct.strbuf* %5)
  %132 = load i8*, i8** %9, align 8
  %133 = call i64 @unquote_c_style(%struct.strbuf* %5, i8* %132, i32* null)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %130
  %138 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  store i8* %139, i8** %9, align 8
  br label %140

140:                                              ; preds = %137, %124, %120
  %141 = load i8*, i8** %9, align 8
  %142 = load i32, i32* %11, align 4
  %143 = call i32 @verify_path(i8* %141, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %140
  %146 = load i32, i32* @stderr, align 4
  %147 = load i8*, i8** %9, align 8
  %148 = call i32 @fprintf(i32 %146, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %147)
  br label %23

149:                                              ; preds = %140
  %150 = load i32, i32* %11, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %160, label %152

152:                                              ; preds = %149
  %153 = load i8*, i8** %9, align 8
  %154 = call i64 @remove_file_from_cache(i8* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i8*, i8** %7, align 8
  %158 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %157)
  br label %159

159:                                              ; preds = %156, %152
  br label %178

160:                                              ; preds = %149
  %161 = load i8*, i8** %7, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 -1
  store i8 0, i8* %162, align 1
  %163 = load i8*, i8** %7, align 8
  %164 = load i32, i32* %3, align 4
  %165 = add nsw i32 %164, 2
  %166 = sub nsw i32 0, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %163, i64 %167
  store i8 0, i8* %168, align 1
  %169 = load i32, i32* %11, align 4
  %170 = load i8*, i8** %9, align 8
  %171 = load i32, i32* %13, align 4
  %172 = call i64 @add_cacheinfo(i32 %169, %struct.object_id* %10, i8* %170, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %160
  %175 = load i8*, i8** %9, align 8
  %176 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %175)
  br label %177

177:                                              ; preds = %174, %160
  br label %178

178:                                              ; preds = %177, %159
  br label %23

179:                                              ; preds = %119, %69, %51
  %180 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %181)
  br label %23

183:                                              ; preds = %23
  %184 = call i32 @strbuf_release(%struct.strbuf* %4)
  %185 = call i32 @strbuf_release(%struct.strbuf* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strbuf_getline_nul(%struct.strbuf*, i32) #2

declare dso_local i64 @strbuf_getline_lf(%struct.strbuf*, i32) #2

declare dso_local i64 @strtoul(i8*, i8**, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @get_oid_hex(i8*, %struct.object_id*) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i64 @unquote_c_style(%struct.strbuf*, i8*, i32*) #2

declare dso_local i32 @die(i8*, ...) #2

declare dso_local i32 @verify_path(i8*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i64 @remove_file_from_cache(i8*) #2

declare dso_local i64 @add_cacheinfo(i32, %struct.object_id*, i8*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
