; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_init_func_obj.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_init_func_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_func_sp_obj = type { %struct.ecore_func_sp_drv_ops*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32 }
%struct.ecore_func_sp_drv_ops = type { i32 }

@ecore_func_send_cmd = common dso_local global i32 0, align 4
@ecore_func_chk_transition = common dso_local global i32 0, align 4
@ecore_func_comp_cmd = common dso_local global i32 0, align 4
@ecore_func_wait_comp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_init_func_obj(%struct.bxe_softc* %0, %struct.ecore_func_sp_obj* %1, i8* %2, i8* %3, i8* %4, i8* %5, %struct.ecore_func_sp_drv_ops* %6) #0 {
  %8 = alloca %struct.bxe_softc*, align 8
  %9 = alloca %struct.ecore_func_sp_obj*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.ecore_func_sp_drv_ops*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %8, align 8
  store %struct.ecore_func_sp_obj* %1, %struct.ecore_func_sp_obj** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store %struct.ecore_func_sp_drv_ops* %6, %struct.ecore_func_sp_drv_ops** %14, align 8
  %15 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %9, align 8
  %16 = call i32 @ECORE_MEMSET(%struct.ecore_func_sp_obj* %15, i32 0, i32 64)
  %17 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %9, align 8
  %18 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %17, i32 0, i32 9
  %19 = call i32 @ECORE_MUTEX_INIT(i32* %18)
  %20 = load i8*, i8** %10, align 8
  %21 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %9, align 8
  %22 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %21, i32 0, i32 8
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %9, align 8
  %25 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %24, i32 0, i32 7
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %9, align 8
  %28 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %27, i32 0, i32 6
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %9, align 8
  %31 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %30, i32 0, i32 5
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* @ecore_func_send_cmd, align 4
  %33 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %9, align 8
  %34 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @ecore_func_chk_transition, align 4
  %36 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %9, align 8
  %37 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @ecore_func_comp_cmd, align 4
  %39 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %9, align 8
  %40 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @ecore_func_wait_comp, align 4
  %42 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %9, align 8
  %43 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.ecore_func_sp_drv_ops*, %struct.ecore_func_sp_drv_ops** %14, align 8
  %45 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %9, align 8
  %46 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %45, i32 0, i32 0
  store %struct.ecore_func_sp_drv_ops* %44, %struct.ecore_func_sp_drv_ops** %46, align 8
  ret void
}

declare dso_local i32 @ECORE_MEMSET(%struct.ecore_func_sp_obj*, i32, i32) #1

declare dso_local i32 @ECORE_MUTEX_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
