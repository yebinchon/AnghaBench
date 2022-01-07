; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_server.c_server_do.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_server.c_server_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i64, i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Could not select(%d, %p). %s (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @server_do(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = icmp ne %struct.TYPE_8__* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = call i32 @memcpy(i32* %4, i32* %12, i32 4)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 1
  %18 = call i64 @select(i64 %17, i32* %4, i32* null, i32* null, i32* null)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %1
  %22 = load i64, i64* @errno, align 8
  %23 = load i64, i64* @EINTR, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i64 0, i64* %2, align 8
  br label %91

26:                                               ; preds = %21
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  %31 = load i64, i64* @errno, align 8
  %32 = call i32 @strerror(i64 %31)
  %33 = load i64, i64* @errno, align 8
  %34 = call i32 @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %30, i32* %4, i32 %32, i64 %33)
  store i64 -1, i64* %2, align 8
  br label %91

35:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  br label %36

36:                                               ; preds = %87, %35
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  %42 = icmp slt i64 %37, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i64, i64* %5, align 8
  %45 = icmp sgt i64 %44, 0
  br label %46

46:                                               ; preds = %43, %36
  %47 = phi i1 [ false, %36 ], [ %45, %43 ]
  br i1 %47, label %48, label %90

48:                                               ; preds = %46
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @FD_ISSET(i64 %49, i32* %4)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  br label %87

53:                                               ; preds = %48
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @assert(i32 %60)
  %62 = load i64, i64* %5, align 8
  %63 = add nsw i64 %62, -1
  store i64 %63, i64* %5, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %53
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @server_accept_client(%struct.TYPE_8__* %73, i64 %74)
  br label %86

76:                                               ; preds = %53
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %78 = load i64, i64* %6, align 8
  %79 = call i64 @server_process_request(%struct.TYPE_8__* %77, i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %83 = load i64, i64* %6, align 8
  %84 = call i32 @server_close_fd(%struct.TYPE_8__* %82, i64 %83)
  br label %85

85:                                               ; preds = %81, %76
  br label %86

86:                                               ; preds = %85, %72
  br label %87

87:                                               ; preds = %86, %52
  %88 = load i64, i64* %6, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %6, align 8
  br label %36

90:                                               ; preds = %46
  store i64 0, i64* %2, align 8
  br label %91

91:                                               ; preds = %90, %26, %25
  %92 = load i64, i64* %2, align 8
  ret i64 %92
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @select(i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @log_err(i8*, i64, i32*, i32, i64) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @FD_ISSET(i64, i32*) #1

declare dso_local i32 @server_accept_client(%struct.TYPE_8__*, i64) #1

declare dso_local i64 @server_process_request(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @server_close_fd(%struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
