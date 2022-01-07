; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_mpc85xx_cache.c_mpc85xx_cache_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_mpc85xx_cache.c_mpc85xx_cache_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc85xx_cache_softc = type { i32* }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@L2_CTL = common dso_local global i32 0, align 4
@L2CTL_L2E = common dso_local global i32 0, align 4
@L2CTL_L2I = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"cache-size\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"cache-line-size\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"L2 cache size: %dKB, cache line size: %d bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mpc85xx_cache_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc85xx_cache_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpc85xx_cache_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.mpc85xx_cache_softc* @device_get_softc(i32 %8)
  store %struct.mpc85xx_cache_softc* %9, %struct.mpc85xx_cache_softc** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @SYS_RES_MEMORY, align 4
  %12 = load i32, i32* @RF_ACTIVE, align 4
  %13 = call i32* @bus_alloc_resource_any(i32 %10, i32 %11, i32* %5, i32 %12)
  %14 = load %struct.mpc85xx_cache_softc*, %struct.mpc85xx_cache_softc** %4, align 8
  %15 = getelementptr inbounds %struct.mpc85xx_cache_softc, %struct.mpc85xx_cache_softc* %14, i32 0, i32 0
  store i32* %13, i32** %15, align 8
  %16 = load %struct.mpc85xx_cache_softc*, %struct.mpc85xx_cache_softc** %4, align 8
  %17 = getelementptr inbounds %struct.mpc85xx_cache_softc, %struct.mpc85xx_cache_softc* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  store i32 %21, i32* %2, align 4
  br label %54

22:                                               ; preds = %1
  call void asm sideeffect "mbar; isync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %23 = load %struct.mpc85xx_cache_softc*, %struct.mpc85xx_cache_softc** %4, align 8
  %24 = getelementptr inbounds %struct.mpc85xx_cache_softc, %struct.mpc85xx_cache_softc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @L2_CTL, align 4
  %27 = load i32, i32* @L2CTL_L2E, align 4
  %28 = load i32, i32* @L2CTL_L2I, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @bus_write_4(i32* %25, i32 %26, i32 %29)
  %31 = load %struct.mpc85xx_cache_softc*, %struct.mpc85xx_cache_softc** %4, align 8
  %32 = getelementptr inbounds %struct.mpc85xx_cache_softc, %struct.mpc85xx_cache_softc* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* @L2_CTL, align 4
  %35 = call i32 @bus_read_4(i32* %33, i32 %34)
  call void asm sideeffect "mbar", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @ofw_bus_get_node(i32 %36)
  %38 = call i32 @OF_getencprop(i32 %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %7, i32 4)
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @ofw_bus_get_node(i32 %39)
  %41 = call i32 @OF_getencprop(i32 %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %6, i32 4)
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %22
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %7, align 4
  %50 = sdiv i32 %49, 1024
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %47, %44, %22
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %20
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.mpc85xx_cache_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @bus_write_4(i32*, i32, i32) #1

declare dso_local i32 @bus_read_4(i32*, i32) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 996}
!3 = !{i32 1134}
