; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_read_graft_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_read_graft_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.repository = type { i32 }
%struct.commit_graft = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@advice_graft_file_deprecated = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [261 x i8] c"Support for <GIT_DIR>/info/grafts is deprecated\0Aand will be removed in a future Git version.\0A\0APlease use \22git replace --convert-graft-file\22\0Ato convert the grafts into replace refs.\0A\0ATurn this message off by running\0A\22git config advice.graftFileDeprecated false\22\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"duplicate graft data: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, i8*)* @read_graft_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_graft_file(%struct.repository* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.repository*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.strbuf, align 4
  %8 = alloca %struct.commit_graft*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32* @fopen_or_warn(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %6, align 8
  %11 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %46

15:                                               ; preds = %2
  %16 = load i64, i64* @advice_graft_file_deprecated, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = call i32 @_(i8* getelementptr inbounds ([261 x i8], [261 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @advise(i32 %19)
  br label %21

21:                                               ; preds = %18, %15
  br label %22

22:                                               ; preds = %41, %31, %21
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @strbuf_getwholeline(%struct.strbuf* %7, i32* %23, i8 signext 10)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = call %struct.commit_graft* @read_graft_line(%struct.strbuf* %7)
  store %struct.commit_graft* %28, %struct.commit_graft** %8, align 8
  %29 = load %struct.commit_graft*, %struct.commit_graft** %8, align 8
  %30 = icmp ne %struct.commit_graft* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %22

32:                                               ; preds = %27
  %33 = load %struct.repository*, %struct.repository** %4, align 8
  %34 = load %struct.commit_graft*, %struct.commit_graft** %8, align 8
  %35 = call i64 @register_commit_graft(%struct.repository* %33, %struct.commit_graft* %34, i32 1)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %32
  br label %22

42:                                               ; preds = %22
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @fclose(i32* %43)
  %45 = call i32 @strbuf_release(%struct.strbuf* %7)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %14
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32* @fopen_or_warn(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @advise(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strbuf_getwholeline(%struct.strbuf*, i32*, i8 signext) #1

declare dso_local %struct.commit_graft* @read_graft_line(%struct.strbuf*) #1

declare dso_local i64 @register_commit_graft(%struct.repository*, %struct.commit_graft*, i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
