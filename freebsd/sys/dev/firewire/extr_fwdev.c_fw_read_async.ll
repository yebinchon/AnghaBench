; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwdev.c_fw_read_async.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwdev.c_fw_read_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (%struct.TYPE_12__*, i32)* }
%struct.fw_drv1 = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.tcode_info* }
%struct.tcode_info = type { i32 }
%struct.uio = type { i32 }
%struct.fw_xfer = type { %struct.TYPE_13__*, %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32, %struct.fw_pkt*, %struct.fw_pkt }
%struct.fw_pkt = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.fw_bind = type { i32 }

@FWPRI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"fwra\00", align 1
@link = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@fc = common dso_local global %struct.TYPE_12__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_drv1*, %struct.uio*, i32)* @fw_read_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_read_async(%struct.fw_drv1* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fw_drv1*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fw_xfer*, align 8
  %11 = alloca %struct.fw_bind*, align 8
  %12 = alloca %struct.fw_pkt*, align 8
  %13 = alloca %struct.tcode_info*, align 8
  store %struct.fw_drv1* %0, %struct.fw_drv1** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.fw_drv1*, %struct.fw_drv1** %5, align 8
  %15 = getelementptr inbounds %struct.fw_drv1, %struct.fw_drv1* %14, i32 0, i32 1
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %17 = call i32 @FW_GLOCK(%struct.TYPE_13__* %16)
  br label %18

18:                                               ; preds = %28, %3
  %19 = load %struct.fw_drv1*, %struct.fw_drv1** %5, align 8
  %20 = getelementptr inbounds %struct.fw_drv1, %struct.fw_drv1* %19, i32 0, i32 0
  %21 = call %struct.fw_xfer* @STAILQ_FIRST(i32* %20)
  store %struct.fw_xfer* %21, %struct.fw_xfer** %10, align 8
  %22 = icmp eq %struct.fw_xfer* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 0
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi i1 [ false, %18 ], [ %25, %23 ]
  br i1 %27, label %28, label %37

28:                                               ; preds = %26
  %29 = load %struct.fw_drv1*, %struct.fw_drv1** %5, align 8
  %30 = getelementptr inbounds %struct.fw_drv1, %struct.fw_drv1* %29, i32 0, i32 0
  %31 = load %struct.fw_drv1*, %struct.fw_drv1** %5, align 8
  %32 = getelementptr inbounds %struct.fw_drv1, %struct.fw_drv1* %31, i32 0, i32 1
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = call i32 @FW_GMTX(%struct.TYPE_13__* %33)
  %35 = load i32, i32* @FWPRI, align 4
  %36 = call i32 @msleep(i32* %30, i32 %34, i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %36, i32* %8, align 4
  br label %18

37:                                               ; preds = %26
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load %struct.fw_drv1*, %struct.fw_drv1** %5, align 8
  %42 = getelementptr inbounds %struct.fw_drv1, %struct.fw_drv1* %41, i32 0, i32 1
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = call i32 @FW_GUNLOCK(%struct.TYPE_13__* %43)
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %4, align 4
  br label %117

46:                                               ; preds = %37
  %47 = call i32 (...) @splfw()
  store i32 %47, i32* %9, align 4
  %48 = load %struct.fw_drv1*, %struct.fw_drv1** %5, align 8
  %49 = getelementptr inbounds %struct.fw_drv1, %struct.fw_drv1* %48, i32 0, i32 0
  %50 = load i32, i32* @link, align 4
  %51 = call i32 @STAILQ_REMOVE_HEAD(i32* %49, i32 %50)
  %52 = load %struct.fw_xfer*, %struct.fw_xfer** %10, align 8
  %53 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %52, i32 0, i32 0
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = call i32 @FW_GUNLOCK(%struct.TYPE_13__* %54)
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @splx(i32 %56)
  %58 = load %struct.fw_xfer*, %struct.fw_xfer** %10, align 8
  %59 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  store %struct.fw_pkt* %60, %struct.fw_pkt** %12, align 8
  %61 = load %struct.fw_xfer*, %struct.fw_xfer** %10, align 8
  %62 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %61, i32 0, i32 0
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load %struct.tcode_info*, %struct.tcode_info** %64, align 8
  %66 = load %struct.fw_pkt*, %struct.fw_pkt** %12, align 8
  %67 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.tcode_info, %struct.tcode_info* %65, i64 %70
  store %struct.tcode_info* %71, %struct.tcode_info** %13, align 8
  %72 = load %struct.fw_pkt*, %struct.fw_pkt** %12, align 8
  %73 = load %struct.tcode_info*, %struct.tcode_info** %13, align 8
  %74 = getelementptr inbounds %struct.tcode_info, %struct.tcode_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.uio*, %struct.uio** %6, align 8
  %77 = call i32 @uiomove(%struct.fw_pkt* %72, i32 %75, %struct.uio* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %46
  br label %92

81:                                               ; preds = %46
  %82 = load %struct.fw_xfer*, %struct.fw_xfer** %10, align 8
  %83 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load %struct.fw_pkt*, %struct.fw_pkt** %84, align 8
  %86 = load %struct.fw_xfer*, %struct.fw_xfer** %10, align 8
  %87 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.uio*, %struct.uio** %6, align 8
  %91 = call i32 @uiomove(%struct.fw_pkt* %85, i32 %89, %struct.uio* %90)
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %81, %80
  %93 = load %struct.fw_xfer*, %struct.fw_xfer** %10, align 8
  %94 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to %struct.fw_bind*
  store %struct.fw_bind* %96, %struct.fw_bind** %11, align 8
  %97 = load %struct.fw_xfer*, %struct.fw_xfer** %10, align 8
  %98 = call i32 @fw_xfer_unload(%struct.fw_xfer* %97)
  %99 = load i32, i32* @PAGE_SIZE, align 4
  %100 = load %struct.fw_xfer*, %struct.fw_xfer** %10, align 8
  %101 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  %103 = load %struct.fw_xfer*, %struct.fw_xfer** %10, align 8
  %104 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %103, i32 0, i32 0
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  %106 = call i32 @FW_GLOCK(%struct.TYPE_13__* %105)
  %107 = load %struct.fw_bind*, %struct.fw_bind** %11, align 8
  %108 = getelementptr inbounds %struct.fw_bind, %struct.fw_bind* %107, i32 0, i32 0
  %109 = load %struct.fw_xfer*, %struct.fw_xfer** %10, align 8
  %110 = load i32, i32* @link, align 4
  %111 = call i32 @STAILQ_INSERT_TAIL(i32* %108, %struct.fw_xfer* %109, i32 %110)
  %112 = load %struct.fw_xfer*, %struct.fw_xfer** %10, align 8
  %113 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %112, i32 0, i32 0
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %113, align 8
  %115 = call i32 @FW_GUNLOCK(%struct.TYPE_13__* %114)
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %92, %40
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @FW_GLOCK(%struct.TYPE_13__*) #1

declare dso_local %struct.fw_xfer* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @msleep(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @FW_GMTX(%struct.TYPE_13__*) #1

declare dso_local i32 @FW_GUNLOCK(%struct.TYPE_13__*) #1

declare dso_local i32 @splfw(...) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @uiomove(%struct.fw_pkt*, i32, %struct.uio*) #1

declare dso_local i32 @fw_xfer_unload(%struct.fw_xfer*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.fw_xfer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
