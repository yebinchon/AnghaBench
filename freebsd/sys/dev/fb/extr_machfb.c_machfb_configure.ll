; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_machfb.c_machfb_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_machfb.c_machfb_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machfb_softc = type { i32, i32, i64, %struct.TYPE_5__, i32, i32, i32*, i32*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@VIO_PROBE_ONLY = common dso_local global i32 0, align 4
@MACHFB_DRIVER_NAME = common dso_local global i32 0, align 4
@machfb_softc = common dso_local global %struct.machfb_softc zeroinitializer, align 8
@V_ADP_REGISTERED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"vendor-id\00", align 1
@ATI_VENDOR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"device-id\00", align 1
@machfb_info = common dso_local global %struct.TYPE_4__* null, align 8
@MACHFB_CONSOLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"revision-id\00", align 1
@machfb_bst_store = common dso_local global i32* null, align 8
@MACH64_REG_OFF = common dso_local global i32 0, align 4
@MACH64_REG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @machfb_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @machfb_configure(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.machfb_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @VIO_PROBE_ONLY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %23, %16
  %18 = load i32, i32* @MACHFB_DRIVER_NAME, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i64 @vid_find_adapter(i32 %18, i32 %19)
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %10, align 4
  br label %17

26:                                               ; preds = %17
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %2, align 4
  br label %150

28:                                               ; preds = %1
  store %struct.machfb_softc* @machfb_softc, %struct.machfb_softc** %4, align 8
  %29 = load %struct.machfb_softc*, %struct.machfb_softc** %4, align 8
  %30 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @V_ADP_REGISTERED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %149

37:                                               ; preds = %28
  %38 = call i32 @OF_finddevice(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %38, i32* %5, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %150

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @OF_getprop(i32 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64* %7, i32 8)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %150

46:                                               ; preds = %41
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @OF_instance_to_package(i64 %47)
  store i32 %48, i32* %6, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %150

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @OF_getprop(i32 %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64* %9, i32 8)
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* @ATI_VENDOR, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %51
  store i32 0, i32* %2, align 4
  br label %150

60:                                               ; preds = %55
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @OF_getprop(i32 %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64* %9, i32 8)
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %150

65:                                               ; preds = %60
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %91, %65
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @machfb_info, align 8
  %69 = call i32 @nitems(%struct.TYPE_4__* %68)
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %94

71:                                               ; preds = %66
  %72 = load i64, i64* %9, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @machfb_info, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %72, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %71
  %81 = load i32, i32* @MACHFB_CONSOLE, align 4
  %82 = load %struct.machfb_softc*, %struct.machfb_softc** %4, align 8
  %83 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.machfb_softc*, %struct.machfb_softc** %4, align 8
  %86 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load i64, i64* %9, align 8
  %88 = load %struct.machfb_softc*, %struct.machfb_softc** %4, align 8
  %89 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %88, i32 0, i32 8
  store i64 %87, i64* %89, align 8
  br label %94

90:                                               ; preds = %71
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %66

94:                                               ; preds = %80, %66
  %95 = load %struct.machfb_softc*, %struct.machfb_softc** %4, align 8
  %96 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @MACHFB_CONSOLE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %94
  store i32 0, i32* %2, align 4
  br label %150

102:                                              ; preds = %94
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.machfb_softc*, %struct.machfb_softc** %4, align 8
  %105 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %104, i32 0, i32 2
  %106 = call i32 @OF_getprop(i32 %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64* %105, i32 8)
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  store i32 0, i32* %2, align 4
  br label %150

109:                                              ; preds = %102
  %110 = load i32, i32* %6, align 4
  %111 = call i64 @OF_decode_addr(i32 %110, i32 0, i32* %11, i32* %8)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  store i32 0, i32* %2, align 4
  br label %150

114:                                              ; preds = %109
  %115 = load i32*, i32** @machfb_bst_store, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load %struct.machfb_softc*, %struct.machfb_softc** %4, align 8
  %118 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %117, i32 0, i32 7
  store i32* %116, i32** %118, align 8
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.machfb_softc*, %struct.machfb_softc** %4, align 8
  %122 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %121, i32 0, i32 7
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @sparc64_fake_bustag(i32 %119, i32 %120, i32* %123)
  %125 = load %struct.machfb_softc*, %struct.machfb_softc** %4, align 8
  %126 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %125, i32 0, i32 5
  store i32 %124, i32* %126, align 8
  %127 = load %struct.machfb_softc*, %struct.machfb_softc** %4, align 8
  %128 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %127, i32 0, i32 7
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.machfb_softc*, %struct.machfb_softc** %4, align 8
  %131 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %130, i32 0, i32 6
  store i32* %129, i32** %131, align 8
  %132 = load %struct.machfb_softc*, %struct.machfb_softc** %4, align 8
  %133 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %132, i32 0, i32 6
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.machfb_softc*, %struct.machfb_softc** %4, align 8
  %136 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @MACH64_REG_OFF, align 4
  %139 = load i32, i32* @MACH64_REG_SIZE, align 4
  %140 = load %struct.machfb_softc*, %struct.machfb_softc** %4, align 8
  %141 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %140, i32 0, i32 4
  %142 = call i32 @bus_space_subregion(i32* %134, i32 %137, i32 %138, i32 %139, i32* %141)
  %143 = load %struct.machfb_softc*, %struct.machfb_softc** %4, align 8
  %144 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %143, i32 0, i32 3
  %145 = call i64 @machfb_init(i32 0, %struct.TYPE_5__* %144, i32 0)
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %114
  store i32 0, i32* %2, align 4
  br label %150

148:                                              ; preds = %114
  br label %149

149:                                              ; preds = %148, %36
  store i32 1, i32* %2, align 4
  br label %150

150:                                              ; preds = %149, %147, %113, %108, %101, %64, %59, %50, %45, %40, %26
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i64 @vid_find_adapter(i32, i32) #1

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i32 @OF_getprop(i32, i8*, i64*, i32) #1

declare dso_local i32 @OF_instance_to_package(i64) #1

declare dso_local i32 @nitems(%struct.TYPE_4__*) #1

declare dso_local i64 @OF_decode_addr(i32, i32, i32*, i32*) #1

declare dso_local i32 @sparc64_fake_bustag(i32, i32, i32*) #1

declare dso_local i32 @bus_space_subregion(i32*, i32, i32, i32, i32*) #1

declare dso_local i64 @machfb_init(i32, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
