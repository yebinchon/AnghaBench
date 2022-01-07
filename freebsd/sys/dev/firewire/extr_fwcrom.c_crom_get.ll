; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwcrom.c_crom_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwcrom.c_crom_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csrreg = type { i32 }
%struct.crom_context = type { i64, %struct.crom_ptr* }
%struct.crom_ptr = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.csrreg* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.csrreg* @crom_get(%struct.crom_context* %0) #0 {
  %2 = alloca %struct.crom_context*, align 8
  %3 = alloca %struct.crom_ptr*, align 8
  store %struct.crom_context* %0, %struct.crom_context** %2, align 8
  %4 = load %struct.crom_context*, %struct.crom_context** %2, align 8
  %5 = getelementptr inbounds %struct.crom_context, %struct.crom_context* %4, i32 0, i32 1
  %6 = load %struct.crom_ptr*, %struct.crom_ptr** %5, align 8
  %7 = load %struct.crom_context*, %struct.crom_context** %2, align 8
  %8 = getelementptr inbounds %struct.crom_context, %struct.crom_context* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.crom_ptr, %struct.crom_ptr* %6, i64 %9
  store %struct.crom_ptr* %10, %struct.crom_ptr** %3, align 8
  %11 = load %struct.crom_ptr*, %struct.crom_ptr** %3, align 8
  %12 = getelementptr inbounds %struct.crom_ptr, %struct.crom_ptr* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.csrreg*, %struct.csrreg** %14, align 8
  %16 = load %struct.crom_ptr*, %struct.crom_ptr** %3, align 8
  %17 = getelementptr inbounds %struct.crom_ptr, %struct.crom_ptr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.csrreg, %struct.csrreg* %15, i64 %18
  ret %struct.csrreg* %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
