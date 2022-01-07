; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_log_buf.c_tcp_log_expandlogbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_log_buf.c_tcp_log_expandlogbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_log_common_header = type { i32 }
%struct.tcp_log_dev_queue = type { i32 }
%struct.tcp_log_dev_log_queue = type { i32, i32, i32, i32, i32, i32 }
%struct.tcp_log_header = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sockopt = type { i32, i32*, %struct.tcp_log_header* }
%struct.tcp_log_buffer = type { i32 }

@M_TCPLOGDEV = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@TCP_LOG_BUF_VER = common dso_local global i32 0, align 4
@TCP_LOG_DEV_TYPE_BBR = common dso_local global i32 0, align 4
@TCP_LOG_ID_LEN = common dso_local global i32 0, align 4
@TCP_LOG_REASON_LEN = common dso_local global i32 0, align 4
@tcp_log_que_fail5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcp_log_common_header* (%struct.tcp_log_dev_queue*)* @tcp_log_expandlogbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcp_log_common_header* @tcp_log_expandlogbuf(%struct.tcp_log_dev_queue* %0) #0 {
  %2 = alloca %struct.tcp_log_common_header*, align 8
  %3 = alloca %struct.tcp_log_dev_queue*, align 8
  %4 = alloca %struct.tcp_log_dev_log_queue*, align 8
  %5 = alloca %struct.tcp_log_header*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockopt, align 8
  %8 = alloca i32, align 4
  store %struct.tcp_log_dev_queue* %0, %struct.tcp_log_dev_queue** %3, align 8
  %9 = load %struct.tcp_log_dev_queue*, %struct.tcp_log_dev_queue** %3, align 8
  %10 = bitcast %struct.tcp_log_dev_queue* %9 to %struct.tcp_log_dev_log_queue*
  store %struct.tcp_log_dev_log_queue* %10, %struct.tcp_log_dev_log_queue** %4, align 8
  %11 = load %struct.tcp_log_dev_log_queue*, %struct.tcp_log_dev_log_queue** %4, align 8
  %12 = getelementptr inbounds %struct.tcp_log_dev_log_queue, %struct.tcp_log_dev_log_queue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 8
  %16 = add i64 32, %15
  %17 = trunc i64 %16 to i32
  %18 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %7, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @M_TCPLOGDEV, align 4
  %22 = load i32, i32* @M_NOWAIT, align 4
  %23 = call %struct.tcp_log_header* @malloc(i32 %20, i32 %21, i32 %22)
  store %struct.tcp_log_header* %23, %struct.tcp_log_header** %5, align 8
  %24 = load %struct.tcp_log_header*, %struct.tcp_log_header** %5, align 8
  %25 = icmp eq %struct.tcp_log_header* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store %struct.tcp_log_common_header* null, %struct.tcp_log_common_header** %2, align 8
  br label %107

