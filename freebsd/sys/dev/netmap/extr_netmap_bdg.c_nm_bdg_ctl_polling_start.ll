; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_nm_bdg_ctl_polling_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_nm_bdg_ctl_polling_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmreq_vale_polling = type { i32 }
%struct.netmap_adapter = type { i32 }
%struct.nm_bdg_polling_state = type { i32, i32, %struct.nm_bdg_polling_state*, %struct.netmap_bwrap_adapter* }
%struct.netmap_bwrap_adapter = type { i32, %struct.nm_bdg_polling_state* }

@.str = private unnamed_addr constant [38 x i8] c"ERROR adapter already in polling mode\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"ERROR nm_bdg_polling_start_kthread()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nmreq_vale_polling*, %struct.netmap_adapter*)* @nm_bdg_ctl_polling_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nm_bdg_ctl_polling_start(%struct.nmreq_vale_polling* %0, %struct.netmap_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nmreq_vale_polling*, align 8
  %5 = alloca %struct.netmap_adapter*, align 8
  %6 = alloca %struct.nm_bdg_polling_state*, align 8
  %7 = alloca %struct.netmap_bwrap_adapter*, align 8
  %8 = alloca i32, align 4
  store %struct.nmreq_vale_polling* %0, %struct.nmreq_vale_polling** %4, align 8
  store %struct.netmap_adapter* %1, %struct.netmap_adapter** %5, align 8
  %9 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %10 = bitcast %struct.netmap_adapter* %9 to %struct.netmap_bwrap_adapter*
  store %struct.netmap_bwrap_adapter* %10, %struct.netmap_bwrap_adapter** %7, align 8
  %11 = load %struct.netmap_bwrap_adapter*, %struct.netmap_bwrap_adapter** %7, align 8
  %12 = getelementptr inbounds %struct.netmap_bwrap_adapter, %struct.netmap_bwrap_adapter* %11, i32 0, i32 1
  %13 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %12, align 8
  %14 = icmp ne %struct.nm_bdg_polling_state* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = call i32 @nm_prerr(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EFAULT, align 4
  store i32 %17, i32* %3, align 4
  br label %79

18:                                               ; preds = %2
  %19 = call %struct.nm_bdg_polling_state* @nm_os_malloc(i32 24)
  store %struct.nm_bdg_polling_state* %19, %struct.nm_bdg_polling_state** %6, align 8
  %20 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %6, align 8
  %21 = icmp ne %struct.nm_bdg_polling_state* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @ENOMEM, align 4
  store i32 %23, i32* %3, align 4
  br label %79

24:                                               ; preds = %18
  %25 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %6, align 8
  %26 = getelementptr inbounds %struct.nm_bdg_polling_state, %struct.nm_bdg_polling_state* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %6, align 8
  %28 = getelementptr inbounds %struct.nm_bdg_polling_state, %struct.nm_bdg_polling_state* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = load %struct.nmreq_vale_polling*, %struct.nmreq_vale_polling** %4, align 8
  %30 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %31 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %6, align 8
  %32 = call i64 @get_polling_cfg(%struct.nmreq_vale_polling* %29, %struct.netmap_adapter* %30, %struct.nm_bdg_polling_state* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %6, align 8
  %36 = call i32 @nm_os_free(%struct.nm_bdg_polling_state* %35)
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %3, align 4
  br label %79

38:                                               ; preds = %24
  %39 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %6, align 8
  %40 = call i64 @nm_bdg_create_kthreads(%struct.nm_bdg_polling_state* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %6, align 8
  %44 = call i32 @nm_os_free(%struct.nm_bdg_polling_state* %43)
  %45 = load i32, i32* @EFAULT, align 4
  store i32 %45, i32* %3, align 4
  br label %79

46:                                               ; preds = %38
  %47 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %6, align 8
  %48 = getelementptr inbounds %struct.nm_bdg_polling_state, %struct.nm_bdg_polling_state* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %6, align 8
  %50 = load %struct.netmap_bwrap_adapter*, %struct.netmap_bwrap_adapter** %7, align 8
  %51 = getelementptr inbounds %struct.netmap_bwrap_adapter, %struct.netmap_bwrap_adapter* %50, i32 0, i32 1
  store %struct.nm_bdg_polling_state* %49, %struct.nm_bdg_polling_state** %51, align 8
  %52 = load %struct.netmap_bwrap_adapter*, %struct.netmap_bwrap_adapter** %7, align 8
  %53 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %6, align 8
  %54 = getelementptr inbounds %struct.nm_bdg_polling_state, %struct.nm_bdg_polling_state* %53, i32 0, i32 3
  store %struct.netmap_bwrap_adapter* %52, %struct.netmap_bwrap_adapter** %54, align 8
  %55 = load %struct.netmap_bwrap_adapter*, %struct.netmap_bwrap_adapter** %7, align 8
  %56 = getelementptr inbounds %struct.netmap_bwrap_adapter, %struct.netmap_bwrap_adapter* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @nma_intr_enable(i32 %57, i32 0)
  %59 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %6, align 8
  %60 = call i32 @nm_bdg_polling_start_kthreads(%struct.nm_bdg_polling_state* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %46
  %64 = call i32 @nm_prerr(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %6, align 8
  %66 = getelementptr inbounds %struct.nm_bdg_polling_state, %struct.nm_bdg_polling_state* %65, i32 0, i32 2
  %67 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %66, align 8
  %68 = call i32 @nm_os_free(%struct.nm_bdg_polling_state* %67)
  %69 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %6, align 8
  %70 = call i32 @nm_os_free(%struct.nm_bdg_polling_state* %69)
  %71 = load %struct.netmap_bwrap_adapter*, %struct.netmap_bwrap_adapter** %7, align 8
  %72 = getelementptr inbounds %struct.netmap_bwrap_adapter, %struct.netmap_bwrap_adapter* %71, i32 0, i32 1
  store %struct.nm_bdg_polling_state* null, %struct.nm_bdg_polling_state** %72, align 8
  %73 = load %struct.netmap_bwrap_adapter*, %struct.netmap_bwrap_adapter** %7, align 8
  %74 = getelementptr inbounds %struct.netmap_bwrap_adapter, %struct.netmap_bwrap_adapter* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @nma_intr_enable(i32 %75, i32 1)
  br label %77

77:                                               ; preds = %63, %46
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %42, %34, %22, %15
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @nm_prerr(i8*) #1

declare dso_local %struct.nm_bdg_polling_state* @nm_os_malloc(i32) #1

declare dso_local i64 @get_polling_cfg(%struct.nmreq_vale_polling*, %struct.netmap_adapter*, %struct.nm_bdg_polling_state*) #1

declare dso_local i32 @nm_os_free(%struct.nm_bdg_polling_state*) #1

declare dso_local i64 @nm_bdg_create_kthreads(%struct.nm_bdg_polling_state*) #1

declare dso_local i32 @nma_intr_enable(i32, i32) #1

declare dso_local i32 @nm_bdg_polling_start_kthreads(%struct.nm_bdg_polling_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
