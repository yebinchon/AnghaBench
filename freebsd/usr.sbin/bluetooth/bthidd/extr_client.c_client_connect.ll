; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_client.c_client_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_client.c_client_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.TYPE_11__ = type { i32, i64, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ERROR = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Could not get socket error for %s. %s (%d)\00", align 1
@errno = common dso_local global i64 0, align 8
@connect_in_progress = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not connect to %s. %s (%d)\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Could not open interrupt channel to %s. %s (%d)\00", align 1
@OPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @client_connect(%struct.TYPE_12__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = icmp ne %struct.TYPE_12__* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i64, i64* %5, align 8
  %15 = icmp sge i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call %struct.TYPE_11__* @session_by_fd(%struct.TYPE_12__* %18, i64 %19)
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %6, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = icmp ne %struct.TYPE_11__* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 3
  %27 = call %struct.TYPE_10__* @get_hid_device(i32* %26)
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %7, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %29 = icmp ne %struct.TYPE_10__* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  store i64 0, i64* %8, align 8
  store i32 8, i32* %9, align 4
  %32 = load i64, i64* %5, align 8
  %33 = load i32, i32* @SOL_SOCKET, align 4
  %34 = load i32, i32* @SO_ERROR, align 4
  %35 = call i64 @getsockopt(i64 %32, i32 %33, i32 %34, i64* %8, i32* %9)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %2
  %38 = load i32, i32* @LOG_ERR, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 3
  %41 = call i32 @bt_ntoa(i32* %40, i32* null)
  %42 = load i64, i64* @errno, align 8
  %43 = call i32 @strerror(i64 %42)
  %44 = load i64, i64* @errno, align 8
  %45 = call i32 @syslog(i32 %38, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %43, i64 %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = call i32 @session_close(%struct.TYPE_11__* %46)
  store i64 0, i64* @connect_in_progress, align 8
  store i64 -1, i64* %3, align 8
  br label %168

48:                                               ; preds = %2
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load i32, i32* @LOG_ERR, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 3
  %55 = call i32 @bt_ntoa(i32* %54, i32* null)
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @strerror(i64 %56)
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @syslog(i32 %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %57, i64 %58)
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %61 = call i32 @session_close(%struct.TYPE_11__* %60)
  store i64 0, i64* @connect_in_progress, align 8
  store i64 0, i64* %3, align 8
  br label %168

62:                                               ; preds = %48
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %157 [
    i32 129, label %66
    i32 128, label %132
  ]

66:                                               ; preds = %62
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %5, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, -1
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @client_socket(i32* %81, i32 %84)
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %66
  %93 = load i32, i32* @LOG_ERR, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 3
  %96 = call i32 @bt_ntoa(i32* %95, i32* null)
  %97 = load i64, i64* @errno, align 8
  %98 = call i32 @strerror(i64 %97)
  %99 = load i64, i64* @errno, align 8
  %100 = call i32 @syslog(i32 %93, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32 %98, i64 %99)
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %102 = call i32 @session_close(%struct.TYPE_11__* %101)
  store i64 0, i64* @connect_in_progress, align 8
  store i64 -1, i64* %3, align 8
  br label %168

103:                                              ; preds = %66
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  store i32 128, i32* %105, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 2
  %112 = call i32 @FD_SET(i64 %109, i32* %111)
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp sgt i64 %116, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %103
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %121, %103
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  store i32 0, i32* %130, align 4
  %131 = call i32 (...) @write_hids_file()
  br label %159

132:                                              ; preds = %62
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, -1
  %137 = zext i1 %136 to i32
  %138 = call i32 @assert(i32 %137)
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* %5, align 8
  %144 = icmp eq i64 %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 @assert(i32 %145)
  %147 = load i32, i32* @OPEN, align 4
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  store i64 0, i64* @connect_in_progress, align 8
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %151 = call i32 @session_run(%struct.TYPE_11__* %150)
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %132
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %155 = call i32 @session_close(%struct.TYPE_11__* %154)
  store i64 -1, i64* %3, align 8
  br label %168

156:                                              ; preds = %132
  br label %159

157:                                              ; preds = %62
  %158 = call i32 @assert(i32 0)
  br label %159

159:                                              ; preds = %157, %156, %128
  %160 = load i64, i64* %5, align 8
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 2
  %163 = call i32 @FD_CLR(i64 %160, i32* %162)
  %164 = load i64, i64* %5, align 8
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 1
  %167 = call i32 @FD_SET(i64 %164, i32* %166)
  store i64 0, i64* %3, align 8
  br label %168

168:                                              ; preds = %159, %153, %92, %51, %37
  %169 = load i64, i64* %3, align 8
  ret i64 %169
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_11__* @session_by_fd(%struct.TYPE_12__*, i64) #1

declare dso_local %struct.TYPE_10__* @get_hid_device(i32*) #1

declare dso_local i64 @getsockopt(i64, i32, i32, i64*, i32*) #1

declare dso_local i32 @syslog(i32, i8*, i32, i32, i64) #1

declare dso_local i32 @bt_ntoa(i32*, i32*) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @session_close(%struct.TYPE_11__*) #1

declare dso_local i32 @client_socket(i32*, i32) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @write_hids_file(...) #1

declare dso_local i32 @session_run(%struct.TYPE_11__*) #1

declare dso_local i32 @FD_CLR(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
