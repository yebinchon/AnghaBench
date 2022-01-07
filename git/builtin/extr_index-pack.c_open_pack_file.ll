; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_index-pack.c_open_pack_file.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_index-pack.c_open_pack_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32*)* }

@from_stdin = common dso_local global i64 0, align 8
@input_fd = common dso_local global i64 0, align 8
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [21 x i8] c"pack/tmp_pack_XXXXXX\00", align 1
@output_fd = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"unable to create '%s'\00", align 1
@nothread_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"cannot open packfile '%s'\00", align 1
@the_hash_algo = common dso_local global %struct.TYPE_3__* null, align 8
@input_ctx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @open_pack_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @open_pack_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i64, i64* @from_stdin, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %31

6:                                                ; preds = %1
  store i64 0, i64* @input_fd, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %11 = call i32 @odb_mkstemp(%struct.strbuf* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* @output_fd, align 4
  %12 = call i8* @strbuf_detach(%struct.strbuf* %3, i32* null)
  store i8* %12, i8** %2, align 8
  br label %29

13:                                               ; preds = %6
  %14 = load i8*, i8** %2, align 8
  %15 = load i32, i32* @O_CREAT, align 4
  %16 = load i32, i32* @O_EXCL, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @O_RDWR, align 4
  %19 = or i32 %17, %18
  %20 = call i64 (i8*, i32, ...) @open(i8* %14, i32 %19, i32 384)
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* @output_fd, align 4
  %22 = load i32, i32* @output_fd, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %13
  %25 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 @die_errno(i32 %25, i8* %26)
  br label %28

28:                                               ; preds = %24, %13
  br label %29

29:                                               ; preds = %28, %9
  %30 = load i32, i32* @output_fd, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nothread_data, i32 0, i32 0), align 4
  br label %44

31:                                               ; preds = %1
  %32 = load i8*, i8** %2, align 8
  %33 = load i32, i32* @O_RDONLY, align 4
  %34 = call i64 (i8*, i32, ...) @open(i8* %32, i32 %33)
  store i64 %34, i64* @input_fd, align 8
  %35 = load i64, i64* @input_fd, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i8*, i8** %2, align 8
  %40 = call i32 @die_errno(i32 %38, i8* %39)
  br label %41

41:                                               ; preds = %37, %31
  store i32 -1, i32* @output_fd, align 4
  %42 = load i64, i64* @input_fd, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nothread_data, i32 0, i32 0), align 4
  br label %44

44:                                               ; preds = %41, %29
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @the_hash_algo, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32 (i32*)*, i32 (i32*)** %46, align 8
  %48 = call i32 %47(i32* @input_ctx)
  %49 = load i8*, i8** %2, align 8
  ret i8* %49
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @odb_mkstemp(%struct.strbuf*, i8*) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

declare dso_local i64 @open(i8*, i32, ...) #2

declare dso_local i32 @die_errno(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
