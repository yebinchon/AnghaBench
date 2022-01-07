; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_tag.c_create_tag.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_tag.c_create_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.create_tag_options = type { i64, i32, i64, i64 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@the_repository = common dso_local global i32 0, align 4
@OBJ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"bad object type.\00", align 1
@OBJ_TAG = common dso_local global i32 0, align 4
@advice_nested_tag = common dso_local global i64 0, align 8
@message_advice_nested_tag = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"object %s\0Atype %s\0Atag %s\0Atagger %s\0A\0A\00", align 1
@IDENT_STRICT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"TAG_EDITMSG\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"could not create file '%s'\00", align 1
@CLEANUP_ALL = common dso_local global i64 0, align 8
@tag_template = common dso_local global i8* null, align 8
@comment_line_char = common dso_local global i32 0, align 4
@tag_template_nocleanup = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"Please supply the message using either -m or -F option.\0A\00", align 1
@CLEANUP_NONE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"no tag message?\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"The tag message has been left in %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_id*, i8*, i8*, %struct.strbuf*, %struct.create_tag_options*, %struct.object_id*, %struct.object_id*)* @create_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_tag(%struct.object_id* %0, i8* %1, i8* %2, %struct.strbuf* %3, %struct.create_tag_options* %4, %struct.object_id* %5, %struct.object_id* %6) #0 {
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.strbuf*, align 8
  %12 = alloca %struct.create_tag_options*, align 8
  %13 = alloca %struct.object_id*, align 8
  %14 = alloca %struct.object_id*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.strbuf, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.strbuf, align 4
  store %struct.object_id* %0, %struct.object_id** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.strbuf* %3, %struct.strbuf** %11, align 8
  store %struct.create_tag_options* %4, %struct.create_tag_options** %12, align 8
  store %struct.object_id* %5, %struct.object_id** %13, align 8
  store %struct.object_id* %6, %struct.object_id** %14, align 8
  %20 = bitcast %struct.strbuf* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i8* null, i8** %17, align 8
  %21 = load i32, i32* @the_repository, align 4
  %22 = load %struct.object_id*, %struct.object_id** %8, align 8
  %23 = call i32 @oid_object_info(i32 %21, %struct.object_id* %22, i32* null)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* @OBJ_NONE, align 4
  %26 = icmp ule i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %7
  %28 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 @die(i8* %28)
  br label %30

30:                                               ; preds = %27, %7
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* @OBJ_TAG, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i64, i64* @advice_nested_tag, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i8*, i8** @message_advice_nested_tag, align 8
  %39 = call i8* @_(i8* %38)
  %40 = load i8*, i8** %10, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @advise(i8* %39, i8* %40, i8* %41)
  br label %43

43:                                               ; preds = %37, %34, %30
  %44 = load %struct.object_id*, %struct.object_id** %8, align 8
  %45 = call i32 @oid_to_hex(%struct.object_id* %44)
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @type_name(i32 %46)
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* @IDENT_STRICT, align 4
  %50 = call i32 @git_committer_info(i32 %49)
  %51 = call i32 @strbuf_addf(%struct.strbuf* %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %47, i8* %48, i32 %50)
  %52 = load %struct.create_tag_options*, %struct.create_tag_options** %12, align 8
  %53 = getelementptr inbounds %struct.create_tag_options, %struct.create_tag_options* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %43
  %57 = load %struct.create_tag_options*, %struct.create_tag_options** %12, align 8
  %58 = getelementptr inbounds %struct.create_tag_options, %struct.create_tag_options* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %142

