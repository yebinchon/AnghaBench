; ModuleID = '/home/carl/AnghaBench/git/extr_bisect.c_is_expected_rev.c'
source_filename = "/home/carl/AnghaBench/git/extr_bisect.c_is_expected_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.object_id = type { i32 }
%struct.stat = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*)* @is_expected_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_expected_rev(%struct.object_id* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat, align 4
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %3, align 8
  %9 = call i8* (...) @git_path_bisect_expected_rev()
  store i8* %9, i8** %4, align 8
  %10 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %8, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @stat(i8* %11, %struct.stat* %5)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @S_ISREG(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %1
  store i32 0, i32* %2, align 4
  br label %45

20:                                               ; preds = %14
  %21 = load i8*, i8** %4, align 8
  %22 = call i32* @fopen_or_warn(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %45

26:                                               ; preds = %20
  %27 = load i32*, i32** %7, align 8
  %28 = call i64 @strbuf_getline_lf(%struct.strbuf* %6, i32* %27)
  %29 = load i64, i64* @EOF, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.object_id*, %struct.object_id** %3, align 8
  %35 = call i32 @oid_to_hex(%struct.object_id* %34)
  %36 = call i32 @strcmp(i32 %33, i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %31, %26
  %41 = call i32 @strbuf_release(%struct.strbuf* %6)
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @fclose(i32* %42)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %40, %25, %19
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i8* @git_path_bisect_expected_rev(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32* @fopen_or_warn(i8*, i8*) #1

declare dso_local i64 @strbuf_getline_lf(%struct.strbuf*, i32*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