27:                                               ; preds = %1
  %28 = load %struct.tcp_log_header*, %struct.tcp_log_header** %5, align 8
  %29 = getelementptr inbounds %struct.tcp_log_header, %struct.tcp_log_header* %28, i64 1
  %30 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %7, i32 0, i32 2
  store %struct.tcp_log_header* %29, %struct.tcp_log_header** %30, align 8
  %31 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = sub i64 %33, 32
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 8
  %36 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %7, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = load %struct.tcp_log_dev_log_queue*, %struct.tcp_log_dev_log_queue** %4, align 8
  %38 = getelementptr inbounds %struct.tcp_log_dev_log_queue, %struct.tcp_log_dev_log_queue* %37, i32 0, i32 5
  %39 = bitcast i32** %6 to %struct.tcp_log_buffer**
  %40 = load %struct.tcp_log_dev_log_queue*, %struct.tcp_log_dev_log_queue** %4, align 8
  %41 = getelementptr inbounds %struct.tcp_log_dev_log_queue, %struct.tcp_log_dev_log_queue* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @tcp_log_logs_to_buf(%struct.sockopt* %7, i32* %38, %struct.tcp_log_buffer** %39, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %27
  %47 = load %struct.tcp_log_header*, %struct.tcp_log_header** %5, align 8
  %48 = load i32, i32* @M_TCPLOGDEV, align 4
  %49 = call i32 @free(%struct.tcp_log_header* %47, i32 %48)
  store %struct.tcp_log_common_header* null, %struct.tcp_log_common_header** %2, align 8
  br label %107

50:                                               ; preds = %27
  %51 = load %struct.tcp_log_dev_log_queue*, %struct.tcp_log_dev_log_queue** %4, align 8
  %52 = getelementptr inbounds %struct.tcp_log_dev_log_queue, %struct.tcp_log_dev_log_queue* %51, i32 0, i32 5
  %53 = load %struct.tcp_log_dev_log_queue*, %struct.tcp_log_dev_log_queue** %4, align 8
  %54 = getelementptr inbounds %struct.tcp_log_dev_log_queue, %struct.tcp_log_dev_log_queue* %53, i32 0, i32 0
  %55 = call i32 @tcp_log_free_entries(i32* %52, i32* %54)
  %56 = load %struct.tcp_log_dev_log_queue*, %struct.tcp_log_dev_log_queue** %4, align 8
  %57 = getelementptr inbounds %struct.tcp_log_dev_log_queue, %struct.tcp_log_dev_log_queue* %56, i32 0, i32 0
  store i32 0, i32* %57, align 4
  %58 = load %struct.tcp_log_header*, %struct.tcp_log_header** %5, align 8
  %59 = call i32 @memset(%struct.tcp_log_header* %58, i32 0, i32 32)
  %60 = load i32, i32* @TCP_LOG_BUF_VER, align 4
  %61 = load %struct.tcp_log_header*, %struct.tcp_log_header** %5, align 8
  %62 = getelementptr inbounds %struct.tcp_log_header, %struct.tcp_log_header* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @TCP_LOG_DEV_TYPE_BBR, align 4
  %64 = load %struct.tcp_log_header*, %struct.tcp_log_header** %5, align 8
  %65 = getelementptr inbounds %struct.tcp_log_header, %struct.tcp_log_header* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = load %struct.tcp_log_header*, %struct.tcp_log_header** %5, align 8
  %68 = bitcast %struct.tcp_log_header* %67 to i32*
  %69 = ptrtoint i32* %66 to i64
  %70 = ptrtoint i32* %68 to i64
  %71 = sub i64 %69, %70
  %72 = sdiv exact i64 %71, 4
  %73 = trunc i64 %72 to i32
  %74 = load %struct.tcp_log_header*, %struct.tcp_log_header** %5, align 8
  %75 = getelementptr inbounds %struct.tcp_log_header, %struct.tcp_log_header* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.tcp_log_dev_log_queue*, %struct.tcp_log_dev_log_queue** %4, align 8
  %77 = getelementptr inbounds %struct.tcp_log_dev_log_queue, %struct.tcp_log_dev_log_queue* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.tcp_log_header*, %struct.tcp_log_header** %5, align 8
  %80 = getelementptr inbounds %struct.tcp_log_header, %struct.tcp_log_header* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = load %struct.tcp_log_dev_log_queue*, %struct.tcp_log_dev_log_queue** %4, align 8
  %82 = getelementptr inbounds %struct.tcp_log_dev_log_queue, %struct.tcp_log_dev_log_queue* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.tcp_log_header*, %struct.tcp_log_header** %5, align 8
  %85 = getelementptr inbounds %struct.tcp_log_header, %struct.tcp_log_header* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  %86 = load %struct.tcp_log_header*, %struct.tcp_log_header** %5, align 8
  %87 = getelementptr inbounds %struct.tcp_log_header, %struct.tcp_log_header* %86, i32 0, i32 3
  %88 = call i32 @getboottime(i32* %87)
  %89 = load %struct.tcp_log_header*, %struct.tcp_log_header** %5, align 8
  %90 = getelementptr inbounds %struct.tcp_log_header, %struct.tcp_log_header* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.tcp_log_dev_log_queue*, %struct.tcp_log_dev_log_queue** %4, align 8
  %93 = getelementptr inbounds %struct.tcp_log_dev_log_queue, %struct.tcp_log_dev_log_queue* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @TCP_LOG_ID_LEN, align 4
  %96 = call i32 @strlcpy(i32 %91, i32 %94, i32 %95)
  %97 = load %struct.tcp_log_header*, %struct.tcp_log_header** %5, align 8
  %98 = getelementptr inbounds %struct.tcp_log_header, %struct.tcp_log_header* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.tcp_log_dev_log_queue*, %struct.tcp_log_dev_log_queue** %4, align 8
  %101 = getelementptr inbounds %struct.tcp_log_dev_log_queue, %struct.tcp_log_dev_log_queue* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @TCP_LOG_REASON_LEN, align 4
  %104 = call i32 @strlcpy(i32 %99, i32 %102, i32 %103)
  %105 = load %struct.tcp_log_header*, %struct.tcp_log_header** %5, align 8
  %106 = bitcast %struct.tcp_log_header* %105 to %struct.tcp_log_common_header*
  store %struct.tcp_log_common_header* %106, %struct.tcp_log_common_header** %2, align 8
  br label %107

107:                                              ; preds = %50, %46, %26
  %108 = load %struct.tcp_log_common_header*, %struct.tcp_log_common_header** %2, align 8
  ret %struct.tcp_log_common_header* %108
}

declare dso_local %struct.tcp_log_header* @malloc(i32, i32, i32) #1

declare dso_local i32 @tcp_log_logs_to_buf(%struct.sockopt*, i32*, %struct.tcp_log_buffer**, i32) #1

declare dso_local i32 @free(%struct.tcp_log_header*, i32) #1

declare dso_local i32 @tcp_log_free_entries(i32*, i32*) #1

declare dso_local i32 @memset(%struct.tcp_log_header*, i32, i32) #1

declare dso_local i32 @getboottime(i32*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
