; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_disk.c_cfi_disk_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_disk.c_cfi_disk_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfi_disk_softc = type { i32, i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i8*, %struct.cfi_disk_softc*, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"cfid\00", align 1
@cfi_disk_open = common dso_local global i32 0, align 4
@cfi_disk_close = common dso_local global i32 0, align 4
@cfi_disk_strategy = common dso_local global i32 0, align 4
@cfi_disk_ioctl = common dso_local global i32 0, align 4
@cfi_disk_getattr = common dso_local global i32 0, align 4
@CFI_DISK_SECSIZE = common dso_local global i32 0, align 4
@CFI_DISK_MAXIOSIZE = common dso_local global i32 0, align 4
@DISK_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"CFID I/O lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"cfid_taskq\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@PI_DISK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"cfid taskq\00", align 1
@cfi_io_proc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cfi_disk_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfi_disk_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfi_disk_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i8* @device_get_softc(i32 %5)
  %7 = bitcast i8* %6 to %struct.cfi_disk_softc*
  store %struct.cfi_disk_softc* %7, %struct.cfi_disk_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @device_get_parent(i32 %8)
  %10 = call i8* @device_get_softc(i32 %9)
  %11 = bitcast i8* %10 to %struct.TYPE_6__*
  %12 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %13 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %12, i32 0, i32 5
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %13, align 8
  %14 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %15 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %14, i32 0, i32 5
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %36

20:                                               ; preds = %1
  %21 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %22 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %21, i32 0, i32 5
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 2
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %29 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %28, i32 0, i32 5
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 4
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %2, align 4
  br label %175

36:                                               ; preds = %27, %20, %1
  %37 = call %struct.TYPE_7__* (...) @disk_alloc()
  %38 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %39 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %38, i32 0, i32 4
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %39, align 8
  %40 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %41 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %40, i32 0, i32 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = icmp eq %struct.TYPE_7__* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @ENOMEM, align 4
  store i32 %45, i32* %2, align 4
  br label %175

46:                                               ; preds = %36
  %47 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %48 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %47, i32 0, i32 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %50, align 8
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @device_get_unit(i32 %51)
  %53 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %54 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %53, i32 0, i32 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 12
  store i32 %52, i32* %56, align 8
  %57 = load i32, i32* @cfi_disk_open, align 4
  %58 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %59 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %58, i32 0, i32 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 11
  store i32 %57, i32* %61, align 4
  %62 = load i32, i32* @cfi_disk_close, align 4
  %63 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %64 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %63, i32 0, i32 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 10
  store i32 %62, i32* %66, align 8
  %67 = load i32, i32* @cfi_disk_strategy, align 4
  %68 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %69 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %68, i32 0, i32 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 9
  store i32 %67, i32* %71, align 4
  %72 = load i32, i32* @cfi_disk_ioctl, align 4
  %73 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %74 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %73, i32 0, i32 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 8
  store i32 %72, i32* %76, align 8
  %77 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %78 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %77, i32 0, i32 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 7
  store i32* null, i32** %80, align 8
  %81 = load i32, i32* @cfi_disk_getattr, align 4
  %82 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %83 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %82, i32 0, i32 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 6
  store i32 %81, i32* %85, align 8
  %86 = load i32, i32* @CFI_DISK_SECSIZE, align 4
  %87 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %88 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %87, i32 0, i32 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 5
  store i32 %86, i32* %90, align 4
  %91 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %92 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %91, i32 0, i32 5
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %97 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %96, i32 0, i32 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  store i32 %95, i32* %99, align 8
  %100 = load i32, i32* @CFI_DISK_MAXIOSIZE, align 4
  %101 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %102 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %101, i32 0, i32 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 4
  store i32 %100, i32* %104, align 8
  %105 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %106 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %105, i32 0, i32 5
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %131

111:                                              ; preds = %46
  %112 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %113 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %112, i32 0, i32 5
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %118 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %117, i32 0, i32 5
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %128 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %127, i32 0, i32 4
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 3
  store i32 %126, i32* %130, align 4
  br label %141

131:                                              ; preds = %46
  %132 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %133 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %132, i32 0, i32 4
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %138 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %137, i32 0, i32 4
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 3
  store i32 %136, i32* %140, align 4
  br label %141

141:                                              ; preds = %131, %111
  %142 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %143 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %144 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %143, i32 0, i32 4
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  store %struct.cfi_disk_softc* %142, %struct.cfi_disk_softc** %146, align 8
  %147 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %148 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %147, i32 0, i32 4
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = load i32, i32* @DISK_VERSION, align 4
  %151 = call i32 @disk_create(%struct.TYPE_7__* %149, i32 %150)
  %152 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %153 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %152, i32 0, i32 3
  %154 = load i32, i32* @MTX_DEF, align 4
  %155 = call i32 @mtx_init(i32* %153, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %154)
  %156 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %157 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %156, i32 0, i32 2
  %158 = call i32 @bioq_init(i32* %157)
  %159 = load i32, i32* @M_NOWAIT, align 4
  %160 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %161 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %162 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %161, i32 0, i32 1
  %163 = call i32 @taskqueue_create(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %159, i32 %160, i32* %162)
  %164 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %165 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %167 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %166, i32 0, i32 1
  %168 = load i32, i32* @PI_DISK, align 4
  %169 = call i32 @taskqueue_start_threads(i32* %167, i32 1, i32 %168, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %170 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %171 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %170, i32 0, i32 0
  %172 = load i32, i32* @cfi_io_proc, align 4
  %173 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %174 = call i32 @TASK_INIT(i32* %171, i32 0, i32 %172, %struct.cfi_disk_softc* %173)
  store i32 0, i32* %2, align 4
  br label %175

175:                                              ; preds = %141, %44, %34
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.TYPE_7__* @disk_alloc(...) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @disk_create(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @bioq_init(i32*) #1

declare dso_local i32 @taskqueue_create(i8*, i32, i32, i32*) #1

declare dso_local i32 @taskqueue_start_threads(i32*, i32, i32, i8*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.cfi_disk_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
