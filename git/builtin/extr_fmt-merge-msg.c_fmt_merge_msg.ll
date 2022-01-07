; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fmt-merge-msg.c_fmt_merge_msg.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fmt-merge-msg.c_fmt_merge_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.strbuf = type { i32, i8* }
%struct.fmt_merge_msg_opts = type { i64, i64 }
%struct.object_id = type { i32 }
%struct.merge_parents = type { i8* }
%struct.commit = type { i32 }
%struct.rev_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@RESOLVE_REF_READING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"No current branch\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"error in line %d: %.*s\00", align 1
@srcs = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@origins = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@the_repository = common dso_local global i32 0, align 4
@CMIT_FMT_ONELINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fmt_merge_msg(%struct.strbuf* %0, %struct.strbuf* %1, %struct.fmt_merge_msg_opts* %2) #0 {
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca %struct.fmt_merge_msg_opts*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.object_id, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.merge_parents, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.commit*, align 8
  %17 = alloca %struct.rev_info, align 4
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  store %struct.fmt_merge_msg_opts* %2, %struct.fmt_merge_msg_opts** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = call i32 @memset(%struct.merge_parents* %12, i32 0, i32 8)
  %19 = load i32, i32* @RESOLVE_REF_READING, align 4
  %20 = call i8* @resolve_refdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %19, %struct.object_id* %9, i32* null)
  store i8* %20, i8** %11, align 8
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %3
  %24 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %3
  %26 = load i8*, i8** %10, align 8
  %27 = call i64 @starts_with(i8* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i8*, i8** %10, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 11
  store i8* %31, i8** %10, align 8
  br label %32

32:                                               ; preds = %29, %25
  %33 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %34 = call i32 @find_merge_parents(%struct.merge_parents* %12, %struct.strbuf* %33, %struct.object_id* %9)
  br label %35

35:                                               ; preds = %88, %32
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %38 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %89

41:                                               ; preds = %35
  %42 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %43 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8* %47, i8** %15, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = call i8* @strchr(i8* %48, i8 signext 10)
  store i8* %49, i8** %14, align 8
  %50 = load i8*, i8** %14, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %41
  %53 = load i8*, i8** %14, align 8
  %54 = load i8*, i8** %15, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  br label %62

58:                                               ; preds = %41
  %59 = load i8*, i8** %15, align 8
  %60 = call i32 @strlen(i8* %59)
  %61 = sext i32 %60 to i64
  br label %62

62:                                               ; preds = %58, %52
  %63 = phi i64 [ %57, %52 ], [ %61, %58 ]
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i8*, i8** %14, align 8
  %67 = icmp ne i8* %66, null
  %68 = xor i1 %67, true
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = add nsw i32 %65, %70
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  %76 = load i8*, i8** %15, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  store i8 0, i8* %79, align 1
  %80 = load i8*, i8** %15, align 8
  %81 = call i64 @handle_line(i8* %80, %struct.merge_parents* %12)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %62
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i8*, i8** %15, align 8
  %87 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %84, i32 %85, i8* %86)
  br label %88

88:                                               ; preds = %83, %62
  br label %35

89:                                               ; preds = %35
  %90 = load %struct.fmt_merge_msg_opts*, %struct.fmt_merge_msg_opts** %6, align 8
  %91 = getelementptr inbounds %struct.fmt_merge_msg_opts, %struct.fmt_merge_msg_opts* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @srcs, i32 0, i32 0), align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = call i32 @fmt_merge_msg_title(%struct.strbuf* %98, i8* %99)
  br label %101

101:                                              ; preds = %97, %94, %89
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @origins, i32 0, i32 0), align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %106 = call i32 @fmt_merge_msg_sigs(%struct.strbuf* %105)
  br label %107

107:                                              ; preds = %104, %101
  %108 = load %struct.fmt_merge_msg_opts*, %struct.fmt_merge_msg_opts** %6, align 8
  %109 = getelementptr inbounds %struct.fmt_merge_msg_opts, %struct.fmt_merge_msg_opts* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %147

112:                                              ; preds = %107
  %113 = call %struct.commit* @lookup_commit_or_die(%struct.object_id* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.commit* %113, %struct.commit** %16, align 8
  %114 = load i32, i32* @the_repository, align 4
  %115 = call i32 @repo_init_revisions(i32 %114, %struct.rev_info* %17, i32* null)
  %116 = load i32, i32* @CMIT_FMT_ONELINE, align 4
  %117 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %17, i32 0, i32 2
  store i32 %116, i32* %117, align 4
  %118 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %17, i32 0, i32 0
  store i32 1, i32* %118, align 4
  %119 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %17, i32 0, i32 1
  store i32 1, i32* %119, align 4
  %120 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %121 = call i32 @strbuf_complete_line(%struct.strbuf* %120)
  store i32 0, i32* %7, align 4
  br label %122

122:                                              ; preds = %143, %112
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @origins, i32 0, i32 0), align 8
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %146

126:                                              ; preds = %122
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @origins, i32 0, i32 1), align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @origins, i32 0, i32 1), align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.commit*, %struct.commit** %16, align 8
  %140 = load %struct.fmt_merge_msg_opts*, %struct.fmt_merge_msg_opts** %6, align 8
  %141 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %142 = call i32 @shortlog(i32 %132, i32 %138, %struct.commit* %139, %struct.rev_info* %17, %struct.fmt_merge_msg_opts* %140, %struct.strbuf* %141)
  br label %143

143:                                              ; preds = %126
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %7, align 4
  br label %122

146:                                              ; preds = %122
  br label %147

147:                                              ; preds = %146, %107
  %148 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %149 = call i32 @strbuf_complete_line(%struct.strbuf* %148)
  %150 = load i8*, i8** %11, align 8
  %151 = call i32 @free(i8* %150)
  %152 = getelementptr inbounds %struct.merge_parents, %struct.merge_parents* %12, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @free(i8* %153)
  ret i32 0
}

declare dso_local i32 @memset(%struct.merge_parents*, i32, i32) #1

declare dso_local i8* @resolve_refdup(i8*, i32, %struct.object_id*, i32*) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @find_merge_parents(%struct.merge_parents*, %struct.strbuf*, %struct.object_id*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @handle_line(i8*, %struct.merge_parents*) #1

declare dso_local i32 @fmt_merge_msg_title(%struct.strbuf*, i8*) #1

declare dso_local i32 @fmt_merge_msg_sigs(%struct.strbuf*) #1

declare dso_local %struct.commit* @lookup_commit_or_die(%struct.object_id*, i8*) #1

declare dso_local i32 @repo_init_revisions(i32, %struct.rev_info*, i32*) #1

declare dso_local i32 @strbuf_complete_line(%struct.strbuf*) #1

declare dso_local i32 @shortlog(i32, i32, %struct.commit*, %struct.rev_info*, %struct.fmt_merge_msg_opts*, %struct.strbuf*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
