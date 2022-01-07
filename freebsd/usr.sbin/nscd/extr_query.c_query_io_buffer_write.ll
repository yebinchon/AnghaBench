; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_query.c_query_io_buffer_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_query.c_query_io_buffer_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_state = type { i64, i32, i32, i32, i32*, i32* }

@query_socket_write = common dso_local global i32 0, align 4
@query_socket_read = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @query_io_buffer_write(%struct.query_state* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.query_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.query_state* %0, %struct.query_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = call i32 @TRACE_IN(i32 (%struct.query_state*, i8*, i64)* @query_io_buffer_write)
  %11 = load %struct.query_state*, %struct.query_state** %5, align 8
  %12 = getelementptr inbounds %struct.query_state, %struct.query_state* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.query_state*, %struct.query_state** %5, align 8
  %17 = getelementptr inbounds %struct.query_state, %struct.query_state* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %3
  store i32 -1, i32* %4, align 4
  br label %90

21:                                               ; preds = %15
  %22 = load %struct.query_state*, %struct.query_state** %5, align 8
  %23 = getelementptr inbounds %struct.query_state, %struct.query_state* %22, i32 0, i32 5
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.query_state*, %struct.query_state** %5, align 8
  %26 = getelementptr inbounds %struct.query_state, %struct.query_state* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.query_state*, %struct.query_state** %5, align 8
  %29 = getelementptr inbounds %struct.query_state, %struct.query_state* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = icmp ule i32* %24, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.query_state*, %struct.query_state** %5, align 8
  %36 = getelementptr inbounds %struct.query_state, %struct.query_state* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.query_state*, %struct.query_state** %5, align 8
  %39 = getelementptr inbounds %struct.query_state, %struct.query_state* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load %struct.query_state*, %struct.query_state** %5, align 8
  %43 = getelementptr inbounds %struct.query_state, %struct.query_state* %42, i32 0, i32 5
  %44 = load i32*, i32** %43, align 8
  %45 = ptrtoint i32* %41 to i64
  %46 = ptrtoint i32* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 4
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %21
  %53 = load i64, i64* %7, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %9, align 4
  br label %58

55:                                               ; preds = %21
  %56 = load i64, i64* %8, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load %struct.query_state*, %struct.query_state** %5, align 8
  %60 = getelementptr inbounds %struct.query_state, %struct.query_state* %59, i32 0, i32 5
  %61 = load i32*, i32** %60, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @memcpy(i32* %61, i8* %62, i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.query_state*, %struct.query_state** %5, align 8
  %67 = getelementptr inbounds %struct.query_state, %struct.query_state* %66, i32 0, i32 5
  %68 = load i32*, i32** %67, align 8
  %69 = sext i32 %65 to i64
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32* %70, i32** %67, align 8
  %71 = load i64, i64* %8, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %58
  %74 = load %struct.query_state*, %struct.query_state** %5, align 8
  %75 = getelementptr inbounds %struct.query_state, %struct.query_state* %74, i32 0, i32 1
  store i32 1, i32* %75, align 8
  %76 = load %struct.query_state*, %struct.query_state** %5, align 8
  %77 = getelementptr inbounds %struct.query_state, %struct.query_state* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.query_state*, %struct.query_state** %5, align 8
  %80 = getelementptr inbounds %struct.query_state, %struct.query_state* %79, i32 0, i32 5
  store i32* %78, i32** %80, align 8
  %81 = load i32, i32* @query_socket_write, align 4
  %82 = load %struct.query_state*, %struct.query_state** %5, align 8
  %83 = getelementptr inbounds %struct.query_state, %struct.query_state* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @query_socket_read, align 4
  %85 = load %struct.query_state*, %struct.query_state** %5, align 8
  %86 = getelementptr inbounds %struct.query_state, %struct.query_state* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %73, %58
  %88 = call i32 @TRACE_OUT(i32 (%struct.query_state*, i8*, i64)* @query_io_buffer_write)
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %87, %20
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @TRACE_IN(i32 (%struct.query_state*, i8*, i64)*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @TRACE_OUT(i32 (%struct.query_state*, i8*, i64)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
