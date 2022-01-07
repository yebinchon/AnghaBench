; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_n25q.c_n25q_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_n25q.c_n25q_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.n25q_flash_ident = type { i32, i32, i32, i32 }
%struct.n25q_softc = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i32, i32, i32*, i32, i32, i32, %struct.n25q_softc*, i32, i32, i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@n25q_open = common dso_local global i32 0, align 4
@n25q_close = common dso_local global i32 0, align 4
@n25q_strategy = common dso_local global i32 0, align 4
@n25q_getattr = common dso_local global i32 0, align 4
@n25q_ioctl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"flash/qspi\00", align 1
@DFLTPHYS = common dso_local global i32 0, align 4
@FLASH_SECTORSIZE = common dso_local global i32 0, align 4
@FL_ENABLE_4B_ADDR = common dso_local global i32 0, align 4
@CMD_ENTER_4B_MODE = common dso_local global i32 0, align 4
@FL_DISABLE_4B_ADDR = common dso_local global i32 0, align 4
@CMD_EXIT_4B_MODE = common dso_local global i32 0, align 4
@DISK_VERSION = common dso_local global i32 0, align 4
@n25q_task = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"task: n25q flash\00", align 1
@TSTATE_RUNNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"%s, sector %d bytes, %d sectors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @n25q_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n25q_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.n25q_flash_ident*, align 8
  %5 = alloca %struct.n25q_softc*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.n25q_softc* @device_get_softc(i32 %6)
  store %struct.n25q_softc* %7, %struct.n25q_softc** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.n25q_softc*, %struct.n25q_softc** %5, align 8
  %10 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = load %struct.n25q_softc*, %struct.n25q_softc** %5, align 8
  %12 = call i32 @N25Q_LOCK_INIT(%struct.n25q_softc* %11)
  %13 = load %struct.n25q_softc*, %struct.n25q_softc** %5, align 8
  %14 = call %struct.n25q_flash_ident* @n25q_get_device_ident(%struct.n25q_softc* %13)
  store %struct.n25q_flash_ident* %14, %struct.n25q_flash_ident** %4, align 8
  %15 = load %struct.n25q_flash_ident*, %struct.n25q_flash_ident** %4, align 8
  %16 = icmp eq %struct.n25q_flash_ident* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %2, align 4
  br label %161

