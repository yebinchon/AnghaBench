; ModuleID = '/home/carl/AnghaBench/freebsd/sys/xen/xenbus/extr_xenbusb.c_xenbusb_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/xen/xenbus/extr_xenbusb.c_xenbusb_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device_ivars = type { i8*, i64, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i8* }

@DS_NOTPRESENT = common dso_local global i64 0, align 8
@xen_suspend_cancelled = common dso_local global i64 0, align 8
@XenbusStateInitialising = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"/state\00", align 1
@M_XENBUS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s/state\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@XenbusStateClosed = common dso_local global i64 0, align 8
@XenbusStateConnected = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenbusb_resume(i8 signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xenbus_device_ivars*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8 %0, i8* %3, align 1
  %10 = load i8, i8* %3, align 1
  %11 = call i64 @device_get_children(i8 signext %10, i8** %4, i32* %7)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %103

13:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %96, %13
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %99

18:                                               ; preds = %14
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = call i64 @device_get_state(i8 signext %23)
  %25 = load i64, i64* @DS_NOTPRESENT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %96

28:                                               ; preds = %18
  %29 = load i64, i64* @xen_suspend_cancelled, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = call i32 @DEVICE_RESUME(i8 signext %36)
  br label %96

38:                                               ; preds = %28
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = call %struct.xenbus_device_ivars* @device_get_ivars(i8 signext %43)
  store %struct.xenbus_device_ivars* %44, %struct.xenbus_device_ivars** %5, align 8
  %45 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %5, align 8
  %46 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %45, i32 0, i32 3
  %47 = call i32 @xs_unregister_watch(%struct.TYPE_3__* %46)
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = load i32, i32* @XenbusStateInitialising, align 4
  %54 = call i32 @xenbus_set_state(i8 signext %52, i32 %53)
  %55 = load i8, i8* %3, align 1
  %56 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %5, align 8
  %57 = call i32 @XENBUSB_GET_OTHEREND_NODE(i8 signext %55, %struct.xenbus_device_ivars* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %38
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %2, align 4
  br label %104

62:                                               ; preds = %38
  %63 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %5, align 8
  %64 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %67 = add nsw i64 %65, %66
  %68 = add nsw i64 %67, 1
  %69 = load i32, i32* @M_XENBUS, align 4
  %70 = load i32, i32* @M_WAITOK, align 4
  %71 = call i8* @malloc(i64 %68, i32 %69, i32 %70)
  store i8* %71, i8** %9, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %5, align 8
  %74 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @sprintf(i8* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %75)
  %77 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %5, align 8
  %78 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* @M_XENBUS, align 4
  %82 = call i32 @free(i8* %80, i32 %81)
  %83 = load i8*, i8** %9, align 8
  %84 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %5, align 8
  %85 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i8* %83, i8** %86, align 8
  %87 = load i8*, i8** %4, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = call i32 @DEVICE_RESUME(i8 signext %91)
  %93 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %5, align 8
  %94 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %93, i32 0, i32 3
  %95 = call i32 @xs_register_watch(%struct.TYPE_3__* %94)
  br label %96

96:                                               ; preds = %62, %31, %27
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %14

99:                                               ; preds = %14
  %100 = load i8*, i8** %4, align 8
  %101 = load i32, i32* @M_TEMP, align 4
  %102 = call i32 @free(i8* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %1
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %103, %60
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i64 @device_get_children(i8 signext, i8**, i32*) #1

declare dso_local i64 @device_get_state(i8 signext) #1

declare dso_local i32 @DEVICE_RESUME(i8 signext) #1

declare dso_local %struct.xenbus_device_ivars* @device_get_ivars(i8 signext) #1

declare dso_local i32 @xs_unregister_watch(%struct.TYPE_3__*) #1

declare dso_local i32 @xenbus_set_state(i8 signext, i32) #1

declare dso_local i32 @XENBUSB_GET_OTHEREND_NODE(i8 signext, %struct.xenbus_device_ivars*) #1

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @xs_register_watch(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
