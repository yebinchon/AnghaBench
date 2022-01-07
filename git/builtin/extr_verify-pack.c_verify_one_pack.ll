; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_verify-pack.c_verify_one_pack.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_verify-pack.c_verify_one_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i8**, i32 }
%struct.strbuf = type { i8* }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@.str = private unnamed_addr constant [11 x i8] c"index-pack\00", align 1
@__const.verify_one_pack.argv = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i8* null], align 16
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@VERIFY_PACK_VERBOSE = common dso_local global i32 0, align 4
@VERIFY_PACK_STAT_ONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"--verify-stat-only\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"--verify-stat\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"--verify\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".idx\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c".pack\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%s: bad\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%s: ok\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @verify_one_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_one_pack(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.child_process, align 8
  %6 = alloca [4 x i8*], align 16
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = bitcast %struct.child_process* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 16, i1 false)
  %12 = bitcast [4 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([4 x i8*]* @__const.verify_one_pack.argv to i8*), i64 32, i1 false)
  %13 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @VERIFY_PACK_VERBOSE, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @VERIFY_PACK_STAT_ONLY, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %23, align 8
  br label %32

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %28, align 8
  br label %31

29:                                               ; preds = %24
  %30 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %30, align 8
  br label %31

31:                                               ; preds = %29, %27
  br label %32

32:                                               ; preds = %31, %22
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @strbuf_addstr(%struct.strbuf* %7, i8* %33)
  %35 = call i64 @strbuf_strip_suffix(%struct.strbuf* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @ends_with(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37, %32
  %43 = call i32 @strbuf_addstr(%struct.strbuf* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %37
  %45 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 2
  store i8* %46, i8** %47, align 16
  %48 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 0
  %49 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 0
  store i8** %48, i8*** %49, align 8
  %50 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 1
  store i32 1, i32* %50, align 8
  %51 = call i32 @run_command(%struct.child_process* %5)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %54, %44
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %62)
  br label %72

64:                                               ; preds = %57
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %67, %64
  br label %72

72:                                               ; preds = %71, %60
  br label %73

73:                                               ; preds = %72, %54
  %74 = call i32 @strbuf_release(%struct.strbuf* %7)
  %75 = load i32, i32* %10, align 4
  ret i32 %75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i64 @strbuf_strip_suffix(%struct.strbuf*, i8*) #2

declare dso_local i32 @ends_with(i8*, i8*) #2

declare dso_local i32 @run_command(%struct.child_process*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
