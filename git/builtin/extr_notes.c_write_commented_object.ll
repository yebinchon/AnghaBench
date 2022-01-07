; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_notes.c_write_commented_object.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_notes.c_write_commented_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i8**, i32, i32, i32, i64 }
%struct.strbuf = type { i32, i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"--stat\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"--no-notes\00", align 1
@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"unable to start 'show' for object '%s'\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"could not read 'show' output\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"failed to finish 'show' for object '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.object_id*)* @write_commented_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_commented_object(i32 %0, %struct.object_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca [5 x i8*], align 16
  %6 = alloca %struct.child_process, align 8
  %7 = alloca %struct.strbuf, align 4
  %8 = alloca %struct.strbuf, align 4
  store i32 %0, i32* %3, align 4
  store %struct.object_id* %1, %struct.object_id** %4, align 8
  %9 = getelementptr inbounds [5 x i8*], [5 x i8*]* %5, i64 0, i64 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  %13 = load %struct.object_id*, %struct.object_id** %4, align 8
  %14 = call i8* @oid_to_hex(%struct.object_id* %13)
  store i8* %14, i8** %12, align 8
  %15 = getelementptr inbounds i8*, i8** %12, i64 1
  store i8* null, i8** %15, align 8
  %16 = bitcast %struct.child_process* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 32, i1 false)
  %17 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %18 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %19 = getelementptr inbounds [5 x i8*], [5 x i8*]* %5, i64 0, i64 0
  %20 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 0
  store i8** %19, i8*** %20, align 8
  %21 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 1
  store i32 1, i32* %21, align 8
  %22 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 2
  store i32 -1, i32* %22, align 4
  %23 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 3
  store i32 1, i32* %24, align 8
  %25 = call i64 @start_command(%struct.child_process* %6)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %29 = load %struct.object_id*, %struct.object_id** %4, align 8
  %30 = call i8* @oid_to_hex(%struct.object_id* %29)
  %31 = call i32 @die(i32 %28, i8* %30)
  br label %32

32:                                               ; preds = %27, %2
  %33 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @strbuf_read(%struct.strbuf* %7, i32 %34, i32 0)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %39 = call i32 @die_errno(i32 %38)
  br label %40

40:                                               ; preds = %37, %32
  %41 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @strbuf_add_commented_lines(%struct.strbuf* %8, i32 %42, i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @write_or_die(i32 %46, i32 %48, i32 %50)
  %52 = call i32 @strbuf_release(%struct.strbuf* %8)
  %53 = call i32 @strbuf_release(%struct.strbuf* %7)
  %54 = call i64 @finish_command(%struct.child_process* %6)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %40
  %57 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %58 = load %struct.object_id*, %struct.object_id** %4, align 8
  %59 = call i8* @oid_to_hex(%struct.object_id* %58)
  %60 = call i32 @die(i32 %57, i8* %59)
  br label %61

61:                                               ; preds = %56, %40
  ret void
}

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @start_command(%struct.child_process*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @strbuf_read(%struct.strbuf*, i32, i32) #1

declare dso_local i32 @die_errno(i32) #1

declare dso_local i32 @strbuf_add_commented_lines(%struct.strbuf*, i32, i32) #1

declare dso_local i32 @write_or_die(i32, i32, i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i64 @finish_command(%struct.child_process*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
