; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_ethernet-mdio.c_cvm_oct_mdio_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_ethernet-mdio.c_cvm_oct_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }

@CVMX_SMI_WR_DAT = common dso_local global i32 0, align 4
@CVMX_SMI_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvm_oct_mdio_write(%struct.ifnet* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca %struct.TYPE_7__, align 8
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = call i32 (...) @MDIO_LOCK()
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* %8, align 4
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @CVMX_SMI_WR_DAT, align 4
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @cvmx_write_csr(i32 %16, i64 %18)
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @CVMX_SMI_CMD, align 4
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @cvmx_write_csr(i32 %29, i64 %31)
  br label %33

33:                                               ; preds = %38, %4
  %34 = call i32 @cvmx_wait(i32 1000)
  %35 = load i32, i32* @CVMX_SMI_WR_DAT, align 4
  %36 = call i64 @cvmx_read_csr(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i64 %36, i64* %37, align 8
  br label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %33, label %43

43:                                               ; preds = %38
  %44 = call i32 (...) @MDIO_UNLOCK()
  ret void
}

declare dso_local i32 @MDIO_LOCK(...) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @cvmx_wait(i32) #1

declare dso_local i64 @cvmx_read_csr(i32) #1

declare dso_local i32 @MDIO_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
