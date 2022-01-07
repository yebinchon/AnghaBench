; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_vtrigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_vtrigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }
%struct.emu_voice = type { %struct.emu_voice*, i32, i32, i64, i64 }

@EMU_CHAN_CD0 = common dso_local global i64 0, align 8
@EMU_CHAN_CCR_CACHEINVALIDSIZE = common dso_local global i64 0, align 8
@EMU_CHAN_CCR_READADDRESS = common dso_local global i64 0, align 8
@EMU_CHAN_IFATN = common dso_local global i64 0, align 8
@EMU_CHAN_VTFT = common dso_local global i64 0, align 8
@EMU_CHAN_CVCF = common dso_local global i64 0, align 8
@EMU_CHAN_DCYSUSV = common dso_local global i64 0, align 8
@EMU_CHAN_PTRX_PITCHTARGET = common dso_local global i64 0, align 8
@EMU_CHAN_CPF_PITCH = common dso_local global i64 0, align 8
@EMU_CHAN_IP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_info*, %struct.emu_voice*, i32)* @emu_vtrigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emu_vtrigger(%struct.sc_info* %0, %struct.emu_voice* %1, i32 %2) #0 {
  %4 = alloca %struct.sc_info*, align 8
  %5 = alloca %struct.emu_voice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %4, align 8
  store %struct.emu_voice* %1, %struct.emu_voice** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %141

16:                                               ; preds = %3
  store i32 64, i32* %9, align 4
  %17 = load %struct.emu_voice*, %struct.emu_voice** %5, align 8
  %18 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 4, i32 2
  store i32 %22, i32* %10, align 4
  %23 = load %struct.emu_voice*, %struct.emu_voice** %5, align 8
  %24 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 28, i32 30
  store i32 %28, i32* %11, align 4
  %29 = load %struct.emu_voice*, %struct.emu_voice** %5, align 8
  %30 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 2
  %35 = load i32, i32* %11, align 4
  %36 = mul nsw i32 %35, %34
  store i32 %36, i32* %11, align 4
  %37 = load %struct.emu_voice*, %struct.emu_voice** %5, align 8
  %38 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 0, i32 -2139062144
  store i32 %42, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %43

43:                                               ; preds = %58, %16
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %49 = load %struct.emu_voice*, %struct.emu_voice** %5, align 8
  %50 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* @EMU_CHAN_CD0, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @emu_wrptr(%struct.sc_info* %48, i32 %51, i64 %55, i32 %56)
  br label %58

58:                                               ; preds = %47
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %13, align 4
  br label %43

61:                                               ; preds = %43
  %62 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %63 = load %struct.emu_voice*, %struct.emu_voice** %5, align 8
  %64 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* @EMU_CHAN_CCR_CACHEINVALIDSIZE, align 8
  %67 = call i32 @emu_wrptr(%struct.sc_info* %62, i32 %65, i64 %66, i32 0)
  %68 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %69 = load %struct.emu_voice*, %struct.emu_voice** %5, align 8
  %70 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i64, i64* @EMU_CHAN_CCR_READADDRESS, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @emu_wrptr(%struct.sc_info* %68, i32 %71, i64 %72, i32 %73)
  %75 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %76 = load %struct.emu_voice*, %struct.emu_voice** %5, align 8
  %77 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* @EMU_CHAN_CCR_CACHEINVALIDSIZE, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @emu_wrptr(%struct.sc_info* %75, i32 %78, i64 %79, i32 %80)
  %82 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %83 = load %struct.emu_voice*, %struct.emu_voice** %5, align 8
  %84 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i64, i64* @EMU_CHAN_IFATN, align 8
  %87 = call i32 @emu_wrptr(%struct.sc_info* %82, i32 %85, i64 %86, i32 65280)
  %88 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %89 = load %struct.emu_voice*, %struct.emu_voice** %5, align 8
  %90 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i64, i64* @EMU_CHAN_VTFT, align 8
  %93 = call i32 @emu_wrptr(%struct.sc_info* %88, i32 %91, i64 %92, i32 -1)
  %94 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %95 = load %struct.emu_voice*, %struct.emu_voice** %5, align 8
  %96 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i64, i64* @EMU_CHAN_CVCF, align 8
  %99 = call i32 @emu_wrptr(%struct.sc_info* %94, i32 %97, i64 %98, i32 -1)
  %100 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %101 = load %struct.emu_voice*, %struct.emu_voice** %5, align 8
  %102 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i64, i64* @EMU_CHAN_DCYSUSV, align 8
  %105 = call i32 @emu_wrptr(%struct.sc_info* %100, i32 %103, i64 %104, i32 32639)
  %106 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %107 = load %struct.emu_voice*, %struct.emu_voice** %5, align 8
  %108 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @emu_enastop(%struct.sc_info* %106, i32 %109, i32 0)
  %111 = load %struct.emu_voice*, %struct.emu_voice** %5, align 8
  %112 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @emu_rate_to_linearpitch(i32 %113)
  store i32 %114, i32* %7, align 4
  %115 = load %struct.emu_voice*, %struct.emu_voice** %5, align 8
  %116 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @emu_rate_to_pitch(i32 %117)
  %119 = ashr i32 %118, 8
  store i32 %119, i32* %8, align 4
  %120 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %121 = load %struct.emu_voice*, %struct.emu_voice** %5, align 8
  %122 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i64, i64* @EMU_CHAN_PTRX_PITCHTARGET, align 8
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @emu_wrptr(%struct.sc_info* %120, i32 %123, i64 %124, i32 %125)
  %127 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %128 = load %struct.emu_voice*, %struct.emu_voice** %5, align 8
  %129 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i64, i64* @EMU_CHAN_CPF_PITCH, align 8
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @emu_wrptr(%struct.sc_info* %127, i32 %130, i64 %131, i32 %132)
  %134 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %135 = load %struct.emu_voice*, %struct.emu_voice** %5, align 8
  %136 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i64, i64* @EMU_CHAN_IP, align 8
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @emu_wrptr(%struct.sc_info* %134, i32 %137, i64 %138, i32 %139)
  br label %183

