; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_set_connectivity_errors.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_set_connectivity_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check_connected_options = type { i32 }
%struct.command = type { i64, i8*, %struct.command* }
%struct.shallow_info = type { i64* }

@CHECK_CONNECTED_INIT = common dso_local global %struct.check_connected_options zeroinitializer, align 4
@shallow_update = common dso_local global i64 0, align 8
@tmp_objdir = common dso_local global i32 0, align 4
@command_singleton_iterator = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"missing necessary objects\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.command*, %struct.shallow_info*)* @set_connectivity_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_connectivity_errors(%struct.command* %0, %struct.shallow_info* %1) #0 {
  %3 = alloca %struct.command*, align 8
  %4 = alloca %struct.shallow_info*, align 8
  %5 = alloca %struct.command*, align 8
  %6 = alloca %struct.command*, align 8
  %7 = alloca %struct.check_connected_options, align 4
  store %struct.command* %0, %struct.command** %3, align 8
  store %struct.shallow_info* %1, %struct.shallow_info** %4, align 8
  %8 = load %struct.command*, %struct.command** %3, align 8
  store %struct.command* %8, %struct.command** %5, align 8
  br label %9

9:                                                ; preds = %39, %2
  %10 = load %struct.command*, %struct.command** %5, align 8
  %11 = icmp ne %struct.command* %10, null
  br i1 %11, label %12, label %43

12:                                               ; preds = %9
  %13 = load %struct.command*, %struct.command** %5, align 8
  store %struct.command* %13, %struct.command** %6, align 8
  %14 = bitcast %struct.check_connected_options* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.check_connected_options* @CHECK_CONNECTED_INIT to i8*), i64 4, i1 false)
  %15 = load i64, i64* @shallow_update, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load %struct.shallow_info*, %struct.shallow_info** %4, align 8
  %19 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load %struct.command*, %struct.command** %5, align 8
  %22 = getelementptr inbounds %struct.command, %struct.command* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i64, i64* %20, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %39

28:                                               ; preds = %17, %12
  %29 = load i32, i32* @tmp_objdir, align 4
  %30 = call i32 @tmp_objdir_env(i32 %29)
  %31 = getelementptr inbounds %struct.check_connected_options, %struct.check_connected_options* %7, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @command_singleton_iterator, align 4
  %33 = call i32 @check_connected(i32 %32, %struct.command** %6, %struct.check_connected_options* %7)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %39

36:                                               ; preds = %28
  %37 = load %struct.command*, %struct.command** %5, align 8
  %38 = getelementptr inbounds %struct.command, %struct.command* %37, i32 0, i32 1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8** %38, align 8
  br label %39

39:                                               ; preds = %36, %35, %27
  %40 = load %struct.command*, %struct.command** %5, align 8
  %41 = getelementptr inbounds %struct.command, %struct.command* %40, i32 0, i32 2
  %42 = load %struct.command*, %struct.command** %41, align 8
  store %struct.command* %42, %struct.command** %5, align 8
  br label %9

43:                                               ; preds = %9
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @tmp_objdir_env(i32) #2

declare dso_local i32 @check_connected(i32, %struct.command**, %struct.check_connected_options*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
