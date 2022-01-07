; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_scr.c_server_prepare_service_change_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_scr.c_server_prepare_service_change_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i32, i64, i32*, i64, i64, i32, i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64 (i32*, i32)* }
%struct.TYPE_12__ = type { i32 }

@SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX = common dso_local global i64 0, align 8
@SDP_ERROR_CODE_INVALID_SERVICE_RECORD_HANDLE = common dso_local global i64 0, align 8
@SDP_ERROR_CODE_INSUFFICIENT_RESOURCES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @server_prepare_service_change_response(%struct.TYPE_11__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 4
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = bitcast i32* %18 to %struct.TYPE_12__*
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %15, i64 %22
  store i32* %23, i32** %7, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %8, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %9, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %2
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %39
  %49 = load i32*, i32** %7, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = ptrtoint i32* %49 to i64
  %52 = ptrtoint i32* %50 to i64
  %53 = sub i64 %51, %52
  %54 = sdiv exact i64 %53, 4
  %55 = icmp slt i64 %54, 4
  br i1 %55, label %56, label %58

56:                                               ; preds = %48, %39, %2
  %57 = load i64, i64* @SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX, align 8
  store i64 %57, i64* %3, align 8
  br label %169

58:                                               ; preds = %48
  %59 = load i32, i32* %10, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @SDP_GET32(i32 %59, i32* %60)
  %62 = load i32, i32* %10, align 4
  %63 = call %struct.TYPE_13__* @provider_by_handle(i32 %62)
  store %struct.TYPE_13__* %63, %struct.TYPE_13__** %9, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %65 = icmp eq %struct.TYPE_13__* %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %58
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %5, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66, %58
  %73 = load i64, i64* @SDP_ERROR_CODE_INVALID_SERVICE_RECORD_HANDLE, align 8
  store i64 %73, i64* %3, align 8
  br label %169

74:                                               ; preds = %66
  %75 = load i32*, i32** %7, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = ptrtoint i32* %75 to i64
  %78 = ptrtoint i32* %76 to i64
  %79 = sub i64 %77, %78
  %80 = sdiv exact i64 %79, 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = icmp slt i64 %80, %86
  br i1 %87, label %111, label %88

88:                                               ; preds = %74
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load i64 (i32*, i32)*, i64 (i32*, i32)** %92, align 8
  %94 = icmp eq i64 (i32*, i32)* %93, null
  br i1 %94, label %111, label %95

95:                                               ; preds = %88
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i64 (i32*, i32)*, i64 (i32*, i32)** %99, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = load i32*, i32** %6, align 8
  %104 = ptrtoint i32* %102 to i64
  %105 = ptrtoint i32* %103 to i64
  %106 = sub i64 %104, %105
  %107 = sdiv exact i64 %106, 4
  %108 = trunc i64 %107 to i32
  %109 = call i64 %100(i32* %101, i32 %108)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %95, %88, %74
  %112 = load i64, i64* @SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX, align 8
  store i64 %112, i64* %3, align 8
  br label %169

113:                                              ; preds = %95
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %115 = load i32*, i32** %6, align 8
  %116 = load i32*, i32** %7, align 8
  %117 = load i32*, i32** %6, align 8
  %118 = ptrtoint i32* %116 to i64
  %119 = ptrtoint i32* %117 to i64
  %120 = sub i64 %118, %119
  %121 = sdiv exact i64 %120, 4
  %122 = trunc i64 %121 to i32
  %123 = call i64 @provider_update(%struct.TYPE_13__* %114, i32* %115, i32 %122)
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %113
  %126 = load i64, i64* @SDP_ERROR_CODE_INSUFFICIENT_RESOURCES, align 8
  store i64 %126, i64* %3, align 8
  br label %169

127:                                              ; preds = %113
  %128 = load i32*, i32** %8, align 8
  %129 = call i32 @SDP_PUT16(i32 0, i32* %128)
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = load i64, i64* %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = sub i64 %136, 4
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = load i64, i64* %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 4
  store i64 %137, i64* %143, align 8
  %144 = load i32*, i32** %8, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = load i64, i64* %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = ptrtoint i32* %144 to i64
  %153 = ptrtoint i32* %151 to i64
  %154 = sub i64 %152, %153
  %155 = sdiv exact i64 %154, 4
  %156 = trunc i64 %155 to i32
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %158, align 8
  %160 = load i64, i64* %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  store i32 %156, i32* %162, align 8
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = load i64, i64* %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 1
  store i64 0, i64* %168, align 8
  store i64 0, i64* %3, align 8
  br label %169

169:                                              ; preds = %127, %125, %111, %72, %56
  %170 = load i64, i64* %3, align 8
  ret i64 %170
}

declare dso_local i32 @SDP_GET32(i32, i32*) #1

declare dso_local %struct.TYPE_13__* @provider_by_handle(i32) #1

declare dso_local i64 @provider_update(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @SDP_PUT16(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
