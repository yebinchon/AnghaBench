; ModuleID = '/home/carl/AnghaBench/git/extr_archive-tar.c_write_tar_filter_archive.c'
source_filename = "/home/carl/AnghaBench/git/extr_archive-tar.c_write_tar_filter_archive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.child_process = type { i8**, i32, i32 }
%struct.archiver = type { i32 }
%struct.archiver_args = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@.str = private unnamed_addr constant [50 x i8] c"tar-filter archiver called with no filter defined\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" -%d\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"unable to start '%s' filter\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"unable to redirect descriptor\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"'%s' filter reported error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archiver*, %struct.archiver_args*)* @write_tar_filter_archive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_tar_filter_archive(%struct.archiver* %0, %struct.archiver_args* %1) #0 {
  %3 = alloca %struct.archiver*, align 8
  %4 = alloca %struct.archiver_args*, align 8
  %5 = alloca %struct.strbuf, align 8
  %6 = alloca %struct.child_process, align 8
  %7 = alloca [2 x i8*], align 16
  %8 = alloca i32, align 4
  store %struct.archiver* %0, %struct.archiver** %3, align 8
  store %struct.archiver_args* %1, %struct.archiver_args** %4, align 8
  %9 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %10 = bitcast %struct.child_process* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 16, i1 false)
  %11 = load %struct.archiver*, %struct.archiver** %3, align 8
  %12 = getelementptr inbounds %struct.archiver, %struct.archiver* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = call i32 @BUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %2
  %18 = load %struct.archiver*, %struct.archiver** %3, align 8
  %19 = getelementptr inbounds %struct.archiver, %struct.archiver* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strbuf_addstr(%struct.strbuf* %5, i32 %20)
  %22 = load %struct.archiver_args*, %struct.archiver_args** %4, align 8
  %23 = getelementptr inbounds %struct.archiver_args, %struct.archiver_args* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = load %struct.archiver_args*, %struct.archiver_args** %4, align 8
  %28 = getelementptr inbounds %struct.archiver_args, %struct.archiver_args* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strbuf_addf(%struct.strbuf* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %26, %17
  %32 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  store i8* %33, i8** %34, align 16
  %35 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  store i8* null, i8** %35, align 8
  %36 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %37 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 0
  store i8** %36, i8*** %37, align 8
  %38 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 1
  store i32 1, i32* %38, align 8
  %39 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 2
  store i32 -1, i32* %39, align 4
  %40 = call i64 @start_command(%struct.child_process* %6)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %44 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %45 = load i8*, i8** %44, align 16
  %46 = call i32 (i32, ...) @die_errno(i32 %43, i8* %45)
  br label %47

47:                                               ; preds = %42, %31
  %48 = call i32 @close(i32 1)
  %49 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @dup2(i32 %50, i32 1)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %55 = call i32 (i32, ...) @die_errno(i32 %54)
  br label %56

56:                                               ; preds = %53, %47
  %57 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @close(i32 %58)
  %60 = load %struct.archiver*, %struct.archiver** %3, align 8
  %61 = load %struct.archiver_args*, %struct.archiver_args** %4, align 8
  %62 = call i32 @write_tar_archive(%struct.archiver* %60, %struct.archiver_args* %61)
  store i32 %62, i32* %8, align 4
  %63 = call i32 @close(i32 1)
  %64 = call i64 @finish_command(%struct.child_process* %6)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %56
  %67 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %68 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %69 = load i8*, i8** %68, align 16
  %70 = call i32 @die(i32 %67, i8* %69)
  br label %71

71:                                               ; preds = %66, %56
  %72 = call i32 @strbuf_release(%struct.strbuf* %5)
  %73 = load i32, i32* %8, align 4
  ret i32 %73
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @BUG(i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #2

declare dso_local i64 @start_command(%struct.child_process*) #2

declare dso_local i32 @die_errno(i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @dup2(i32, i32) #2

declare dso_local i32 @write_tar_archive(%struct.archiver*, %struct.archiver_args*) #2

declare dso_local i64 @finish_command(%struct.child_process*) #2

declare dso_local i32 @die(i32, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
