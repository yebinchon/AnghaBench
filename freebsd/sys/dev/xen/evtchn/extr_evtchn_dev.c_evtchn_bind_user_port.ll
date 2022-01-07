; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/evtchn/extr_evtchn_dev.c_evtchn_bind_user_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/evtchn/extr_evtchn_dev.c_evtchn_bind_user_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.per_user_data = type { i32, i32 }
%struct.user_evtchn = type { i32, i32, %struct.per_user_data*, i32 }

@evtchn_tree = common dso_local global i32 0, align 4
@evtchn_dev = common dso_local global i32 0, align 4
@evtchn_filter = common dso_local global i32 0, align 4
@evtchn_interrupt = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@M_EVTCHN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.per_user_data*, %struct.user_evtchn*)* @evtchn_bind_user_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evtchn_bind_user_port(%struct.per_user_data* %0, %struct.user_evtchn* %1) #0 {
  %3 = alloca %struct.per_user_data*, align 8
  %4 = alloca %struct.user_evtchn*, align 8
  %5 = alloca i32, align 4
  store %struct.per_user_data* %0, %struct.per_user_data** %3, align 8
  store %struct.user_evtchn* %1, %struct.user_evtchn** %4, align 8
  %6 = load %struct.user_evtchn*, %struct.user_evtchn** %4, align 8
  %7 = getelementptr inbounds %struct.user_evtchn, %struct.user_evtchn* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @xen_intr_port(i32 %8)
  %10 = load %struct.user_evtchn*, %struct.user_evtchn** %4, align 8
  %11 = getelementptr inbounds %struct.user_evtchn, %struct.user_evtchn* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = load %struct.per_user_data*, %struct.per_user_data** %3, align 8
  %13 = load %struct.user_evtchn*, %struct.user_evtchn** %4, align 8
  %14 = getelementptr inbounds %struct.user_evtchn, %struct.user_evtchn* %13, i32 0, i32 2
  store %struct.per_user_data* %12, %struct.per_user_data** %14, align 8
  %15 = load %struct.user_evtchn*, %struct.user_evtchn** %4, align 8
  %16 = getelementptr inbounds %struct.user_evtchn, %struct.user_evtchn* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.per_user_data*, %struct.per_user_data** %3, align 8
  %18 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %17, i32 0, i32 0
  %19 = call i32 @mtx_lock(i32* %18)
  %20 = load i32, i32* @evtchn_tree, align 4
  %21 = load %struct.per_user_data*, %struct.per_user_data** %3, align 8
  %22 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %21, i32 0, i32 1
  %23 = load %struct.user_evtchn*, %struct.user_evtchn** %4, align 8
  %24 = call i32 @RB_INSERT(i32 %20, i32* %22, %struct.user_evtchn* %23)
  %25 = load %struct.per_user_data*, %struct.per_user_data** %3, align 8
  %26 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %25, i32 0, i32 0
  %27 = call i32 @mtx_unlock(i32* %26)
  %28 = load i32, i32* @evtchn_dev, align 4
  %29 = call i32 @device_get_nameunit(i32 %28)
  %30 = load i32, i32* @evtchn_filter, align 4
  %31 = load i32, i32* @evtchn_interrupt, align 4
  %32 = load %struct.user_evtchn*, %struct.user_evtchn** %4, align 8
  %33 = load i32, i32* @INTR_TYPE_MISC, align 4
  %34 = load i32, i32* @INTR_MPSAFE, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.user_evtchn*, %struct.user_evtchn** %4, align 8
  %37 = getelementptr inbounds %struct.user_evtchn, %struct.user_evtchn* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @xen_intr_add_handler(i32 %29, i32 %30, i32 %31, %struct.user_evtchn* %32, i32 %35, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %2
  %43 = load %struct.user_evtchn*, %struct.user_evtchn** %4, align 8
  %44 = getelementptr inbounds %struct.user_evtchn, %struct.user_evtchn* %43, i32 0, i32 1
  %45 = call i32 @xen_intr_unbind(i32* %44)
  %46 = load %struct.per_user_data*, %struct.per_user_data** %3, align 8
  %47 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %46, i32 0, i32 0
  %48 = call i32 @mtx_lock(i32* %47)
  %49 = load i32, i32* @evtchn_tree, align 4
  %50 = load %struct.per_user_data*, %struct.per_user_data** %3, align 8
  %51 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %50, i32 0, i32 1
  %52 = load %struct.user_evtchn*, %struct.user_evtchn** %4, align 8
  %53 = call i32 @RB_REMOVE(i32 %49, i32* %51, %struct.user_evtchn* %52)
  %54 = load %struct.per_user_data*, %struct.per_user_data** %3, align 8
  %55 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %54, i32 0, i32 0
  %56 = call i32 @mtx_unlock(i32* %55)
  %57 = load %struct.user_evtchn*, %struct.user_evtchn** %4, align 8
  %58 = load i32, i32* @M_EVTCHN, align 4
  %59 = call i32 @free(%struct.user_evtchn* %57, i32 %58)
  br label %60

60:                                               ; preds = %42, %2
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @xen_intr_port(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.user_evtchn*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @xen_intr_add_handler(i32, i32, i32, %struct.user_evtchn*, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @xen_intr_unbind(i32*) #1

declare dso_local i32 @RB_REMOVE(i32, i32*, %struct.user_evtchn*) #1

declare dso_local i32 @free(%struct.user_evtchn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
