; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_lookup.c_usbd_lookup_id_by_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_lookup.c_usbd_lookup_id_by_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device_id = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.usbd_lookup_info = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_device_id* @usbd_lookup_id_by_info(%struct.usb_device_id* %0, i32 %1, %struct.usbd_lookup_info* %2) #0 {
  %4 = alloca %struct.usb_device_id*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usbd_lookup_info*, align 8
  %8 = alloca %struct.usb_device_id*, align 8
  store %struct.usb_device_id* %0, %struct.usb_device_id** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.usbd_lookup_info* %2, %struct.usbd_lookup_info** %7, align 8
  %9 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %10 = icmp eq %struct.usb_device_id* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %170

12:                                               ; preds = %3
  %13 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %14 = bitcast %struct.usb_device_id* %13 to i32*
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = bitcast i32* %17 to i8*
  %19 = bitcast i8* %18 to %struct.usb_device_id*
  store %struct.usb_device_id* %19, %struct.usb_device_id** %8, align 8
  br label %20

20:                                               ; preds = %166, %12
  %21 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %22 = load %struct.usb_device_id*, %struct.usb_device_id** %8, align 8
  %23 = icmp ne %struct.usb_device_id* %21, %22
  br i1 %23, label %24, label %169

24:                                               ; preds = %20
  %25 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %26 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %25, i32 0, i32 19
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %31 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.usbd_lookup_info*, %struct.usbd_lookup_info** %7, align 8
  %34 = getelementptr inbounds %struct.usbd_lookup_info, %struct.usbd_lookup_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %166

38:                                               ; preds = %29, %24
  %39 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %40 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %39, i32 0, i32 18
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %45 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.usbd_lookup_info*, %struct.usbd_lookup_info** %7, align 8
  %48 = getelementptr inbounds %struct.usbd_lookup_info, %struct.usbd_lookup_info* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %166

52:                                               ; preds = %43, %38
  %53 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %54 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %53, i32 0, i32 17
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %59 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.usbd_lookup_info*, %struct.usbd_lookup_info** %7, align 8
  %62 = getelementptr inbounds %struct.usbd_lookup_info, %struct.usbd_lookup_info* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %166

66:                                               ; preds = %57, %52
  %67 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %68 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %67, i32 0, i32 16
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %73 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.usbd_lookup_info*, %struct.usbd_lookup_info** %7, align 8
  %76 = getelementptr inbounds %struct.usbd_lookup_info, %struct.usbd_lookup_info* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %166

80:                                               ; preds = %71, %66
  %81 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %82 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %81, i32 0, i32 15
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %87 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.usbd_lookup_info*, %struct.usbd_lookup_info** %7, align 8
  %90 = getelementptr inbounds %struct.usbd_lookup_info, %struct.usbd_lookup_info* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %166

94:                                               ; preds = %85, %80
  %95 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %96 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %95, i32 0, i32 14
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %94
  %100 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %101 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.usbd_lookup_info*, %struct.usbd_lookup_info** %7, align 8
  %104 = getelementptr inbounds %struct.usbd_lookup_info, %struct.usbd_lookup_info* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %102, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  br label %166

108:                                              ; preds = %99, %94
  %109 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %110 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %109, i32 0, i32 13
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %108
  %114 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %115 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %114, i32 0, i32 6
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.usbd_lookup_info*, %struct.usbd_lookup_info** %7, align 8
  %118 = getelementptr inbounds %struct.usbd_lookup_info, %struct.usbd_lookup_info* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %116, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  br label %166

122:                                              ; preds = %113, %108
  %123 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %124 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %123, i32 0, i32 12
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %122
  %128 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %129 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %128, i32 0, i32 7
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.usbd_lookup_info*, %struct.usbd_lookup_info** %7, align 8
  %132 = getelementptr inbounds %struct.usbd_lookup_info, %struct.usbd_lookup_info* %131, i32 0, i32 6
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %130, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  br label %166

136:                                              ; preds = %127, %122
  %137 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %138 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %137, i32 0, i32 11
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %136
  %142 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %143 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %142, i32 0, i32 8
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.usbd_lookup_info*, %struct.usbd_lookup_info** %7, align 8
  %146 = getelementptr inbounds %struct.usbd_lookup_info, %struct.usbd_lookup_info* %145, i32 0, i32 7
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %144, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %141
  br label %166

150:                                              ; preds = %141, %136
  %151 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %152 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %151, i32 0, i32 10
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %150
  %156 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %157 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %156, i32 0, i32 9
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.usbd_lookup_info*, %struct.usbd_lookup_info** %7, align 8
  %160 = getelementptr inbounds %struct.usbd_lookup_info, %struct.usbd_lookup_info* %159, i32 0, i32 8
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %158, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %155
  br label %166

164:                                              ; preds = %155, %150
  %165 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  store %struct.usb_device_id* %165, %struct.usb_device_id** %4, align 8
  br label %171

166:                                              ; preds = %163, %149, %135, %121, %107, %93, %79, %65, %51, %37
  %167 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %168 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %167, i32 1
  store %struct.usb_device_id* %168, %struct.usb_device_id** %5, align 8
  br label %20

169:                                              ; preds = %20
  br label %170

170:                                              ; preds = %169, %11
  store %struct.usb_device_id* null, %struct.usb_device_id** %4, align 8
  br label %171

171:                                              ; preds = %170, %164
  %172 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  ret %struct.usb_device_id* %172
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
