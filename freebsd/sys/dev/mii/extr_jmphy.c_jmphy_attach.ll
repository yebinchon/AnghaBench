; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_jmphy.c_jmphy_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_jmphy.c_jmphy_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"jme\00", align 1
@MIIF_MACPRIV0 = common dso_local global i32 0, align 4
@MIIF_PHYPRIV0 = common dso_local global i32 0, align 4
@jmphy_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @jmphy_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jmphy_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i64 @mii_dev_mac_match(i32 %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @miibus_get_flags(i32 %8)
  %10 = load i32, i32* @MIIF_MACPRIV0, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load i32, i32* @MIIF_PHYPRIV0, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %13, %7, %1
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @mii_phy_dev_attach(i32 %18, i32 %19, i32* @jmphy_funcs, i32 1)
  ret i32 0
}

declare dso_local i64 @mii_dev_mac_match(i32, i8*) #1

declare dso_local i32 @miibus_get_flags(i32) #1

declare dso_local i32 @mii_phy_dev_attach(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
