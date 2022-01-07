; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge.c_save_state.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge.c_save_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i8**, i32, i32 }
%struct.strbuf = type { i32, i32 }
%struct.object_id = type { i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c"stash\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@__const.save_state.argv = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"could not run stash.\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"stash failed\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"not a valid object: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*)* @save_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_state(%struct.object_id* %0) #0 {
  %2 = alloca %struct.object_id*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.child_process, align 8
  %5 = alloca %struct.strbuf, align 4
  %6 = alloca [3 x i8*], align 16
  %7 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %2, align 8
  %8 = bitcast %struct.child_process* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 16, i1 false)
  %9 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %10 = bitcast [3 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([3 x i8*]* @__const.save_state.argv to i8*), i64 24, i1 false)
  store i32 -1, i32* %7, align 4
  %11 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 0
  %12 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 0
  store i8** %11, i8*** %12, align 8
  %13 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 1
  store i32 -1, i32* %13, align 8
  %14 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 2
  store i32 1, i32* %14, align 4
  %15 = call i64 @start_command(%struct.child_process* %4)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 (i32, ...) @die(i32 %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @strbuf_read(%struct.strbuf* %5, i32 %22, i32 1024)
  store i32 %23, i32* %3, align 4
  %24 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @close(i32 %25)
  %27 = call i64 @finish_command(%struct.child_process* %4)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29, %20
  %33 = call i32 @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %34 = call i32 (i32, ...) @die(i32 %33)
  br label %40

35:                                               ; preds = %29
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  br label %56

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %39, %32
  %41 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 1
  %44 = call i32 @strbuf_setlen(%struct.strbuf* %5, i32 %43)
  %45 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.object_id*, %struct.object_id** %2, align 8
  %48 = call i64 @get_oid(i32 %46, %struct.object_id* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %40
  %51 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %52 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32, ...) @die(i32 %51, i32 %53)
  br label %55

55:                                               ; preds = %50, %40
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %55, %38
  %57 = call i32 @strbuf_release(%struct.strbuf* %5)
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @start_command(%struct.child_process*) #2

declare dso_local i32 @die(i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_read(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @finish_command(%struct.child_process*) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #2

declare dso_local i64 @get_oid(i32, %struct.object_id*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
