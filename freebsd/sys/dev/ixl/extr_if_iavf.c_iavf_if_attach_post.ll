; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_if_attach_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_if_attach_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { i32, i32, %struct.ixl_vsi, %struct.i40e_hw }
%struct.ixl_vsi = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.i40e_hw = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Interface setup complete\00", align 1
@IAVF_INIT_READY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @iavf_if_attach_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_if_attach_post(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.iavf_sc*, align 8
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca %struct.ixl_vsi*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @INIT_DBG_DEV(i32 %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @iflib_get_dev(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call %struct.iavf_sc* @iflib_get_softc(i32 %12)
  store %struct.iavf_sc* %13, %struct.iavf_sc** %4, align 8
  %14 = load %struct.iavf_sc*, %struct.iavf_sc** %4, align 8
  %15 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %14, i32 0, i32 2
  store %struct.ixl_vsi* %15, %struct.ixl_vsi** %6, align 8
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @iflib_get_ifp(i32 %16)
  %18 = load %struct.ixl_vsi*, %struct.ixl_vsi** %6, align 8
  %19 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load %struct.iavf_sc*, %struct.iavf_sc** %4, align 8
  %21 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %20, i32 0, i32 3
  store %struct.i40e_hw* %21, %struct.i40e_hw** %5, align 8
  %22 = load %struct.ixl_vsi*, %struct.ixl_vsi** %6, align 8
  %23 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ixl_vsi*, %struct.ixl_vsi** %6, align 8
  %28 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ixl_vsi*, %struct.ixl_vsi** %6, align 8
  %30 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ixl_vsi*, %struct.ixl_vsi** %6, align 8
  %35 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.iavf_sc*, %struct.iavf_sc** %4, align 8
  %38 = call i32 @iavf_setup_interface(i32 %36, %struct.iavf_sc* %37)
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @INIT_DBG_DEV(i32 %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.iavf_sc*, %struct.iavf_sc** %4, align 8
  %42 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %42, i32 0, i32 0
  %44 = call i32 @bzero(i32* %43, i32 4)
  %45 = load %struct.iavf_sc*, %struct.iavf_sc** %4, align 8
  %46 = call i32 @iavf_add_device_sysctls(%struct.iavf_sc* %45)
  %47 = load i32, i32* @IAVF_INIT_READY, align 4
  %48 = load %struct.iavf_sc*, %struct.iavf_sc** %4, align 8
  %49 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.iavf_sc*, %struct.iavf_sc** %4, align 8
  %51 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %50, i32 0, i32 0
  %52 = call i32 @atomic_store_rel_32(i32* %51, i32 0)
  %53 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %54 = call i32 @iavf_enable_adminq_irq(%struct.i40e_hw* %53)
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @INIT_DBG_DEV(i32 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @INIT_DBG_DEV(i32, i8*) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local %struct.iavf_sc* @iflib_get_softc(i32) #1

declare dso_local i32 @iflib_get_ifp(i32) #1

declare dso_local i32 @iavf_setup_interface(i32, %struct.iavf_sc*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @iavf_add_device_sysctls(%struct.iavf_sc*) #1

declare dso_local i32 @atomic_store_rel_32(i32*, i32) #1

declare dso_local i32 @iavf_enable_adminq_irq(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
