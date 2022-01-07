; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_generic_read_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_generic_read_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@SDHCI_TUNING_ENABLED = common dso_local global i32 0, align 4
@SDHCI_RETUNE_REQ_RESET = common dso_local global i32 0, align 4
@retune_req_reset = common dso_local global i64 0, align 8
@SDHCI_RETUNE_REQ_NEEDED = common dso_local global i32 0, align 4
@retune_req_normal = common dso_local global i64 0, align 8
@retune_req_none = common dso_local global i64 0, align 8
@SDHCI_RETUNE_MODE_1 = common dso_local global i32 0, align 4
@SDHCI_RETUNE_MODE_2 = common dso_local global i32 0, align 4
@MMC_SECTOR_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdhci_generic_read_ivar(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.sdhci_slot*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.sdhci_slot* @device_get_ivars(i32 %11)
  store %struct.sdhci_slot* %12, %struct.sdhci_slot** %10, align 8
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %14 [
    i32 144, label %16
    i32 143, label %23
    i32 141, label %30
    i32 140, label %37
    i32 138, label %44
    i32 139, label %50
    i32 137, label %56
    i32 134, label %62
    i32 133, label %68
    i32 132, label %74
    i32 128, label %81
    i32 131, label %88
    i32 129, label %119
    i32 142, label %126
    i32 130, label %132
    i32 135, label %139
    i32 136, label %165
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %5, align 4
  br label %168

16:                                               ; preds = %4
  %17 = load %struct.sdhci_slot*, %struct.sdhci_slot** %10, align 8
  %18 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64*, i64** %9, align 8
  store i64 %21, i64* %22, align 8
  br label %167

23:                                               ; preds = %4
  %24 = load %struct.sdhci_slot*, %struct.sdhci_slot** %10, align 8
  %25 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** %9, align 8
  store i64 %28, i64* %29, align 8
  br label %167

30:                                               ; preds = %4
  %31 = load %struct.sdhci_slot*, %struct.sdhci_slot** %10, align 8
  %32 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %9, align 8
  store i64 %35, i64* %36, align 8
  br label %167

37:                                               ; preds = %4
  %38 = load %struct.sdhci_slot*, %struct.sdhci_slot** %10, align 8
  %39 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %9, align 8
  store i64 %42, i64* %43, align 8
  br label %167

44:                                               ; preds = %4
  %45 = load %struct.sdhci_slot*, %struct.sdhci_slot** %10, align 8
  %46 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %9, align 8
  store i64 %48, i64* %49, align 8
  br label %167

50:                                               ; preds = %4
  %51 = load %struct.sdhci_slot*, %struct.sdhci_slot** %10, align 8
  %52 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64*, i64** %9, align 8
  store i64 %54, i64* %55, align 8
  br label %167

56:                                               ; preds = %4
  %57 = load %struct.sdhci_slot*, %struct.sdhci_slot** %10, align 8
  %58 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %9, align 8
  store i64 %60, i64* %61, align 8
  br label %167

62:                                               ; preds = %4
  %63 = load %struct.sdhci_slot*, %struct.sdhci_slot** %10, align 8
  %64 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** %9, align 8
  store i64 %66, i64* %67, align 8
  br label %167

68:                                               ; preds = %4
  %69 = load %struct.sdhci_slot*, %struct.sdhci_slot** %10, align 8
  %70 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = load i64*, i64** %9, align 8
  store i64 %72, i64* %73, align 8
  br label %167

74:                                               ; preds = %4
  %75 = load %struct.sdhci_slot*, %struct.sdhci_slot** %10, align 8
  %76 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** %9, align 8
  store i64 %79, i64* %80, align 8
  br label %167

81:                                               ; preds = %4
  %82 = load %struct.sdhci_slot*, %struct.sdhci_slot** %10, align 8
  %83 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = load i64*, i64** %9, align 8
  store i64 %86, i64* %87, align 8
  br label %167

88:                                               ; preds = %4
  %89 = load %struct.sdhci_slot*, %struct.sdhci_slot** %10, align 8
  %90 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @SDHCI_TUNING_ENABLED, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %116

95:                                               ; preds = %88
  %96 = load %struct.sdhci_slot*, %struct.sdhci_slot** %10, align 8
  %97 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @SDHCI_RETUNE_REQ_RESET, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load i64, i64* @retune_req_reset, align 8
  %104 = load i64*, i64** %9, align 8
  store i64 %103, i64* %104, align 8
  br label %167

105:                                              ; preds = %95
  %106 = load %struct.sdhci_slot*, %struct.sdhci_slot** %10, align 8
  %107 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @SDHCI_RETUNE_REQ_NEEDED, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %105
  %113 = load i64, i64* @retune_req_normal, align 8
  %114 = load i64*, i64** %9, align 8
  store i64 %113, i64* %114, align 8
  br label %167

115:                                              ; preds = %105
  br label %116

116:                                              ; preds = %115, %88
  %117 = load i64, i64* @retune_req_none, align 8
  %118 = load i64*, i64** %9, align 8
  store i64 %117, i64* %118, align 8
  br label %167

119:                                              ; preds = %4
  %120 = load %struct.sdhci_slot*, %struct.sdhci_slot** %10, align 8
  %121 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 6
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 6
  %124 = load i64, i64* %123, align 8
  %125 = load i64*, i64** %9, align 8
  store i64 %124, i64* %125, align 8
  br label %167

126:                                              ; preds = %4
  %127 = load %struct.sdhci_slot*, %struct.sdhci_slot** %10, align 8
  %128 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = load i64*, i64** %9, align 8
  store i64 %130, i64* %131, align 8
  br label %167

132:                                              ; preds = %4
  %133 = load %struct.sdhci_slot*, %struct.sdhci_slot** %10, align 8
  %134 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 6
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 7
  %137 = load i64, i64* %136, align 8
  %138 = load i64*, i64** %9, align 8
  store i64 %137, i64* %138, align 8
  br label %167

139:                                              ; preds = %4
  %140 = load %struct.sdhci_slot*, %struct.sdhci_slot** %10, align 8
  %141 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @SDHCI_TUNING_ENABLED, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %163

146:                                              ; preds = %139
  %147 = load %struct.sdhci_slot*, %struct.sdhci_slot** %10, align 8
  %148 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @SDHCI_RETUNE_MODE_1, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %158, label %152

152:                                              ; preds = %146
  %153 = load %struct.sdhci_slot*, %struct.sdhci_slot** %10, align 8
  %154 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @SDHCI_RETUNE_MODE_2, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %152, %146
  %159 = load i32, i32* @MMC_SECTOR_SIZE, align 4
  %160 = sdiv i32 4194304, %159
  %161 = sext i32 %160 to i64
  %162 = load i64*, i64** %9, align 8
  store i64 %161, i64* %162, align 8
  br label %167

163:                                              ; preds = %152, %139
  %164 = load i64*, i64** %9, align 8
  store i64 65535, i64* %164, align 8
  br label %167

165:                                              ; preds = %4
  %166 = load i64*, i64** %9, align 8
  store i64 1000000, i64* %166, align 8
  br label %167

167:                                              ; preds = %165, %163, %158, %132, %126, %119, %116, %112, %102, %81, %74, %68, %62, %56, %50, %44, %37, %30, %23, %16
  store i32 0, i32* %5, align 4
  br label %168

168:                                              ; preds = %167, %14
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local %struct.sdhci_slot* @device_get_ivars(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
