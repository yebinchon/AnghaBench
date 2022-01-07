; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_igu_int_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_igu_int_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@INTR_MODE_MSIX = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@INTR_MODE_MSI = common dso_local global i64 0, align 8
@IGU_REG_PF_CONFIGURATION = common dso_local global i32 0, align 4
@IGU_PF_CONF_INT_LINE_EN = common dso_local global i32 0, align 4
@IGU_PF_CONF_SINGLE_ISR_EN = common dso_local global i32 0, align 4
@IGU_PF_CONF_MSI_MSIX_EN = common dso_local global i32 0, align 4
@IGU_PF_CONF_ATTN_BIT_EN = common dso_local global i32 0, align 4
@IGU_PF_CONF_FUNC_EN = common dso_local global i32 0, align 4
@DBG_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"write 0x%x to IGU mode %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"MSI-X\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"MSI\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"INTx\00", align 1
@IGU_REG_TRAILING_EDGE_LATCH = common dso_local global i32 0, align 4
@IGU_REG_LEADING_EDGE_LATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_igu_int_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_igu_int_enable(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %8 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @INTR_MODE_MSIX, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* @TRUE, align 8
  br label %16

14:                                               ; preds = %1
  %15 = load i64, i64* @FALSE, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i64 [ %13, %12 ], [ %15, %14 ]
  store i64 %17, i64* %4, align 8
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %19 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @INTR_MODE_MSIX, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %25 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i64, i64* @TRUE, align 8
  br label %32

30:                                               ; preds = %23, %16
  %31 = load i64, i64* @FALSE, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i64 [ %29, %28 ], [ %31, %30 ]
  store i64 %33, i64* %5, align 8
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %35 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @INTR_MODE_MSI, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i64, i64* @TRUE, align 8
  br label %43

41:                                               ; preds = %32
  %42 = load i64, i64* @FALSE, align 8
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i64 [ %40, %39 ], [ %42, %41 ]
  store i64 %44, i64* %6, align 8
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %46 = load i32, i32* @IGU_REG_PF_CONFIGURATION, align 4
  %47 = call i32 @REG_RD(%struct.bxe_softc* %45, i32 %46)
  store i32 %47, i32* %3, align 4
  %48 = load i64, i64* %4, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %43
  %51 = load i32, i32* @IGU_PF_CONF_INT_LINE_EN, align 4
  %52 = load i32, i32* @IGU_PF_CONF_SINGLE_ISR_EN, align 4
  %53 = or i32 %51, %52
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %3, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* @IGU_PF_CONF_MSI_MSIX_EN, align 4
  %58 = load i32, i32* @IGU_PF_CONF_ATTN_BIT_EN, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %3, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %3, align 4
  %62 = load i64, i64* %5, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %50
  %65 = load i32, i32* @IGU_PF_CONF_SINGLE_ISR_EN, align 4
  %66 = load i32, i32* %3, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %50
  br label %97

69:                                               ; preds = %43
  %70 = load i64, i64* %6, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = load i32, i32* @IGU_PF_CONF_INT_LINE_EN, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %3, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* @IGU_PF_CONF_MSI_MSIX_EN, align 4
  %78 = load i32, i32* @IGU_PF_CONF_ATTN_BIT_EN, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @IGU_PF_CONF_SINGLE_ISR_EN, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %3, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %3, align 4
  br label %96

84:                                               ; preds = %69
  %85 = load i32, i32* @IGU_PF_CONF_MSI_MSIX_EN, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %3, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %3, align 4
  %89 = load i32, i32* @IGU_PF_CONF_INT_LINE_EN, align 4
  %90 = load i32, i32* @IGU_PF_CONF_ATTN_BIT_EN, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @IGU_PF_CONF_SINGLE_ISR_EN, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* %3, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %84, %72
  br label %97

97:                                               ; preds = %96, %68
  %98 = load i64, i64* %4, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i64, i64* %5, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %100, %97
  %104 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %105 = load i32, i32* @IGU_REG_PF_CONFIGURATION, align 4
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @REG_WR(%struct.bxe_softc* %104, i32 %105, i32 %106)
  %108 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %109 = call i32 @bxe_ack_int(%struct.bxe_softc* %108)
  br label %110

110:                                              ; preds = %103, %100
  %111 = load i32, i32* @IGU_PF_CONF_FUNC_EN, align 4
  %112 = load i32, i32* %3, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %3, align 4
  %114 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %115 = load i32, i32* @DBG_INTR, align 4
  %116 = load i32, i32* %3, align 4
  %117 = load i64, i64* %4, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  br label %125

120:                                              ; preds = %110
  %121 = load i64, i64* %6, align 8
  %122 = icmp ne i64 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  br label %125

125:                                              ; preds = %120, %119
  %126 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %119 ], [ %124, %120 ]
  %127 = call i32 @BLOGD(%struct.bxe_softc* %114, i32 %115, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %116, i8* %126)
  %128 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %129 = load i32, i32* @IGU_REG_PF_CONFIGURATION, align 4
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @REG_WR(%struct.bxe_softc* %128, i32 %129, i32 %130)
  %132 = call i32 (...) @mb()
  %133 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %134 = call i64 @IS_MF(%struct.bxe_softc* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %151

136:                                              ; preds = %125
  %137 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %138 = call i32 @SC_VN(%struct.bxe_softc* %137)
  %139 = add nsw i32 %138, 4
  %140 = shl i32 1, %139
  %141 = or i32 60943, %140
  store i32 %141, i32* %3, align 4
  %142 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %143 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %136
  %148 = load i32, i32* %3, align 4
  %149 = or i32 %148, 4352
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %147, %136
  br label %152

151:                                              ; preds = %125
  store i32 65535, i32* %3, align 4
  br label %152

152:                                              ; preds = %151, %150
  %153 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %154 = load i32, i32* @IGU_REG_TRAILING_EDGE_LATCH, align 4
  %155 = load i32, i32* %3, align 4
  %156 = call i32 @REG_WR(%struct.bxe_softc* %153, i32 %154, i32 %155)
  %157 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %158 = load i32, i32* @IGU_REG_LEADING_EDGE_LATCH, align 4
  %159 = load i32, i32* %3, align 4
  %160 = call i32 @REG_WR(%struct.bxe_softc* %157, i32 %158, i32 %159)
  %161 = call i32 (...) @mb()
  ret void
}

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @bxe_ack_int(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32, i8*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i64 @IS_MF(%struct.bxe_softc*) #1

declare dso_local i32 @SC_VN(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
