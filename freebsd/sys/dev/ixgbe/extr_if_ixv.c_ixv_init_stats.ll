; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_init_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_init_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__, %struct.ixgbe_hw }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ixgbe_hw = type { i32 }

@IXGBE_VFGPRC = common dso_local global i32 0, align 4
@IXGBE_VFGORC_LSB = common dso_local global i32 0, align 4
@IXGBE_VFGORC_MSB = common dso_local global i32 0, align 4
@IXGBE_VFGPTC = common dso_local global i32 0, align 4
@IXGBE_VFGOTC_LSB = common dso_local global i32 0, align 4
@IXGBE_VFGOTC_MSB = common dso_local global i32 0, align 4
@IXGBE_VFMPRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @ixv_init_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixv_init_stats(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = getelementptr inbounds %struct.adapter, %struct.adapter* %4, i32 0, i32 1
  store %struct.ixgbe_hw* %5, %struct.ixgbe_hw** %3, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %7 = load i32, i32* @IXGBE_VFGPRC, align 4
  %8 = call i8* @IXGBE_READ_REG(%struct.ixgbe_hw* %6, i32 %7)
  %9 = load %struct.adapter*, %struct.adapter** %2, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 8
  store i8* %8, i8** %12, align 8
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %14 = load i32, i32* @IXGBE_VFGORC_LSB, align 4
  %15 = call i8* @IXGBE_READ_REG(%struct.ixgbe_hw* %13, i32 %14)
  %16 = ptrtoint i8* %15 to i32
  %17 = load %struct.adapter*, %struct.adapter** %2, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %16, i32* %20, align 8
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %22 = load i32, i32* @IXGBE_VFGORC_MSB, align 4
  %23 = call i8* @IXGBE_READ_REG(%struct.ixgbe_hw* %21, i32 %22)
  %24 = ptrtoint i8* %23 to i32
  %25 = shl i32 %24, 32
  %26 = load %struct.adapter*, %struct.adapter** %2, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %25
  store i32 %31, i32* %29, align 8
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %33 = load i32, i32* @IXGBE_VFGPTC, align 4
  %34 = call i8* @IXGBE_READ_REG(%struct.ixgbe_hw* %32, i32 %33)
  %35 = load %struct.adapter*, %struct.adapter** %2, align 8
  %36 = getelementptr inbounds %struct.adapter, %struct.adapter* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 6
  store i8* %34, i8** %38, align 8
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %40 = load i32, i32* @IXGBE_VFGOTC_LSB, align 4
  %41 = call i8* @IXGBE_READ_REG(%struct.ixgbe_hw* %39, i32 %40)
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.adapter*, %struct.adapter** %2, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i32 %42, i32* %46, align 4
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %48 = load i32, i32* @IXGBE_VFGOTC_MSB, align 4
  %49 = call i8* @IXGBE_READ_REG(%struct.ixgbe_hw* %47, i32 %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = shl i32 %50, 32
  %52 = load %struct.adapter*, %struct.adapter** %2, align 8
  %53 = getelementptr inbounds %struct.adapter, %struct.adapter* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %51
  store i32 %57, i32* %55, align 4
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %59 = load i32, i32* @IXGBE_VFMPRC, align 4
  %60 = call i8* @IXGBE_READ_REG(%struct.ixgbe_hw* %58, i32 %59)
  %61 = load %struct.adapter*, %struct.adapter** %2, align 8
  %62 = getelementptr inbounds %struct.adapter, %struct.adapter* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 4
  store i8* %60, i8** %64, align 8
  %65 = load %struct.adapter*, %struct.adapter** %2, align 8
  %66 = getelementptr inbounds %struct.adapter, %struct.adapter* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 8
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.adapter*, %struct.adapter** %2, align 8
  %71 = getelementptr inbounds %struct.adapter, %struct.adapter* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 9
  store i8* %69, i8** %73, align 8
  %74 = load %struct.adapter*, %struct.adapter** %2, align 8
  %75 = getelementptr inbounds %struct.adapter, %struct.adapter* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.adapter*, %struct.adapter** %2, align 8
  %80 = getelementptr inbounds %struct.adapter, %struct.adapter* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  store i32 %78, i32* %82, align 8
  %83 = load %struct.adapter*, %struct.adapter** %2, align 8
  %84 = getelementptr inbounds %struct.adapter, %struct.adapter* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 6
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.adapter*, %struct.adapter** %2, align 8
  %89 = getelementptr inbounds %struct.adapter, %struct.adapter* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 7
  store i8* %87, i8** %91, align 8
  %92 = load %struct.adapter*, %struct.adapter** %2, align 8
  %93 = getelementptr inbounds %struct.adapter, %struct.adapter* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.adapter*, %struct.adapter** %2, align 8
  %98 = getelementptr inbounds %struct.adapter, %struct.adapter* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 3
  store i32 %96, i32* %100, align 4
  %101 = load %struct.adapter*, %struct.adapter** %2, align 8
  %102 = getelementptr inbounds %struct.adapter, %struct.adapter* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 4
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.adapter*, %struct.adapter** %2, align 8
  %107 = getelementptr inbounds %struct.adapter, %struct.adapter* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 5
  store i8* %105, i8** %109, align 8
  ret void
}

declare dso_local i8* @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
