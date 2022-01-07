; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_commoncxgb_common.h_cphy_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_commoncxgb_common.h_cphy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32, i8*, i32, i32, %struct.cphy_ops*, i32*, i32*, i64 }
%struct.cphy_ops = type { i32 }
%struct.mdio_ops = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cphy*, i32*, i32*, i32, %struct.cphy_ops*, %struct.mdio_ops*, i32, i8*)* @cphy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cphy_init(%struct.cphy* %0, i32* %1, i32* %2, i32 %3, %struct.cphy_ops* %4, %struct.mdio_ops* %5, i32 %6, i8* %7) #0 {
  %9 = alloca %struct.cphy*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.cphy_ops*, align 8
  %14 = alloca %struct.mdio_ops*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.cphy* %0, %struct.cphy** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.cphy_ops* %4, %struct.cphy_ops** %13, align 8
  store %struct.mdio_ops* %5, %struct.mdio_ops** %14, align 8
  store i32 %6, i32* %15, align 4
  store i8* %7, i8** %16, align 8
  %17 = load i32, i32* %12, align 4
  %18 = sext i32 %17 to i64
  %19 = load %struct.cphy*, %struct.cphy** %9, align 8
  %20 = getelementptr inbounds %struct.cphy, %struct.cphy* %19, i32 0, i32 7
  store i64 %18, i64* %20, align 8
  %21 = load i32, i32* %15, align 4
  %22 = load %struct.cphy*, %struct.cphy** %9, align 8
  %23 = getelementptr inbounds %struct.cphy, %struct.cphy* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load %struct.cphy*, %struct.cphy** %9, align 8
  %26 = getelementptr inbounds %struct.cphy, %struct.cphy* %25, i32 0, i32 6
  store i32* %24, i32** %26, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = load %struct.cphy*, %struct.cphy** %9, align 8
  %29 = getelementptr inbounds %struct.cphy, %struct.cphy* %28, i32 0, i32 5
  store i32* %27, i32** %29, align 8
  %30 = load i8*, i8** %16, align 8
  %31 = load %struct.cphy*, %struct.cphy** %9, align 8
  %32 = getelementptr inbounds %struct.cphy, %struct.cphy* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.cphy_ops*, %struct.cphy_ops** %13, align 8
  %34 = load %struct.cphy*, %struct.cphy** %9, align 8
  %35 = getelementptr inbounds %struct.cphy, %struct.cphy* %34, i32 0, i32 4
  store %struct.cphy_ops* %33, %struct.cphy_ops** %35, align 8
  %36 = load %struct.mdio_ops*, %struct.mdio_ops** %14, align 8
  %37 = icmp ne %struct.mdio_ops* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %8
  %39 = load %struct.mdio_ops*, %struct.mdio_ops** %14, align 8
  %40 = getelementptr inbounds %struct.mdio_ops, %struct.mdio_ops* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.cphy*, %struct.cphy** %9, align 8
  %43 = getelementptr inbounds %struct.cphy, %struct.cphy* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.mdio_ops*, %struct.mdio_ops** %14, align 8
  %45 = getelementptr inbounds %struct.mdio_ops, %struct.mdio_ops* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.cphy*, %struct.cphy** %9, align 8
  %48 = getelementptr inbounds %struct.cphy, %struct.cphy* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %38, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
