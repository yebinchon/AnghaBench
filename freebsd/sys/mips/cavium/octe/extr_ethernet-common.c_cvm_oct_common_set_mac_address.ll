; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_ethernet-common.c_cvm_oct_common_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_ethernet-common.c_cvm_oct_common_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }

@CVMX_HELPER_INTERFACE_MODE_SPI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvm_oct_common_set_mac_address(%struct.ifnet* %0, i8* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %5, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @INTERFACE(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @INDEX(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @memcpy(i32 %26, i8* %27, i32 6)
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 2
  br i1 %30, label %31, label %124

31:                                               ; preds = %2
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @cvmx_helper_interface_get_mode(i32 %32)
  %34 = load i64, i64* @CVMX_HELPER_INTERFACE_MODE_SPI, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %124

36:                                               ; preds = %31
  %37 = load i8*, i8** %4, align 8
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %51, %36
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 6
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load i32, i32* %11, align 4
  %44 = shl i32 %43, 8
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %44, %49
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %39

54:                                               ; preds = %39
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %55, i32 %56)
  %58 = call i64 @cvmx_read_csr(i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i64 %58, i64* %59, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %60, i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = and i64 %64, -2
  %66 = trunc i64 %65 to i32
  %67 = call i32 @cvmx_write_csr(i32 %62, i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @CVMX_GMXX_SMACX(i32 %68, i32 %69)
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @cvmx_write_csr(i32 %70, i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @CVMX_GMXX_RXX_ADR_CAM0(i32 %73, i32 %74)
  %76 = load i32*, i32** %10, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @cvmx_write_csr(i32 %75, i32 %78)
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @CVMX_GMXX_RXX_ADR_CAM1(i32 %80, i32 %81)
  %83 = load i32*, i32** %10, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @cvmx_write_csr(i32 %82, i32 %85)
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @CVMX_GMXX_RXX_ADR_CAM2(i32 %87, i32 %88)
  %90 = load i32*, i32** %10, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @cvmx_write_csr(i32 %89, i32 %92)
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @CVMX_GMXX_RXX_ADR_CAM3(i32 %94, i32 %95)
  %97 = load i32*, i32** %10, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @cvmx_write_csr(i32 %96, i32 %99)
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @CVMX_GMXX_RXX_ADR_CAM4(i32 %101, i32 %102)
  %104 = load i32*, i32** %10, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 4
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @cvmx_write_csr(i32 %103, i32 %106)
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @CVMX_GMXX_RXX_ADR_CAM5(i32 %108, i32 %109)
  %111 = load i32*, i32** %10, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 5
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @cvmx_write_csr(i32 %110, i32 %113)
  %115 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %116 = call i32 @cvm_oct_common_set_multicast_list(%struct.ifnet* %115)
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %117, i32 %118)
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = call i32 @cvmx_write_csr(i32 %119, i32 %122)
  br label %124

124:                                              ; preds = %54, %31, %2
  ret void
}

declare dso_local i32 @INTERFACE(i32) #1

declare dso_local i32 @INDEX(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i64 @cvmx_helper_interface_get_mode(i32) #1

declare dso_local i64 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GMXX_PRTX_CFG(i32, i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_SMACX(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_ADR_CAM0(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_ADR_CAM1(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_ADR_CAM2(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_ADR_CAM3(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_ADR_CAM4(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_ADR_CAM5(i32, i32) #1

declare dso_local i32 @cvm_oct_common_set_multicast_list(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
