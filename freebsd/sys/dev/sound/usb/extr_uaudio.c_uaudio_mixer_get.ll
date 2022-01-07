; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.uaudio_mixer_node = type { i32*, i64, i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@UAUDIO_VERSION_30 = common dso_local global i64 0, align 8
@UAUDIO_VERSION_20 = common dso_local global i64 0, align 8
@UA20_CS_CUR = common dso_local global i32 0, align 4
@UA20_CS_RANGE = common dso_local global i32 0, align 4
@UT_READ_CLASS_INTERFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"err=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"val=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i64, i32, %struct.uaudio_mixer_node*)* @uaudio_mixer_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uaudio_mixer_get(%struct.usb_device* %0, i64 %1, i32 %2, %struct.uaudio_mixer_node* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.uaudio_mixer_node*, align 8
  %10 = alloca %struct.usb_device_request, align 4
  %11 = alloca i32, align 4
  %12 = alloca [8 x i32], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.uaudio_mixer_node* %3, %struct.uaudio_mixer_node** %9, align 8
  %15 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %9, align 8
  %16 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %156

22:                                               ; preds = %4
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @UAUDIO_VERSION_30, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %156

27:                                               ; preds = %22
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @UAUDIO_VERSION_20, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 131
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32, i32* @UA20_CS_CUR, align 4
  %36 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %10, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %10, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @USETW(i32 %38, i64 2)
  br label %46

40:                                               ; preds = %31
  %41 = load i32, i32* @UA20_CS_RANGE, align 4
  %42 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %10, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %10, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @USETW(i32 %44, i64 8)
  br label %46

46:                                               ; preds = %40, %34
  br label %58

47:                                               ; preds = %27
  %48 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %9, align 8
  %49 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @MIX_SIZE(i32 %50)
  store i64 %51, i64* %14, align 8
  %52 = load i32, i32* %8, align 4
  %53 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %10, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %10, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %14, align 8
  %57 = call i32 @USETW(i32 %55, i64 %56)
  br label %58

58:                                               ; preds = %47, %46
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* @UT_READ_CLASS_INTERFACE, align 4
  %61 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %10, i32 0, i32 3
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %10, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %9, align 8
  %65 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = call i32 @USETW(i32 %63, i64 %69)
  %71 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %10, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %9, align 8
  %74 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @USETW(i32 %72, i64 %75)
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %78 = call i32 @memset(i32* %77, i32 0, i32 32)
  %79 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %80 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %81 = call i64 @usbd_do_request(%struct.usb_device* %79, i32* null, %struct.usb_device_request* %10, i32* %80)
  store i64 %81, i64* %13, align 8
  %82 = load i64, i64* %13, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %59
  %85 = load i64, i64* %13, align 8
  %86 = call i32 @usbd_errstr(i64 %85)
  %87 = call i32 @DPRINTF(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %86)
  store i32 0, i32* %5, align 4
  br label %156

88:                                               ; preds = %59
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* @UAUDIO_VERSION_30, align 8
  %91 = icmp sge i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 0, i32* %11, align 4
  br label %137

93:                                               ; preds = %88
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* @UAUDIO_VERSION_20, align 8
  %96 = icmp sge i64 %94, %95
  br i1 %96, label %97, label %129

97:                                               ; preds = %93
  %98 = load i32, i32* %8, align 4
  switch i32 %98, label %127 [
    i32 131, label %99
    i32 129, label %106
    i32 130, label %113
    i32 128, label %120
  ]

99:                                               ; preds = %97
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %101 = load i32, i32* %100, align 16
  %102 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 8
  %105 = or i32 %101, %104
  store i32 %105, i32* %11, align 4
  br label %128

106:                                              ; preds = %97
  %107 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 2
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 3
  %110 = load i32, i32* %109, align 4
  %111 = shl i32 %110, 8
  %112 = or i32 %108, %111
  store i32 %112, i32* %11, align 4
  br label %128

113:                                              ; preds = %97
  %114 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 4
  %115 = load i32, i32* %114, align 16
  %116 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 5
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, 8
  %119 = or i32 %115, %118
  store i32 %119, i32* %11, align 4
  br label %128

120:                                              ; preds = %97
  %121 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 6
  %122 = load i32, i32* %121, align 8
  %123 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 7
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %124, 8
  %126 = or i32 %122, %125
  store i32 %126, i32* %11, align 4
  br label %128

127:                                              ; preds = %97
  store i32 0, i32* %11, align 4
  br label %128

128:                                              ; preds = %127, %120, %113, %106, %99
  br label %136

129:                                              ; preds = %93
  %130 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %131 = load i32, i32* %130, align 16
  %132 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = shl i32 %133, 8
  %135 = or i32 %131, %134
  store i32 %135, i32* %11, align 4
  br label %136

136:                                              ; preds = %129, %128
  br label %137

137:                                              ; preds = %136, %92
  %138 = load i32, i32* %8, align 4
  %139 = icmp eq i32 %138, 131
  br i1 %139, label %146, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* %8, align 4
  %142 = icmp eq i32 %141, 129
  br i1 %142, label %146, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* %8, align 4
  %145 = icmp eq i32 %144, 130
  br i1 %145, label %146, label %152

146:                                              ; preds = %143, %140, %137
  %147 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %9, align 8
  %148 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @uaudio_mixer_signext(i32 %149, i32 %150)
  store i32 %151, i32* %11, align 4
  br label %152

152:                                              ; preds = %146, %143
  %153 = load i32, i32* %11, align 4
  %154 = call i32 @DPRINTFN(i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* %11, align 4
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %152, %84, %26, %21
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i32 @USETW(i32, i64) #1

declare dso_local i64 @MIX_SIZE(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @usbd_do_request(%struct.usb_device*, i32*, %struct.usb_device_request*, i32*) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @usbd_errstr(i64) #1

declare dso_local i32 @uaudio_mixer_signext(i32, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
