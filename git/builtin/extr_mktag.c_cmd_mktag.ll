; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_mktag.c_cmd_mktag.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_mktag.c_cmd_mktag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [10 x i8] c"git mktag\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"could not read from stdin\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"invalid tag signature file\00", align 1
@tag_type = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"unable to write tag file\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_mktag(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.strbuf, align 4
  %8 = alloca %struct.object_id, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = call i32 @usage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %3
  %15 = call i64 @strbuf_read(%struct.strbuf* %7, i32 0, i32 4096)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 @die_errno(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %14
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @verify_tag(i32 %21, i32 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = call i32 @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %19
  %29 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @tag_type, align 4
  %34 = call i64 @write_object_file(i32 %30, i32 %32, i32 %33, %struct.object_id* %8)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = call i32 @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %28
  %39 = call i32 @strbuf_release(%struct.strbuf* %7)
  %40 = call i8* @oid_to_hex(%struct.object_id* %8)
  %41 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %40)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @usage(i8*) #2

declare dso_local i64 @strbuf_read(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @die_errno(i8*) #2

declare dso_local i64 @verify_tag(i32, i32) #2

declare dso_local i32 @die(i8*) #2

declare dso_local i64 @write_object_file(i32, i32, i32, %struct.object_id*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i8* @oid_to_hex(%struct.object_id*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
