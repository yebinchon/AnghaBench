; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_subr.c_bcma_dinfo_init_agent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_subr.c_bcma_dinfo_init_agent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_devinfo = type { i32*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"double allocation of agent\00", align 1
@BHND_PORT_AGENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"failed fetching agent register block address for core %u\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"failed allocating agent register block for core %u\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.bcma_devinfo*)* @bcma_dinfo_init_agent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_dinfo_init_agent(i32 %0, i32 %1, %struct.bcma_devinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bcma_devinfo*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.bcma_devinfo* %2, %struct.bcma_devinfo** %7, align 8
  %14 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %7, align 8
  %15 = getelementptr inbounds %struct.bcma_devinfo, %struct.bcma_devinfo* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @BHND_PORT_AGENT, align 4
  %22 = call i32 @bhnd_get_port_rid(i32 %20, i32 %21, i32 0, i32 0)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %73

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @BHND_PORT_AGENT, align 4
  %28 = call i32 @bhnd_get_region_addr(i32 %26, i32 %27, i32 0, i32 0, i64* %8, i64* %9)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %7, align 8
  %34 = call i32 @BCMA_DINFO_COREIDX(%struct.bcma_devinfo* %33)
  %35 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %4, align 4
  br label %73

37:                                               ; preds = %25
  %38 = load i64, i64* %8, align 8
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %9, align 8
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %11, align 8
  %42 = add nsw i64 %40, %41
  %43 = sub nsw i64 %42, 1
  store i64 %43, i64* %12, align 8
  %44 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %7, align 8
  %45 = call i32 @BCMA_AGENT_RID(%struct.bcma_devinfo* %44)
  %46 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %7, align 8
  %47 = getelementptr inbounds %struct.bcma_devinfo, %struct.bcma_devinfo* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @SYS_RES_MEMORY, align 4
  %51 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %7, align 8
  %52 = getelementptr inbounds %struct.bcma_devinfo, %struct.bcma_devinfo* %51, i32 0, i32 1
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i32, i32* @RF_ACTIVE, align 4
  %57 = load i32, i32* @RF_SHAREABLE, align 4
  %58 = or i32 %56, %57
  %59 = call i32* @BHND_BUS_ALLOC_RESOURCE(i32 %48, i32 %49, i32 %50, i32* %52, i64 %53, i64 %54, i64 %55, i32 %58)
  %60 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %7, align 8
  %61 = getelementptr inbounds %struct.bcma_devinfo, %struct.bcma_devinfo* %60, i32 0, i32 0
  store i32* %59, i32** %61, align 8
  %62 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %7, align 8
  %63 = getelementptr inbounds %struct.bcma_devinfo, %struct.bcma_devinfo* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %37
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %7, align 8
  %69 = call i32 @BCMA_DINFO_COREIDX(%struct.bcma_devinfo* %68)
  %70 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @ENXIO, align 4
  store i32 %71, i32* %4, align 4
  br label %73

72:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %66, %31, %24
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bhnd_get_port_rid(i32, i32, i32, i32) #1

declare dso_local i32 @bhnd_get_region_addr(i32, i32, i32, i32, i64*, i64*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @BCMA_DINFO_COREIDX(%struct.bcma_devinfo*) #1

declare dso_local i32 @BCMA_AGENT_RID(%struct.bcma_devinfo*) #1

declare dso_local i32* @BHND_BUS_ALLOC_RESOURCE(i32, i32, i32, i32*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
