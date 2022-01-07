; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwiphy.c_bwi_set_gains.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwiphy.c_bwi_set_gains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.bwi_phy }
%struct.bwi_phy = type { i32 }
%struct.bwi_gains = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwi_set_gains(%struct.bwi_mac* %0, %struct.bwi_gains* %1) #0 {
  %3 = alloca %struct.bwi_mac*, align 8
  %4 = alloca %struct.bwi_gains*, align 8
  %5 = alloca %struct.bwi_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %3, align 8
  store %struct.bwi_gains* %1, %struct.bwi_gains** %4, align 8
  %12 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %13 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %12, i32 0, i32 0
  store %struct.bwi_phy* %13, %struct.bwi_phy** %5, align 8
  %14 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %15 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sle i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  store i32 20480, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 16
  store i32 %20, i32* %7, align 4
  br label %24

21:                                               ; preds = %2
  store i32 1024, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 8
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %21, %18
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %51, %24
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %54

28:                                               ; preds = %25
  %29 = load %struct.bwi_gains*, %struct.bwi_gains** %4, align 8
  %30 = icmp ne %struct.bwi_gains* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.bwi_gains*, %struct.bwi_gains** %4, align 8
  %33 = getelementptr inbounds %struct.bwi_gains, %struct.bwi_gains* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  br label %44

35:                                               ; preds = %28
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, 1
  %38 = shl i32 %37, 1
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 2
  %41 = ashr i32 %40, 1
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %35, %31
  %45 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @bwi_tbl_write_2(%struct.bwi_mac* %45, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %25

54:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %74, %54
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 16
  br i1 %57, label %58, label %77

58:                                               ; preds = %55
  %59 = load %struct.bwi_gains*, %struct.bwi_gains** %4, align 8
  %60 = icmp ne %struct.bwi_gains* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load %struct.bwi_gains*, %struct.bwi_gains** %4, align 8
  %63 = getelementptr inbounds %struct.bwi_gains, %struct.bwi_gains* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %8, align 4
  br label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %65, %61
  %68 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @bwi_tbl_write_2(%struct.bwi_mac* %68, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %55

77:                                               ; preds = %55
  %78 = load %struct.bwi_gains*, %struct.bwi_gains** %4, align 8
  %79 = icmp eq %struct.bwi_gains* %78, null
  br i1 %79, label %88, label %80

80:                                               ; preds = %77
  %81 = load %struct.bwi_gains*, %struct.bwi_gains** %4, align 8
  %82 = icmp ne %struct.bwi_gains* %81, null
  br i1 %82, label %83, label %113

83:                                               ; preds = %80
  %84 = load %struct.bwi_gains*, %struct.bwi_gains** %4, align 8
  %85 = getelementptr inbounds %struct.bwi_gains, %struct.bwi_gains* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, -1
  br i1 %87, label %88, label %113

88:                                               ; preds = %83, %77
  %89 = load %struct.bwi_gains*, %struct.bwi_gains** %4, align 8
  %90 = icmp ne %struct.bwi_gains* %89, null
  br i1 %90, label %91, label %102

91:                                               ; preds = %88
  %92 = load %struct.bwi_gains*, %struct.bwi_gains** %4, align 8
  %93 = getelementptr inbounds %struct.bwi_gains, %struct.bwi_gains* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 14
  %96 = load %struct.bwi_gains*, %struct.bwi_gains** %4, align 8
  %97 = getelementptr inbounds %struct.bwi_gains, %struct.bwi_gains* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 6
  %100 = or i32 %95, %99
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %11, align 4
  br label %103

102:                                              ; preds = %88
  store i32 16448, i32* %10, align 4
  store i32 16384, i32* %11, align 4
  br label %103

103:                                              ; preds = %102, %91
  %104 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %104, i32 1184, i32 49087, i32 %105)
  %107 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %107, i32 1185, i32 49087, i32 %108)
  %110 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %110, i32 1186, i32 49087, i32 %111)
  br label %113

113:                                              ; preds = %103, %83, %80
  %114 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %115 = call i32 @bwi_mac_dummy_xmit(%struct.bwi_mac* %114)
  ret void
}

declare dso_local i32 @bwi_tbl_write_2(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @PHY_FILT_SETBITS(%struct.bwi_mac*, i32, i32, i32) #1

declare dso_local i32 @bwi_mac_dummy_xmit(%struct.bwi_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
