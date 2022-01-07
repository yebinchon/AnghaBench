; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_check_collision.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_check_collision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_channel = type { i32, i64*, i64*, i64, i64, i32, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%union.ccb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@XPT_ATA_IO = common dso_local global i64 0, align 8
@CAM_ATAIO_FPDMA = common dso_local global i32 0, align 4
@CAM_ATAIO_CONTROL = common dso_local global i32 0, align 4
@CAM_ATAIO_NEEDRESULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahci_channel*, %union.ccb*)* @ahci_check_collision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_check_collision(%struct.ahci_channel* %0, %union.ccb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahci_channel*, align 8
  %5 = alloca %union.ccb*, align 8
  %6 = alloca i32, align 4
  store %struct.ahci_channel* %0, %struct.ahci_channel** %4, align 8
  store %union.ccb* %1, %union.ccb** %5, align 8
  %7 = load %union.ccb*, %union.ccb** %5, align 8
  %8 = bitcast %union.ccb* %7 to %struct.TYPE_6__*
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load %union.ccb*, %union.ccb** %5, align 8
  %12 = bitcast %union.ccb* %11 to %struct.TYPE_6__*
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @XPT_ATA_IO, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %97

17:                                               ; preds = %2
  %18 = load %union.ccb*, %union.ccb** %5, align 8
  %19 = bitcast %union.ccb* %18 to %struct.TYPE_8__*
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @CAM_ATAIO_FPDMA, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %97

26:                                               ; preds = %17
  %27 = load %struct.ahci_channel*, %struct.ahci_channel** %4, align 8
  %28 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = xor i32 %29, -1
  %31 = load %struct.ahci_channel*, %struct.ahci_channel** %4, align 8
  %32 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %31, i32 0, i32 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 32, %38
  %40 = lshr i32 -1, %39
  %41 = and i32 %30, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %167

44:                                               ; preds = %26
  %45 = load %struct.ahci_channel*, %struct.ahci_channel** %4, align 8
  %46 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %45, i32 0, i32 7
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %44
  %50 = load %struct.ahci_channel*, %struct.ahci_channel** %4, align 8
  %51 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %49
  %59 = load %struct.ahci_channel*, %struct.ahci_channel** %4, align 8
  %60 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %59, i32 0, i32 2
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  store i32 1, i32* %3, align 4
  br label %167

68:                                               ; preds = %58, %49
  br label %96

69:                                               ; preds = %44
  %70 = load %struct.ahci_channel*, %struct.ahci_channel** %4, align 8
  %71 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.ahci_channel*, %struct.ahci_channel** %4, align 8
  %76 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 1, i32* %3, align 4
  br label %167

80:                                               ; preds = %74, %69
  %81 = load %struct.ahci_channel*, %struct.ahci_channel** %4, align 8
  %82 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = load %struct.ahci_channel*, %struct.ahci_channel** %4, align 8
  %87 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = load %union.ccb*, %union.ccb** %5, align 8
  %90 = bitcast %union.ccb* %89 to %struct.TYPE_6__*
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %88, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  store i32 1, i32* %3, align 4
  br label %167

95:                                               ; preds = %85, %80
  br label %96

96:                                               ; preds = %95, %68
  br label %135

97:                                               ; preds = %17, %2
  %98 = load %struct.ahci_channel*, %struct.ahci_channel** %4, align 8
  %99 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %98, i32 0, i32 7
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %122

102:                                              ; preds = %97
  %103 = load %struct.ahci_channel*, %struct.ahci_channel** %4, align 8
  %104 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %103, i32 0, i32 1
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %102
  %112 = load %struct.ahci_channel*, %struct.ahci_channel** %4, align 8
  %113 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %112, i32 0, i32 2
  %114 = load i64*, i64** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  store i32 1, i32* %3, align 4
  br label %167

121:                                              ; preds = %111, %102
  br label %134

122:                                              ; preds = %97
  %123 = load %struct.ahci_channel*, %struct.ahci_channel** %4, align 8
  %124 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load %struct.ahci_channel*, %struct.ahci_channel** %4, align 8
  %129 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  store i32 1, i32* %3, align 4
  br label %167

133:                                              ; preds = %127, %122
  br label %134

134:                                              ; preds = %133, %121
  br label %135

135:                                              ; preds = %134, %96
  %136 = load %union.ccb*, %union.ccb** %5, align 8
  %137 = bitcast %union.ccb* %136 to %struct.TYPE_6__*
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @XPT_ATA_IO, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %160

142:                                              ; preds = %135
  %143 = load %union.ccb*, %union.ccb** %5, align 8
  %144 = bitcast %union.ccb* %143 to %struct.TYPE_8__*
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @CAM_ATAIO_CONTROL, align 4
  %149 = load i32, i32* @CAM_ATAIO_NEEDRESULT, align 4
  %150 = or i32 %148, %149
  %151 = and i32 %147, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %142
  %154 = load %struct.ahci_channel*, %struct.ahci_channel** %4, align 8
  %155 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  store i32 1, i32* %3, align 4
  br label %167

159:                                              ; preds = %153
  br label %160

160:                                              ; preds = %159, %142, %135
  %161 = load %struct.ahci_channel*, %struct.ahci_channel** %4, align 8
  %162 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %161, i32 0, i32 6
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  store i32 1, i32* %3, align 4
  br label %167

166:                                              ; preds = %160
  store i32 0, i32* %3, align 4
  br label %167

167:                                              ; preds = %166, %165, %158, %132, %120, %94, %79, %67, %43
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
