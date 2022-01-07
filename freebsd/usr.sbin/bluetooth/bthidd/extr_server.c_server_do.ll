; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_server.c_server_do.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_server.c_server_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i32, i32 }
%struct.timeval = type { i32, i64 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Could not select(%d, %p, %p). %s (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @server_do(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 4
  %17 = call i32 @memcpy(i32* %5, i32* %16, i32 4)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = call i32 @memcpy(i32* %6, i32* %19, i32 4)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  %25 = call i64 @select(i64 %24, i32* %5, i32* %6, i32* null, %struct.timeval* %4)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %1
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @EINTR, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i64 0, i64* %2, align 8
  br label %99

33:                                               ; preds = %28
  %34 = load i32, i32* @LOG_ERR, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  %39 = load i64, i64* @errno, align 8
  %40 = call i32 @strerror(i64 %39)
  %41 = load i64, i64* @errno, align 8
  %42 = call i32 @syslog(i32 %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %38, i32* %5, i32* %6, i32 %40, i64 %41)
  store i64 -1, i64* %2, align 8
  br label %99

43:                                               ; preds = %1
  store i64 0, i64* %8, align 8
  br label %44

44:                                               ; preds = %95, %43
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  %50 = icmp slt i64 %45, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i64, i64* %7, align 8
  %53 = icmp sgt i64 %52, 0
  br label %54

54:                                               ; preds = %51, %44
  %55 = phi i1 [ false, %44 ], [ %53, %51 ]
  br i1 %55, label %56, label %98

56:                                               ; preds = %54
  %57 = load i64, i64* %8, align 8
  %58 = call i64 @FD_ISSET(i64 %57, i32* %5)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %83

60:                                               ; preds = %56
  %61 = load i64, i64* %7, align 8
  %62 = add nsw i64 %61, -1
  store i64 %62, i64* %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %60
  %69 = load i64, i64* %8, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %69, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68, %60
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @server_accept(%struct.TYPE_6__* %75, i64 %76)
  br label %82

78:                                               ; preds = %68
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %80 = load i64, i64* %8, align 8
  %81 = call i32 @server_process(%struct.TYPE_6__* %79, i64 %80)
  br label %82

82:                                               ; preds = %78, %74
  br label %94

83:                                               ; preds = %56
  %84 = load i64, i64* %8, align 8
  %85 = call i64 @FD_ISSET(i64 %84, i32* %6)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load i64, i64* %7, align 8
  %89 = add nsw i64 %88, -1
  store i64 %89, i64* %7, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @client_connect(%struct.TYPE_6__* %90, i64 %91)
  br label %93

93:                                               ; preds = %87, %83
  br label %94

94:                                               ; preds = %93, %82
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %8, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %8, align 8
  br label %44

98:                                               ; preds = %54
  store i64 0, i64* %2, align 8
  br label %99

99:                                               ; preds = %98, %33, %32
  %100 = load i64, i64* %2, align 8
  ret i64 %100
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @syslog(i32, i8*, i64, i32*, i32*, i32, i64) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i64 @FD_ISSET(i64, i32*) #1

declare dso_local i32 @server_accept(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @server_process(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @client_connect(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
