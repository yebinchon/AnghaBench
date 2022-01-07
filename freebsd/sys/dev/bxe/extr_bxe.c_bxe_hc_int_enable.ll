; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_hc_int_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_hc_int_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@HC_REG_CONFIG_1 = common dso_local global i32 0, align 4
@HC_REG_CONFIG_0 = common dso_local global i32 0, align 4
@INTR_MODE_MSIX = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@INTR_MODE_MSI = common dso_local global i64 0, align 8
@HC_CONFIG_0_REG_SINGLE_ISR_EN_0 = common dso_local global i32 0, align 4
@HC_CONFIG_0_REG_INT_LINE_EN_0 = common dso_local global i32 0, align 4
@HC_CONFIG_0_REG_MSI_MSIX_INT_EN_0 = common dso_local global i32 0, align 4
@HC_CONFIG_0_REG_ATTN_BIT_EN_0 = common dso_local global i32 0, align 4
@DBG_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"write %x to HC %d (addr 0x%x)\0A\00", align 1
@HC_REG_INT_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"write %x to HC %d (addr 0x%x) mode %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"MSI-X\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"MSI\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"INTx\00", align 1
@HC_REG_TRAILING_EDGE_0 = common dso_local global i32 0, align 4
@HC_REG_LEADING_EDGE_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_hc_int_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_hc_int_enable(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %10 = call i32 @SC_PORT(%struct.bxe_softc* %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @HC_REG_CONFIG_1, align 4
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @HC_REG_CONFIG_0, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %4, align 4
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @REG_RD(%struct.bxe_softc* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %23 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @INTR_MODE_MSIX, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i64, i64* @TRUE, align 8
  br label %31

29:                                               ; preds = %17
  %30 = load i64, i64* @FALSE, align 8
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i64 [ %28, %27 ], [ %30, %29 ]
  store i64 %32, i64* %6, align 8
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %34 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @INTR_MODE_MSIX, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %40 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i64, i64* @TRUE, align 8
  br label %47

45:                                               ; preds = %38, %31
  %46 = load i64, i64* @FALSE, align 8
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i64 [ %44, %43 ], [ %46, %45 ]
  store i64 %48, i64* %7, align 8
  %49 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %50 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @INTR_MODE_MSI, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i64, i64* @TRUE, align 8
  br label %58

56:                                               ; preds = %47
  %57 = load i64, i64* @FALSE, align 8
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i64 [ %55, %54 ], [ %57, %56 ]
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %58
  %63 = load i32, i32* @HC_CONFIG_0_REG_SINGLE_ISR_EN_0, align 4
  %64 = load i32, i32* @HC_CONFIG_0_REG_INT_LINE_EN_0, align 4
  %65 = or i32 %63, %64
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* @HC_CONFIG_0_REG_MSI_MSIX_INT_EN_0, align 4
  %70 = load i32, i32* @HC_CONFIG_0_REG_ATTN_BIT_EN_0, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  %74 = load i64, i64* %7, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %62
  %77 = load i32, i32* @HC_CONFIG_0_REG_SINGLE_ISR_EN_0, align 4
  %78 = load i32, i32* %5, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %76, %62
  br label %126

81:                                               ; preds = %58
  %82 = load i64, i64* %8, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %81
  %85 = load i32, i32* @HC_CONFIG_0_REG_INT_LINE_EN_0, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %5, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* @HC_CONFIG_0_REG_SINGLE_ISR_EN_0, align 4
  %90 = load i32, i32* @HC_CONFIG_0_REG_MSI_MSIX_INT_EN_0, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @HC_CONFIG_0_REG_ATTN_BIT_EN_0, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* %5, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %5, align 4
  br label %125

96:                                               ; preds = %81
  %97 = load i32, i32* @HC_CONFIG_0_REG_SINGLE_ISR_EN_0, align 4
  %98 = load i32, i32* @HC_CONFIG_0_REG_MSI_MSIX_INT_EN_0, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @HC_CONFIG_0_REG_INT_LINE_EN_0, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @HC_CONFIG_0_REG_ATTN_BIT_EN_0, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* %5, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %5, align 4
  %106 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %107 = call i64 @CHIP_IS_E1(%struct.bxe_softc* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %124, label %109

109:                                              ; preds = %96
  %110 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %111 = load i32, i32* @DBG_INTR, align 4
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* %4, align 4
  %115 = call i32 (%struct.bxe_softc*, i32, i8*, i32, i32, i32, ...) @BLOGD(%struct.bxe_softc* %110, i32 %111, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %112, i32 %113, i32 %114)
  %116 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @REG_WR(%struct.bxe_softc* %116, i32 %117, i32 %118)
  %120 = load i32, i32* @HC_CONFIG_0_REG_MSI_MSIX_INT_EN_0, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %5, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %109, %96
  br label %125

125:                                              ; preds = %124, %84
  br label %126

126:                                              ; preds = %125, %80
  %127 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %128 = call i64 @CHIP_IS_E1(%struct.bxe_softc* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %126
  %131 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %132 = load i32, i32* @HC_REG_INT_MASK, align 4
  %133 = load i32, i32* %3, align 4
  %134 = mul nsw i32 %133, 4
  %135 = add nsw i32 %132, %134
  %136 = call i32 @REG_WR(%struct.bxe_softc* %131, i32 %135, i32 131071)
  br label %137

137:                                              ; preds = %130, %126
  %138 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %139 = load i32, i32* @DBG_INTR, align 4
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* %3, align 4
  %142 = load i32, i32* %4, align 4
  %143 = load i64, i64* %6, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  br label %151

146:                                              ; preds = %137
  %147 = load i64, i64* %8, align 8
  %148 = icmp ne i64 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  br label %151

151:                                              ; preds = %146, %145
  %152 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %145 ], [ %150, %146 ]
  %153 = call i32 (%struct.bxe_softc*, i32, i8*, i32, i32, i32, ...) @BLOGD(%struct.bxe_softc* %138, i32 %139, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %140, i32 %141, i32 %142, i8* %152)
  %154 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* %5, align 4
  %157 = call i32 @REG_WR(%struct.bxe_softc* %154, i32 %155, i32 %156)
  %158 = call i32 (...) @mb()
  %159 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %160 = call i64 @CHIP_IS_E1(%struct.bxe_softc* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %197, label %162

162:                                              ; preds = %151
  %163 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %164 = call i64 @IS_MF(%struct.bxe_softc* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %181

166:                                              ; preds = %162
  %167 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %168 = call i32 @SC_VN(%struct.bxe_softc* %167)
  %169 = add nsw i32 %168, 4
  %170 = shl i32 1, %169
  %171 = or i32 60943, %170
  store i32 %171, i32* %5, align 4
  %172 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %173 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %166
  %178 = load i32, i32* %5, align 4
  %179 = or i32 %178, 4352
  store i32 %179, i32* %5, align 4
  br label %180

180:                                              ; preds = %177, %166
  br label %182

181:                                              ; preds = %162
  store i32 65535, i32* %5, align 4
  br label %182

182:                                              ; preds = %181, %180
  %183 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %184 = load i32, i32* @HC_REG_TRAILING_EDGE_0, align 4
  %185 = load i32, i32* %3, align 4
  %186 = mul nsw i32 %185, 8
  %187 = add nsw i32 %184, %186
  %188 = load i32, i32* %5, align 4
  %189 = call i32 @REG_WR(%struct.bxe_softc* %183, i32 %187, i32 %188)
  %190 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %191 = load i32, i32* @HC_REG_LEADING_EDGE_0, align 4
  %192 = load i32, i32* %3, align 4
  %193 = mul nsw i32 %192, 8
  %194 = add nsw i32 %191, %193
  %195 = load i32, i32* %5, align 4
  %196 = call i32 @REG_WR(%struct.bxe_softc* %190, i32 %194, i32 %195)
  br label %197

197:                                              ; preds = %182, %151
  %198 = call i32 (...) @mb()
  ret void
}

declare dso_local i32 @SC_PORT(%struct.bxe_softc*) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i64 @IS_MF(%struct.bxe_softc*) #1

declare dso_local i32 @SC_VN(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
