; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_ip1000phy.c_ip1000phy_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_ip1000phy.c_ip1000phy_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_attach_args = type { i32 }

@MIIF_NOISOLATE = common dso_local global i32 0, align 4
@MIIF_NOMANPAUSE = common dso_local global i32 0, align 4
@MII_MODEL_xxICPLUS_IP1000A = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"stge\00", align 1
@MIIF_MACPRIV0 = common dso_local global i32 0, align 4
@MIIF_PHYPRIV0 = common dso_local global i32 0, align 4
@ip1000phy_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ip1000phy_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip1000phy_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mii_attach_args*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.mii_attach_args* @device_get_ivars(i32 %5)
  store %struct.mii_attach_args* %6, %struct.mii_attach_args** %3, align 8
  %7 = load i32, i32* @MIIF_NOISOLATE, align 4
  %8 = load i32, i32* @MIIF_NOMANPAUSE, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.mii_attach_args*, %struct.mii_attach_args** %3, align 8
  %11 = getelementptr inbounds %struct.mii_attach_args, %struct.mii_attach_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @MII_MODEL(i32 %12)
  %14 = load i64, i64* @MII_MODEL_xxICPLUS_IP1000A, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  %18 = call i64 @mii_dev_mac_match(i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @miibus_get_flags(i32 %21)
  %23 = load i32, i32* @MIIF_MACPRIV0, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* @MIIF_PHYPRIV0, align 4
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %26, %20, %16, %1
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @mii_phy_dev_attach(i32 %31, i32 %32, i32* @ip1000phy_funcs, i32 1)
  ret i32 0
}

declare dso_local %struct.mii_attach_args* @device_get_ivars(i32) #1

declare dso_local i64 @MII_MODEL(i32) #1

declare dso_local i64 @mii_dev_mac_match(i32, i8*) #1

declare dso_local i32 @miibus_get_flags(i32) #1

declare dso_local i32 @mii_phy_dev_attach(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
