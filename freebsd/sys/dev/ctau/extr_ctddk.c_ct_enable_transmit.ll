; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctddk.c_ct_enable_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctddk.c_ct_enable_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, i64, i32, %struct.TYPE_6__, i32*, i32*, i64, i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@ST3_TX_ENABLED = common dso_local global i8 0, align 1
@DMABUFSZ = common dso_local global i32 0, align 4
@DIR_CHAIN_EOME = common dso_local global i8 0, align 1
@DIR_CHAIN_BOFE = common dso_local global i8 0, align 1
@DIR_CHAIN_COFE = common dso_local global i8 0, align 1
@CMD_TX_DISABLE = common dso_local global i8 0, align 1
@IER0_TX_INTE_1 = common dso_local global i8 0, align 1
@IER0_TX_RDYE_1 = common dso_local global i8 0, align 1
@IER0_TX_INTE_0 = common dso_local global i8 0, align 1
@IER0_TX_RDYE_0 = common dso_local global i8 0, align 1
@IER1_TX_DMERE_1 = common dso_local global i8 0, align 1
@IER1_TX_DME_1 = common dso_local global i8 0, align 1
@IER1_TX_DMERE_0 = common dso_local global i8 0, align 1
@IER1_TX_DME_0 = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ct_enable_transmit(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 8
  %10 = load i32, i32* %9, align 8
  %11 = call zeroext i8 @inb(i32 %10)
  store i8 %11, i8* %5, align 1
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %58

14:                                               ; preds = %2
  %15 = load i8, i8* %5, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* @ST3_TX_ENABLED, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %58, label %21

21:                                               ; preds = %14
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 7
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 6
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 5
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DMABUFSZ, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ct_start_transmitter(%struct.TYPE_8__* %26, i32 1, i32 %31, i32 %32, i32 %37, i32 %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i8, i8* @DIR_CHAIN_EOME, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* @DIR_CHAIN_BOFE, align 1
  %51 = zext i8 %50 to i32
  %52 = or i32 %49, %51
  %53 = load i8, i8* @DIR_CHAIN_COFE, align 1
  %54 = zext i8 %53 to i32
  %55 = or i32 %52, %54
  %56 = trunc i32 %55 to i8
  %57 = call i32 @outb(i32 %47, i8 zeroext %56)
  br label %153

58:                                               ; preds = %14, %2
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %152, label %61

61:                                               ; preds = %58
  %62 = load i8, i8* %5, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8, i8* @ST3_TX_ENABLED, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %152

68:                                               ; preds = %61
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i8, i8* @CMD_TX_DISABLE, align 1
  %73 = call i32 @outb(i32 %71, i8 zeroext %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @IER0(i32 %78)
  %80 = call zeroext i8 @inb(i32 %79)
  store i8 %80, i8* %6, align 1
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %68
  %86 = load i8, i8* @IER0_TX_INTE_1, align 1
  %87 = zext i8 %86 to i32
  %88 = load i8, i8* @IER0_TX_RDYE_1, align 1
  %89 = zext i8 %88 to i32
  %90 = or i32 %87, %89
  %91 = xor i32 %90, -1
  br label %99

92:                                               ; preds = %68
  %93 = load i8, i8* @IER0_TX_INTE_0, align 1
  %94 = zext i8 %93 to i32
  %95 = load i8, i8* @IER0_TX_RDYE_0, align 1
  %96 = zext i8 %95 to i32
  %97 = or i32 %94, %96
  %98 = xor i32 %97, -1
  br label %99

99:                                               ; preds = %92, %85
  %100 = phi i32 [ %91, %85 ], [ %98, %92 ]
  %101 = load i8, i8* %6, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %102, %100
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %6, align 1
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @IER0(i32 %109)
  %111 = load i8, i8* %6, align 1
  %112 = call i32 @outb(i32 %110, i8 zeroext %111)
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @IER1(i32 %117)
  %119 = call zeroext i8 @inb(i32 %118)
  store i8 %119, i8* %7, align 1
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %99
  %125 = load i8, i8* @IER1_TX_DMERE_1, align 1
  %126 = zext i8 %125 to i32
  %127 = load i8, i8* @IER1_TX_DME_1, align 1
  %128 = zext i8 %127 to i32
  %129 = or i32 %126, %128
  %130 = xor i32 %129, -1
  br label %138

131:                                              ; preds = %99
  %132 = load i8, i8* @IER1_TX_DMERE_0, align 1
  %133 = zext i8 %132 to i32
  %134 = load i8, i8* @IER1_TX_DME_0, align 1
  %135 = zext i8 %134 to i32
  %136 = or i32 %133, %135
  %137 = xor i32 %136, -1
  br label %138

138:                                              ; preds = %131, %124
  %139 = phi i32 [ %130, %124 ], [ %137, %131 ]
  %140 = load i8, i8* %7, align 1
  %141 = zext i8 %140 to i32
  %142 = and i32 %141, %139
  %143 = trunc i32 %142 to i8
  store i8 %143, i8* %7, align 1
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @IER1(i32 %148)
  %150 = load i8, i8* %7, align 1
  %151 = call i32 @outb(i32 %149, i8 zeroext %150)
  br label %152

152:                                              ; preds = %138, %61, %58
  br label %153

153:                                              ; preds = %152, %21
  ret void
}

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @ct_start_transmitter(%struct.TYPE_8__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @outb(i32, i8 zeroext) #1

declare dso_local i32 @IER0(i32) #1

declare dso_local i32 @IER1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
