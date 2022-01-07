; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_port_configuration_agent.c_scic_sds_port_configuration_agent_find_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_port_configuration_agent.c_scic_sds_port_configuration_agent_find_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCIC_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_PORT = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"scic_sds_port_confgiruation_agent_find_port(0x%08x, 0x%08x) enter\0A\00", align 1
@SCI_MAX_PORTS = common dso_local global i64 0, align 8
@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCI_INVALID_HANDLE = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @scic_sds_port_configuration_agent_find_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @scic_sds_port_configuration_agent_find_port(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @sci_base_object_get_logger(i32* %13)
  %15 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %16 = load i32, i32* @SCIC_LOG_OBJECT_PORT, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SCIC_LOG_OBJECT_PHY, align 4
  %19 = or i32 %17, %18
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = ptrtoint i32* %21 to i32
  %23 = call i32 @SCIC_LOG_TRACE(i32 %22)
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @scic_sds_phy_get_sas_address(i32* %24, i32* %10)
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @scic_sds_phy_get_attached_sas_address(i32* %26, i32* %11)
  store i64 0, i64* %6, align 8
  br label %28

28:                                               ; preds = %58, %2
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @SCI_MAX_PORTS, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %28
  %33 = load i32*, i32** %4, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @scic_controller_get_port_handle(i32* %33, i64 %34, i64* %7)
  %36 = load i64, i64* @SCI_SUCCESS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %32
  %39 = load i64, i64* %7, align 8
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** %12, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @scic_sds_port_get_sas_address(i32* %41, i32* %8)
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @scic_sds_port_get_attached_sas_address(i32* %43, i32* %9)
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i64 @sci_sas_address_compare(i32 %45, i32 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %38
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i64 @sci_sas_address_compare(i32 %50, i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32*, i32** %12, align 8
  store i32* %55, i32** %3, align 8
  br label %63

56:                                               ; preds = %49, %38
  br label %57

57:                                               ; preds = %56, %32
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %6, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %6, align 8
  br label %28

61:                                               ; preds = %28
  %62 = load i32*, i32** @SCI_INVALID_HANDLE, align 8
  store i32* %62, i32** %3, align 8
  br label %63

63:                                               ; preds = %61, %54
  %64 = load i32*, i32** %3, align 8
  ret i32* %64
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i32*) #1

declare dso_local i32 @scic_sds_phy_get_sas_address(i32*, i32*) #1

declare dso_local i32 @scic_sds_phy_get_attached_sas_address(i32*, i32*) #1

declare dso_local i64 @scic_controller_get_port_handle(i32*, i64, i64*) #1

declare dso_local i32 @scic_sds_port_get_sas_address(i32*, i32*) #1

declare dso_local i32 @scic_sds_port_get_attached_sas_address(i32*, i32*) #1

declare dso_local i64 @sci_sas_address_compare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
