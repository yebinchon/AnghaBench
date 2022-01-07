; ModuleID = '/home/carl/AnghaBench/git/compat/extr_precompose_utf8.c_probe_utf8_pathname_composition.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_precompose_utf8.c_probe_utf8_pathname_composition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@probe_utf8_pathname_composition.auml_nfc = internal global i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [3 x i8] c"\C3\A4\00", align 1
@probe_utf8_pathname_composition.auml_nfd = internal global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"a\CC\88\00", align 1
@precomposed_unicode = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"core.precomposeunicode\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"failed to unlink '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @probe_utf8_pathname_composition() #0 {
  %1 = alloca %struct.strbuf, align 4
  %2 = alloca i32, align 4
  %3 = bitcast %struct.strbuf* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %4 = load i32, i32* @precomposed_unicode, align 4
  %5 = icmp ne i32 %4, -1
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %51

7:                                                ; preds = %0
  %8 = load i8*, i8** @probe_utf8_pathname_composition.auml_nfc, align 8
  %9 = call i32 @git_path_buf(%struct.strbuf* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %8)
  %10 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %1, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @O_CREAT, align 4
  %13 = load i32, i32* @O_EXCL, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @O_RDWR, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @open(i32 %11, i32 %16, i32 384)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %7
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @close(i32 %21)
  %23 = load i8*, i8** @probe_utf8_pathname_composition.auml_nfd, align 8
  %24 = call i32 @git_path_buf(%struct.strbuf* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  %25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %1, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @R_OK, align 4
  %28 = call i64 @access(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 0, i32 1
  store i32 %31, i32* @precomposed_unicode, align 4
  %32 = load i32, i32* @precomposed_unicode, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %36 = call i32 @git_config_set(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  %37 = load i8*, i8** @probe_utf8_pathname_composition.auml_nfc, align 8
  %38 = call i32 @git_path_buf(%struct.strbuf* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  %39 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %1, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @unlink(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %20
  %44 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %45 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %1, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @die_errno(i32 %44, i32 %46)
  br label %48

48:                                               ; preds = %43, %20
  br label %49

49:                                               ; preds = %48, %7
  %50 = call i32 @strbuf_release(%struct.strbuf* %1)
  br label %51

51:                                               ; preds = %49, %6
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_path_buf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i32 @open(i32, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @access(i32, i32) #2

declare dso_local i32 @git_config_set(i8*, i8*) #2

declare dso_local i64 @unlink(i32) #2

declare dso_local i32 @die_errno(i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
