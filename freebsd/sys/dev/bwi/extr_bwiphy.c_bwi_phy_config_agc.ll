; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwiphy.c_bwi_phy_config_agc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwiphy.c_bwi_phy_config_agc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.bwi_phy }
%struct.bwi_phy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_mac*)* @bwi_phy_config_agc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_phy_config_agc(%struct.bwi_mac* %0) #0 {
  %2 = alloca %struct.bwi_mac*, align 8
  %3 = alloca %struct.bwi_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %2, align 8
  %5 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %6 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %5, i32 0, i32 0
  store %struct.bwi_phy* %6, %struct.bwi_phy** %3, align 8
  %7 = load %struct.bwi_phy*, %struct.bwi_phy** %3, align 8
  %8 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 1
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 19456, i32 0
  store i32 %12, i32* %4, align 4
  %13 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @bwi_tbl_write_2(%struct.bwi_mac* %13, i32 %14, i32 254)
  %16 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i32 @bwi_tbl_write_2(%struct.bwi_mac* %16, i32 %18, i32 13)
  %20 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 2
  %23 = call i32 @bwi_tbl_write_2(%struct.bwi_mac* %20, i32 %22, i32 19)
  %24 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 3
  %27 = call i32 @bwi_tbl_write_2(%struct.bwi_mac* %24, i32 %26, i32 25)
  %28 = load %struct.bwi_phy*, %struct.bwi_phy** %3, align 8
  %29 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %43

32:                                               ; preds = %1
  %33 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %34 = call i32 @bwi_tbl_write_2(%struct.bwi_mac* %33, i32 6144, i32 10000)
  %35 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %36 = call i32 @bwi_tbl_write_2(%struct.bwi_mac* %35, i32 6145, i32 39811)
  %37 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %38 = call i32 @bwi_tbl_write_2(%struct.bwi_mac* %37, i32 6146, i32 39811)
  %39 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %40 = call i32 @bwi_tbl_write_2(%struct.bwi_mac* %39, i32 6147, i32 3981)
  %41 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %42 = call i32 @PHY_WRITE(%struct.bwi_mac* %41, i32 1109, i32 4)
  br label %43

43:                                               ; preds = %32, %1
  %44 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %45 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %44, i32 1189, i32 255, i32 22272)
  %46 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %47 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %46, i32 1050, i32 65408, i32 15)
  %48 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %49 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %48, i32 1050, i32 49279, i32 11136)
  %50 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %51 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %50, i32 1164, i32 61695, i32 768)
  %52 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %53 = call i32 @RF_SETBITS(%struct.bwi_mac* %52, i32 122, i32 8)
  %54 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %55 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %54, i32 1184, i32 65520, i32 8)
  %56 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %57 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %56, i32 1185, i32 61695, i32 1536)
  %58 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %59 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %58, i32 1186, i32 61695, i32 1792)
  %60 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %61 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %60, i32 1184, i32 61695, i32 256)
  %62 = load %struct.bwi_phy*, %struct.bwi_phy** %3, align 8
  %63 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %69

66:                                               ; preds = %43
  %67 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %68 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %67, i32 1186, i32 65520, i32 7)
  br label %69

69:                                               ; preds = %66, %43
  %70 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %71 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %70, i32 1160, i32 65280, i32 28)
  %72 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %73 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %72, i32 1160, i32 49407, i32 512)
  %74 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %75 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %74, i32 1174, i32 65280, i32 28)
  %76 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %77 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %76, i32 1161, i32 65280, i32 32)
  %78 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %79 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %78, i32 1161, i32 49407, i32 512)
  %80 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %81 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %80, i32 1154, i32 65280, i32 46)
  %82 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %83 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %82, i32 1174, i32 255, i32 6656)
  %84 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %85 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %84, i32 1153, i32 65280, i32 40)
  %86 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %87 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %86, i32 1153, i32 255, i32 11264)
  %88 = load %struct.bwi_phy*, %struct.bwi_phy** %3, align 8
  %89 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %97

92:                                               ; preds = %69
  %93 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %94 = call i32 @PHY_WRITE(%struct.bwi_mac* %93, i32 1072, i32 2347)
  %95 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %96 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %95, i32 1051, i32 65505, i32 2)
  br label %114

97:                                               ; preds = %69
  %98 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %99 = call i32 @PHY_CLRBITS(%struct.bwi_mac* %98, i32 1051, i32 30)
  %100 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %101 = call i32 @PHY_WRITE(%struct.bwi_mac* %100, i32 1055, i32 10362)
  %102 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %103 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %102, i32 1056, i32 65520, i32 4)
  %104 = load %struct.bwi_phy*, %struct.bwi_phy** %3, align 8
  %105 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp sge i32 %106, 6
  br i1 %107, label %108, label %113

108:                                              ; preds = %97
  %109 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %110 = call i32 @PHY_WRITE(%struct.bwi_mac* %109, i32 1058, i32 10362)
  %111 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %112 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %111, i32 1056, i32 4095, i32 12288)
  br label %113

113:                                              ; preds = %108, %97
  br label %114

114:                                              ; preds = %113, %92
  %115 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %116 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %115, i32 1192, i32 32896, i32 30836)
  %117 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %118 = call i32 @PHY_WRITE(%struct.bwi_mac* %117, i32 1166, i32 7168)
  %119 = load %struct.bwi_phy*, %struct.bwi_phy** %3, align 8
  %120 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %132

123:                                              ; preds = %114
  %124 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %125 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %124, i32 1195, i32 61695, i32 1536)
  %126 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %127 = call i32 @PHY_WRITE(%struct.bwi_mac* %126, i32 1163, i32 94)
  %128 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %129 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %128, i32 1164, i32 65280, i32 30)
  %130 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %131 = call i32 @PHY_WRITE(%struct.bwi_mac* %130, i32 1165, i32 2)
  br label %132

132:                                              ; preds = %123, %114
  %133 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %134 = load i32, i32* %4, align 4
  %135 = add nsw i32 %134, 2048
  %136 = call i32 @bwi_tbl_write_2(%struct.bwi_mac* %133, i32 %135, i32 0)
  %137 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %138 = load i32, i32* %4, align 4
  %139 = add nsw i32 %138, 2049
  %140 = call i32 @bwi_tbl_write_2(%struct.bwi_mac* %137, i32 %139, i32 7)
  %141 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %142 = load i32, i32* %4, align 4
  %143 = add nsw i32 %142, 2050
  %144 = call i32 @bwi_tbl_write_2(%struct.bwi_mac* %141, i32 %143, i32 16)
  %145 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %146 = load i32, i32* %4, align 4
  %147 = add nsw i32 %146, 2051
  %148 = call i32 @bwi_tbl_write_2(%struct.bwi_mac* %145, i32 %147, i32 28)
  %149 = load %struct.bwi_phy*, %struct.bwi_phy** %3, align 8
  %150 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp sge i32 %151, 6
  br i1 %152, label %153, label %158

153:                                              ; preds = %132
  %154 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %155 = call i32 @PHY_CLRBITS(%struct.bwi_mac* %154, i32 1062, i32 3)
  %156 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %157 = call i32 @PHY_CLRBITS(%struct.bwi_mac* %156, i32 1062, i32 4096)
  br label %158

158:                                              ; preds = %153, %132
  ret void
}

declare dso_local i32 @bwi_tbl_write_2(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @PHY_WRITE(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @PHY_FILT_SETBITS(%struct.bwi_mac*, i32, i32, i32) #1

declare dso_local i32 @RF_SETBITS(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @PHY_CLRBITS(%struct.bwi_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
