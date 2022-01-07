; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/template/extr_usb_template.c_usb_make_endpoint_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/template/extr_usb_template.c_usb_make_endpoint_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_temp_setup = type { i64, i64, i32, i64, i8* }
%struct.usb_temp_endpoint_desc = type { i32, i32, i8**, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i64* }
%struct.usb_endpoint_descriptor = type { i32, i32, i32, i32, i32, i32 }

@UE_ADDR = common dso_local global i32 0, align 4
@UE_DIR_IN = common dso_local global i32 0, align 4
@UE_DIR_OUT = common dso_local global i32 0, align 4
@UE_XFERTYPE = common dso_local global i32 0, align 4
@UE_ISOCHRONOUS = common dso_local global i32 0, align 4
@USB_ERR_INVAL = common dso_local global i8* null, align 8
@UE_ZERO_MPS = common dso_local global i64 0, align 8
@UDESC_ENDPOINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_temp_setup*, %struct.usb_temp_endpoint_desc*)* @usb_make_endpoint_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_make_endpoint_desc(%struct.usb_temp_setup* %0, %struct.usb_temp_endpoint_desc* %1) #0 {
  %3 = alloca %struct.usb_temp_setup*, align 8
  %4 = alloca %struct.usb_temp_endpoint_desc*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_temp_setup* %0, %struct.usb_temp_setup** %3, align 8
  store %struct.usb_temp_endpoint_desc* %1, %struct.usb_temp_endpoint_desc** %4, align 8
  %11 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %12 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load %struct.usb_temp_endpoint_desc*, %struct.usb_temp_endpoint_desc** %4, align 8
  %15 = getelementptr inbounds %struct.usb_temp_endpoint_desc, %struct.usb_temp_endpoint_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @UE_ADDR, align 4
  %18 = load i32, i32* @UE_DIR_IN, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @UE_DIR_OUT, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %16, %21
  store i32 %22, i32* %9, align 4
  %23 = load %struct.usb_temp_endpoint_desc*, %struct.usb_temp_endpoint_desc** %4, align 8
  %24 = getelementptr inbounds %struct.usb_temp_endpoint_desc, %struct.usb_temp_endpoint_desc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @UE_XFERTYPE, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @UE_ISOCHRONOUS, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %33 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, 26
  store i64 %35, i64* %33, align 8
  br label %41

36:                                               ; preds = %2
  %37 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %38 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, 24
  store i64 %40, i64* %38, align 8
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.usb_temp_endpoint_desc*, %struct.usb_temp_endpoint_desc** %4, align 8
  %43 = getelementptr inbounds %struct.usb_temp_endpoint_desc, %struct.usb_temp_endpoint_desc* %42, i32 0, i32 2
  %44 = load i8**, i8*** %43, align 8
  store i8** %44, i8*** %6, align 8
  %45 = load i8**, i8*** %6, align 8
  %46 = icmp ne i8** %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %52, %47
  %49 = load i8**, i8*** %6, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %54 = load i8**, i8*** %6, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @usb_make_raw_desc(%struct.usb_temp_setup* %53, i8* %55)
  %57 = load i8**, i8*** %6, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i32 1
  store i8** %58, i8*** %6, align 8
  br label %48

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %41
  %61 = load %struct.usb_temp_endpoint_desc*, %struct.usb_temp_endpoint_desc** %4, align 8
  %62 = getelementptr inbounds %struct.usb_temp_endpoint_desc, %struct.usb_temp_endpoint_desc* %61, i32 0, i32 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = icmp eq %struct.TYPE_3__* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i8*, i8** @USB_ERR_INVAL, align 8
  %67 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %68 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  br label %192

69:                                               ; preds = %60
  %70 = load %struct.usb_temp_endpoint_desc*, %struct.usb_temp_endpoint_desc** %4, align 8
  %71 = getelementptr inbounds %struct.usb_temp_endpoint_desc, %struct.usb_temp_endpoint_desc* %70, i32 0, i32 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %76 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i64, i64* %74, i64 %77
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %8, align 8
  %80 = load i64, i64* %8, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %69
  %83 = load i8*, i8** @USB_ERR_INVAL, align 8
  %84 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %85 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %84, i32 0, i32 4
  store i8* %83, i8** %85, align 8
  br label %192

