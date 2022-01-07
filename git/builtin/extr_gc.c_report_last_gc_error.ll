; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_gc.c_report_last_gc_error.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_gc.c_report_last_gc_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.stat = type { i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"gc.log\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"cannot stat '%s'\00", align 1
@gc_log_expire_time = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"cannot read '%s'\00", align 1
@.str.3 = private unnamed_addr constant [156 x i8] c"The last gc run reported the following. Please correct the root cause\0Aand remove %s.\0AAutomatic cleanup will not be performed until the file is removed.\0A\0A%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @report_last_gc_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @report_last_gc_error() #0 {
  %1 = alloca %struct.strbuf, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca i8*, align 8
  %6 = bitcast %struct.strbuf* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %2, align 4
  %7 = call i8* @git_pathdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @stat(i8* %8, %struct.stat* %4)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %0
  %12 = load i64, i64* @errno, align 8
  %13 = load i64, i64* @ENOENT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %47

16:                                               ; preds = %11
  %17 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @error_errno(i32 %17, i8* %18)
  store i32 %19, i32* %2, align 4
  br label %47

20:                                               ; preds = %0
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @gc_log_expire_time, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %47

26:                                               ; preds = %20
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @strbuf_read_file(%struct.strbuf* %1, i8* %27, i32 0)
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* %3, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @error_errno(i32 %32, i8* %33)
  store i32 %34, i32* %2, align 4
  br label %45

35:                                               ; preds = %26
  %36 = load i64, i64* %3, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = call i32 @_(i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %1, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @warning(i32 %39, i8* %40, i32 %42)
  store i32 1, i32* %2, align 4
  br label %44

44:                                               ; preds = %38, %35
  br label %45

45:                                               ; preds = %44, %31
  %46 = call i32 @strbuf_release(%struct.strbuf* %1)
  br label %47

47:                                               ; preds = %45, %25, %16, %15
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @free(i8* %48)
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @git_pathdup(i8*) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @error_errno(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i64 @strbuf_read_file(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @warning(i32, i8*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
