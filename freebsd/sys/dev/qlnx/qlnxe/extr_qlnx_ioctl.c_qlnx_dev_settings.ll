; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_ioctl.c_qlnx_dev_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_ioctl.c_qlnx_dev_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.ecore_hwfn* }
%struct.ecore_hwfn = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }
%struct.qlnx_link_output = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)* @qlnx_dev_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnx_dev_settings(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.qlnx_link_output, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %11 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %10, i64 0
  store %struct.ecore_hwfn* %11, %struct.ecore_hwfn** %5, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %14 = call i32 @qlnx_fill_link(%struct.TYPE_8__* %12, %struct.ecore_hwfn* %13, %struct.qlnx_link_output* %6)
  %15 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %6, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 4
  %19 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %6, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %6, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %6, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = getelementptr inbounds %struct.qlnx_link_output, %struct.qlnx_link_output* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  ret i32 0
}

declare dso_local i32 @qlnx_fill_link(%struct.TYPE_8__*, %struct.ecore_hwfn*, %struct.qlnx_link_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
