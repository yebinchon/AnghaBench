; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus.c_cardbus_driver_added.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus.c_cardbus_driver_added.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardbus_devinfo = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@DS_NOTPRESENT = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"pci%d:%d:%d:%d: reprobing on driver added\0A\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @cardbus_driver_added to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cardbus_driver_added(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cardbus_devinfo*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @DEVICE_IDENTIFY(i32* %10, i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @device_get_children(i32 %13, i32** %6, i32* %5)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %120

17:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %34, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @device_get_state(i32 %28)
  %30 = load i64, i64* @DS_NOTPRESENT, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %37

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %18

37:                                               ; preds = %32, %18
  %38 = load i32, i32* %8, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @device_get_parent(i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @POWER_ENABLE_SOCKET(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %40, %37
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %113, %49
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %116

54:                                               ; preds = %50
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i64 @device_get_state(i32 %60)
  %62 = load i64, i64* @DS_NOTPRESENT, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %113

65:                                               ; preds = %54
  %66 = load i32, i32* %7, align 4
  %67 = call %struct.cardbus_devinfo* @device_get_ivars(i32 %66)
  store %struct.cardbus_devinfo* %67, %struct.cardbus_devinfo** %9, align 8
  %68 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %9, align 8
  %69 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %68, i32 0, i32 0
  %70 = call i32 @pci_print_verbose(%struct.TYPE_6__* %69)
  %71 = load i64, i64* @bootverbose, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %95

73:                                               ; preds = %65
  %74 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %9, align 8
  %75 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %9, align 8
  %80 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %9, align 8
  %85 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %9, align 8
  %90 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %83, i32 %88, i32 %93)
  br label %95

95:                                               ; preds = %73, %65
  %96 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %9, align 8
  %97 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %9, align 8
  %102 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %101, i32 0, i32 0
  %103 = call i32 @pci_cfg_restore(i32 %100, %struct.TYPE_6__* %102)
  %104 = load i32, i32* %7, align 4
  %105 = call i64 @device_probe_and_attach(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %95
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %9, align 8
  %110 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %109, i32 0, i32 0
  %111 = call i32 @pci_cfg_save(i32 %108, %struct.TYPE_6__* %110, i32 1)
  br label %112

112:                                              ; preds = %107, %95
  br label %113

113:                                              ; preds = %112, %64
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %50

116:                                              ; preds = %50
  %117 = load i32*, i32** %6, align 8
  %118 = load i32, i32* @M_TEMP, align 4
  %119 = call i32 @free(i32* %117, i32 %118)
  br label %120

120:                                              ; preds = %116, %16
  ret void
}

declare dso_local i32 @DEVICE_IDENTIFY(i32*, i32) #1

declare dso_local i64 @device_get_children(i32, i32**, i32*) #1

declare dso_local i64 @device_get_state(i32) #1

declare dso_local i32 @POWER_ENABLE_SOCKET(i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.cardbus_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @pci_print_verbose(%struct.TYPE_6__*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pci_cfg_restore(i32, %struct.TYPE_6__*) #1

declare dso_local i64 @device_probe_and_attach(i32) #1

declare dso_local i32 @pci_cfg_save(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