141:                                              ; preds = %3
  %142 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %143 = load %struct.emu_voice*, %struct.emu_voice** %5, align 8
  %144 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i64, i64* @EMU_CHAN_PTRX_PITCHTARGET, align 8
  %147 = call i32 @emu_wrptr(%struct.sc_info* %142, i32 %145, i64 %146, i32 0)
  %148 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %149 = load %struct.emu_voice*, %struct.emu_voice** %5, align 8
  %150 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i64, i64* @EMU_CHAN_CPF_PITCH, align 8
  %153 = call i32 @emu_wrptr(%struct.sc_info* %148, i32 %151, i64 %152, i32 0)
  %154 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %155 = load %struct.emu_voice*, %struct.emu_voice** %5, align 8
  %156 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load i64, i64* @EMU_CHAN_IFATN, align 8
  %159 = call i32 @emu_wrptr(%struct.sc_info* %154, i32 %157, i64 %158, i32 65535)
  %160 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %161 = load %struct.emu_voice*, %struct.emu_voice** %5, align 8
  %162 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i64, i64* @EMU_CHAN_VTFT, align 8
  %165 = call i32 @emu_wrptr(%struct.sc_info* %160, i32 %163, i64 %164, i32 65535)
  %166 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %167 = load %struct.emu_voice*, %struct.emu_voice** %5, align 8
  %168 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load i64, i64* @EMU_CHAN_CVCF, align 8
  %171 = call i32 @emu_wrptr(%struct.sc_info* %166, i32 %169, i64 %170, i32 65535)
  %172 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %173 = load %struct.emu_voice*, %struct.emu_voice** %5, align 8
  %174 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load i64, i64* @EMU_CHAN_IP, align 8
  %177 = call i32 @emu_wrptr(%struct.sc_info* %172, i32 %175, i64 %176, i32 0)
  %178 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %179 = load %struct.emu_voice*, %struct.emu_voice** %5, align 8
  %180 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @emu_enastop(%struct.sc_info* %178, i32 %181, i32 1)
  br label %183

183:                                              ; preds = %141, %61
  %184 = load %struct.emu_voice*, %struct.emu_voice** %5, align 8
  %185 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %184, i32 0, i32 0
  %186 = load %struct.emu_voice*, %struct.emu_voice** %185, align 8
  %187 = icmp ne %struct.emu_voice* %186, null
  br i1 %187, label %188, label %194

188:                                              ; preds = %183
  %189 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %190 = load %struct.emu_voice*, %struct.emu_voice** %5, align 8
  %191 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %190, i32 0, i32 0
  %192 = load %struct.emu_voice*, %struct.emu_voice** %191, align 8
  %193 = load i32, i32* %6, align 4
  call void @emu_vtrigger(%struct.sc_info* %189, %struct.emu_voice* %192, i32 %193)
  br label %194

194:                                              ; preds = %188, %183
  ret void
}

declare dso_local i32 @emu_wrptr(%struct.sc_info*, i32, i64, i32) #1

declare dso_local i32 @emu_enastop(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @emu_rate_to_linearpitch(i32) #1

declare dso_local i32 @emu_rate_to_pitch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
