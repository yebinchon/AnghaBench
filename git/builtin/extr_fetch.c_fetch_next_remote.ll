; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fetch.c_fetch_next_remote.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fetch.c_fetch_next_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32 }
%struct.strbuf = type { i32 }
%struct.parallel_fetch_state = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@verbosity = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"Fetching %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.child_process*, %struct.strbuf*, i8*, i8**)* @fetch_next_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_next_remote(%struct.child_process* %0, %struct.strbuf* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.child_process*, align 8
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.parallel_fetch_state*, align 8
  %11 = alloca i8*, align 8
  store %struct.child_process* %0, %struct.child_process** %6, align 8
  store %struct.strbuf* %1, %struct.strbuf** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.parallel_fetch_state*
  store %struct.parallel_fetch_state* %13, %struct.parallel_fetch_state** %10, align 8
  %14 = load %struct.parallel_fetch_state*, %struct.parallel_fetch_state** %10, align 8
  %15 = getelementptr inbounds %struct.parallel_fetch_state, %struct.parallel_fetch_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %4
  %19 = load %struct.parallel_fetch_state*, %struct.parallel_fetch_state** %10, align 8
  %20 = getelementptr inbounds %struct.parallel_fetch_state, %struct.parallel_fetch_state* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.parallel_fetch_state*, %struct.parallel_fetch_state** %10, align 8
  %23 = getelementptr inbounds %struct.parallel_fetch_state, %struct.parallel_fetch_state* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %21, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18, %4
  store i32 0, i32* %5, align 4
  br label %63

29:                                               ; preds = %18
  %30 = load %struct.parallel_fetch_state*, %struct.parallel_fetch_state** %10, align 8
  %31 = getelementptr inbounds %struct.parallel_fetch_state, %struct.parallel_fetch_state* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load %struct.parallel_fetch_state*, %struct.parallel_fetch_state** %10, align 8
  %36 = getelementptr inbounds %struct.parallel_fetch_state, %struct.parallel_fetch_state* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %37
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %11, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load i8**, i8*** %9, align 8
  store i8* %42, i8** %43, align 8
  %44 = load %struct.child_process*, %struct.child_process** %6, align 8
  %45 = getelementptr inbounds %struct.child_process, %struct.child_process* %44, i32 0, i32 1
  %46 = load %struct.parallel_fetch_state*, %struct.parallel_fetch_state** %10, align 8
  %47 = getelementptr inbounds %struct.parallel_fetch_state, %struct.parallel_fetch_state* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @argv_array_pushv(i32* %45, i32 %48)
  %50 = load %struct.child_process*, %struct.child_process** %6, align 8
  %51 = getelementptr inbounds %struct.child_process, %struct.child_process* %50, i32 0, i32 1
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 @argv_array_push(i32* %51, i8* %52)
  %54 = load %struct.child_process*, %struct.child_process** %6, align 8
  %55 = getelementptr inbounds %struct.child_process, %struct.child_process* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = load i64, i64* @verbosity, align 8
  %57 = icmp sge i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %29
  %59 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @printf(i8* %59, i8* %60)
  br label %62

62:                                               ; preds = %58, %29
  store i32 1, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %28
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @argv_array_pushv(i32*, i32) #1

declare dso_local i32 @argv_array_push(i32*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
