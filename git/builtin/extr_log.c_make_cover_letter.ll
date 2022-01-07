; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_log.c_make_cover_letter.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_log.c_make_cover_letter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.rev_info = type { i32, i32, i64, i32, %struct.TYPE_4__, i32, i64, i64, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.commit = type { i32 }
%struct.shortlog = type { i32, i32, i32, i32, i32 }
%struct.pretty_print_context = type { i32, %struct.rev_info*, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.diff_options = type { i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"cover letter needs email format\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"cover-letter\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to create cover-letter file\00", align 1
@CMIT_FMT_EMAIL = common dso_local global i32 0, align 4
@DATE_RFC2822 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MAIL_DEFAULT_WRAP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rev_info*, i32, %struct.commit*, i32, %struct.commit**, i8*, i32)* @make_cover_letter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_cover_letter(%struct.rev_info* %0, i32 %1, %struct.commit* %2, i32 %3, %struct.commit** %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.rev_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.commit*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.commit**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.shortlog, align 4
  %17 = alloca %struct.strbuf, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.pretty_print_context, align 8
  %22 = alloca %struct.commit*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.diff_options, align 4
  store %struct.rev_info* %0, %struct.rev_info** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.commit* %2, %struct.commit** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.commit** %4, %struct.commit*** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %25 = bitcast %struct.strbuf* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  store i32 0, i32* %20, align 4
  %26 = bitcast %struct.pretty_print_context* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 32, i1 false)
  %27 = load %struct.commit**, %struct.commit*** %12, align 8
  %28 = getelementptr inbounds %struct.commit*, %struct.commit** %27, i64 0
  %29 = load %struct.commit*, %struct.commit** %28, align 8
  store %struct.commit* %29, %struct.commit** %22, align 8
  %30 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %31 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @cmit_fmt_is_mail(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %7
  %36 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 @die(i32 %36)
  br label %38

38:                                               ; preds = %35, %7
  %39 = call i8* @git_committer_info(i32 0)
  store i8* %39, i8** %15, align 8
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %38
  %43 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %44 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %43, i32 0, i32 7
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)
  %49 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %50 = load i32, i32* %14, align 4
  %51 = call i64 @open_next_file(i32* null, i8* %48, %struct.rev_info* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %55 = call i32 @die(i32 %54)
  br label %56

56:                                               ; preds = %53, %42, %38
  %57 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %58 = load %struct.commit*, %struct.commit** %22, align 8
  %59 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %21, i32 0, i32 4
  %60 = call i32 @log_write_email_headers(%struct.rev_info* %57, %struct.commit* %58, i32* %59, i32* %20, i32 0)
  store i32 0, i32* %18, align 4
  br label %61

61:                                               ; preds = %89, %56
  %62 = load i32, i32* %20, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %65, %66
  br label %68

68:                                               ; preds = %64, %61
  %69 = phi i1 [ false, %61 ], [ %67, %64 ]
  br i1 %69, label %70, label %92

70:                                               ; preds = %68
  %71 = load %struct.commit**, %struct.commit*** %12, align 8
  %72 = load i32, i32* %18, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.commit*, %struct.commit** %71, i64 %73
  %75 = load %struct.commit*, %struct.commit** %74, align 8
  %76 = call i8* @get_commit_buffer(%struct.commit* %75, i32* null)
  store i8* %76, i8** %23, align 8
  %77 = load i8*, i8** %23, align 8
  %78 = call i64 @has_non_ascii(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  store i32 1, i32* %20, align 4
  br label %81

81:                                               ; preds = %80, %70
  %82 = load %struct.commit**, %struct.commit*** %12, align 8
  %83 = load i32, i32* %18, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.commit*, %struct.commit** %82, i64 %84
  %86 = load %struct.commit*, %struct.commit** %85, align 8
  %87 = load i8*, i8** %23, align 8
  %88 = call i32 @unuse_commit_buffer(%struct.commit* %86, i8* %87)
  br label %89

89:                                               ; preds = %81
  %90 = load i32, i32* %18, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %18, align 4
  br label %61

92:                                               ; preds = %68
  %93 = load i8*, i8** %13, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %97 = call i8* @find_branch_name(%struct.rev_info* %96)
  store i8* %97, i8** %13, align 8
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i32, i32* @CMIT_FMT_EMAIL, align 4
  %100 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %21, i32 0, i32 3
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* @DATE_RFC2822, align 4
  %102 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %21, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %105 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %21, i32 0, i32 1
  store %struct.rev_info* %104, %struct.rev_info** %105, align 8
  %106 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %21, i32 0, i32 0
  store i32 1, i32* %106, align 8
  %107 = load i8*, i8** %15, align 8
  %108 = load i8*, i8** %19, align 8
  %109 = call i32 @pp_user_info(%struct.pretty_print_context* %21, i32* null, %struct.strbuf* %17, i8* %107, i8* %108)
  %110 = load i8*, i8** %13, align 8
  %111 = load i8*, i8** %19, align 8
  %112 = load i32, i32* %20, align 4
  %113 = call i32 @prepare_cover_text(%struct.pretty_print_context* %21, i8* %110, %struct.strbuf* %17, i8* %111, i32 %112)
  %114 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %115 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @fprintf(i32 %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %119)
  %121 = call i32 @strbuf_release(%struct.strbuf* %17)
  %122 = call i32 @shortlog_init(%struct.shortlog* %16)
  %123 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %16, i32 0, i32 0
  store i32 1, i32* %123, align 4
  %124 = load i32, i32* @MAIL_DEFAULT_WRAP, align 4
  %125 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %16, i32 0, i32 4
  store i32 %124, i32* %125, align 4
  %126 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %16, i32 0, i32 1
  store i32 2, i32* %126, align 4
  %127 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %16, i32 0, i32 2
  store i32 4, i32* %127, align 4
  %128 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %129 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %16, i32 0, i32 3
  store i32 %131, i32* %132, align 4
  store i32 0, i32* %18, align 4
  br label %133

133:                                              ; preds = %144, %98
  %134 = load i32, i32* %18, align 4
  %135 = load i32, i32* %11, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %147

137:                                              ; preds = %133
  %138 = load %struct.commit**, %struct.commit*** %12, align 8
  %139 = load i32, i32* %18, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.commit*, %struct.commit** %138, i64 %140
  %142 = load %struct.commit*, %struct.commit** %141, align 8
  %143 = call i32 @shortlog_add_commit(%struct.shortlog* %16, %struct.commit* %142)
  br label %144

144:                                              ; preds = %137
  %145 = load i32, i32* %18, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %18, align 4
  br label %133

147:                                              ; preds = %133
  %148 = call i32 @shortlog_output(%struct.shortlog* %16)
  %149 = load %struct.commit*, %struct.commit** %10, align 8
  %150 = icmp ne %struct.commit* %149, null
  br i1 %150, label %151, label %156

151:                                              ; preds = %147
  %152 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %153 = load %struct.commit*, %struct.commit** %10, align 8
  %154 = load %struct.commit*, %struct.commit** %22, align 8
  %155 = call i32 @show_diffstat(%struct.rev_info* %152, %struct.commit* %153, %struct.commit* %154)
  br label %156

156:                                              ; preds = %151, %147
  %157 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %158 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %157, i32 0, i32 6
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %156
  %162 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %163 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %167 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @fprintf_ln(i32 %165, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %168)
  %170 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %171 = call i32 @show_interdiff(%struct.rev_info* %170, i32 0)
  br label %172

172:                                              ; preds = %161, %156
  %173 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %174 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %208

177:                                              ; preds = %172
  %178 = call i32 @diff_setup(%struct.diff_options* %24)
  %179 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %180 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %24, i32 0, i32 1
  store i32 %182, i32* %183, align 4
  %184 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %185 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %24, i32 0, i32 0
  store i32 %187, i32* %188, align 4
  %189 = call i32 @diff_setup_done(%struct.diff_options* %24)
  %190 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %191 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %190, i32 0, i32 4
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %195 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @fprintf_ln(i32 %193, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %196)
  %198 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %199 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %202 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %205 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @show_range_diff(i64 %200, i32 %203, i32 %206, i32 1, %struct.diff_options* %24)
  br label %208

208:                                              ; preds = %177, %172
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cmit_fmt_is_mail(i32) #2

declare dso_local i32 @die(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i8* @git_committer_info(i32) #2

declare dso_local i64 @open_next_file(i32*, i8*, %struct.rev_info*, i32) #2

declare dso_local i32 @log_write_email_headers(%struct.rev_info*, %struct.commit*, i32*, i32*, i32) #2

declare dso_local i8* @get_commit_buffer(%struct.commit*, i32*) #2

declare dso_local i64 @has_non_ascii(i8*) #2

declare dso_local i32 @unuse_commit_buffer(%struct.commit*, i8*) #2

declare dso_local i8* @find_branch_name(%struct.rev_info*) #2

declare dso_local i32 @pp_user_info(%struct.pretty_print_context*, i32*, %struct.strbuf*, i8*, i8*) #2

declare dso_local i32 @prepare_cover_text(%struct.pretty_print_context*, i8*, %struct.strbuf*, i8*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @shortlog_init(%struct.shortlog*) #2

declare dso_local i32 @shortlog_add_commit(%struct.shortlog*, %struct.commit*) #2

declare dso_local i32 @shortlog_output(%struct.shortlog*) #2

declare dso_local i32 @show_diffstat(%struct.rev_info*, %struct.commit*, %struct.commit*) #2

declare dso_local i32 @fprintf_ln(i32, i8*, i32) #2

declare dso_local i32 @show_interdiff(%struct.rev_info*, i32) #2

declare dso_local i32 @diff_setup(%struct.diff_options*) #2

declare dso_local i32 @diff_setup_done(%struct.diff_options*) #2

declare dso_local i32 @show_range_diff(i64, i32, i32, i32, %struct.diff_options*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
