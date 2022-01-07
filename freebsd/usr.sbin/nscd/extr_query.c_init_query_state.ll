; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_query.c_init_query_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_query.c_init_query_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.query_state = type { i32, i64, i32, i32, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@EVFILT_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%d_%d_\00", align 1
@CET_UNDEFINED = common dso_local global i32 0, align 4
@on_query_startup = common dso_local global i32 0, align 4
@on_query_destroy = common dso_local global i32 0, align 4
@query_socket_write = common dso_local global i32 0, align 4
@query_socket_read = common dso_local global i32 0, align 4
@s_configuration = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.query_state* @init_query_state(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.query_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.query_state*, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = call i32 @TRACE_IN(%struct.query_state* (i32, i64, i32, i32)* @init_query_state)
  %12 = call %struct.query_state* @calloc(i32 1, i32 88)
  store %struct.query_state* %12, %struct.query_state** %10, align 8
  %13 = load %struct.query_state*, %struct.query_state** %10, align 8
  %14 = icmp ne %struct.query_state* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.query_state*, %struct.query_state** %10, align 8
  %19 = getelementptr inbounds %struct.query_state, %struct.query_state* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @EVFILT_READ, align 4
  %21 = load %struct.query_state*, %struct.query_state** %10, align 8
  %22 = getelementptr inbounds %struct.query_state, %struct.query_state* %21, i32 0, i32 16
  store i32 %20, i32* %22, align 4
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.query_state*, %struct.query_state** %10, align 8
  %25 = getelementptr inbounds %struct.query_state, %struct.query_state* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.query_state*, %struct.query_state** %10, align 8
  %28 = getelementptr inbounds %struct.query_state, %struct.query_state* %27, i32 0, i32 15
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.query_state*, %struct.query_state** %10, align 8
  %31 = getelementptr inbounds %struct.query_state, %struct.query_state* %30, i32 0, i32 14
  store i32 %29, i32* %31, align 4
  %32 = load %struct.query_state*, %struct.query_state** %10, align 8
  %33 = getelementptr inbounds %struct.query_state, %struct.query_state* %32, i32 0, i32 3
  store i32 -1, i32* %33, align 4
  %34 = load %struct.query_state*, %struct.query_state** %10, align 8
  %35 = getelementptr inbounds %struct.query_state, %struct.query_state* %34, i32 0, i32 2
  store i32 -1, i32* %35, align 8
  %36 = load %struct.query_state*, %struct.query_state** %10, align 8
  %37 = getelementptr inbounds %struct.query_state, %struct.query_state* %36, i32 0, i32 12
  %38 = load %struct.query_state*, %struct.query_state** %10, align 8
  %39 = getelementptr inbounds %struct.query_state, %struct.query_state* %38, i32 0, i32 15
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.query_state*, %struct.query_state** %10, align 8
  %42 = getelementptr inbounds %struct.query_state, %struct.query_state* %41, i32 0, i32 14
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @asprintf(i32* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %49

46:                                               ; preds = %4
  %47 = load %struct.query_state*, %struct.query_state** %10, align 8
  %48 = call i32 @free(%struct.query_state* %47)
  store %struct.query_state* null, %struct.query_state** %5, align 8
  br label %90

49:                                               ; preds = %4
  %50 = load %struct.query_state*, %struct.query_state** %10, align 8
  %51 = getelementptr inbounds %struct.query_state, %struct.query_state* %50, i32 0, i32 12
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @strlen(i32 %52)
  %54 = load %struct.query_state*, %struct.query_state** %10, align 8
  %55 = getelementptr inbounds %struct.query_state, %struct.query_state* %54, i32 0, i32 13
  store i32 %53, i32* %55, align 8
  %56 = load %struct.query_state*, %struct.query_state** %10, align 8
  %57 = getelementptr inbounds %struct.query_state, %struct.query_state* %56, i32 0, i32 11
  %58 = load i32, i32* @CET_UNDEFINED, align 4
  %59 = call i32 @init_comm_element(i32* %57, i32 %58)
  %60 = load %struct.query_state*, %struct.query_state** %10, align 8
  %61 = getelementptr inbounds %struct.query_state, %struct.query_state* %60, i32 0, i32 10
  %62 = load i32, i32* @CET_UNDEFINED, align 4
  %63 = call i32 @init_comm_element(i32* %61, i32 %62)
  %64 = load i32, i32* @on_query_startup, align 4
  %65 = load %struct.query_state*, %struct.query_state** %10, align 8
  %66 = getelementptr inbounds %struct.query_state, %struct.query_state* %65, i32 0, i32 9
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @on_query_destroy, align 4
  %68 = load %struct.query_state*, %struct.query_state** %10, align 8
  %69 = getelementptr inbounds %struct.query_state, %struct.query_state* %68, i32 0, i32 8
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @query_socket_write, align 4
  %71 = load %struct.query_state*, %struct.query_state** %10, align 8
  %72 = getelementptr inbounds %struct.query_state, %struct.query_state* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @query_socket_read, align 4
  %74 = load %struct.query_state*, %struct.query_state** %10, align 8
  %75 = getelementptr inbounds %struct.query_state, %struct.query_state* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 4
  %76 = load %struct.query_state*, %struct.query_state** %10, align 8
  %77 = getelementptr inbounds %struct.query_state, %struct.query_state* %76, i32 0, i32 5
  %78 = call i32 @get_time_func(i32* %77)
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s_configuration, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.query_state*, %struct.query_state** %10, align 8
  %83 = getelementptr inbounds %struct.query_state, %struct.query_state* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 8
  %85 = load %struct.query_state*, %struct.query_state** %10, align 8
  %86 = getelementptr inbounds %struct.query_state, %struct.query_state* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i64 0, i64* %87, align 8
  %88 = call i32 @TRACE_OUT(%struct.query_state* (i32, i64, i32, i32)* @init_query_state)
  %89 = load %struct.query_state*, %struct.query_state** %10, align 8
  store %struct.query_state* %89, %struct.query_state** %5, align 8
  br label %90

90:                                               ; preds = %49, %46
  %91 = load %struct.query_state*, %struct.query_state** %5, align 8
  ret %struct.query_state* %91
}

declare dso_local i32 @TRACE_IN(%struct.query_state* (i32, i64, i32, i32)*) #1

declare dso_local %struct.query_state* @calloc(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @asprintf(i32*, i8*, i32, i32) #1

declare dso_local i32 @free(%struct.query_state*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @init_comm_element(i32*, i32) #1

declare dso_local i32 @get_time_func(i32*) #1

declare dso_local i32 @TRACE_OUT(%struct.query_state* (i32, i64, i32, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
