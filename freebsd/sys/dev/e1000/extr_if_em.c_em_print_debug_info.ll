; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_print_debug_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_print_debug_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { %struct.rx_ring }
%struct.rx_ring = type { i32 }
%struct.TYPE_3__ = type { %struct.tx_ring }
%struct.tx_ring = type { i32 }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Interface is RUNNING \00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Interface is NOT RUNNING\0A\00", align 1
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"and INACTIVE\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"and ACTIVE\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"TX Queue %d ------\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"hw tdh = %d, hw tdt = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"RX Queue %d ------\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"hw rdh = %d, hw rdt = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @em_print_debug_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em_print_debug_info(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.tx_ring*, align 8
  %6 = alloca %struct.rx_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %9 = load %struct.adapter*, %struct.adapter** %2, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @iflib_get_dev(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.ifnet* @iflib_get_ifp(i32 %15)
  store %struct.ifnet* %16, %struct.ifnet** %4, align 8
  %17 = load %struct.adapter*, %struct.adapter** %2, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.tx_ring* %20, %struct.tx_ring** %5, align 8
  %21 = load %struct.adapter*, %struct.adapter** %2, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store %struct.rx_ring* %24, %struct.rx_ring** %6, align 8
  %25 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %26 = call i32 @if_getdrvflags(%struct.ifnet* %25)
  %27 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %34

32:                                               ; preds = %1
  %33 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %30
  %35 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %36 = call i32 @if_getdrvflags(%struct.ifnet* %35)
  %37 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %44

42:                                               ; preds = %34
  %43 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %40
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %67, %44
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.adapter*, %struct.adapter** %2, align 8
  %48 = getelementptr inbounds %struct.adapter, %struct.adapter* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %45
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.adapter*, %struct.adapter** %2, align 8
  %57 = getelementptr inbounds %struct.adapter, %struct.adapter* %56, i32 0, i32 2
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @E1000_TDH(i32 %58)
  %60 = call i32 @E1000_READ_REG(i32* %57, i32 %59)
  %61 = load %struct.adapter*, %struct.adapter** %2, align 8
  %62 = getelementptr inbounds %struct.adapter, %struct.adapter* %61, i32 0, i32 2
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @E1000_TDT(i32 %63)
  %65 = call i32 @E1000_READ_REG(i32* %62, i32 %64)
  %66 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %60, i32 %65)
  br label %67

67:                                               ; preds = %51
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  %70 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %71 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %70, i32 1
  store %struct.tx_ring* %71, %struct.tx_ring** %5, align 8
  br label %45

72:                                               ; preds = %45
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %95, %72
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.adapter*, %struct.adapter** %2, align 8
  %76 = getelementptr inbounds %struct.adapter, %struct.adapter* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %100

79:                                               ; preds = %73
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %3, align 4
  %84 = load %struct.adapter*, %struct.adapter** %2, align 8
  %85 = getelementptr inbounds %struct.adapter, %struct.adapter* %84, i32 0, i32 2
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @E1000_RDH(i32 %86)
  %88 = call i32 @E1000_READ_REG(i32* %85, i32 %87)
  %89 = load %struct.adapter*, %struct.adapter** %2, align 8
  %90 = getelementptr inbounds %struct.adapter, %struct.adapter* %89, i32 0, i32 2
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @E1000_RDT(i32 %91)
  %93 = call i32 @E1000_READ_REG(i32* %90, i32 %92)
  %94 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %88, i32 %93)
  br label %95

95:                                               ; preds = %79
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  %98 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %99 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %98, i32 1
  store %struct.rx_ring* %99, %struct.rx_ring** %6, align 8
  br label %73

100:                                              ; preds = %73
  ret void
}

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local %struct.ifnet* @iflib_get_ifp(i32) #1

declare dso_local i32 @if_getdrvflags(%struct.ifnet*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @E1000_READ_REG(i32*, i32) #1

declare dso_local i32 @E1000_TDH(i32) #1

declare dso_local i32 @E1000_TDT(i32) #1

declare dso_local i32 @E1000_RDH(i32) #1

declare dso_local i32 @E1000_RDT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
