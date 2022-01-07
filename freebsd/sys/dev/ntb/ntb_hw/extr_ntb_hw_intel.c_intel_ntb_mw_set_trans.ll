; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_mw_set_trans.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_mw_set_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { i32, i64, %struct.ntb_pci_bar_info* }
%struct.ntb_pci_bar_info = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@BAR_HIGH_MASK = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i64)* @intel_ntb_mw_set_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ntb_mw_set_trans(i32 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ntb_softc*, align 8
  %11 = alloca %struct.ntb_pci_bar_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.ntb_softc* @device_get_softc(i32 %21)
  store %struct.ntb_softc* %22, %struct.ntb_softc** %10, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @intel_ntb_mw_count(i32 %24)
  %26 = icmp uge i32 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %5, align 4
  br label %199

29:                                               ; preds = %4
  %30 = load %struct.ntb_softc*, %struct.ntb_softc** %10, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @intel_ntb_user_mw_to_idx(%struct.ntb_softc* %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.ntb_softc*, %struct.ntb_softc** %10, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @intel_ntb_mw_to_bar(%struct.ntb_softc* %33, i32 %34)
  store i32 %35, i32* %20, align 4
  %36 = load %struct.ntb_softc*, %struct.ntb_softc** %10, align 8
  %37 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %36, i32 0, i32 2
  %38 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %37, align 8
  %39 = load i32, i32* %20, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %38, i64 %40
  store %struct.ntb_pci_bar_info* %41, %struct.ntb_pci_bar_info** %11, align 8
  %42 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %11, align 8
  %43 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %15, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.ntb_softc*, %struct.ntb_softc** %10, align 8
  %47 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %29
  %51 = load i64, i64* %15, align 8
  %52 = load %struct.ntb_softc*, %struct.ntb_softc** %10, align 8
  %53 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 %51, %54
  store i64 %55, i64* %16, align 8
  br label %58

56:                                               ; preds = %29
  %57 = load i64, i64* %15, align 8
  store i64 %57, i64* %16, align 8
  br label %58

58:                                               ; preds = %56, %50
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %15, align 8
  %61 = sub i64 %60, 1
  %62 = and i64 %59, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %5, align 4
  br label %199

66:                                               ; preds = %58
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* %16, align 8
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @EINVAL, align 4
  store i32 %71, i32* %5, align 4
  br label %199

72:                                               ; preds = %66
  %73 = load %struct.ntb_softc*, %struct.ntb_softc** %10, align 8
  %74 = load i32, i32* %20, align 4
  %75 = call i32 @bar_get_xlat_params(%struct.ntb_softc* %73, i32 %74, i64* %17, i64* %18, i64* %19)
  store i64 0, i64* %13, align 8
  %76 = load %struct.ntb_softc*, %struct.ntb_softc** %10, align 8
  %77 = load i32, i32* %20, align 4
  %78 = call i64 @bar_is_64bit(%struct.ntb_softc* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %129

80:                                               ; preds = %72
  %81 = load i64, i64* %17, align 8
  %82 = call i64 @intel_ntb_reg_read(i32 8, i64 %81)
  %83 = load i64, i64* @BAR_HIGH_MASK, align 8
  %84 = and i64 %82, %83
  store i64 %84, i64* %12, align 8
  %85 = load i64, i64* %19, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %80
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* %16, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i64, i64* %12, align 8
  %93 = load i64, i64* %9, align 8
  %94 = add i64 %92, %93
  store i64 %94, i64* %13, align 8
  br label %95

95:                                               ; preds = %91, %87, %80
  %96 = load i64, i64* %18, align 8
  %97 = load i64, i64* %8, align 8
  %98 = call i32 @intel_ntb_reg_write(i32 8, i64 %96, i64 %97)
  %99 = load i64, i64* %18, align 8
  %100 = call i64 @intel_ntb_reg_read(i32 8, i64 %99)
  %101 = load i64, i64* @BAR_HIGH_MASK, align 8
  %102 = and i64 %100, %101
  store i64 %102, i64* %14, align 8
  %103 = load i64, i64* %14, align 8
  %104 = load i64, i64* %8, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %95
  %107 = load i64, i64* %18, align 8
  %108 = call i32 @intel_ntb_reg_write(i32 8, i64 %107, i64 0)
  %109 = load i32, i32* @EIO, align 4
  store i32 %109, i32* %5, align 4
  br label %199

110:                                              ; preds = %95
  %111 = load i64, i64* %19, align 8
  %112 = load i64, i64* %13, align 8
  %113 = call i32 @intel_ntb_reg_write(i32 8, i64 %111, i64 %112)
  %114 = load i64, i64* %19, align 8
  %115 = call i64 @intel_ntb_reg_read(i32 8, i64 %114)
  %116 = load i64, i64* @BAR_HIGH_MASK, align 8
  %117 = and i64 %115, %116
  store i64 %117, i64* %14, align 8
  %118 = load i64, i64* %14, align 8
  %119 = load i64, i64* %13, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %110
  %122 = load i64, i64* %19, align 8
  %123 = load i64, i64* %12, align 8
  %124 = call i32 @intel_ntb_reg_write(i32 8, i64 %122, i64 %123)
  %125 = load i64, i64* %18, align 8
  %126 = call i32 @intel_ntb_reg_write(i32 8, i64 %125, i64 0)
  %127 = load i32, i32* @EIO, align 4
  store i32 %127, i32* %5, align 4
  br label %199

128:                                              ; preds = %110
  br label %198

129:                                              ; preds = %72
  %130 = load i64, i64* %8, align 8
  %131 = load i64, i64* @UINT32_MAX, align 8
  %132 = and i64 %130, %131
  %133 = load i64, i64* %8, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load i32, i32* @ERANGE, align 4
  store i32 %136, i32* %5, align 4
  br label %199

137:                                              ; preds = %129
  %138 = load i64, i64* %8, align 8
  %139 = load i64, i64* %9, align 8
  %140 = add i64 %138, %139
  %141 = load i64, i64* @UINT32_MAX, align 8
  %142 = and i64 %140, %141
  %143 = load i64, i64* %8, align 8
  %144 = load i64, i64* %9, align 8
  %145 = add i64 %143, %144
  %146 = icmp ne i64 %142, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %137
  %148 = load i32, i32* @ERANGE, align 4
  store i32 %148, i32* %5, align 4
  br label %199

149:                                              ; preds = %137
  %150 = load i64, i64* %17, align 8
  %151 = call i64 @intel_ntb_reg_read(i32 4, i64 %150)
  %152 = load i64, i64* @BAR_HIGH_MASK, align 8
  %153 = and i64 %151, %152
  store i64 %153, i64* %12, align 8
  %154 = load i64, i64* %19, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %149
  %157 = load i64, i64* %9, align 8
  %158 = load i64, i64* %16, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = load i64, i64* %12, align 8
  %162 = load i64, i64* %9, align 8
  %163 = add i64 %161, %162
  store i64 %163, i64* %13, align 8
  br label %164

164:                                              ; preds = %160, %156, %149
  %165 = load i64, i64* %18, align 8
  %166 = load i64, i64* %8, align 8
  %167 = call i32 @intel_ntb_reg_write(i32 4, i64 %165, i64 %166)
  %168 = load i64, i64* %18, align 8
  %169 = call i64 @intel_ntb_reg_read(i32 4, i64 %168)
  %170 = load i64, i64* @BAR_HIGH_MASK, align 8
  %171 = and i64 %169, %170
  store i64 %171, i64* %14, align 8
  %172 = load i64, i64* %14, align 8
  %173 = load i64, i64* %8, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %164
  %176 = load i64, i64* %18, align 8
  %177 = call i32 @intel_ntb_reg_write(i32 4, i64 %176, i64 0)
  %178 = load i32, i32* @EIO, align 4
  store i32 %178, i32* %5, align 4
  br label %199

179:                                              ; preds = %164
  %180 = load i64, i64* %19, align 8
  %181 = load i64, i64* %13, align 8
  %182 = call i32 @intel_ntb_reg_write(i32 4, i64 %180, i64 %181)
  %183 = load i64, i64* %19, align 8
  %184 = call i64 @intel_ntb_reg_read(i32 4, i64 %183)
  %185 = load i64, i64* @BAR_HIGH_MASK, align 8
  %186 = and i64 %184, %185
  store i64 %186, i64* %14, align 8
  %187 = load i64, i64* %14, align 8
  %188 = load i64, i64* %13, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %197

190:                                              ; preds = %179
  %191 = load i64, i64* %19, align 8
  %192 = load i64, i64* %12, align 8
  %193 = call i32 @intel_ntb_reg_write(i32 4, i64 %191, i64 %192)
  %194 = load i64, i64* %18, align 8
  %195 = call i32 @intel_ntb_reg_write(i32 4, i64 %194, i64 0)
  %196 = load i32, i32* @EIO, align 4
  store i32 %196, i32* %5, align 4
  br label %199

197:                                              ; preds = %179
  br label %198

198:                                              ; preds = %197, %128
  store i32 0, i32* %5, align 4
  br label %199

199:                                              ; preds = %198, %190, %175, %147, %135, %121, %106, %70, %64, %27
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local %struct.ntb_softc* @device_get_softc(i32) #1

declare dso_local i32 @intel_ntb_mw_count(i32) #1

declare dso_local i32 @intel_ntb_user_mw_to_idx(%struct.ntb_softc*, i32) #1

declare dso_local i32 @intel_ntb_mw_to_bar(%struct.ntb_softc*, i32) #1

declare dso_local i32 @bar_get_xlat_params(%struct.ntb_softc*, i32, i64*, i64*, i64*) #1

declare dso_local i64 @bar_is_64bit(%struct.ntb_softc*, i32) #1

declare dso_local i64 @intel_ntb_reg_read(i32, i64) #1

declare dso_local i32 @intel_ntb_reg_write(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