61:                                               ; preds = %56, %43
  %62 = call i8* @git_pathdup(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i8* %62, i8** %17, align 8
  %63 = load i8*, i8** %17, align 8
  %64 = load i32, i32* @O_CREAT, align 4
  %65 = load i32, i32* @O_TRUNC, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @O_WRONLY, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @open(i8* %63, i32 %68, i32 384)
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %18, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %61
  %73 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i8*, i8** %17, align 8
  %75 = call i32 @die_errno(i8* %73, i8* %74)
  br label %76

76:                                               ; preds = %72, %61
  %77 = load %struct.create_tag_options*, %struct.create_tag_options** %12, align 8
  %78 = getelementptr inbounds %struct.create_tag_options, %struct.create_tag_options* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %76
  %82 = load i32, i32* %18, align 4
  %83 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %84 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %87 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @write_or_die(i32 %82, i32 %85, i32 %88)
  %90 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %91 = call i32 @strbuf_reset(%struct.strbuf* %90)
  br label %129

92:                                               ; preds = %76
  %93 = load %struct.object_id*, %struct.object_id** %13, align 8
  %94 = call i32 @is_null_oid(%struct.object_id* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %18, align 4
  %98 = load %struct.object_id*, %struct.object_id** %13, align 8
  %99 = call i32 @write_tag_body(i32 %97, %struct.object_id* %98)
  br label %128

100:                                              ; preds = %92
  %101 = bitcast %struct.strbuf* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %101, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %102 = call i32 @strbuf_addch(%struct.strbuf* %19, i8 signext 10)
  %103 = load %struct.create_tag_options*, %struct.create_tag_options** %12, align 8
  %104 = getelementptr inbounds %struct.create_tag_options, %struct.create_tag_options* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @CLEANUP_ALL, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %100
  %109 = load i8*, i8** @tag_template, align 8
  %110 = call i8* @_(i8* %109)
  %111 = load i8*, i8** %10, align 8
  %112 = load i32, i32* @comment_line_char, align 4
  %113 = call i32 @strbuf_commented_addf(%struct.strbuf* %19, i8* %110, i8* %111, i32 %112)
  br label %120

114:                                              ; preds = %100
  %115 = load i8*, i8** @tag_template_nocleanup, align 8
  %116 = call i8* @_(i8* %115)
  %117 = load i8*, i8** %10, align 8
  %118 = load i32, i32* @comment_line_char, align 4
  %119 = call i32 @strbuf_commented_addf(%struct.strbuf* %19, i8* %116, i8* %117, i32 %118)
  br label %120

120:                                              ; preds = %114, %108
  %121 = load i32, i32* %18, align 4
  %122 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @write_or_die(i32 %121, i32 %123, i32 %125)
  %127 = call i32 @strbuf_release(%struct.strbuf* %19)
  br label %128

128:                                              ; preds = %120, %96
  br label %129

129:                                              ; preds = %128, %81
  %130 = load i32, i32* %18, align 4
  %131 = call i32 @close(i32 %130)
  %132 = load i8*, i8** %17, align 8
  %133 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %134 = call i64 @launch_editor(i8* %132, %struct.strbuf* %133, i32* null)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %129
  %137 = load i32, i32* @stderr, align 4
  %138 = call i8* @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  %139 = call i32 (i32, i8*, ...) @fprintf(i32 %137, i8* %138)
  %140 = call i32 @exit(i32 1) #4
  unreachable

141:                                              ; preds = %129
  br label %142

142:                                              ; preds = %141, %56
  %143 = load %struct.create_tag_options*, %struct.create_tag_options** %12, align 8
  %144 = getelementptr inbounds %struct.create_tag_options, %struct.create_tag_options* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @CLEANUP_NONE, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %157

148:                                              ; preds = %142
  %149 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %150 = load %struct.create_tag_options*, %struct.create_tag_options** %12, align 8
  %151 = getelementptr inbounds %struct.create_tag_options, %struct.create_tag_options* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @CLEANUP_ALL, align 8
  %154 = icmp eq i64 %152, %153
  %155 = zext i1 %154 to i32
  %156 = call i32 @strbuf_stripspace(%struct.strbuf* %149, i32 %155)
  br label %157

157:                                              ; preds = %148, %142
  %158 = load %struct.create_tag_options*, %struct.create_tag_options** %12, align 8
  %159 = getelementptr inbounds %struct.create_tag_options, %struct.create_tag_options* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %170, label %162

162:                                              ; preds = %157
  %163 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %164 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %162
  %168 = call i8* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %169 = call i32 @die(i8* %168)
  br label %170

170:                                              ; preds = %167, %162, %157
  %171 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %172 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @strbuf_insert(%struct.strbuf* %171, i32 0, i32 %173, i32 %175)
  %177 = call i32 @strbuf_release(%struct.strbuf* %16)
  %178 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %179 = load %struct.create_tag_options*, %struct.create_tag_options** %12, align 8
  %180 = getelementptr inbounds %struct.create_tag_options, %struct.create_tag_options* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.object_id*, %struct.object_id** %14, align 8
  %183 = call i64 @build_tag_object(%struct.strbuf* %178, i32 %181, %struct.object_id* %182)
  %184 = icmp slt i64 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %170
  %186 = load i8*, i8** %17, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %193

188:                                              ; preds = %185
  %189 = load i32, i32* @stderr, align 4
  %190 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %191 = load i8*, i8** %17, align 8
  %192 = call i32 (i32, i8*, ...) @fprintf(i32 %189, i8* %190, i8* %191)
  br label %193

193:                                              ; preds = %188, %185
  %194 = call i32 @exit(i32 128) #4
  unreachable

195:                                              ; preds = %170
  %196 = load i8*, i8** %17, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %198, label %203

198:                                              ; preds = %195
  %199 = load i8*, i8** %17, align 8
  %200 = call i32 @unlink_or_warn(i8* %199)
  %201 = load i8*, i8** %17, align 8
  %202 = call i32 @free(i8* %201)
  br label %203

203:                                              ; preds = %198, %195
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @oid_object_info(i32, %struct.object_id*, i32*) #2

declare dso_local i32 @die(i8*) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @advise(i8*, i8*, i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i32, i8*, i32) #2

declare dso_local i32 @oid_to_hex(%struct.object_id*) #2

declare dso_local i32 @type_name(i32) #2

declare dso_local i32 @git_committer_info(i32) #2

declare dso_local i8* @git_pathdup(i8*) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @die_errno(i8*, i8*) #2

declare dso_local i32 @write_or_die(i32, i32, i32) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @is_null_oid(%struct.object_id*) #2

declare dso_local i32 @write_tag_body(i32, %struct.object_id*) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @strbuf_commented_addf(%struct.strbuf*, i8*, i8*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @launch_editor(i8*, %struct.strbuf*, i32*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @strbuf_stripspace(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_insert(%struct.strbuf*, i32, i32, i32) #2

declare dso_local i64 @build_tag_object(%struct.strbuf*, i32, %struct.object_id*) #2

declare dso_local i32 @unlink_or_warn(i8*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