19:                                               ; preds = %1
  %20 = load %struct.n25q_softc*, %struct.n25q_softc** %5, align 8
  %21 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @n25q_wait_for_device_ready(i32 %22)
  %24 = call %struct.TYPE_3__* (...) @disk_alloc()
  %25 = load %struct.n25q_softc*, %struct.n25q_softc** %5, align 8
  %26 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %25, i32 0, i32 6
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %26, align 8
  %27 = load i32, i32* @n25q_open, align 4
  %28 = load %struct.n25q_softc*, %struct.n25q_softc** %5, align 8
  %29 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %28, i32 0, i32 6
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 12
  store i32 %27, i32* %31, align 8
  %32 = load i32, i32* @n25q_close, align 4
  %33 = load %struct.n25q_softc*, %struct.n25q_softc** %5, align 8
  %34 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %33, i32 0, i32 6
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 11
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* @n25q_strategy, align 4
  %38 = load %struct.n25q_softc*, %struct.n25q_softc** %5, align 8
  %39 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %38, i32 0, i32 6
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 10
  store i32 %37, i32* %41, align 8
  %42 = load i32, i32* @n25q_getattr, align 4
  %43 = load %struct.n25q_softc*, %struct.n25q_softc** %5, align 8
  %44 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %43, i32 0, i32 6
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 9
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* @n25q_ioctl, align 4
  %48 = load %struct.n25q_softc*, %struct.n25q_softc** %5, align 8
  %49 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %48, i32 0, i32 6
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 8
  store i32 %47, i32* %51, align 8
  %52 = load %struct.n25q_softc*, %struct.n25q_softc** %5, align 8
  %53 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %52, i32 0, i32 6
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %55, align 8
  %56 = load %struct.n25q_softc*, %struct.n25q_softc** %5, align 8
  %57 = load %struct.n25q_softc*, %struct.n25q_softc** %5, align 8
  %58 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %57, i32 0, i32 6
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 7
  store %struct.n25q_softc* %56, %struct.n25q_softc** %60, align 8
  %61 = load i32, i32* @DFLTPHYS, align 4
  %62 = load %struct.n25q_softc*, %struct.n25q_softc** %5, align 8
  %63 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %62, i32 0, i32 6
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 6
  store i32 %61, i32* %65, align 8
  %66 = load i32, i32* @FLASH_SECTORSIZE, align 4
  %67 = load %struct.n25q_softc*, %struct.n25q_softc** %5, align 8
  %68 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %67, i32 0, i32 6
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 5
  store i32 %66, i32* %70, align 4
  %71 = load %struct.n25q_flash_ident*, %struct.n25q_flash_ident** %4, align 8
  %72 = getelementptr inbounds %struct.n25q_flash_ident, %struct.n25q_flash_ident* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.n25q_flash_ident*, %struct.n25q_flash_ident** %4, align 8
  %75 = getelementptr inbounds %struct.n25q_flash_ident, %struct.n25q_flash_ident* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %73, %76
  %78 = load %struct.n25q_softc*, %struct.n25q_softc** %5, align 8
  %79 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %78, i32 0, i32 6
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store i32 %77, i32* %81, align 8
  %82 = load %struct.n25q_softc*, %struct.n25q_softc** %5, align 8
  %83 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @device_get_unit(i32 %84)
  %86 = load %struct.n25q_softc*, %struct.n25q_softc** %5, align 8
  %87 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %86, i32 0, i32 6
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 4
  store i32 %85, i32* %89, align 8
  %90 = load %struct.n25q_softc*, %struct.n25q_softc** %5, align 8
  %91 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %90, i32 0, i32 6
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  store i32* null, i32** %93, align 8
  %94 = load %struct.n25q_flash_ident*, %struct.n25q_flash_ident** %4, align 8
  %95 = getelementptr inbounds %struct.n25q_flash_ident, %struct.n25q_flash_ident* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.n25q_softc*, %struct.n25q_softc** %5, align 8
  %98 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.n25q_flash_ident*, %struct.n25q_flash_ident** %4, align 8
  %100 = getelementptr inbounds %struct.n25q_flash_ident, %struct.n25q_flash_ident* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.n25q_softc*, %struct.n25q_softc** %5, align 8
  %103 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.n25q_softc*, %struct.n25q_softc** %5, align 8
  %105 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @FL_ENABLE_4B_ADDR, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %19
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* @CMD_ENTER_4B_MODE, align 4
  %113 = call i32 @n25q_set_4b_mode(i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %19
  %115 = load %struct.n25q_softc*, %struct.n25q_softc** %5, align 8
  %116 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @FL_DISABLE_4B_ADDR, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %114
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* @CMD_EXIT_4B_MODE, align 4
  %124 = call i32 @n25q_set_4b_mode(i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %121, %114
  %126 = load %struct.n25q_flash_ident*, %struct.n25q_flash_ident** %4, align 8
  %127 = getelementptr inbounds %struct.n25q_flash_ident, %struct.n25q_flash_ident* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.n25q_softc*, %struct.n25q_softc** %5, align 8
  %130 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %129, i32 0, i32 6
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  store i32 %128, i32* %132, align 4
  %133 = load %struct.n25q_softc*, %struct.n25q_softc** %5, align 8
  %134 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %133, i32 0, i32 6
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = load i32, i32* @DISK_VERSION, align 4
  %137 = call i32 @disk_create(%struct.TYPE_3__* %135, i32 %136)
  %138 = load %struct.n25q_softc*, %struct.n25q_softc** %5, align 8
  %139 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %138, i32 0, i32 5
  %140 = call i32 @bioq_init(i32* %139)
  %141 = load %struct.n25q_softc*, %struct.n25q_softc** %5, align 8
  %142 = load %struct.n25q_softc*, %struct.n25q_softc** %5, align 8
  %143 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %142, i32 0, i32 4
  %144 = call i32 @kproc_create(i32* @n25q_task, %struct.n25q_softc* %141, i32* %143, i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %145 = load i32, i32* @TSTATE_RUNNING, align 4
  %146 = load %struct.n25q_softc*, %struct.n25q_softc** %5, align 8
  %147 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %146, i32 0, i32 3
  store i32 %145, i32* %147, align 4
  %148 = load %struct.n25q_softc*, %struct.n25q_softc** %5, align 8
  %149 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.n25q_flash_ident*, %struct.n25q_flash_ident** %4, align 8
  %152 = getelementptr inbounds %struct.n25q_flash_ident, %struct.n25q_flash_ident* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.n25q_flash_ident*, %struct.n25q_flash_ident** %4, align 8
  %155 = getelementptr inbounds %struct.n25q_flash_ident, %struct.n25q_flash_ident* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.n25q_flash_ident*, %struct.n25q_flash_ident** %4, align 8
  %158 = getelementptr inbounds %struct.n25q_flash_ident, %struct.n25q_flash_ident* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @device_printf(i32 %150, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %153, i32 %156, i32 %159)
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %125, %17
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.n25q_softc* @device_get_softc(i32) #1

declare dso_local i32 @N25Q_LOCK_INIT(%struct.n25q_softc*) #1

declare dso_local %struct.n25q_flash_ident* @n25q_get_device_ident(%struct.n25q_softc*) #1

declare dso_local i32 @n25q_wait_for_device_ready(i32) #1

declare dso_local %struct.TYPE_3__* @disk_alloc(...) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @n25q_set_4b_mode(i32, i32) #1

declare dso_local i32 @disk_create(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @bioq_init(i32*) #1

declare dso_local i32 @kproc_create(i32*, %struct.n25q_softc*, i32*, i32, i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
