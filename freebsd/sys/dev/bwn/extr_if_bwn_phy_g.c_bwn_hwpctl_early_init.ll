; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_hwpctl_early_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_hwpctl_early_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_hwpctl_early_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_hwpctl_early_init(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %4 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %5 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %4, i32 0, i32 0
  store %struct.bwn_phy* %5, %struct.bwn_phy** %3, align 8
  %6 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %7 = call i32 @bwn_has_hwpctl(%struct.bwn_mac* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %11 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %10, i32 1146, i32 49425)
  br label %56

12:                                               ; preds = %1
  %13 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %14 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %13, i32 54, i32 65279)
  %15 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %16 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %15, i32 47, i32 514)
  %17 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %18 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %17, i32 1148, i32 2)
  %19 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %20 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %19, i32 1146, i32 61440)
  %21 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %22 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 8272
  br i1 %24, label %25, label %41

25:                                               ; preds = %12
  %26 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %27 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 8
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %32 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %31, i32 1146, i32 65295, i32 16)
  %33 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %34 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %33, i32 93, i32 32768)
  %35 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %36 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %35, i32 78, i32 65472, i32 16)
  %37 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %38 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %37, i32 46, i32 49279)
  %39 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %40 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %39, i32 54, i32 1024)
  br label %56

41:                                               ; preds = %25, %12
  %42 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %43 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %42, i32 54, i32 512)
  %44 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %45 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %44, i32 54, i32 1024)
  %46 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %47 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %46, i32 93, i32 32767)
  %48 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %49 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %48, i32 79, i32 65534)
  %50 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %51 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %50, i32 78, i32 65472, i32 16)
  %52 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %53 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %52, i32 46, i32 49279)
  %54 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %55 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %54, i32 1146, i32 65295, i32 16)
  br label %56

56:                                               ; preds = %9, %41, %30
  ret void
}

declare dso_local i32 @bwn_has_hwpctl(%struct.bwn_mac*) #1

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_MASK(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_SET(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
