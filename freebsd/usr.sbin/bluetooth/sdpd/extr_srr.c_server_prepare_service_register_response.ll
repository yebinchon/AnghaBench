; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_srr.c_server_prepare_service_register_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_srr.c_server_prepare_service_register_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i32, i64, i32*, i64, i64, i32, i32 }
%struct.TYPE_14__ = type { i32, i64 (i32*, i32)* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX = common dso_local global i64 0, align 8
@SDP_ERROR_CODE_INSUFFICIENT_RESOURCES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @server_prepare_service_register_response(%struct.TYPE_11__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 4
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = bitcast i32* %20 to %struct.TYPE_12__*
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %17, i64 %24
  store i32* %25, i32** %7, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %8, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %10, align 8
  store i32* null, i32** %11, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %2
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %41
  %51 = load i32*, i32** %7, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = ptrtoint i32* %51 to i64
  %54 = ptrtoint i32* %52 to i64
  %55 = sub i64 %53, %54
  %56 = sdiv exact i64 %55, 4
  %57 = icmp slt i64 %56, 8
  br i1 %57, label %58, label %60

58:                                               ; preds = %50, %41, %2
  %59 = load i64, i64* @SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX, align 8
  store i64 %59, i64* %3, align 8
  br label %170

60:                                               ; preds = %50
  %61 = load i64, i64* %12, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @SDP_GET16(i64 %61, i32* %62)
  %64 = load i32*, i32** %6, align 8
  store i32* %64, i32** %11, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  store i32* %66, i32** %6, align 8
  %67 = load i64, i64* %12, align 8
  %68 = call %struct.TYPE_14__* @profile_get_descriptor(i64 %67)
  store %struct.TYPE_14__* %68, %struct.TYPE_14__** %9, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %70 = icmp eq %struct.TYPE_14__* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i64, i64* @SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX, align 8
  store i64 %72, i64* %3, align 8
  br label %170

73:                                               ; preds = %60
  %74 = load i32*, i32** %7, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = ptrtoint i32* %74 to i64
  %77 = ptrtoint i32* %75 to i64
  %78 = sub i64 %76, %77
  %79 = sdiv exact i64 %78, 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = icmp slt i64 %79, %83
  br i1 %84, label %104, label %85

85:                                               ; preds = %73
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = load i64 (i32*, i32)*, i64 (i32*, i32)** %87, align 8
  %89 = icmp eq i64 (i32*, i32)* %88, null
  br i1 %89, label %104, label %90

90:                                               ; preds = %85
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load i64 (i32*, i32)*, i64 (i32*, i32)** %92, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = ptrtoint i32* %95 to i64
  %98 = ptrtoint i32* %96 to i64
  %99 = sub i64 %97, %98
  %100 = sdiv exact i64 %99, 4
  %101 = trunc i64 %100 to i32
  %102 = call i64 %93(i32* %94, i32 %101)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %90, %85, %73
  %105 = load i64, i64* @SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX, align 8
  store i64 %105, i64* %3, align 8
  br label %170

106:                                              ; preds = %90
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %108 = load i32*, i32** %11, align 8
  %109 = load i64, i64* %5, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = load i32*, i32** %6, align 8
  %113 = ptrtoint i32* %111 to i64
  %114 = ptrtoint i32* %112 to i64
  %115 = sub i64 %113, %114
  %116 = sdiv exact i64 %115, 4
  %117 = trunc i64 %116 to i32
  %118 = call %struct.TYPE_13__* @provider_register(%struct.TYPE_14__* %107, i32* %108, i64 %109, i32* %110, i32 %117)
  store %struct.TYPE_13__* %118, %struct.TYPE_13__** %10, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %120 = icmp eq %struct.TYPE_13__* %119, null
  br i1 %120, label %121, label %123

121:                                              ; preds = %106
  %122 = load i64, i64* @SDP_ERROR_CODE_INSUFFICIENT_RESOURCES, align 8
  store i64 %122, i64* %3, align 8
  br label %170

123:                                              ; preds = %106
  %124 = load i32*, i32** %8, align 8
  %125 = call i32 @SDP_PUT16(i32 0, i32* %124)
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %8, align 8
  %130 = call i32 @SDP_PUT32(i32 %128, i32* %129)
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = load i64, i64* %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = sub i64 %137, 4
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = load i64, i64* %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 4
  store i64 %138, i64* %144, align 8
  %145 = load i32*, i32** %8, align 8
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %147, align 8
  %149 = load i64, i64* %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = ptrtoint i32* %145 to i64
  %154 = ptrtoint i32* %152 to i64
  %155 = sub i64 %153, %154
  %156 = sdiv exact i64 %155, 4
  %157 = trunc i64 %156 to i32
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = load i64, i64* %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  store i32 %157, i32* %163, align 8
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %165, align 8
  %167 = load i64, i64* %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 1
  store i64 0, i64* %169, align 8
  store i64 0, i64* %3, align 8
  br label %170

170:                                              ; preds = %123, %121, %104, %71, %58
  %171 = load i64, i64* %3, align 8
  ret i64 %171
}

declare dso_local i32 @SDP_GET16(i64, i32*) #1

declare dso_local %struct.TYPE_14__* @profile_get_descriptor(i64) #1

declare dso_local %struct.TYPE_13__* @provider_register(%struct.TYPE_14__*, i32*, i64, i32*, i32) #1

declare dso_local i32 @SDP_PUT16(i32, i32*) #1

declare dso_local i32 @SDP_PUT32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
