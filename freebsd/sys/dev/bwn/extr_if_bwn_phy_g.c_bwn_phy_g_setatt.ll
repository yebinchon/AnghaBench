; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_phy_g_setatt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_phy_g_setatt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.bwn_txpwr_loctl }
%struct.bwn_txpwr_loctl = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, i32*, i32*)* @bwn_phy_g_setatt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_phy_g_setatt(%struct.bwn_mac* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.bwn_mac*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bwn_txpwr_loctl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %11 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.bwn_txpwr_loctl* %13, %struct.bwn_txpwr_loctl** %7, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  br label %18

18:                                               ; preds = %3, %89, %101, %113, %125
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.bwn_txpwr_loctl*, %struct.bwn_txpwr_loctl** %7, align 8
  %21 = getelementptr inbounds %struct.bwn_txpwr_loctl, %struct.bwn_txpwr_loctl* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %19, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.bwn_txpwr_loctl*, %struct.bwn_txpwr_loctl** %7, align 8
  %28 = getelementptr inbounds %struct.bwn_txpwr_loctl, %struct.bwn_txpwr_loctl* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 4
  %32 = icmp sgt i32 %26, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %131

34:                                               ; preds = %25, %18
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.bwn_txpwr_loctl*, %struct.bwn_txpwr_loctl** %7, align 8
  %37 = getelementptr inbounds %struct.bwn_txpwr_loctl, %struct.bwn_txpwr_loctl* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %35, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.bwn_txpwr_loctl*, %struct.bwn_txpwr_loctl** %7, align 8
  %44 = getelementptr inbounds %struct.bwn_txpwr_loctl, %struct.bwn_txpwr_loctl* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 4
  %48 = icmp slt i32 %42, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %131

50:                                               ; preds = %41, %34
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.bwn_txpwr_loctl*, %struct.bwn_txpwr_loctl** %7, align 8
  %53 = getelementptr inbounds %struct.bwn_txpwr_loctl, %struct.bwn_txpwr_loctl* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %51, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.bwn_txpwr_loctl*, %struct.bwn_txpwr_loctl** %7, align 8
  %60 = getelementptr inbounds %struct.bwn_txpwr_loctl, %struct.bwn_txpwr_loctl* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 1
  %64 = icmp sgt i32 %58, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %131

66:                                               ; preds = %57, %50
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.bwn_txpwr_loctl*, %struct.bwn_txpwr_loctl** %7, align 8
  %69 = getelementptr inbounds %struct.bwn_txpwr_loctl, %struct.bwn_txpwr_loctl* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %67, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %66
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.bwn_txpwr_loctl*, %struct.bwn_txpwr_loctl** %7, align 8
  %76 = getelementptr inbounds %struct.bwn_txpwr_loctl, %struct.bwn_txpwr_loctl* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  %80 = icmp slt i32 %74, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %131

82:                                               ; preds = %73, %66
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.bwn_txpwr_loctl*, %struct.bwn_txpwr_loctl** %7, align 8
  %85 = getelementptr inbounds %struct.bwn_txpwr_loctl, %struct.bwn_txpwr_loctl* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp sgt i32 %83, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load i32, i32* %9, align 4
  %91 = sub nsw i32 %90, 4
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %18

94:                                               ; preds = %82
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.bwn_txpwr_loctl*, %struct.bwn_txpwr_loctl** %7, align 8
  %97 = getelementptr inbounds %struct.bwn_txpwr_loctl, %struct.bwn_txpwr_loctl* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %95, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %94
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 4
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %8, align 4
  %105 = sub nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %18

106:                                              ; preds = %94
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.bwn_txpwr_loctl*, %struct.bwn_txpwr_loctl** %7, align 8
  %109 = getelementptr inbounds %struct.bwn_txpwr_loctl, %struct.bwn_txpwr_loctl* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp sgt i32 %107, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %106
  %114 = load i32, i32* %8, align 4
  %115 = sub nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 4
  store i32 %117, i32* %9, align 4
  br label %18

118:                                              ; preds = %106
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.bwn_txpwr_loctl*, %struct.bwn_txpwr_loctl** %7, align 8
  %121 = getelementptr inbounds %struct.bwn_txpwr_loctl, %struct.bwn_txpwr_loctl* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %119, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %118
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %9, align 4
  %129 = sub nsw i32 %128, 4
  store i32 %129, i32* %9, align 4
  br label %18

130:                                              ; preds = %118
  br label %131

131:                                              ; preds = %130, %81, %65, %49, %33
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.bwn_txpwr_loctl*, %struct.bwn_txpwr_loctl** %7, align 8
  %134 = getelementptr inbounds %struct.bwn_txpwr_loctl, %struct.bwn_txpwr_loctl* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @MAX(i32 %132, i32 %136)
  %138 = load %struct.bwn_txpwr_loctl*, %struct.bwn_txpwr_loctl** %7, align 8
  %139 = getelementptr inbounds %struct.bwn_txpwr_loctl, %struct.bwn_txpwr_loctl* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @MIN(i32 %137, i32 %141)
  %143 = load i32*, i32** %6, align 8
  store i32 %142, i32* %143, align 4
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.bwn_txpwr_loctl*, %struct.bwn_txpwr_loctl** %7, align 8
  %146 = getelementptr inbounds %struct.bwn_txpwr_loctl, %struct.bwn_txpwr_loctl* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @MAX(i32 %144, i32 %148)
  %150 = load %struct.bwn_txpwr_loctl*, %struct.bwn_txpwr_loctl** %7, align 8
  %151 = getelementptr inbounds %struct.bwn_txpwr_loctl, %struct.bwn_txpwr_loctl* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @MIN(i32 %149, i32 %153)
  %155 = load i32*, i32** %5, align 8
  store i32 %154, i32* %155, align 4
  ret void
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
