; ModuleID = '/home/carl/AnghaBench/git/extr_bundle.c_write_pack_data.c'
source_filename = "/home/carl/AnghaBench/git/extr_bundle.c_write_pack_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.rev_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.object* }
%struct.object = type { i32, i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@.str = private unnamed_addr constant [13 x i8] c"pack-objects\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"--all-progress-implied\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"--stdout\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"--thin\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"--delta-base-offset\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"unable to dup bundle descriptor\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Could not spawn pack-objects\00", align 1
@UNINTERESTING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@the_hash_algo = common dso_local global %struct.TYPE_6__* null, align 8
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"pack-objects died\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.rev_info*)* @write_pack_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_pack_data(i32 %0, %struct.rev_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.rev_info*, align 8
  %6 = alloca %struct.child_process, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.object*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.rev_info* %1, %struct.rev_info** %5, align 8
  %9 = bitcast %struct.child_process* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 16, i1 false)
  %10 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 3
  %11 = call i32 @argv_array_pushl(i32* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %12 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 0
  store i32 -1, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  %14 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 2
  store i32 1, i32* %15, align 4
  %16 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dup(i32 %21)
  %23 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %29 = call i32 @error_errno(i32 %28)
  %30 = call i32 @child_process_clear(%struct.child_process* %6)
  store i32 -1, i32* %3, align 4
  br label %92

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %2
  %33 = call i64 @start_command(%struct.child_process* %6)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %37 = call i32 @error(i32 %36)
  store i32 %37, i32* %3, align 4
  br label %92

38:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %79, %38
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %42 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %40, %44
  br i1 %45, label %46, label %82

46:                                               ; preds = %39
  %47 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %48 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.object*, %struct.object** %54, align 8
  store %struct.object* %55, %struct.object** %8, align 8
  %56 = load %struct.object*, %struct.object** %8, align 8
  %57 = getelementptr inbounds %struct.object, %struct.object* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @UNINTERESTING, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %46
  %63 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @write_or_die(i32 %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 1)
  br label %66

66:                                               ; preds = %62, %46
  %67 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.object*, %struct.object** %8, align 8
  %70 = getelementptr inbounds %struct.object, %struct.object* %69, i32 0, i32 1
  %71 = call i8* @oid_to_hex(i32* %70)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** @the_hash_algo, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @write_or_die(i32 %68, i8* %71, i32 %74)
  %76 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @write_or_die(i32 %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 1)
  br label %79

79:                                               ; preds = %66
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %39

82:                                               ; preds = %39
  %83 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @close(i32 %84)
  %86 = call i64 @finish_command(%struct.child_process* %6)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %90 = call i32 @error(i32 %89)
  store i32 %90, i32* %3, align 4
  br label %92

91:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %88, %35, %27
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @argv_array_pushl(i32*, i8*, i8*, i8*, i8*, i8*, i32*) #2

declare dso_local i32 @dup(i32) #2

declare dso_local i32 @error_errno(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @child_process_clear(%struct.child_process*) #2

declare dso_local i64 @start_command(%struct.child_process*) #2

declare dso_local i32 @error(i32) #2

declare dso_local i32 @write_or_die(i32, i8*, i32) #2

declare dso_local i8* @oid_to_hex(i32*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @finish_command(%struct.child_process*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
