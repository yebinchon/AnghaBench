; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_nvm_version_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_nvm_version_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"fw %d.%d.%05d api %d.%d nvm %x.%02x etid %08x oem %d.%d.%d\00", align 1
@IXL_NVM_VERSION_HI_MASK = common dso_local global i32 0, align 4
@IXL_NVM_VERSION_HI_SHIFT = common dso_local global i32 0, align 4
@IXL_NVM_VERSION_LO_MASK = common dso_local global i32 0, align 4
@IXL_NVM_VERSION_LO_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_nvm_version_str(%struct.i40e_hw* %0, %struct.sbuf* %1) #0 {
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca %struct.sbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %3, align 8
  store %struct.sbuf* %1, %struct.sbuf** %4, align 8
  %8 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %9 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = ashr i32 %11, 24
  store i32 %12, i32* %5, align 4
  %13 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %14 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = ashr i32 %16, 16
  %18 = and i32 %17, 65535
  store i32 %18, i32* %6, align 4
  %19 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %20 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 255
  store i32 %23, i32* %7, align 4
  %24 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %25 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %26 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %30 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %34 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %38 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %42 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %46 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IXL_NVM_VERSION_HI_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @IXL_NVM_VERSION_HI_SHIFT, align 4
  %52 = ashr i32 %50, %51
  %53 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %54 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IXL_NVM_VERSION_LO_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @IXL_NVM_VERSION_LO_SHIFT, align 4
  %60 = ashr i32 %58, %59
  %61 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %62 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @sbuf_printf(%struct.sbuf* %24, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %32, i32 %36, i32 %40, i32 %44, i32 %52, i32 %60, i32 %64, i32 %65, i32 %66, i32 %67)
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
