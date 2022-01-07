; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_ethernet-common.c_cvm_oct_common_change_mtu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_ethernet-common.c_cvm_oct_common_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"MTU must be between %d and %d.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_SPI = common dso_local global i64 0, align 8
@OCTEON_CN3XXX = common dso_local global i32 0, align 4
@OCTEON_CN58XX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvm_oct_common_change_mtu(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %6, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @INTERFACE(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @INDEX(i32 %22)
  store i32 %23, i32* %8, align 4
  store i32 4, i32* %9, align 4
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 14
  %26 = add nsw i32 %25, 4
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %26, %27
  %29 = icmp slt i32 %28, 64
  br i1 %29, label %37, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 14
  %33 = add nsw i32 %32, 4
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %33, %34
  %36 = icmp sgt i32 %35, 65392
  br i1 %36, label %37, label %45

37:                                               ; preds = %30, %2
  %38 = load i32, i32* %9, align 4
  %39 = sub nsw i32 46, %38
  %40 = load i32, i32* %9, align 4
  %41 = sub nsw i32 65374, %40
  %42 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %96

45:                                               ; preds = %30
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 2
  br i1 %50, label %51, label %95

51:                                               ; preds = %45
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @cvmx_helper_interface_get_mode(i32 %52)
  %54 = load i64, i64* @CVMX_HELPER_INTERFACE_MODE_SPI, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %95

56:                                               ; preds = %51
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 14
  %59 = add nsw i32 %58, 4
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %59, %60
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* @OCTEON_CN3XXX, align 4
  %63 = call i64 @OCTEON_IS_MODEL(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %56
  %66 = load i32, i32* @OCTEON_CN58XX, align 4
  %67 = call i64 @OCTEON_IS_MODEL(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %65, %56
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @CVMX_GMXX_RXX_FRM_MAX(i32 %70, i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @cvmx_write_csr(i32 %72, i32 %73)
  br label %87

75:                                               ; preds = %65
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 0, i32* %76, align 4
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 64, i32* %78, align 4
  %79 = load i32, i32* %10, align 4
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @CVMX_PIP_FRM_LEN_CHKX(i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @cvmx_write_csr(i32 %83, i32 %85)
  br label %87

87:                                               ; preds = %75, %69
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @CVMX_GMXX_RXX_JABBER(i32 %88, i32 %89)
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 7
  %93 = and i32 %92, -8
  %94 = call i32 @cvmx_write_csr(i32 %90, i32 %93)
  br label %95

95:                                               ; preds = %87, %51, %45
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %37
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @INTERFACE(i32) #1

declare dso_local i32 @INDEX(i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i64 @cvmx_helper_interface_get_mode(i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_FRM_MAX(i32, i32) #1

declare dso_local i32 @CVMX_PIP_FRM_LEN_CHKX(i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_JABBER(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
