; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_port.c_scic_sds_port_ready_substate_operational_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_port.c_scic_sds_port_ready_substate_operational_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32** }

@SCIC_SDS_PORT_READY_SUBSTATE_OPERATIONAL = common dso_local global i32 0, align 4
@SCI_MAX_PHYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @scic_sds_port_ready_substate_operational_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scic_sds_port_ready_substate_operational_enter(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = bitcast i32* %5 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %4, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %8 = load i32, i32* @SCIC_SDS_PORT_READY_SUBSTATE_OPERATIONAL, align 4
  %9 = call i32 @scic_sds_port_set_ready_state_handlers(%struct.TYPE_9__* %7, i32 %8)
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = call i32 @scic_sds_port_get_controller(%struct.TYPE_9__* %10)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = call i32 @scic_cb_port_ready(i32 %11, %struct.TYPE_9__* %12)
  store i64 0, i64* %3, align 8
  br label %14

14:                                               ; preds = %58, %1
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @SCI_MAX_PHYS, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %61

18:                                               ; preds = %14
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = load i32**, i32*** %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds i32*, i32** %21, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %57

26:                                               ; preds = %18
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = load i32**, i32*** %29, align 8
  %31 = load i64, i64* %3, align 8
  %32 = getelementptr inbounds i32*, i32** %30, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @scic_sds_port_write_phy_assignment(%struct.TYPE_9__* %27, i32* %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = xor i32 %37, %40
  %42 = load i64, i64* %3, align 8
  %43 = trunc i64 %42 to i32
  %44 = shl i32 1, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %26
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = load i32**, i32*** %50, align 8
  %52 = load i64, i64* %3, align 8
  %53 = getelementptr inbounds i32*, i32** %51, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @scic_sds_port_resume_phy(%struct.TYPE_9__* %48, i32* %54)
  br label %56

56:                                               ; preds = %47, %26
  br label %57

57:                                               ; preds = %56, %18
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %3, align 8
  br label %14

61:                                               ; preds = %14
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = call i32 @scic_sds_port_update_viit_entry(%struct.TYPE_9__* %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = call i32 @scic_sds_port_post_dummy_request(%struct.TYPE_9__* %64)
  ret void
}

declare dso_local i32 @scic_sds_port_set_ready_state_handlers(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @scic_cb_port_ready(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @scic_sds_port_get_controller(%struct.TYPE_9__*) #1

declare dso_local i32 @scic_sds_port_write_phy_assignment(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @scic_sds_port_resume_phy(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @scic_sds_port_update_viit_entry(%struct.TYPE_9__*) #1

declare dso_local i32 @scic_sds_port_post_dummy_request(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
