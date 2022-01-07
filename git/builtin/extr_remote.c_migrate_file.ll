; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote.c_migrate_file.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote.c_migrate_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.remote = type { i32, i64, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i32, i32* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [14 x i8] c"remote.%s.url\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"^$\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"remote.%s.push\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"remote.%s.fetch\00", align 1
@REMOTE_REMOTES = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"remotes/%s\00", align 1
@REMOTE_BRANCHES = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"branches/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.remote*)* @migrate_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @migrate_file(%struct.remote* %0) #0 {
  %2 = alloca %struct.remote*, align 8
  %3 = alloca %struct.strbuf, align 4
  %4 = alloca i32, align 4
  store %struct.remote* %0, %struct.remote** %2, align 8
  %5 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %6 = load %struct.remote*, %struct.remote** %2, align 8
  %7 = getelementptr inbounds %struct.remote, %struct.remote* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @strbuf_addf(%struct.strbuf* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %27, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.remote*, %struct.remote** %2, align 8
  %13 = getelementptr inbounds %struct.remote, %struct.remote* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.remote*, %struct.remote** %2, align 8
  %20 = getelementptr inbounds %struct.remote, %struct.remote* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @git_config_set_multivar(i32 %18, i32 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %27

27:                                               ; preds = %16
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %10

30:                                               ; preds = %10
  %31 = call i32 @strbuf_reset(%struct.strbuf* %3)
  %32 = load %struct.remote*, %struct.remote** %2, align 8
  %33 = getelementptr inbounds %struct.remote, %struct.remote* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @strbuf_addf(%struct.strbuf* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %55, %30
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.remote*, %struct.remote** %2, align 8
  %39 = getelementptr inbounds %struct.remote, %struct.remote* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.remote*, %struct.remote** %2, align 8
  %47 = getelementptr inbounds %struct.remote, %struct.remote* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @git_config_set_multivar(i32 %45, i32 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %55

55:                                               ; preds = %43
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %36

58:                                               ; preds = %36
  %59 = call i32 @strbuf_reset(%struct.strbuf* %3)
  %60 = load %struct.remote*, %struct.remote** %2, align 8
  %61 = getelementptr inbounds %struct.remote, %struct.remote* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @strbuf_addf(%struct.strbuf* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %83, %58
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.remote*, %struct.remote** %2, align 8
  %67 = getelementptr inbounds %struct.remote, %struct.remote* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %65, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.remote*, %struct.remote** %2, align 8
  %75 = getelementptr inbounds %struct.remote, %struct.remote* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @git_config_set_multivar(i32 %73, i32 %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %83

83:                                               ; preds = %71
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %64

86:                                               ; preds = %64
  %87 = load %struct.remote*, %struct.remote** %2, align 8
  %88 = getelementptr inbounds %struct.remote, %struct.remote* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @REMOTE_REMOTES, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = load %struct.remote*, %struct.remote** %2, align 8
  %94 = getelementptr inbounds %struct.remote, %struct.remote* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @git_path(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  %97 = call i32 @unlink_or_warn(i32 %96)
  br label %111

98:                                               ; preds = %86
  %99 = load %struct.remote*, %struct.remote** %2, align 8
  %100 = getelementptr inbounds %struct.remote, %struct.remote* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @REMOTE_BRANCHES, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = load %struct.remote*, %struct.remote** %2, align 8
  %106 = getelementptr inbounds %struct.remote, %struct.remote* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @git_path(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %107)
  %109 = call i32 @unlink_or_warn(i32 %108)
  br label %110

110:                                              ; preds = %104, %98
  br label %111

111:                                              ; preds = %110, %92
  %112 = call i32 @strbuf_release(%struct.strbuf* %3)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @git_config_set_multivar(i32, i32, i8*, i32) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @unlink_or_warn(i32) #2

declare dso_local i32 @git_path(i8*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
