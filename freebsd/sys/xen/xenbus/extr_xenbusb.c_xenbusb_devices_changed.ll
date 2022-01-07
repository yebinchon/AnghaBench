; ModuleID = '/home/carl/AnghaBench/freebsd/sys/xen/xenbus/extr_xenbusb.c_xenbusb_devices_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/xen/xenbus/extr_xenbusb.c_xenbusb_devices_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xs_watch = type { i64 }
%struct.xenbusb_softc = type { i32, i32, i32 }

@XS_WATCH_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"xenbusb_devices_changed: Short Event Data.\0A\00", align 1
@M_XENBUS = common dso_local global i32 0, align 4
@taskqueue_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xs_watch*, i8**, i32)* @xenbusb_devices_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenbusb_devices_changed(%struct.xs_watch* %0, i8** %1, i32 %2) #0 {
  %4 = alloca %struct.xs_watch*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xenbusb_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.xs_watch* %0, %struct.xs_watch** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.xs_watch*, %struct.xs_watch** %4, align 8
  %15 = getelementptr inbounds %struct.xs_watch, %struct.xs_watch* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.xenbusb_softc*
  store %struct.xenbusb_softc* %17, %struct.xenbusb_softc** %7, align 8
  %18 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %7, align 8
  %19 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @XS_WATCH_PATH, align 4
  %23 = icmp ule i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %104

27:                                               ; preds = %3
  %28 = load i8**, i8*** %5, align 8
  %29 = load i32, i32* @XS_WATCH_PATH, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* @M_XENBUS, align 4
  %34 = call i8* @strdup(i8* %32, i32 %33)
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i8* @strchr(i8* %35, i8 signext 47)
  store i8* %36, i8** %12, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %100

40:                                               ; preds = %27
  %41 = load i8*, i8** %12, align 8
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** %12, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i8* @strchr(i8* %44, i8 signext 47)
  store i8* %45, i8** %12, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %100

49:                                               ; preds = %40
  %50 = load i8*, i8** %12, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %12, align 8
  store i8 0, i8* %50, align 1
  %52 = load i8*, i8** %12, align 8
  store i8* %52, i8** %11, align 8
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %68, %49
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %7, align 8
  %56 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load i8*, i8** %12, align 8
  %61 = call i8* @strchr(i8* %60, i8 signext 47)
  store i8* %61, i8** %12, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %71

65:                                               ; preds = %59
  %66 = load i8*, i8** %12, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %12, align 8
  br label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %13, align 4
  br label %53

71:                                               ; preds = %64, %53
  %72 = load i8*, i8** %12, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i8*, i8** %12, align 8
  store i8 0, i8* %75, align 1
  br label %76

76:                                               ; preds = %74, %71
  %77 = load i8*, i8** %11, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %76
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %7, align 8
  %84 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %85, 1
  %87 = icmp sge i32 %82, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %81
  %89 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %7, align 8
  %90 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** %10, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = call i32 @xenbusb_add_device(i32 %91, i8* %92, i8* %93)
  %95 = load i32, i32* @taskqueue_thread, align 4
  %96 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %7, align 8
  %97 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %96, i32 0, i32 1
  %98 = call i32 @taskqueue_enqueue(i32 %95, i32* %97)
  br label %99

99:                                               ; preds = %88, %81, %76
  br label %100

100:                                              ; preds = %99, %48, %39
  %101 = load i8*, i8** %9, align 8
  %102 = load i32, i32* @M_XENBUS, align 4
  %103 = call i32 @free(i8* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %24
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i8* @strdup(i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @xenbusb_add_device(i32, i8*, i8*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
