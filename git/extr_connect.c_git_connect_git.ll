; ModuleID = '/home/carl/AnghaBench/git/extr_connect.c_git_connect_git.c'
source_filename = "/home/carl/AnghaBench/git/extr_connect.c_git_connect_git.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.child_process = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [26 x i8] c"GIT_OVERRIDE_VIRTUAL_HOST\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"git\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%s %s%chost=%s%c\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"version=%d%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.child_process* (i32*, i8*, i8*, i8*, i32, i32)* @git_connect_git to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.child_process* @git_connect_git(i32* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.child_process*, align 8
  %14 = alloca %struct.strbuf, align 4
  %15 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = bitcast %struct.strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %17 = call i8* @getenv(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %15, align 8
  %18 = load i8*, i8** %15, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load i8*, i8** %15, align 8
  %22 = call i8* @xstrdup(i8* %21)
  store i8* %22, i8** %15, align 8
  br label %26

23:                                               ; preds = %6
  %24 = load i8*, i8** %8, align 8
  %25 = call i8* @xstrdup(i8* %24)
  store i8* %25, i8** %15, align 8
  br label %26

26:                                               ; preds = %23, %20
  %27 = call i32 @transport_check_allowed(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @git_use_proxy(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32*, i32** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call %struct.child_process* @git_proxy_connect(i32* %32, i8* %33)
  store %struct.child_process* %34, %struct.child_process** %13, align 8
  br label %40

35:                                               ; preds = %26
  %36 = load i32*, i32** %7, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call %struct.child_process* @git_tcp_connect(i32* %36, i8* %37, i32 %38)
  store %struct.child_process* %39, %struct.child_process** %13, align 8
  br label %40

40:                                               ; preds = %35, %31
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i8*, i8** %15, align 8
  %44 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %41, i8* %42, i32 0, i8* %43, i32 0)
  %45 = load i32, i32* %11, align 4
  %46 = icmp ugt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = call i32 @strbuf_addch(%struct.strbuf* %14, i8 signext 0)
  %49 = load i32, i32* %11, align 4
  %50 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %49, i32 0)
  br label %51

51:                                               ; preds = %47, %40
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @packet_write(i32 %54, i32 %56, i32 %58)
  %60 = load i8*, i8** %15, align 8
  %61 = call i32 @free(i8* %60)
  %62 = call i32 @strbuf_release(%struct.strbuf* %14)
  %63 = load %struct.child_process*, %struct.child_process** %13, align 8
  ret %struct.child_process* %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @getenv(i8*) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i32 @transport_check_allowed(i8*) #2

declare dso_local i64 @git_use_proxy(i8*) #2

declare dso_local %struct.child_process* @git_proxy_connect(i32*, i8*) #2

declare dso_local %struct.child_process* @git_tcp_connect(i32*, i8*, i32) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, ...) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @packet_write(i32, i32, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
