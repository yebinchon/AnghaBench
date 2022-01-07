; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge.c_handle_fetch_head.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge.c_handle_fetch_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.commit_list = type { i32 }
%struct.object_id = type { i32 }
%struct.commit = type { i32 }
%struct.TYPE_4__ = type { %struct.commit_list* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@the_hash_algo = common dso_local global %struct.TYPE_3__* null, align 8
@the_repository = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"could not open '%s' for reading\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"could not read '%s'\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"could not close '%s'\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"not something we can merge in %s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit_list**, %struct.strbuf*)* @handle_fetch_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_fetch_head(%struct.commit_list** %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.commit_list**, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.strbuf, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.object_id, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.commit*, align 8
  %14 = alloca i8, align 1
  store %struct.commit_list** %0, %struct.commit_list*** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %15 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @the_hash_algo, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %20 = icmp ne %struct.strbuf* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store %struct.strbuf* %9, %struct.strbuf** %4, align 8
  br label %22

22:                                               ; preds = %21, %2
  %23 = load i32, i32* @the_repository, align 4
  %24 = call i8* @git_path_fetch_head(i32 %23)
  store i8* %24, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* @O_RDONLY, align 4
  %27 = call i32 @open(i8* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @die_errno(i32 %31, i8* %32)
  br label %34

34:                                               ; preds = %30, %22
  %35 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @strbuf_read(%struct.strbuf* %35, i32 %36, i32 0)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @die_errno(i32 %40, i8* %41)
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @close(i32 %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @die_errno(i32 %48, i8* %49)
  br label %51

51:                                               ; preds = %47, %43
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %170, %51
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %55 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %172

58:                                               ; preds = %52
  %59 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %60 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = call i8* @strchr(i8* %64, i8 signext 10)
  store i8* %65, i8** %12, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %58
  %69 = load i8*, i8** %12, align 8
  %70 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %71 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = ptrtoint i8* %69 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = add nsw i64 %75, 1
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %8, align 4
  br label %82

78:                                               ; preds = %58
  %79 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %80 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %78, %68
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %7, align 4
  %85 = sub nsw i32 %83, %84
  %86 = load i32, i32* %10, align 4
  %87 = add i32 %86, 2
  %88 = icmp ult i32 %85, %87
  br i1 %88, label %98, label %89

89:                                               ; preds = %82
  %90 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %91 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = call i64 @get_oid_hex(i8* %95, %struct.object_id* %11)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %89, %82
  store %struct.commit* null, %struct.commit** %13, align 8
  br label %147

99:                                               ; preds = %89
  %100 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %101 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i32, i32* %10, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = call i64 @memcmp(i8* %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %99
  br label %170

112:                                              ; preds = %99
  %113 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %114 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %10, align 4
  %118 = add i32 %116, %117
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %115, i64 %119
  %121 = load i8, i8* %120, align 1
  store i8 %121, i8* %14, align 1
  %122 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %123 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* %10, align 4
  %127 = add i32 %125, %126
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %124, i64 %128
  store i8 0, i8* %129, align 1
  %130 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %131 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = call %struct.commit* @get_merge_parent(i8* %135)
  store %struct.commit* %136, %struct.commit** %13, align 8
  %137 = load i8, i8* %14, align 1
  %138 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %139 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* %10, align 4
  %143 = add i32 %141, %142
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %140, i64 %144
  store i8 %137, i8* %145, align 1
  br label %146

146:                                              ; preds = %112
  br label %147

147:                                              ; preds = %146, %98
  %148 = load %struct.commit*, %struct.commit** %13, align 8
  %149 = icmp ne %struct.commit* %148, null
  br i1 %149, label %165, label %150

150:                                              ; preds = %147
  %151 = load i8*, i8** %12, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8
  store i8 0, i8* %154, align 1
  br label %155

155:                                              ; preds = %153, %150
  %156 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %157 = load i8*, i8** %5, align 8
  %158 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %159 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = call i32 @die(i32 %156, i8* %157, i8* %163)
  br label %165

165:                                              ; preds = %155, %147
  %166 = load %struct.commit*, %struct.commit** %13, align 8
  %167 = load %struct.commit_list**, %struct.commit_list*** %3, align 8
  %168 = call %struct.TYPE_4__* @commit_list_insert(%struct.commit* %166, %struct.commit_list** %167)
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  store %struct.commit_list** %169, %struct.commit_list*** %3, align 8
  br label %170

170:                                              ; preds = %165, %111
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* %7, align 4
  br label %52

172:                                              ; preds = %52
  %173 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %174 = icmp eq %struct.strbuf* %173, %9
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = call i32 @strbuf_release(%struct.strbuf* %9)
  br label %177

177:                                              ; preds = %175, %172
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @git_path_fetch_head(i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @die_errno(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i64 @strbuf_read(%struct.strbuf*, i32, i32) #2

declare dso_local i64 @close(i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @get_oid_hex(i8*, %struct.object_id*) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local %struct.commit* @get_merge_parent(i8*) #2

declare dso_local i32 @die(i32, i8*, i8*) #2

declare dso_local %struct.TYPE_4__* @commit_list_insert(%struct.commit*, %struct.commit_list**) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
