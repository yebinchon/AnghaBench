; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/usb/extr_bhnd_usb.c_bhnd_usb_add_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/usb/extr_bhnd_usb.c_bhnd_usb_add_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_usb_softc = type { i64 }
%struct.bhnd_usb_devinfo = type { i32, i32, i32, i64, i64 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ohci\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ehci\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Unknown subdevice\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"could not map %s interrupt: %d\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"%s: irq=%ju maddr=0x%jx\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"could not add %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i8*, i32)* @bhnd_usb_add_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bhnd_usb_add_child(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bhnd_usb_softc*, align 8
  %11 = alloca %struct.bhnd_usb_devinfo*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = call %struct.bhnd_usb_softc* @device_get_softc(i32* %14)
  store %struct.bhnd_usb_softc* %15, %struct.bhnd_usb_softc** %10, align 8
  %16 = load i32, i32* @M_DEVBUF, align 4
  %17 = load i32, i32* @M_NOWAIT, align 4
  %18 = load i32, i32* @M_ZERO, align 4
  %19 = or i32 %17, %18
  %20 = call %struct.bhnd_usb_devinfo* @malloc(i32 32, i32 %16, i32 %19)
  store %struct.bhnd_usb_devinfo* %20, %struct.bhnd_usb_devinfo** %11, align 8
  %21 = load %struct.bhnd_usb_devinfo*, %struct.bhnd_usb_devinfo** %11, align 8
  %22 = icmp eq %struct.bhnd_usb_devinfo* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %144

24:                                               ; preds = %4
  %25 = load %struct.bhnd_usb_devinfo*, %struct.bhnd_usb_devinfo** %11, align 8
  %26 = getelementptr inbounds %struct.bhnd_usb_devinfo, %struct.bhnd_usb_devinfo* %25, i32 0, i32 2
  %27 = call i32 @resource_list_init(i32* %26)
  %28 = load %struct.bhnd_usb_devinfo*, %struct.bhnd_usb_devinfo** %11, align 8
  %29 = getelementptr inbounds %struct.bhnd_usb_devinfo, %struct.bhnd_usb_devinfo* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i64 @strncmp(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %24
  %34 = load %struct.bhnd_usb_softc*, %struct.bhnd_usb_softc** %10, align 8
  %35 = getelementptr inbounds %struct.bhnd_usb_softc, %struct.bhnd_usb_softc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 0
  %38 = load %struct.bhnd_usb_devinfo*, %struct.bhnd_usb_devinfo** %11, align 8
  %39 = getelementptr inbounds %struct.bhnd_usb_devinfo, %struct.bhnd_usb_devinfo* %38, i32 0, i32 4
  store i64 %37, i64* %39, align 8
  %40 = load %struct.bhnd_usb_devinfo*, %struct.bhnd_usb_devinfo** %11, align 8
  %41 = getelementptr inbounds %struct.bhnd_usb_devinfo, %struct.bhnd_usb_devinfo* %40, i32 0, i32 1
  store i32 512, i32* %41, align 4
  br label %58

42:                                               ; preds = %24
  %43 = load i8*, i8** %8, align 8
  %44 = call i64 @strncmp(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load %struct.bhnd_usb_softc*, %struct.bhnd_usb_softc** %10, align 8
  %48 = getelementptr inbounds %struct.bhnd_usb_softc, %struct.bhnd_usb_softc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 0
  %51 = load %struct.bhnd_usb_devinfo*, %struct.bhnd_usb_devinfo** %11, align 8
  %52 = getelementptr inbounds %struct.bhnd_usb_devinfo, %struct.bhnd_usb_devinfo* %51, i32 0, i32 4
  store i64 %50, i64* %52, align 8
  %53 = load %struct.bhnd_usb_devinfo*, %struct.bhnd_usb_devinfo** %11, align 8
  %54 = getelementptr inbounds %struct.bhnd_usb_devinfo, %struct.bhnd_usb_devinfo* %53, i32 0, i32 1
  store i32 4096, i32* %54, align 4
  br label %57

55:                                               ; preds = %42
  %56 = call i32 @panic(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %46
  br label %58

58:                                               ; preds = %57, %33
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.bhnd_usb_devinfo*, %struct.bhnd_usb_devinfo** %11, align 8
  %61 = getelementptr inbounds %struct.bhnd_usb_devinfo, %struct.bhnd_usb_devinfo* %60, i32 0, i32 3
  %62 = call i32 @bhnd_map_intr(i32* %59, i32 0, i64* %61)
  store i32 %62, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i32*, i32** %6, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i32 (i32*, i8*, i8*, ...) @BHND_ERROR_DEV(i32* %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %66, i32 %67)
  br label %126

69:                                               ; preds = %58
  %70 = load %struct.bhnd_usb_devinfo*, %struct.bhnd_usb_devinfo** %11, align 8
  %71 = getelementptr inbounds %struct.bhnd_usb_devinfo, %struct.bhnd_usb_devinfo* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load %struct.bhnd_usb_devinfo*, %struct.bhnd_usb_devinfo** %11, align 8
  %75 = getelementptr inbounds %struct.bhnd_usb_devinfo, %struct.bhnd_usb_devinfo* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.bhnd_usb_devinfo*, %struct.bhnd_usb_devinfo** %11, align 8
  %78 = getelementptr inbounds %struct.bhnd_usb_devinfo, %struct.bhnd_usb_devinfo* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @BHND_INFO_DEV(i32* %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %73, i64 %76, i64 %79)
  %81 = load %struct.bhnd_usb_devinfo*, %struct.bhnd_usb_devinfo** %11, align 8
  %82 = getelementptr inbounds %struct.bhnd_usb_devinfo, %struct.bhnd_usb_devinfo* %81, i32 0, i32 2
  %83 = load i32, i32* @SYS_RES_MEMORY, align 4
  %84 = load %struct.bhnd_usb_devinfo*, %struct.bhnd_usb_devinfo** %11, align 8
  %85 = getelementptr inbounds %struct.bhnd_usb_devinfo, %struct.bhnd_usb_devinfo* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.bhnd_usb_devinfo*, %struct.bhnd_usb_devinfo** %11, align 8
  %88 = getelementptr inbounds %struct.bhnd_usb_devinfo, %struct.bhnd_usb_devinfo* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.bhnd_usb_devinfo*, %struct.bhnd_usb_devinfo** %11, align 8
  %91 = getelementptr inbounds %struct.bhnd_usb_devinfo, %struct.bhnd_usb_devinfo* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %89, %93
  %95 = sub nsw i64 %94, 1
  %96 = load %struct.bhnd_usb_devinfo*, %struct.bhnd_usb_devinfo** %11, align 8
  %97 = getelementptr inbounds %struct.bhnd_usb_devinfo, %struct.bhnd_usb_devinfo* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @resource_list_add(i32* %82, i32 %83, i32 0, i64 %86, i64 %95, i32 %98)
  %100 = load %struct.bhnd_usb_devinfo*, %struct.bhnd_usb_devinfo** %11, align 8
  %101 = getelementptr inbounds %struct.bhnd_usb_devinfo, %struct.bhnd_usb_devinfo* %100, i32 0, i32 2
  %102 = load i32, i32* @SYS_RES_IRQ, align 4
  %103 = load %struct.bhnd_usb_devinfo*, %struct.bhnd_usb_devinfo** %11, align 8
  %104 = getelementptr inbounds %struct.bhnd_usb_devinfo, %struct.bhnd_usb_devinfo* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.bhnd_usb_devinfo*, %struct.bhnd_usb_devinfo** %11, align 8
  %107 = getelementptr inbounds %struct.bhnd_usb_devinfo, %struct.bhnd_usb_devinfo* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @resource_list_add(i32* %101, i32 %102, i32 0, i64 %105, i64 %108, i32 1)
  %110 = load i32*, i32** %6, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load i8*, i8** %8, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32* @device_add_child_ordered(i32* %110, i32 %111, i8* %112, i32 %113)
  store i32* %114, i32** %12, align 8
  %115 = load i32*, i32** %12, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %69
  %118 = load i32*, i32** %6, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = call i32 (i32*, i8*, i8*, ...) @BHND_ERROR_DEV(i32* %118, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %119)
  br label %126

121:                                              ; preds = %69
  %122 = load i32*, i32** %12, align 8
  %123 = load %struct.bhnd_usb_devinfo*, %struct.bhnd_usb_devinfo** %11, align 8
  %124 = call i32 @device_set_ivars(i32* %122, %struct.bhnd_usb_devinfo* %123)
  %125 = load i32*, i32** %12, align 8
  store i32* %125, i32** %5, align 8
  br label %144

126:                                              ; preds = %117, %64
  %127 = load %struct.bhnd_usb_devinfo*, %struct.bhnd_usb_devinfo** %11, align 8
  %128 = getelementptr inbounds %struct.bhnd_usb_devinfo, %struct.bhnd_usb_devinfo* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load i32*, i32** %6, align 8
  %133 = load %struct.bhnd_usb_devinfo*, %struct.bhnd_usb_devinfo** %11, align 8
  %134 = getelementptr inbounds %struct.bhnd_usb_devinfo, %struct.bhnd_usb_devinfo* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @bhnd_unmap_intr(i32* %132, i64 %135)
  br label %137

137:                                              ; preds = %131, %126
  %138 = load %struct.bhnd_usb_devinfo*, %struct.bhnd_usb_devinfo** %11, align 8
  %139 = getelementptr inbounds %struct.bhnd_usb_devinfo, %struct.bhnd_usb_devinfo* %138, i32 0, i32 2
  %140 = call i32 @resource_list_free(i32* %139)
  %141 = load %struct.bhnd_usb_devinfo*, %struct.bhnd_usb_devinfo** %11, align 8
  %142 = load i32, i32* @M_DEVBUF, align 4
  %143 = call i32 @free(%struct.bhnd_usb_devinfo* %141, i32 %142)
  store i32* null, i32** %5, align 8
  br label %144

144:                                              ; preds = %137, %121, %23
  %145 = load i32*, i32** %5, align 8
  ret i32* %145
}

declare dso_local %struct.bhnd_usb_softc* @device_get_softc(i32*) #1

declare dso_local %struct.bhnd_usb_devinfo* @malloc(i32, i32, i32) #1

declare dso_local i32 @resource_list_init(i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @bhnd_map_intr(i32*, i32, i64*) #1

declare dso_local i32 @BHND_ERROR_DEV(i32*, i8*, i8*, ...) #1

declare dso_local i32 @BHND_INFO_DEV(i32*, i8*, i8*, i64, i64) #1

declare dso_local i32 @resource_list_add(i32*, i32, i32, i64, i64, i32) #1

declare dso_local i32* @device_add_child_ordered(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.bhnd_usb_devinfo*) #1

declare dso_local i32 @bhnd_unmap_intr(i32*, i64) #1

declare dso_local i32 @resource_list_free(i32*) #1

declare dso_local i32 @free(%struct.bhnd_usb_devinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
