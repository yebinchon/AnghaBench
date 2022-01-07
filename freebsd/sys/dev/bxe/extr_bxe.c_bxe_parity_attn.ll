; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_parity_attn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_parity_attn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@HW_PRTY_ASSERT_SET_0 = common dso_local global i32 0, align 4
@HW_PRTY_ASSERT_SET_1 = common dso_local global i32 0, align 4
@HW_PRTY_ASSERT_SET_2 = common dso_local global i32 0, align 4
@HW_PRTY_ASSERT_SET_3 = common dso_local global i32 0, align 4
@HW_PRTY_ASSERT_SET_4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [97 x i8] c"Parity error: HW block parity attention:\0A[0]:0x%08x [1]:0x%08x [2]:0x%08x [3]:0x%08x [4]:0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Parity errors detected in blocks: \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@BXE_ERR_GLOBAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bxe_softc*, i64*, i64, i32*)* @bxe_parity_attn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bxe_parity_attn(%struct.bxe_softc* %0, i64* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.bxe_softc*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %9, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @HW_PRTY_ASSERT_SET_0, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %45, label %17

17:                                               ; preds = %4
  %18 = load i32*, i32** %9, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @HW_PRTY_ASSERT_SET_1, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %17
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @HW_PRTY_ASSERT_SET_2, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %24
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @HW_PRTY_ASSERT_SET_3, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %31
  %39 = load i32*, i32** %9, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @HW_PRTY_ASSERT_SET_4, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %142

45:                                               ; preds = %38, %31, %24, %17, %4
  %46 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @HW_PRTY_ASSERT_SET_0, align 4
  %51 = and i32 %49, %50
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @HW_PRTY_ASSERT_SET_1, align 4
  %56 = and i32 %54, %55
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @HW_PRTY_ASSERT_SET_2, align 4
  %61 = and i32 %59, %60
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @HW_PRTY_ASSERT_SET_3, align 4
  %66 = and i32 %64, %65
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @HW_PRTY_ASSERT_SET_4, align 4
  %71 = and i32 %69, %70
  %72 = call i32 @BLOGE(%struct.bxe_softc* %46, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %56, i32 %61, i32 %66, i32 %71)
  %73 = load i64, i64* %8, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %45
  %76 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %77 = call i32 @BLOGI(%struct.bxe_softc* %76, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %45
  %79 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @HW_PRTY_ASSERT_SET_0, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* %10, align 4
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @bxe_check_blocks_with_parity0(%struct.bxe_softc* %79, i32 %84, i32 %85, i64 %86)
  store i32 %87, i32* %10, align 4
  %88 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @HW_PRTY_ASSERT_SET_1, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* %10, align 4
  %95 = load i64*, i64** %7, align 8
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @bxe_check_blocks_with_parity1(%struct.bxe_softc* %88, i32 %93, i32 %94, i64* %95, i64 %96)
  store i32 %97, i32* %10, align 4
  %98 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %99 = load i32*, i32** %9, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @HW_PRTY_ASSERT_SET_2, align 4
  %103 = and i32 %101, %102
  %104 = load i32, i32* %10, align 4
  %105 = load i64, i64* %8, align 8
  %106 = call i32 @bxe_check_blocks_with_parity2(%struct.bxe_softc* %98, i32 %103, i32 %104, i64 %105)
  store i32 %106, i32* %10, align 4
  %107 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @HW_PRTY_ASSERT_SET_3, align 4
  %112 = and i32 %110, %111
  %113 = load i32, i32* %10, align 4
  %114 = load i64*, i64** %7, align 8
  %115 = load i64, i64* %8, align 8
  %116 = call i32 @bxe_check_blocks_with_parity3(%struct.bxe_softc* %107, i32 %112, i32 %113, i64* %114, i64 %115)
  store i32 %116, i32* %10, align 4
  %117 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 4
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @HW_PRTY_ASSERT_SET_4, align 4
  %122 = and i32 %120, %121
  %123 = load i32, i32* %10, align 4
  %124 = load i64, i64* %8, align 8
  %125 = call i32 @bxe_check_blocks_with_parity4(%struct.bxe_softc* %117, i32 %122, i32 %123, i64 %124)
  store i32 %125, i32* %10, align 4
  %126 = load i64, i64* %8, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %78
  %129 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %130 = call i32 @BLOGI(%struct.bxe_softc* %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %78
  %132 = load i64*, i64** %7, align 8
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @TRUE, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %131
  %137 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %138 = load i32, i32* @BXE_ERR_GLOBAL, align 4
  %139 = call i32 @BXE_SET_ERROR_BIT(%struct.bxe_softc* %137, i32 %138)
  br label %140

140:                                              ; preds = %136, %131
  %141 = load i64, i64* @TRUE, align 8
  store i64 %141, i64* %5, align 8
  br label %144

142:                                              ; preds = %38
  %143 = load i64, i64* @FALSE, align 8
  store i64 %143, i64* %5, align 8
  br label %144

144:                                              ; preds = %142, %140
  %145 = load i64, i64* %5, align 8
  ret i64 %145
}

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BLOGI(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @bxe_check_blocks_with_parity0(%struct.bxe_softc*, i32, i32, i64) #1

declare dso_local i32 @bxe_check_blocks_with_parity1(%struct.bxe_softc*, i32, i32, i64*, i64) #1

declare dso_local i32 @bxe_check_blocks_with_parity2(%struct.bxe_softc*, i32, i32, i64) #1

declare dso_local i32 @bxe_check_blocks_with_parity3(%struct.bxe_softc*, i32, i32, i64*, i64) #1

declare dso_local i32 @bxe_check_blocks_with_parity4(%struct.bxe_softc*, i32, i32, i64) #1

declare dso_local i32 @BXE_SET_ERROR_BIT(%struct.bxe_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
