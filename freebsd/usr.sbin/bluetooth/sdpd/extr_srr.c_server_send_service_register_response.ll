; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_srr.c_server_send_service_register_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_srr.c_server_send_service_register_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32, i32, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.iovec = type { i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }

@SDP_PDU_ERROR_RESPONSE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @server_send_service_register_response(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [2 x %struct.iovec], align 16
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %14, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* @SDP_PDU_ERROR_RESPONSE, align 4
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.TYPE_9__*
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @htons(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %5, i64 0, i64 0
  %44 = getelementptr inbounds %struct.iovec, %struct.iovec* %43, i32 0, i32 1
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %44, align 8
  %45 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %5, i64 0, i64 0
  %46 = getelementptr inbounds %struct.iovec, %struct.iovec* %45, i32 0, i32 0
  store i32 12, i32* %46, align 16
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load i64, i64* %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %5, i64 0, i64 1
  %55 = getelementptr inbounds %struct.iovec, %struct.iovec* %54, i32 0, i32 1
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %55, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load i64, i64* %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %5, i64 0, i64 1
  %64 = getelementptr inbounds %struct.iovec, %struct.iovec* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 16
  br label %65

65:                                               ; preds = %76, %2
  %66 = load i64, i64* %4, align 8
  %67 = bitcast [2 x %struct.iovec]* %5 to %struct.iovec*
  %68 = call i64 @writev(i64 %66, %struct.iovec* %67, i32 2)
  store i64 %68, i64* %7, align 8
  br label %69

69:                                               ; preds = %65
  %70 = load i64, i64* %7, align 8
  %71 = icmp ult i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i64, i64* @errno, align 8
  %74 = load i64, i64* @EINTR, align 8
  %75 = icmp eq i64 %73, %74
  br label %76

76:                                               ; preds = %72, %69
  %77 = phi i1 [ false, %69 ], [ %75, %72 ]
  br i1 %77, label %65, label %78

78:                                               ; preds = %76
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = load i64, i64* %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  store i64 0, i64* %84, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i64, i64* %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = load i64, i64* %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  store i32 0, i32* %96, align 4
  %97 = load i64, i64* %7, align 8
  %98 = icmp ult i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %78
  %100 = load i64, i64* @errno, align 8
  br label %102

101:                                              ; preds = %78
  br label %102

102:                                              ; preds = %101, %99
  %103 = phi i64 [ %100, %99 ], [ 0, %101 ]
  ret i64 %103
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @writev(i64, %struct.iovec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
