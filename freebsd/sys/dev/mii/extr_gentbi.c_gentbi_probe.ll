; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_gentbi.c_gentbi_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_gentbi.c_gentbi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_attach_args = type { i32 }

@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_EXTSTAT = common dso_local global i32 0, align 4
@BMSR_MEDIAMASK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@MII_EXTSR = common dso_local global i32 0, align 4
@EXTSR_1000TFDX = common dso_local global i32 0, align 4
@EXTSR_1000THDX = common dso_local global i32 0, align 4
@EXTSR_1000XFDX = common dso_local global i32 0, align 4
@EXTSR_1000XHDX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Generic ten-bit interface\00", align 1
@BUS_PROBE_LOW_PRIORITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gentbi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gentbi_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_attach_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @device_get_parent(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.mii_attach_args* @device_get_ivars(i32 %10)
  store %struct.mii_attach_args* %11, %struct.mii_attach_args** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.mii_attach_args*, %struct.mii_attach_args** %5, align 8
  %14 = getelementptr inbounds %struct.mii_attach_args, %struct.mii_attach_args* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MII_BMSR, align 4
  %17 = call i32 @MIIBUS_READREG(i32 %12, i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @BMSR_EXTSTAT, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @BMSR_MEDIAMASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22, %1
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %2, align 4
  br label %57

29:                                               ; preds = %22
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.mii_attach_args*, %struct.mii_attach_args** %5, align 8
  %32 = getelementptr inbounds %struct.mii_attach_args, %struct.mii_attach_args* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MII_EXTSR, align 4
  %35 = call i32 @MIIBUS_READREG(i32 %30, i32 %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @EXTSR_1000TFDX, align 4
  %38 = load i32, i32* @EXTSR_1000THDX, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %2, align 4
  br label %57

44:                                               ; preds = %29
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @EXTSR_1000XFDX, align 4
  %47 = load i32, i32* @EXTSR_1000XHDX, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @device_set_desc(i32 %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @BUS_PROBE_LOW_PRIORITY, align 4
  store i32 %54, i32* %2, align 4
  br label %57

55:                                               ; preds = %44
  %56 = load i32, i32* @ENXIO, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %51, %42, %27
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.mii_attach_args* @device_get_ivars(i32) #1

declare dso_local i32 @MIIBUS_READREG(i32, i32, i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
