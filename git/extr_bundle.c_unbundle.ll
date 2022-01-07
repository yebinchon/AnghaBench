; ModuleID = '/home/carl/AnghaBench/git/extr_bundle.c_unbundle.c'
source_filename = "/home/carl/AnghaBench/git/extr_bundle.c_unbundle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i8**, i32, i32, i32 }
%struct.repository = type { i32 }
%struct.bundle_header = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"index-pack\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"--fix-thin\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"--stdin\00", align 1
@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@BUNDLE_VERBOSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"index-pack died\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unbundle(%struct.repository* %0, %struct.bundle_header* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.repository*, align 8
  %7 = alloca %struct.bundle_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [5 x i8*], align 16
  %11 = alloca %struct.child_process, align 8
  store %struct.repository* %0, %struct.repository** %6, align 8
  store %struct.bundle_header* %1, %struct.bundle_header** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = bitcast [5 x i8*]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false)
  %13 = bitcast i8* %12 to [5 x i8*]*
  %14 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8** %14, align 16
  %15 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8** %15, align 8
  %16 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i32 0, i32 2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8** %16, align 16
  %17 = bitcast %struct.child_process* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 24, i1 false)
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @BUNDLE_VERBOSE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i64 0, i64 3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %23, align 8
  br label %24

24:                                               ; preds = %22, %4
  %25 = load %struct.repository*, %struct.repository** %6, align 8
  %26 = load %struct.bundle_header*, %struct.bundle_header** %7, align 8
  %27 = call i64 @verify_bundle(%struct.repository* %25, %struct.bundle_header* %26, i32 0)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 -1, i32* %5, align 4
  br label %43

30:                                               ; preds = %24
  %31 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i64 0, i64 0
  %32 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 0
  store i8** %31, i8*** %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 1
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 2
  store i32 1, i32* %35, align 4
  %36 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 3
  store i32 1, i32* %36, align 8
  %37 = call i64 @run_command(%struct.child_process* %11)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %41 = call i32 @error(i32 %40)
  store i32 %41, i32* %5, align 4
  br label %43

42:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %39, %29
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @verify_bundle(%struct.repository*, %struct.bundle_header*, i32) #2

declare dso_local i64 @run_command(%struct.child_process*) #2

declare dso_local i32 @error(i32) #2

declare dso_local i32 @_(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
