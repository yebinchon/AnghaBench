; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_sar.c_server_prepare_service_attribute_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_sar.c_server_prepare_service_attribute_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i64, i64, i32, i32, i32* }
%struct.TYPE_7__ = type { i32 }

@NG_L2CAP_MTU_MAXIMUM = common dso_local global i32 0, align 4
@SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX = common dso_local global i64 0, align 8
@SDP_ERROR_CODE_INVALID_CONTINUATION_STATE = common dso_local global i64 0, align 8
@SDP_ERROR_CODE_INVALID_SERVICE_RECORD_HANDLE = common dso_local global i64 0, align 8
@SDP_ERROR_CODE_INSUFFICIENT_RESOURCES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @server_prepare_service_attribute_response(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = bitcast i32* %25 to %struct.TYPE_7__*
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %22, i64 %29
  store i32* %30, i32** %7, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* @NG_L2CAP_MTU_MAXIMUM, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32* %41, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = ptrtoint i32* %42 to i64
  %45 = ptrtoint i32* %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 4
  %48 = icmp slt i64 %47, 12
  br i1 %48, label %49, label %51

49:                                               ; preds = %2
  %50 = load i64, i64* @SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX, align 8
  store i64 %50, i64* %3, align 8
  br label %210

51:                                               ; preds = %2
  %52 = load i64, i64* %12, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @SDP_GET32(i64 %52, i32* %53)
  %55 = load i64, i64* %14, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @SDP_GET16(i64 %55, i32* %56)
  %58 = load i64, i64* %14, align 8
  %59 = icmp ule i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i64, i64* @SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX, align 8
  store i64 %61, i64* %3, align 8
  br label %210

62:                                               ; preds = %51
  store i64 0, i64* %15, align 8
  %63 = load i64, i64* %13, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @SDP_GET8(i64 %63, i32* %64)
  %66 = load i64, i64* %13, align 8
  switch i64 %66, label %79 [
    i64 128, label %67
    i64 130, label %71
    i64 129, label %75
  ]

67:                                               ; preds = %62
  %68 = load i64, i64* %15, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @SDP_GET8(i64 %68, i32* %69)
  br label %79

71:                                               ; preds = %62
  %72 = load i64, i64* %15, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @SDP_GET16(i64 %72, i32* %73)
  br label %79

75:                                               ; preds = %62
  %76 = load i64, i64* %15, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @SDP_GET32(i64 %76, i32* %77)
  br label %79

79:                                               ; preds = %62, %75, %71, %67
  %80 = load i64, i64* %15, align 8
  %81 = icmp ule i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i64, i64* @SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX, align 8
  store i64 %83, i64* %3, align 8
  br label %210

84:                                               ; preds = %79
  %85 = load i32*, i32** %6, align 8
  %86 = load i64, i64* %15, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %10, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32*, i32** %7, align 8
  %91 = icmp ugt i32* %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load i64, i64* @SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX, align 8
  store i64 %93, i64* %3, align 8
  br label %210

94:                                               ; preds = %84
  %95 = load i64, i64* %16, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = call i32 @SDP_GET8(i64 %95, i32* %96)
  %98 = load i64, i64* %16, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %117

100:                                              ; preds = %94
  %101 = load i64, i64* %16, align 8
  %102 = icmp ne i64 %101, 2
  br i1 %102, label %111, label %103

103:                                              ; preds = %100
  %104 = load i32*, i32** %7, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = ptrtoint i32* %104 to i64
  %107 = ptrtoint i32* %105 to i64
  %108 = sub i64 %106, %107
  %109 = sdiv exact i64 %108, 4
  %110 = icmp ne i64 %109, 2
  br i1 %110, label %111, label %113

111:                                              ; preds = %103, %100
  %112 = load i64, i64* @SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX, align 8
  store i64 %112, i64* %3, align 8
  br label %210

113:                                              ; preds = %103
  %114 = load i64, i64* %17, align 8
  %115 = load i32*, i32** %10, align 8
  %116 = call i32 @SDP_GET16(i64 %114, i32* %115)
  br label %118

117:                                              ; preds = %94
  store i64 0, i64* %17, align 8
  br label %118

118:                                              ; preds = %117, %113
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = load i64, i64* %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %17, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %118
  %129 = load i64, i64* @SDP_ERROR_CODE_INVALID_CONTINUATION_STATE, align 8
  store i64 %129, i64* %3, align 8
  br label %210

130:                                              ; preds = %118
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = load i64, i64* %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp sgt i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  store i64 0, i64* %3, align 8
  br label %210

140:                                              ; preds = %130
  %141 = load i64, i64* %12, align 8
  %142 = call i32* @provider_by_handle(i64 %141)
  store i32* %142, i32** %11, align 8
  %143 = icmp eq i32* %142, null
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = load i64, i64* @SDP_ERROR_CODE_INVALID_SERVICE_RECORD_HANDLE, align 8
  store i64 %145, i64* %3, align 8
  br label %210

146:                                              ; preds = %140
  %147 = load i32*, i32** %11, align 8
  %148 = load i32*, i32** %6, align 8
  %149 = load i32*, i32** %6, align 8
  %150 = load i64, i64* %15, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32*, i32** %8, align 8
  %153 = load i32*, i32** %9, align 8
  %154 = call i64 @server_prepare_attr_list(i32* %147, i32* %148, i32* %151, i32* %152, i32* %153)
  store i64 %154, i64* %17, align 8
  %155 = load i64, i64* %17, align 8
  %156 = icmp ult i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %146
  %158 = load i64, i64* @SDP_ERROR_CODE_INSUFFICIENT_RESOURCES, align 8
  store i64 %158, i64* %3, align 8
  br label %210

159:                                              ; preds = %146
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = load i64, i64* %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = sub i64 %167, 4
  %169 = sub i64 %168, 2
  %170 = trunc i64 %169 to i32
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %172, align 8
  %174 = load i64, i64* %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 2
  store i32 %170, i32* %176, align 8
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %178, align 8
  %180 = load i64, i64* %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = sext i32 %183 to i64
  %185 = load i64, i64* %14, align 8
  %186 = icmp ugt i64 %184, %185
  br i1 %186, label %187, label %196

187:                                              ; preds = %159
  %188 = load i64, i64* %14, align 8
  %189 = trunc i64 %188 to i32
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %191, align 8
  %193 = load i64, i64* %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 2
  store i32 %189, i32* %195, align 8
  br label %196

196:                                              ; preds = %187, %159
  %197 = load i64, i64* %17, align 8
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %199, align 8
  %201 = load i64, i64* %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 1
  store i64 %197, i64* %203, align 8
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %205, align 8
  %207 = load i64, i64* %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  store i64 0, i64* %209, align 8
  store i64 0, i64* %3, align 8
  br label %210

210:                                              ; preds = %196, %157, %144, %139, %128, %111, %92, %82, %60, %49
  %211 = load i64, i64* %3, align 8
  ret i64 %211
}

declare dso_local i32 @SDP_GET32(i64, i32*) #1

declare dso_local i32 @SDP_GET16(i64, i32*) #1

declare dso_local i32 @SDP_GET8(i64, i32*) #1

declare dso_local i32* @provider_by_handle(i64) #1

declare dso_local i64 @server_prepare_attr_list(i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
