; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_usb_mouse.c_umouse_data_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_usb_mouse.c_umouse_data_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_data_xfer = type { i32, i32, %struct.usb_data_xfer_block* }
%struct.usb_data_xfer_block = type { i32, i32, i32, i32* }
%struct.umouse_softc = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [45 x i8] c"umouse handle data - DIR=%s|EP=%d, blen %d\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"OUT\00", align 1
@USB_ERR_NORMAL_COMPLETION = common dso_local global i32 0, align 4
@USB_MAX_XFER_BLOCKS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"umouse no buffer provided for input\0D\0A\00", align 1
@USB_ERR_NOMEM = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@USB_NAK = common dso_local global i32 0, align 4
@USB_ERR_STALLED = common dso_local global i32 0, align 4
@USB_STALL = common dso_local global i32 0, align 4
@USB_ERR_SHORT_XFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.usb_data_xfer*, i32, i32)* @umouse_data_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umouse_data_handler(i8* %0, %struct.usb_data_xfer* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.usb_data_xfer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.umouse_softc*, align 8
  %10 = alloca %struct.usb_data_xfer_block*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.usb_data_xfer* %1, %struct.usb_data_xfer** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %6, align 8
  %22 = getelementptr inbounds %struct.usb_data_xfer, %struct.usb_data_xfer* %21, i32 0, i32 2
  %23 = load %struct.usb_data_xfer_block*, %struct.usb_data_xfer_block** %22, align 8
  %24 = getelementptr inbounds %struct.usb_data_xfer_block, %struct.usb_data_xfer_block* %23, i64 0
  %25 = getelementptr inbounds %struct.usb_data_xfer_block, %struct.usb_data_xfer_block* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @DPRINTF(i8* %28)
  store i32* null, i32** %11, align 8
  %30 = load i32, i32* @USB_ERR_NORMAL_COMPLETION, align 4
  store i32 %30, i32* %15, align 4
  store %struct.usb_data_xfer_block* null, %struct.usb_data_xfer_block** %10, align 8
  %31 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %6, align 8
  %32 = getelementptr inbounds %struct.usb_data_xfer, %struct.usb_data_xfer* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %65, %4
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %6, align 8
  %37 = getelementptr inbounds %struct.usb_data_xfer, %struct.usb_data_xfer* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %34
  %41 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %6, align 8
  %42 = getelementptr inbounds %struct.usb_data_xfer, %struct.usb_data_xfer* %41, i32 0, i32 2
  %43 = load %struct.usb_data_xfer_block*, %struct.usb_data_xfer_block** %42, align 8
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.usb_data_xfer_block, %struct.usb_data_xfer_block* %43, i64 %45
  store %struct.usb_data_xfer_block* %46, %struct.usb_data_xfer_block** %10, align 8
  %47 = load %struct.usb_data_xfer_block*, %struct.usb_data_xfer_block** %10, align 8
  %48 = getelementptr inbounds %struct.usb_data_xfer_block, %struct.usb_data_xfer_block* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %40
  %52 = load %struct.usb_data_xfer_block*, %struct.usb_data_xfer_block** %10, align 8
  %53 = getelementptr inbounds %struct.usb_data_xfer_block, %struct.usb_data_xfer_block* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %68

57:                                               ; preds = %51, %40
  %58 = load %struct.usb_data_xfer_block*, %struct.usb_data_xfer_block** %10, align 8
  %59 = getelementptr inbounds %struct.usb_data_xfer_block, %struct.usb_data_xfer_block* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  store %struct.usb_data_xfer_block* null, %struct.usb_data_xfer_block** %10, align 8
  br label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 1
  %63 = load i32, i32* @USB_MAX_XFER_BLOCKS, align 4
  %64 = srem i32 %62, %63
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %13, align 4
  br label %34

68:                                               ; preds = %56, %34
  %69 = load %struct.usb_data_xfer_block*, %struct.usb_data_xfer_block** %10, align 8
  %70 = icmp ne %struct.usb_data_xfer_block* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  br label %166

72:                                               ; preds = %68
  %73 = load %struct.usb_data_xfer_block*, %struct.usb_data_xfer_block** %10, align 8
  %74 = getelementptr inbounds %struct.usb_data_xfer_block, %struct.usb_data_xfer_block* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %11, align 8
  %76 = load %struct.usb_data_xfer_block*, %struct.usb_data_xfer_block** %10, align 8
  %77 = getelementptr inbounds %struct.usb_data_xfer_block, %struct.usb_data_xfer_block* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %12, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = call i32 @DPRINTF(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32, i32* @USB_ERR_NOMEM, align 4
  store i32 %83, i32* %15, align 4
  br label %166

84:                                               ; preds = %72
  %85 = load i8*, i8** %5, align 8
  %86 = bitcast i8* %85 to %struct.umouse_softc*
  store %struct.umouse_softc* %86, %struct.umouse_softc** %9, align 8
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %160

89:                                               ; preds = %84
  %90 = load %struct.umouse_softc*, %struct.umouse_softc** %9, align 8
  %91 = getelementptr inbounds %struct.umouse_softc, %struct.umouse_softc* %90, i32 0, i32 1
  %92 = call i32 @pthread_mutex_lock(i32* %91)
  %93 = load %struct.umouse_softc*, %struct.umouse_softc** %9, align 8
  %94 = getelementptr inbounds %struct.umouse_softc, %struct.umouse_softc* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %112, label %97

97:                                               ; preds = %89
  %98 = load i32, i32* @USB_ERR_CANCELLED, align 4
  store i32 %98, i32* %15, align 4
  %99 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %6, align 8
  %100 = getelementptr inbounds %struct.usb_data_xfer, %struct.usb_data_xfer* %99, i32 0, i32 2
  %101 = load %struct.usb_data_xfer_block*, %struct.usb_data_xfer_block** %100, align 8
  %102 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %6, align 8
  %103 = getelementptr inbounds %struct.usb_data_xfer, %struct.usb_data_xfer* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.usb_data_xfer_block, %struct.usb_data_xfer_block* %101, i64 %105
  %107 = load i32, i32* @USB_NAK, align 4
  %108 = call i32 @USB_DATA_SET_ERRCODE(%struct.usb_data_xfer_block* %106, i32 %107)
  %109 = load %struct.umouse_softc*, %struct.umouse_softc** %9, align 8
  %110 = getelementptr inbounds %struct.umouse_softc, %struct.umouse_softc* %109, i32 0, i32 1
  %111 = call i32 @pthread_mutex_unlock(i32* %110)
  br label %166

112:                                              ; preds = %89
  %113 = load %struct.umouse_softc*, %struct.umouse_softc** %9, align 8
  %114 = getelementptr inbounds %struct.umouse_softc, %struct.umouse_softc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %112
  %118 = load i32, i32* @USB_ERR_STALLED, align 4
  store i32 %118, i32* %15, align 4
  %119 = load %struct.usb_data_xfer_block*, %struct.usb_data_xfer_block** %10, align 8
  %120 = load i32, i32* @USB_STALL, align 4
  %121 = call i32 @USB_DATA_SET_ERRCODE(%struct.usb_data_xfer_block* %119, i32 %120)
  %122 = load %struct.umouse_softc*, %struct.umouse_softc** %9, align 8
  %123 = getelementptr inbounds %struct.umouse_softc, %struct.umouse_softc* %122, i32 0, i32 1
  %124 = call i32 @pthread_mutex_unlock(i32* %123)
  br label %166

125:                                              ; preds = %112
  %126 = load %struct.umouse_softc*, %struct.umouse_softc** %9, align 8
  %127 = getelementptr inbounds %struct.umouse_softc, %struct.umouse_softc* %126, i32 0, i32 0
  store i32 1, i32* %127, align 8
  %128 = load i32, i32* %12, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %154

130:                                              ; preds = %125
  %131 = load %struct.umouse_softc*, %struct.umouse_softc** %9, align 8
  %132 = getelementptr inbounds %struct.umouse_softc, %struct.umouse_softc* %131, i32 0, i32 3
  store i64 0, i64* %132, align 8
  %133 = load %struct.usb_data_xfer_block*, %struct.usb_data_xfer_block** %10, align 8
  %134 = getelementptr inbounds %struct.usb_data_xfer_block, %struct.usb_data_xfer_block* %133, i32 0, i32 1
  store i32 1, i32* %134, align 4
  %135 = load %struct.usb_data_xfer_block*, %struct.usb_data_xfer_block** %10, align 8
  %136 = getelementptr inbounds %struct.usb_data_xfer_block, %struct.usb_data_xfer_block* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 6
  store i32 %138, i32* %136, align 8
  %139 = load i32*, i32** %11, align 8
  %140 = load %struct.umouse_softc*, %struct.umouse_softc** %9, align 8
  %141 = getelementptr inbounds %struct.umouse_softc, %struct.umouse_softc* %140, i32 0, i32 2
  %142 = call i32 @memcpy(i32* %139, i32* %141, i32 6)
  %143 = load i32, i32* %12, align 4
  %144 = sub nsw i32 %143, 6
  %145 = load %struct.usb_data_xfer_block*, %struct.usb_data_xfer_block** %10, align 8
  %146 = getelementptr inbounds %struct.usb_data_xfer_block, %struct.usb_data_xfer_block* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load %struct.usb_data_xfer_block*, %struct.usb_data_xfer_block** %10, align 8
  %148 = getelementptr inbounds %struct.usb_data_xfer_block, %struct.usb_data_xfer_block* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %130
  %152 = load i32, i32* @USB_ERR_SHORT_XFER, align 4
  store i32 %152, i32* %15, align 4
  br label %153

153:                                              ; preds = %151, %130
  br label %154

154:                                              ; preds = %153, %125
  %155 = load %struct.umouse_softc*, %struct.umouse_softc** %9, align 8
  %156 = getelementptr inbounds %struct.umouse_softc, %struct.umouse_softc* %155, i32 0, i32 0
  store i32 0, i32* %156, align 8
  %157 = load %struct.umouse_softc*, %struct.umouse_softc** %9, align 8
  %158 = getelementptr inbounds %struct.umouse_softc, %struct.umouse_softc* %157, i32 0, i32 1
  %159 = call i32 @pthread_mutex_unlock(i32* %158)
  br label %165

160:                                              ; preds = %84
  %161 = load %struct.usb_data_xfer_block*, %struct.usb_data_xfer_block** %10, align 8
  %162 = load i32, i32* @USB_STALL, align 4
  %163 = call i32 @USB_DATA_SET_ERRCODE(%struct.usb_data_xfer_block* %161, i32 %162)
  %164 = load i32, i32* @USB_ERR_STALLED, align 4
  store i32 %164, i32* %15, align 4
  br label %165

165:                                              ; preds = %160, %154
  br label %166

166:                                              ; preds = %165, %117, %97, %81, %71
  %167 = load i32, i32* %15, align 4
  ret i32 %167
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @USB_DATA_SET_ERRCODE(%struct.usb_data_xfer_block*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
