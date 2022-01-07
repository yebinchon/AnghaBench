; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_make_pointer_direct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_make_pointer_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_softc = type { i32 }
%struct.sec_desc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sec_hw_desc_ptr* }
%struct.sec_hw_desc_ptr = type { i32, i64, i64, i32 }

@descriptors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sec_softc*, %struct.sec_desc*, i64, i32, i32)* @sec_make_pointer_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_make_pointer_direct(%struct.sec_softc* %0, %struct.sec_desc* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sec_softc*, align 8
  %7 = alloca %struct.sec_desc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sec_hw_desc_ptr*, align 8
  store %struct.sec_softc* %0, %struct.sec_softc** %6, align 8
  store %struct.sec_desc* %1, %struct.sec_desc** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.sec_softc*, %struct.sec_softc** %6, align 8
  %13 = load i32, i32* @descriptors, align 4
  %14 = call i32 @SEC_LOCK_ASSERT(%struct.sec_softc* %12, i32 %13)
  %15 = load %struct.sec_desc*, %struct.sec_desc** %7, align 8
  %16 = getelementptr inbounds %struct.sec_desc, %struct.sec_desc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.sec_hw_desc_ptr*, %struct.sec_hw_desc_ptr** %18, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds %struct.sec_hw_desc_ptr, %struct.sec_hw_desc_ptr* %19, i64 %20
  store %struct.sec_hw_desc_ptr* %21, %struct.sec_hw_desc_ptr** %11, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.sec_hw_desc_ptr*, %struct.sec_hw_desc_ptr** %11, align 8
  %24 = getelementptr inbounds %struct.sec_hw_desc_ptr, %struct.sec_hw_desc_ptr* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.sec_hw_desc_ptr*, %struct.sec_hw_desc_ptr** %11, align 8
  %26 = getelementptr inbounds %struct.sec_hw_desc_ptr, %struct.sec_hw_desc_ptr* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.sec_hw_desc_ptr*, %struct.sec_hw_desc_ptr** %11, align 8
  %28 = getelementptr inbounds %struct.sec_hw_desc_ptr, %struct.sec_hw_desc_ptr* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.sec_hw_desc_ptr*, %struct.sec_hw_desc_ptr** %11, align 8
  %31 = getelementptr inbounds %struct.sec_hw_desc_ptr, %struct.sec_hw_desc_ptr* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  ret i32 0
}

declare dso_local i32 @SEC_LOCK_ASSERT(%struct.sec_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
