; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_push.c_setup_push_upstream.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_push.c_setup_push_upstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.remote = type { i32 }
%struct.branch = type { i32, %struct.TYPE_2__**, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@message_detached_head_die = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [145 x i8] c"The current branch %s has no upstream branch.\0ATo push the current branch and set the remote as upstream, use\0A\0A    git push --set-upstream %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"The current branch %s has multiple upstream branches, refusing to push.\00", align 1
@.str.2 = private unnamed_addr constant [150 x i8] c"You are pushing to remote '%s', which is not the upstream of\0Ayour current branch '%s', without telling me what to push\0Ato update which remote branch.\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@rs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.remote*, %struct.branch*, i32, i32)* @setup_push_upstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_push_upstream(%struct.remote* %0, %struct.branch* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.remote*, align 8
  %6 = alloca %struct.branch*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.strbuf, align 4
  store %struct.remote* %0, %struct.remote** %5, align 8
  store %struct.branch* %1, %struct.branch** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %11 = load %struct.branch*, %struct.branch** %6, align 8
  %12 = icmp ne %struct.branch* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %4
  %14 = load i8*, i8** @message_detached_head_die, align 8
  %15 = call i32 @_(i8* %14)
  %16 = load %struct.remote*, %struct.remote** %5, align 8
  %17 = getelementptr inbounds %struct.remote, %struct.remote* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32, i32, ...) @die(i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %13, %4
  %21 = load %struct.branch*, %struct.branch** %6, align 8
  %22 = getelementptr inbounds %struct.branch, %struct.branch* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.branch*, %struct.branch** %6, align 8
  %27 = getelementptr inbounds %struct.branch, %struct.branch* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %27, align 8
  %29 = icmp ne %struct.TYPE_2__** %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.branch*, %struct.branch** %6, align 8
  %32 = getelementptr inbounds %struct.branch, %struct.branch* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %30, %25, %20
  %36 = call i32 @_(i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.branch*, %struct.branch** %6, align 8
  %38 = getelementptr inbounds %struct.branch, %struct.branch* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.remote*, %struct.remote** %5, align 8
  %41 = getelementptr inbounds %struct.remote, %struct.remote* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.branch*, %struct.branch** %6, align 8
  %44 = getelementptr inbounds %struct.branch, %struct.branch* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i32, ...) @die(i32 %36, i32 %39, i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %35, %30
  %48 = load %struct.branch*, %struct.branch** %6, align 8
  %49 = getelementptr inbounds %struct.branch, %struct.branch* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = call i32 @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.branch*, %struct.branch** %6, align 8
  %55 = getelementptr inbounds %struct.branch, %struct.branch* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i32, ...) @die(i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %52, %47
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = call i32 @_(i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str.2, i64 0, i64 0))
  %63 = load %struct.remote*, %struct.remote** %5, align 8
  %64 = getelementptr inbounds %struct.remote, %struct.remote* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.branch*, %struct.branch** %6, align 8
  %67 = getelementptr inbounds %struct.branch, %struct.branch* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i32, ...) @die(i32 %62, i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %61, %58
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %70
  %74 = load %struct.branch*, %struct.branch** %6, align 8
  %75 = getelementptr inbounds %struct.branch, %struct.branch* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.branch*, %struct.branch** %6, align 8
  %78 = getelementptr inbounds %struct.branch, %struct.branch* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %79, i64 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @strcmp(i32 %76, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %73
  %87 = load %struct.branch*, %struct.branch** %6, align 8
  %88 = load %struct.remote*, %struct.remote** %5, align 8
  %89 = call i32 @die_push_simple(%struct.branch* %87, %struct.remote* %88)
  br label %90

90:                                               ; preds = %86, %73
  br label %91

91:                                               ; preds = %90, %70
  %92 = load %struct.branch*, %struct.branch** %6, align 8
  %93 = getelementptr inbounds %struct.branch, %struct.branch* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.branch*, %struct.branch** %6, align 8
  %96 = getelementptr inbounds %struct.branch, %struct.branch* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %97, i64 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @strbuf_addf(%struct.strbuf* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %94, i32 %101)
  %103 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @refspec_append(i32* @rs, i32 %104)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @die(i32, i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i64 @strcmp(i32, i32) #2

declare dso_local i32 @die_push_simple(%struct.branch*, %struct.remote*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i32) #2

declare dso_local i32 @refspec_append(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
