; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_ppi.c_ppiwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_ppi.c_ppiwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.ppi_data* }
%struct.ppi_data = type { i32 }
%struct.uio = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ADDRESS = common dso_local global i32 0, align 4
@BUFSIZE = common dso_local global i32 0, align 4
@LENGTH = common dso_local global i32 0, align 4
@MS_OP_PUT = common dso_local global i32 0, align 4
@MS_UNKNOWN = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@PPBPRI = common dso_local global i32 0, align 4
@PPB_BYTE = common dso_local global i32 0, align 4
@PPB_ECP = common dso_local global i32 0, align 4
@PPB_PERIPHERAL_IDLE = common dso_local global i64 0, align 8
@PPB_PERIPHERAL_NEGOCIATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @ppiwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppiwrite(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store %struct.uio* %1, %struct.uio** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @ENODEV, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  ret i32 %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
