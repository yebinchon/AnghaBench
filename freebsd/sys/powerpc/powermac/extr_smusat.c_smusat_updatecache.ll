; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smusat.c_smusat_updatecache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smusat.c_smusat_updatecache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smusat_softc = type { i32, i32 }
%struct.iic_msg = type { i32, i32, i32*, i32, i32 }

@IIC_M_WR = common dso_local global i32 0, align 4
@IIC_M_NOSTOP = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @smusat_updatecache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smusat_updatecache(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [16 x i32], align 16
  %6 = alloca %struct.smusat_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x %struct.iic_msg], align 16
  store i32 %0, i32* %3, align 4
  store i32 63, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.smusat_softc* @device_get_softc(i32 %9)
  store %struct.smusat_softc* %10, %struct.smusat_softc** %6, align 8
  %11 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %8, i64 0, i64 0
  %12 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %11, i32 0, i32 1
  %14 = load i32, i32* @IIC_M_WR, align 4
  %15 = load i32, i32* @IIC_M_NOSTOP, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %13, align 4
  %17 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %11, i32 0, i32 2
  store i32* inttoptr (i64 1 to i32*), i32** %17, align 8
  %18 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %11, i32 0, i32 3
  %19 = ptrtoint i32* %4 to i32
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %11, i32 0, i32 4
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %11, i64 1
  %22 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %21, i32 0, i32 1
  %24 = load i32, i32* @IIC_M_RD, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %21, i32 0, i32 2
  store i32* inttoptr (i64 16 to i32*), i32** %25, align 8
  %26 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %21, i32 0, i32 3
  %27 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %28 = ptrtoint i32* %27 to i32
  store i32 %28, i32* %26, align 8
  %29 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %21, i32 0, i32 4
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @iicbus_get_addr(i32 %30)
  %32 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %8, i64 0, i64 1
  %33 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %8, i64 0, i64 0
  %35 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %34, i32 0, i32 3
  store i32 %31, i32* %35, align 16
  %36 = load i32, i32* %3, align 4
  %37 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %8, i64 0, i64 0
  %38 = call i32 @iicbus_transfer(i32 %36, %struct.iic_msg* %37, i32 2)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %1
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %52

43:                                               ; preds = %1
  %44 = load i32, i32* @time_uptime, align 4
  %45 = load %struct.smusat_softc*, %struct.smusat_softc** %6, align 8
  %46 = getelementptr inbounds %struct.smusat_softc, %struct.smusat_softc* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.smusat_softc*, %struct.smusat_softc** %6, align 8
  %48 = getelementptr inbounds %struct.smusat_softc, %struct.smusat_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %51 = call i32 @memcpy(i32 %49, i32* %50, i32 64)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %43, %41
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.smusat_softc* @device_get_softc(i32) #1

declare dso_local i32 @iicbus_get_addr(i32) #1

declare dso_local i32 @iicbus_transfer(i32, %struct.iic_msg*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
