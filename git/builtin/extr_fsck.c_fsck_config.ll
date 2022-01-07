; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fsck.c_fsck_config.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fsck.c_fsck_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"fsck.skiplist\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"skiplist=%s\00", align 1
@fsck_obj_options = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"fsck.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @fsck_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsck_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %3
  %14 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @git_config_pathname(i8** %8, i8* %15, i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %42

20:                                               ; preds = %13
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @strbuf_addf(%struct.strbuf* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @free(i8* %23)
  %25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @fsck_set_msg_types(i32* @fsck_obj_options, i32 %26)
  %28 = call i32 @strbuf_release(%struct.strbuf* %9)
  store i32 0, i32* %4, align 4
  br label %42

29:                                               ; preds = %3
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @skip_prefix(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %5)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @fsck_set_msg_type(i32* @fsck_obj_options, i8* %34, i8* %35)
  store i32 0, i32* %4, align 4
  br label %42

37:                                               ; preds = %29
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @git_default_config(i8* %38, i8* %39, i8* %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %37, %33, %20, %19
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i64 @strcmp(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @git_config_pathname(i8**, i8*, i8*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fsck_set_msg_types(i32*, i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @fsck_set_msg_type(i32*, i8*, i8*) #1

declare dso_local i32 @git_default_config(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
