; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_phy_g_init_pre.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_phy_g_init_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { %struct.bwn_phy_g }
%struct.bwn_phy_g = type { i32, i32*, i32*, i32, i32, i32, %struct.TYPE_2__, i32, i32, %struct.bwn_phy_g*, i8* }
%struct.TYPE_2__ = type { i32, i32 }

@BWN_IMMODE_NONE = common dso_local global i32 0, align 4
@BWN_OFDMTAB_DIR_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwn_phy_g_init_pre(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy*, align 8
  %4 = alloca %struct.bwn_phy_g*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %8 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %9 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %8, i32 0, i32 0
  store %struct.bwn_phy* %9, %struct.bwn_phy** %3, align 8
  %10 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %11 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %10, i32 0, i32 0
  store %struct.bwn_phy_g* %11, %struct.bwn_phy_g** %4, align 8
  %12 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %4, align 8
  %13 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %12, i32 0, i32 10
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %5, align 8
  %15 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %4, align 8
  %16 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %4, align 8
  %19 = call i32 @memset(%struct.bwn_phy_g* %18, i32 0, i32 72)
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %4, align 8
  %22 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %21, i32 0, i32 10
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %4, align 8
  %25 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %4, align 8
  %27 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %26, i32 0, i32 9
  %28 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %27, align 8
  %29 = call i32 @memset(%struct.bwn_phy_g* %28, i32 255, i32 8)
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %44, %1
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %4, align 8
  %33 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @N(i32* %34)
  %36 = icmp ult i32 %31, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %30
  %38 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %4, align 8
  %39 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 -1000, i32* %43, align 4
  br label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %7, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %30

47:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %63, %47
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %4, align 8
  %51 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @N(i32* %52)
  %54 = icmp ult i32 %49, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %48
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %4, align 8
  %58 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %56, i32* %62, align 4
  br label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %7, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %48

66:                                               ; preds = %48
  %67 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %4, align 8
  %68 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %67, i32 0, i32 3
  store i32 65535, i32* %68, align 8
  %69 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %4, align 8
  %70 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %69, i32 0, i32 4
  store i32 65535, i32* %70, align 4
  %71 = load i32, i32* @BWN_IMMODE_NONE, align 4
  %72 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %4, align 8
  %73 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %72, i32 0, i32 8
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @BWN_OFDMTAB_DIR_UNKNOWN, align 4
  %75 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %4, align 8
  %76 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %75, i32 0, i32 7
  store i32 %74, i32* %76, align 4
  %77 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %4, align 8
  %78 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %77, i32 0, i32 5
  store i32 255, i32* %78, align 8
  %79 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %4, align 8
  %80 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %79, i32 0, i32 6
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 255, i32* %81, align 4
  %82 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %4, align 8
  %83 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = call i32 @TAILQ_INIT(i32* %84)
  ret void
}

declare dso_local i32 @memset(%struct.bwn_phy_g*, i32, i32) #1

declare dso_local i32 @N(i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
