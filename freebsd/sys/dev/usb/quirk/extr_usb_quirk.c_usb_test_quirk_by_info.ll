; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/quirk/extr_usb_quirk.c_usb_test_quirk_by_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/quirk/extr_usb_quirk.c_usb_test_quirk_by_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64* }
%struct.usbd_lookup_info = type { i64, i64, i64 }

@UQ_NONE = common dso_local global i64 0, align 8
@usb_quirk_mtx = common dso_local global i32 0, align 4
@USB_DEV_QUIRKS_MAX = common dso_local global i64 0, align 8
@usb_quirks = common dso_local global %struct.TYPE_2__* null, align 8
@USB_SUB_QUIRKS_MAX = common dso_local global i64 0, align 8
@UQ_MATCH_VENDOR_ONLY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Found quirk '%s'.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbd_lookup_info*, i64)* @usb_test_quirk_by_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_test_quirk_by_info(%struct.usbd_lookup_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbd_lookup_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.usbd_lookup_info* %0, %struct.usbd_lookup_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @UQ_NONE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %125

12:                                               ; preds = %2
  %13 = call i32 @USB_MTX_LOCK(i32* @usb_quirk_mtx)
  store i64 0, i64* %6, align 8
  br label %14

14:                                               ; preds = %120, %12
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @USB_DEV_QUIRKS_MAX, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %123

18:                                               ; preds = %14
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @usb_quirks, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.usbd_lookup_info*, %struct.usbd_lookup_info** %4, align 8
  %25 = getelementptr inbounds %struct.usbd_lookup_info, %struct.usbd_lookup_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %48, label %28

28:                                               ; preds = %18
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @usb_quirks, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.usbd_lookup_info*, %struct.usbd_lookup_info** %4, align 8
  %35 = getelementptr inbounds %struct.usbd_lookup_info, %struct.usbd_lookup_info* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %48, label %38

38:                                               ; preds = %28
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @usb_quirks, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.usbd_lookup_info*, %struct.usbd_lookup_info** %4, align 8
  %45 = getelementptr inbounds %struct.usbd_lookup_info, %struct.usbd_lookup_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38, %28, %18
  br label %120

49:                                               ; preds = %38
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @usb_quirks, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.usbd_lookup_info*, %struct.usbd_lookup_info** %4, align 8
  %56 = getelementptr inbounds %struct.usbd_lookup_info, %struct.usbd_lookup_info* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %59, label %94

59:                                               ; preds = %49
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @usb_quirks, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %120

67:                                               ; preds = %59
  store i64 0, i64* %7, align 8
  br label %68

68:                                               ; preds = %85, %67
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* @USB_SUB_QUIRKS_MAX, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %68
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @usb_quirks, align 8
  %74 = load i64, i64* %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 4
  %77 = load i64*, i64** %76, align 8
  %78 = load i64, i64* %7, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @UQ_MATCH_VENDOR_ONLY, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  br label %88

84:                                               ; preds = %72
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %7, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %7, align 8
  br label %68

88:                                               ; preds = %83, %68
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* @USB_SUB_QUIRKS_MAX, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %120

93:                                               ; preds = %88
  br label %94

94:                                               ; preds = %93, %49
  store i64 0, i64* %7, align 8
  br label %95

95:                                               ; preds = %116, %94
  %96 = load i64, i64* %7, align 8
  %97 = load i64, i64* @USB_SUB_QUIRKS_MAX, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %119

99:                                               ; preds = %95
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @usb_quirks, align 8
  %101 = load i64, i64* %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 4
  %104 = load i64*, i64** %103, align 8
  %105 = load i64, i64* %7, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %5, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %99
  %111 = call i32 @USB_MTX_UNLOCK(i32* @usb_quirk_mtx)
  %112 = load i64, i64* %5, align 8
  %113 = call i32 @usb_quirkstr(i64 %112)
  %114 = call i32 @DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %113)
  store i32 1, i32* %3, align 4
  br label %126

115:                                              ; preds = %99
  br label %116

116:                                              ; preds = %115
  %117 = load i64, i64* %7, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %7, align 8
  br label %95

119:                                              ; preds = %95
  br label %120

120:                                              ; preds = %119, %92, %66, %48
  %121 = load i64, i64* %6, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %6, align 8
  br label %14

123:                                              ; preds = %14
  %124 = call i32 @USB_MTX_UNLOCK(i32* @usb_quirk_mtx)
  br label %125

125:                                              ; preds = %123, %11
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %110
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @USB_MTX_LOCK(i32*) #1

declare dso_local i32 @USB_MTX_UNLOCK(i32*) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @usb_quirkstr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