86:                                               ; preds = %69
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* @UE_ZERO_MPS, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i64 0, i64* %8, align 8
  br label %91

91:                                               ; preds = %90, %86
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %94 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %187

97:                                               ; preds = %92
  %98 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %99 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %7, align 8
  %102 = call %struct.usb_endpoint_descriptor* @USB_ADD_BYTES(i64 %100, i64 %101)
  store %struct.usb_endpoint_descriptor* %102, %struct.usb_endpoint_descriptor** %5, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @UE_ISOCHRONOUS, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %97
  %107 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %108 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %107, i32 0, i32 0
  store i32 26, i32* %108, align 4
  br label %112

109:                                              ; preds = %97
  %110 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %111 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %110, i32 0, i32 0
  store i32 24, i32* %111, align 4
  br label %112

112:                                              ; preds = %109, %106
  %113 = load i32, i32* @UDESC_ENDPOINT, align 4
  %114 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %115 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %114, i32 0, i32 5
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %118 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.usb_temp_endpoint_desc*, %struct.usb_temp_endpoint_desc** %4, align 8
  %120 = getelementptr inbounds %struct.usb_temp_endpoint_desc, %struct.usb_temp_endpoint_desc* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %123 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 4
  %124 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %125 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = load i64, i64* %8, align 8
  %128 = call i32 @USETW(i32 %126, i64 %127)
  %129 = load %struct.usb_temp_endpoint_desc*, %struct.usb_temp_endpoint_desc** %4, align 8
  %130 = getelementptr inbounds %struct.usb_temp_endpoint_desc, %struct.usb_temp_endpoint_desc* %129, i32 0, i32 3
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = icmp ne %struct.TYPE_4__* %131, null
  br i1 %132, label %133, label %158

133:                                              ; preds = %112
  %134 = load %struct.usb_temp_endpoint_desc*, %struct.usb_temp_endpoint_desc** %4, align 8
  %135 = getelementptr inbounds %struct.usb_temp_endpoint_desc, %struct.usb_temp_endpoint_desc* %134, i32 0, i32 3
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %140 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %133
  %146 = load %struct.usb_temp_endpoint_desc*, %struct.usb_temp_endpoint_desc** %4, align 8
  %147 = getelementptr inbounds %struct.usb_temp_endpoint_desc, %struct.usb_temp_endpoint_desc* %146, i32 0, i32 3
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %152 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %157 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 4
  br label %186

158:                                              ; preds = %133, %112
  %159 = load i32, i32* %10, align 4
  switch i32 %159, label %174 [
    i32 132, label %160
    i32 131, label %160
    i32 130, label %163
  ]

160:                                              ; preds = %158, %158
  %161 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %162 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %161, i32 0, i32 3
  store i32 0, i32* %162, align 4
  br label %185

163:                                              ; preds = %158
  %164 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %165 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  switch i64 %166, label %170 [
    i64 128, label %167
    i64 129, label %167
  ]

167:                                              ; preds = %163, %163
  %168 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %169 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %168, i32 0, i32 3
  store i32 1, i32* %169, align 4
  br label %173

170:                                              ; preds = %163
  %171 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %172 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %171, i32 0, i32 3
  store i32 4, i32* %172, align 4
  br label %173

173:                                              ; preds = %170, %167
  br label %185

174:                                              ; preds = %158
  %175 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %176 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  switch i64 %177, label %181 [
    i64 128, label %178
    i64 129, label %178
  ]

178:                                              ; preds = %174, %174
  %179 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %180 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %179, i32 0, i32 3
  store i32 1, i32* %180, align 4
  br label %184

181:                                              ; preds = %174
  %182 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %183 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %182, i32 0, i32 3
  store i32 1, i32* %183, align 4
  br label %184

184:                                              ; preds = %181, %178
  br label %185

185:                                              ; preds = %184, %173, %160
  br label %186

186:                                              ; preds = %185, %145
  br label %187

187:                                              ; preds = %186, %92
  %188 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %189 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %189, align 8
  br label %192

192:                                              ; preds = %187, %82, %65
  ret void
}

declare dso_local i32 @usb_make_raw_desc(%struct.usb_temp_setup*, i8*) #1

declare dso_local %struct.usb_endpoint_descriptor* @USB_ADD_BYTES(i64, i64) #1

declare dso_local i32 @USETW(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
