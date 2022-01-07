; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_plx.c_ntb_plx_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_plx.c_ntb_plx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_plx_softc = type { i64, i32, i64, i64, %struct.ntb_plx_mw_info* }
%struct.ntb_plx_mw_info = type { i32, i64 }

@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCIM_CMD_MEMEN = common dso_local global i32 0, align 4
@PCIM_CMD_BUSMASTEREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ntb_plx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_plx_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ntb_plx_softc*, align 8
  %4 = alloca %struct.ntb_plx_mw_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.ntb_plx_softc* @device_get_softc(i32 %8)
  store %struct.ntb_plx_softc* %9, %struct.ntb_plx_softc** %3, align 8
  %10 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp uge i64 %12, 0
  br i1 %13, label %14, label %149

14:                                               ; preds = %1
  %15 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %15, i32 0, i32 4
  %17 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %16, align 8
  %18 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %19 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %17, i64 %20
  store %struct.ntb_plx_mw_info* %21, %struct.ntb_plx_mw_info** %4, align 8
  %22 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %4, align 8
  %23 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %14
  %27 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %28 = call i32 @PNTX_WRITE(%struct.ntb_plx_softc* %27, i32 228, i32 3)
  %29 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %4, align 8
  %30 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = mul nsw i64 2305843009213693952, %32
  %34 = or i64 %33, 4
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %5, align 4
  %36 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %37 = call i32 @PCIR_BAR(i32 0)
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @PNTX_WRITE(%struct.ntb_plx_softc* %36, i32 %37, i32 %38)
  %40 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %41 = call i32 @PCIR_BAR(i32 0)
  %42 = add nsw i32 %41, 4
  %43 = load i32, i32* %5, align 4
  %44 = ashr i32 %43, 32
  %45 = call i32 @PNTX_WRITE(%struct.ntb_plx_softc* %40, i32 %42, i32 %44)
  br label %57

46:                                               ; preds = %14
  %47 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %48 = call i32 @PNTX_WRITE(%struct.ntb_plx_softc* %47, i32 228, i32 2)
  %49 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %4, align 8
  %50 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 536870912, %51
  store i32 %52, i32* %7, align 4
  %53 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %54 = call i32 @PCIR_BAR(i32 0)
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @PNTX_WRITE(%struct.ntb_plx_softc* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %46, %26
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %117, %57
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %61 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %120

64:                                               ; preds = %58
  %65 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %66 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %65, i32 0, i32 4
  %67 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %67, i64 %69
  store %struct.ntb_plx_mw_info* %70, %struct.ntb_plx_mw_info** %4, align 8
  %71 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %4, align 8
  %72 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %102

75:                                               ; preds = %64
  %76 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %4, align 8
  %77 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = mul nsw i64 2305843009213693952, %79
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %5, align 4
  %82 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %83 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %4, align 8
  %84 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 %85, 2
  %87 = mul nsw i32 %86, 4
  %88 = add nsw i32 3132, %87
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @NTX_WRITE(%struct.ntb_plx_softc* %82, i32 %88, i32 %89)
  %91 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %92 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %4, align 8
  %93 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %94, 2
  %96 = mul nsw i32 %95, 4
  %97 = add nsw i32 3132, %96
  %98 = add nsw i32 %97, 4
  %99 = load i32, i32* %5, align 4
  %100 = ashr i32 %99, 32
  %101 = call i32 @NTX_WRITE(%struct.ntb_plx_softc* %91, i32 %98, i32 %100)
  br label %116

102:                                              ; preds = %64
  %103 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %4, align 8
  %104 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = mul nsw i32 536870912, %105
  store i32 %106, i32* %7, align 4
  %107 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %108 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %4, align 8
  %109 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 %110, 2
  %112 = mul nsw i32 %111, 4
  %113 = add nsw i32 3132, %112
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @NTX_WRITE(%struct.ntb_plx_softc* %107, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %102, %75
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %58

120:                                              ; preds = %58
  %121 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %122 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %127 = call i32 @PNTX_WRITE(%struct.ntb_plx_softc* %126, i32 3220, i32 0)
  br label %128

128:                                              ; preds = %125, %120
  store i32 0, i32* %6, align 4
  br label %129

129:                                              ; preds = %145, %128
  %130 = load i32, i32* %6, align 4
  %131 = icmp slt i32 %130, 32
  br i1 %131, label %132, label %148

132:                                              ; preds = %129
  %133 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %134 = load i32, i32* %6, align 4
  %135 = mul nsw i32 %134, 2
  %136 = add nsw i32 3508, %135
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 1
  %139 = shl i32 %138, 19
  %140 = or i32 65537, %139
  %141 = load i32, i32* %6, align 4
  %142 = shl i32 %141, 3
  %143 = or i32 %140, %142
  %144 = call i32 @PNTX_WRITE(%struct.ntb_plx_softc* %133, i32 %136, i32 %143)
  br label %145

145:                                              ; preds = %132
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %146, 2
  store i32 %147, i32* %6, align 4
  br label %129

148:                                              ; preds = %129
  br label %149

149:                                              ; preds = %148, %1
  %150 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %151 = call i32 @NTX_READ(%struct.ntb_plx_softc* %150, i32 3216)
  %152 = shl i32 %151, 16
  %153 = or i32 %152, 65537
  store i32 %153, i32* %7, align 4
  %154 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %155 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %156 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i32 3508, i32 3476
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @NTX_WRITE(%struct.ntb_plx_softc* %154, i32 %160, i32 %161)
  %163 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %164 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %165 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i32 3512, i32 3480
  %170 = call i32 @NTX_WRITE(%struct.ntb_plx_softc* %163, i32 %169, i32 1075904545)
  %171 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %172 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %173 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i32 3516, i32 3484
  %178 = call i32 @NTX_WRITE(%struct.ntb_plx_softc* %171, i32 %177, i32 -1071546335)
  store i32 0, i32* %6, align 4
  br label %179

179:                                              ; preds = %189, %149
  %180 = load i32, i32* %6, align 4
  %181 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %182 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %185, label %192

185:                                              ; preds = %179
  %186 = load i32, i32* %2, align 4
  %187 = load i32, i32* %6, align 4
  %188 = call i32 @ntb_plx_mw_set_trans_internal(i32 %186, i32 %187)
  br label %189

189:                                              ; preds = %185
  %190 = load i32, i32* %6, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %6, align 4
  br label %179

192:                                              ; preds = %179
  %193 = load i32, i32* %2, align 4
  %194 = call i32 @pci_enable_busmaster(i32 %193)
  %195 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %196 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp uge i64 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %192
  %200 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %201 = load i32, i32* @PCIR_COMMAND, align 4
  %202 = load i32, i32* @PCIM_CMD_MEMEN, align 4
  %203 = load i32, i32* @PCIM_CMD_BUSMASTEREN, align 4
  %204 = or i32 %202, %203
  %205 = call i32 @PNTX_WRITE(%struct.ntb_plx_softc* %200, i32 %201, i32 %204)
  br label %206

206:                                              ; preds = %199, %192
  ret i32 0
}

declare dso_local %struct.ntb_plx_softc* @device_get_softc(i32) #1

declare dso_local i32 @PNTX_WRITE(%struct.ntb_plx_softc*, i32, i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @NTX_WRITE(%struct.ntb_plx_softc*, i32, i32) #1

declare dso_local i32 @NTX_READ(%struct.ntb_plx_softc*, i32) #1

declare dso_local i32 @ntb_plx_mw_set_trans_internal(i32, i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
