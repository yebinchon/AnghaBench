; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_ct_enable_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_ct_enable_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_10__, i32, %struct.TYPE_8__*, i32, i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@M_E1 = common dso_local global i64 0, align 8
@DS_CCR2 = common dso_local global i32 0, align 4
@CCR2_LLOOP = common dso_local global i32 0, align 4
@DS_LICR = common dso_local global i32 0, align 4
@LICR_JA_TX = common dso_local global i32 0, align 4
@M_G703 = common dso_local global i64 0, align 8
@LX_LOS = common dso_local global i32 0, align 4
@LX_HDB3 = common dso_local global i32 0, align 4
@LX_CCR1 = common dso_local global i32 0, align 4
@LX_LLOOP = common dso_local global i32 0, align 4
@M_HDLC = common dso_local global i64 0, align 8
@CLK_MASK = common dso_local global i8 0, align 1
@BCR1_TXCOUT1 = common dso_local global i32 0, align 4
@BCR1_TXCOUT0 = common dso_local global i32 0, align 4
@MD2_LLOOP = common dso_local global i32 0, align 4
@CLK_INT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @ct_enable_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ct_enable_loop(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @M_E1, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %52

12:                                               ; preds = %1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 7
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call zeroext i16 @E1CS1(i32 %22)
  %24 = zext i16 %23 to i32
  br label %33

25:                                               ; preds = %12
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call zeroext i16 @E1CS0(i32 %30)
  %32 = zext i16 %31 to i32
  br label %33

33:                                               ; preds = %25, %17
  %34 = phi i32 [ %24, %17 ], [ %32, %25 ]
  %35 = trunc i32 %34 to i16
  store i16 %35, i16* %3, align 2
  %36 = load i16, i16* %3, align 2
  %37 = load i32, i32* @DS_CCR2, align 4
  %38 = load i16, i16* %3, align 2
  %39 = load i32, i32* @DS_CCR2, align 4
  %40 = call i32 @cte_in(i16 zeroext %38, i32 %39)
  %41 = load i32, i32* @CCR2_LLOOP, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @cte_out(i16 zeroext %36, i32 %37, i32 %42)
  %44 = load i16, i16* %3, align 2
  %45 = load i32, i32* @DS_LICR, align 4
  %46 = load i16, i16* %3, align 2
  %47 = load i32, i32* @DS_LICR, align 4
  %48 = call i32 @cte_in(i16 zeroext %46, i32 %47)
  %49 = load i32, i32* @LICR_JA_TX, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @cte_out(i16 zeroext %44, i32 %45, i32 %50)
  br label %185

52:                                               ; preds = %1
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @M_G703, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %52
  %59 = load i32, i32* @LX_LOS, align 4
  %60 = load i32, i32* @LX_HDB3, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %65 = load i32, i32* @LX_CCR1, align 4
  %66 = load i32, i32* @LX_LLOOP, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = call i32 @ctg_outx(%struct.TYPE_11__* %64, i32 %65, i32 %70)
  br label %185

72:                                               ; preds = %52
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @M_HDLC, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %183

78:                                               ; preds = %72
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %80 = call i64 @ct_get_baud(%struct.TYPE_11__* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %183

82:                                               ; preds = %78
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = call zeroext i8 @inb(i32 %85)
  %87 = zext i8 %86 to i32
  %88 = load i8, i8* @CLK_MASK, align 1
  %89 = zext i8 %88 to i32
  %90 = xor i32 %89, -1
  %91 = and i32 %87, %90
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %4, align 1
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = call zeroext i8 @inb(i32 %95)
  %97 = zext i8 %96 to i32
  %98 = load i8, i8* @CLK_MASK, align 1
  %99 = zext i8 %98 to i32
  %100 = xor i32 %99, -1
  %101 = and i32 %97, %100
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %5, align 1
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 7
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %82
  %108 = load i32, i32* @BCR1_TXCOUT1, align 4
  br label %111

109:                                              ; preds = %82
  %110 = load i32, i32* @BCR1_TXCOUT0, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* @MD2_LLOOP, align 4
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  store i32 %113, i32* %117, align 4
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 4
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @BCR1(i32 %122)
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 4
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %6, align 4
  %130 = xor i32 %129, -1
  %131 = and i32 %128, %130
  %132 = trunc i32 %131 to i8
  %133 = call i32 @outb(i32 %123, i8 zeroext %132)
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 4
  %137 = load i8, i8* %4, align 1
  %138 = zext i8 %137 to i32
  %139 = load i8, i8* @CLK_INT, align 1
  %140 = zext i8 %139 to i32
  %141 = or i32 %138, %140
  %142 = trunc i32 %141 to i8
  %143 = call i32 @outb(i32 %136, i8 zeroext %142)
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = load i8, i8* %5, align 1
  %148 = zext i8 %147 to i32
  %149 = load i8, i8* @CLK_INT, align 1
  %150 = zext i8 %149 to i32
  %151 = or i32 %148, %150
  %152 = trunc i32 %151 to i8
  %153 = call i32 @outb(i32 %146, i8 zeroext %152)
  %154 = load i32, i32* %6, align 4
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 4
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %154
  store i32 %160, i32* %158, align 4
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 4
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @BCR1(i32 %165)
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 4
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = trunc i32 %171 to i8
  %173 = call i32 @outb(i32 %166, i8 zeroext %172)
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = bitcast %struct.TYPE_9__* %179 to i8*
  %181 = load i8, i8* %180, align 4
  %182 = call i32 @outb(i32 %176, i8 zeroext %181)
  br label %185

183:                                              ; preds = %78, %72
  br label %184

184:                                              ; preds = %183
  br label %185

185:                                              ; preds = %33, %58, %111, %184
  ret void
}

declare dso_local zeroext i16 @E1CS1(i32) #1

declare dso_local zeroext i16 @E1CS0(i32) #1

declare dso_local i32 @cte_out(i16 zeroext, i32, i32) #1

declare dso_local i32 @cte_in(i16 zeroext, i32) #1

declare dso_local i32 @ctg_outx(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @ct_get_baud(%struct.TYPE_11__*) #1

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @outb(i32, i8 zeroext) #1

declare dso_local i32 @BCR1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
