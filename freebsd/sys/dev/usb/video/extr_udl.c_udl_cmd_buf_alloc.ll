; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/video/extr_udl.c_udl_cmd_buf_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/video/extr_udl.c_udl_cmd_buf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udl_cmd_buf = type { i32 }
%struct.udl_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.udl_cmd_buf* (%struct.udl_softc*, i32)* @udl_cmd_buf_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.udl_cmd_buf* @udl_cmd_buf_alloc(%struct.udl_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.udl_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.udl_cmd_buf*, align 8
  store %struct.udl_softc* %0, %struct.udl_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.udl_softc*, %struct.udl_softc** %3, align 8
  %7 = call i32 @UDL_LOCK(%struct.udl_softc* %6)
  %8 = load %struct.udl_softc*, %struct.udl_softc** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.udl_cmd_buf* @udl_cmd_buf_alloc_locked(%struct.udl_softc* %8, i32 %9)
  store %struct.udl_cmd_buf* %10, %struct.udl_cmd_buf** %5, align 8
  %11 = load %struct.udl_softc*, %struct.udl_softc** %3, align 8
  %12 = call i32 @UDL_UNLOCK(%struct.udl_softc* %11)
  %13 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %5, align 8
  ret %struct.udl_cmd_buf* %13
}

declare dso_local i32 @UDL_LOCK(%struct.udl_softc*) #1

declare dso_local %struct.udl_cmd_buf* @udl_cmd_buf_alloc_locked(%struct.udl_softc*, i32) #1

declare dso_local i32 @UDL_UNLOCK(%struct.udl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
