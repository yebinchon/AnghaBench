; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_sc_info = type { i32, i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (i32, i32)*, i32 }

@EMU_IPR = common dso_local global i32 0, align 4
@EMU_MAX_IRQ_CONSUMERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unhandled interrupt: %08x\0A\00", align 1
@EMU_IPR2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"EMU_IPR2: %08x\0A\00", align 1
@EMU_IPR3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"EMU_IPR3: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @emu_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emu_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.emu_sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.emu_sc_info*
  store %struct.emu_sc_info* %8, %struct.emu_sc_info** %3, align 8
  br label %9

9:                                                ; preds = %103, %1
  %10 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %11 = load i32, i32* @EMU_IPR, align 4
  %12 = call i32 @emu_rd(%struct.emu_sc_info* %10, i32 %11, i32 4)
  store i32 %12, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %104

16:                                               ; preds = %9
  %17 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %18 = load i32, i32* @EMU_IPR, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @emu_wr(%struct.emu_sc_info* %17, i32 %18, i32 %19, i32 4)
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %79, %16
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @EMU_MAX_IRQ_CONSUMERS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %82

25:                                               ; preds = %21
  %26 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %27 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %26, i32 0, i32 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %78

37:                                               ; preds = %25
  %38 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %39 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %38, i32 0, i32 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32 (i32, i32)*, i32 (i32, i32)** %44, align 8
  %46 = bitcast i32 (i32, i32)* %45 to i8*
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %78

48:                                               ; preds = %37
  %49 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %50 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %49, i32 0, i32 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32 (i32, i32)*, i32 (i32, i32)** %55, align 8
  %57 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %58 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %57, i32 0, i32 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %66 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %65, i32 0, i32 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = and i32 %72, %73
  %75 = call i32 %56(i32 %64, i32 %74)
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %48, %37, %25
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %21

82:                                               ; preds = %21
  %83 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %84 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %103

87:                                               ; preds = %82
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %5, align 4
  %90 = xor i32 %89, -1
  %91 = and i32 %88, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %87
  %94 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %95 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* %5, align 4
  %99 = xor i32 %98, -1
  %100 = and i32 %97, %99
  %101 = call i32 @device_printf(i32 %96, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %93, %87
  br label %103

103:                                              ; preds = %102, %82
  br label %9

104:                                              ; preds = %15
  %105 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %106 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %111 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %139

114:                                              ; preds = %109, %104
  br label %115

115:                                              ; preds = %114
  %116 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %117 = load i32, i32* @EMU_IPR2, align 4
  %118 = call i32 @emu_rd(%struct.emu_sc_info* %116, i32 %117, i32 4)
  store i32 %118, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %119 = load i32, i32* %4, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %138

122:                                              ; preds = %115
  %123 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %124 = load i32, i32* @EMU_IPR2, align 4
  %125 = load i32, i32* %4, align 4
  %126 = call i32 @emu_wr(%struct.emu_sc_info* %123, i32 %124, i32 %125, i32 4)
  %127 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %128 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp sgt i32 %129, 1
  br i1 %130, label %131, label %137

131:                                              ; preds = %122
  %132 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %133 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %4, align 4
  %136 = call i32 @device_printf(i32 %134, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %131, %122
  br label %138

138:                                              ; preds = %137, %121
  br label %139

139:                                              ; preds = %138, %109
  %140 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %141 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %169

144:                                              ; preds = %139
  br label %145

145:                                              ; preds = %144
  %146 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %147 = load i32, i32* @EMU_IPR3, align 4
  %148 = call i32 @emu_rd(%struct.emu_sc_info* %146, i32 %147, i32 4)
  store i32 %148, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %149 = load i32, i32* %4, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  br label %168

152:                                              ; preds = %145
  %153 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %154 = load i32, i32* @EMU_IPR3, align 4
  %155 = load i32, i32* %4, align 4
  %156 = call i32 @emu_wr(%struct.emu_sc_info* %153, i32 %154, i32 %155, i32 4)
  %157 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %158 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp sgt i32 %159, 1
  br i1 %160, label %161, label %167

161:                                              ; preds = %152
  %162 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %163 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %4, align 4
  %166 = call i32 @device_printf(i32 %164, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %165)
  br label %167

167:                                              ; preds = %161, %152
  br label %168

168:                                              ; preds = %167, %151
  br label %169

169:                                              ; preds = %168, %139
  ret void
}

declare dso_local i32 @emu_rd(%struct.emu_sc_info*, i32, i32) #1

declare dso_local i32 @emu_wr(%struct.emu_sc_info*, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
