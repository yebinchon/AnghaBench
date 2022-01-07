; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppc/extr_ppc_isa.c_ppc_isa_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppc/extr_ppc_isa.c_ppc_isa_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc_data = type { i32, i64, i32, i32, i8*, i32, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PPC_ECR_STD = common dso_local global i8 0, align 1
@PPC_DISABLE_INTR = common dso_local global i8 0, align 1
@IRQENABLE = common dso_local global i8 0, align 1
@PPC_ECR_FIFO = common dso_local global i8 0, align 1
@PPC_ENABLE_DMA = common dso_local global i8 0, align 1
@PPC_ECR_ECP = common dso_local global i8 0, align 1
@PPC_DMA_INIT = common dso_local global i8* null, align 8
@PPC_SERVICE_INTR = common dso_local global i8 0, align 1
@PPC_IRQ_DMA = common dso_local global i32 0, align 4
@PPC_DMA_STARTED = common dso_local global i8* null, align 8
@PPBPRI = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ppcdma\00", align 1
@EWOULDBLOCK = common dso_local global i32 0, align 4
@PPC_ECR_RESET = common dso_local global i8 0, align 1
@PPC_DMA_INTERRUPTED = common dso_local global i8* null, align 8
@PPC_FIFO_EMPTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"ppcfifo\00", align 1
@hz = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ppc_isa_write(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ppc_data*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.ppc_data* @device_get_softc(i32 %17)
  store %struct.ppc_data* %18, %struct.ppc_data** %10, align 8
  store i32 0, i32* %15, align 4
  %19 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %20 = call i32 @PPC_ASSERT_LOCKED(%struct.ppc_data* %19)
  %21 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %22 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 128
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %5, align 4
  br label %229

28:                                               ; preds = %4
  %29 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %30 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %5, align 4
  br label %229

35:                                               ; preds = %28
  %36 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %37 = call i32 @r_ecr(%struct.ppc_data* %36)
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %12, align 1
  %39 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %40 = call signext i8 @r_ctr(%struct.ppc_data* %39)
  store i8 %40, i8* %14, align 1
  %41 = load i8, i8* @PPC_ECR_STD, align 1
  %42 = sext i8 %41 to i32
  %43 = load i8, i8* @PPC_DISABLE_INTR, align 1
  %44 = sext i8 %43 to i32
  %45 = or i32 %42, %44
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %11, align 1
  %47 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %48 = load i8, i8* %11, align 1
  %49 = call i32 @w_ecr(%struct.ppc_data* %47, i8 signext %48)
  %50 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %51 = call signext i8 @r_ctr(%struct.ppc_data* %50)
  store i8 %51, i8* %13, align 1
  %52 = load i8, i8* @IRQENABLE, align 1
  %53 = sext i8 %52 to i32
  %54 = xor i32 %53, -1
  %55 = load i8, i8* %13, align 1
  %56 = sext i8 %55 to i32
  %57 = and i32 %56, %54
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %13, align 1
  %59 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %60 = load i8, i8* %13, align 1
  %61 = call i32 @w_ctr(%struct.ppc_data* %59, i8 signext %60)
  %62 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %63 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %62, i32 0, i32 7
  store i64 0, i64* %63, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = ptrtoint i8* %64 to i64
  %66 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %67 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %66, i32 0, i32 6
  store i64 %65, i64* %67, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %70 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %72 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %94 [
    i32 129, label %74
    i32 128, label %84
  ]

74:                                               ; preds = %35
  %75 = load i8, i8* @PPC_ECR_FIFO, align 1
  %76 = sext i8 %75 to i32
  %77 = load i8, i8* @PPC_DISABLE_INTR, align 1
  %78 = sext i8 %77 to i32
  %79 = or i32 %76, %78
  %80 = load i8, i8* @PPC_ENABLE_DMA, align 1
  %81 = sext i8 %80 to i32
  %82 = or i32 %79, %81
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %11, align 1
  br label %96

84:                                               ; preds = %35
  %85 = load i8, i8* @PPC_ECR_ECP, align 1
  %86 = sext i8 %85 to i32
  %87 = load i8, i8* @PPC_DISABLE_INTR, align 1
  %88 = sext i8 %87 to i32
  %89 = or i32 %86, %88
  %90 = load i8, i8* @PPC_ENABLE_DMA, align 1
  %91 = sext i8 %90 to i32
  %92 = or i32 %89, %91
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %11, align 1
  br label %96

94:                                               ; preds = %35
  %95 = load i32, i32* @EINVAL, align 4
  store i32 %95, i32* %15, align 4
  br label %220

96:                                               ; preds = %84, %74
  %97 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %98 = load i8, i8* %11, align 1
  %99 = call i32 @w_ecr(%struct.ppc_data* %97, i8 signext %98)
  %100 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %101 = call i32 @r_ecr(%struct.ppc_data* %100)
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %11, align 1
  %103 = load i8*, i8** @PPC_DMA_INIT, align 8
  %104 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %105 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %104, i32 0, i32 4
  store i8* %103, i8** %105, align 8
  %106 = load i8, i8* @PPC_SERVICE_INTR, align 1
  %107 = sext i8 %106 to i32
  %108 = xor i32 %107, -1
  %109 = load i8, i8* %11, align 1
  %110 = sext i8 %109 to i32
  %111 = and i32 %110, %108
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %11, align 1
  %113 = load i32, i32* @PPC_IRQ_DMA, align 4
  %114 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %115 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %114, i32 0, i32 8
  store i32 %113, i32* %115, align 8
  %116 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %117 = load i8, i8* %11, align 1
  %118 = call i32 @w_ecr(%struct.ppc_data* %116, i8 signext %117)
  %119 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %120 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %119, i32 0, i32 7
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %123 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %122, i32 0, i32 6
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %126 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %129 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @isa_dmastart(i64 %121, i64 %124, i32 %127, i64 %130)
  %132 = load i8*, i8** @PPC_DMA_STARTED, align 8
  %133 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %134 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %133, i32 0, i32 4
  store i8* %132, i8** %134, align 8
  br label %135

135:                                              ; preds = %143, %96
  %136 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %137 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %138 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %137, i32 0, i32 5
  %139 = load i32, i32* @PPBPRI, align 4
  %140 = load i32, i32* @PCATCH, align 4
  %141 = or i32 %139, %140
  %142 = call i32 @mtx_sleep(%struct.ppc_data* %136, i32* %138, i32 %141, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %142, i32* %15, align 4
  br label %143

143:                                              ; preds = %135
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* @EWOULDBLOCK, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %135, label %147

147:                                              ; preds = %143
  %148 = load i32, i32* %15, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %170

150:                                              ; preds = %147
  %151 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %152 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %151, i32 0, i32 7
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %155 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %154, i32 0, i32 6
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %158 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %161 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @isa_dmadone(i64 %153, i64 %156, i32 %159, i64 %162)
  %164 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %165 = load i8, i8* @PPC_ECR_RESET, align 1
  %166 = call i32 @w_ecr(%struct.ppc_data* %164, i8 signext %165)
  %167 = load i8*, i8** @PPC_DMA_INTERRUPTED, align 8
  %168 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %169 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %168, i32 0, i32 4
  store i8* %167, i8** %169, align 8
  br label %220

170:                                              ; preds = %147
  br label %171

171:                                              ; preds = %214, %170
  %172 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %173 = call i32 @r_ecr(%struct.ppc_data* %172)
  %174 = load i32, i32* @PPC_FIFO_EMPTY, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  %177 = xor i1 %176, true
  br i1 %177, label %178, label %215

178:                                              ; preds = %171
  store i32 100, i32* %16, align 4
  br label %179

179:                                              ; preds = %190, %178
  %180 = load i32, i32* %16, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %193

182:                                              ; preds = %179
  %183 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %184 = call i32 @r_ecr(%struct.ppc_data* %183)
  %185 = load i32, i32* @PPC_FIFO_EMPTY, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %182
  br label %216

189:                                              ; preds = %182
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %16, align 4
  %192 = add nsw i32 %191, -1
  store i32 %192, i32* %16, align 4
  br label %179

193:                                              ; preds = %179
  %194 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %195 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %196 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %195, i32 0, i32 5
  %197 = load i32, i32* @PPBPRI, align 4
  %198 = load i32, i32* @PCATCH, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* @hz, align 4
  %201 = sdiv i32 %200, 100
  %202 = call i32 @mtx_sleep(%struct.ppc_data* %194, i32* %196, i32 %199, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %201)
  store i32 %202, i32* %15, align 4
  %203 = load i32, i32* %15, align 4
  %204 = load i32, i32* @EWOULDBLOCK, align 4
  %205 = icmp ne i32 %203, %204
  br i1 %205, label %206, label %214

206:                                              ; preds = %193
  %207 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %208 = load i8, i8* @PPC_ECR_RESET, align 1
  %209 = call i32 @w_ecr(%struct.ppc_data* %207, i8 signext %208)
  %210 = load i8*, i8** @PPC_DMA_INTERRUPTED, align 8
  %211 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %212 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %211, i32 0, i32 4
  store i8* %210, i8** %212, align 8
  %213 = load i32, i32* @EINTR, align 4
  store i32 %213, i32* %15, align 4
  br label %220

214:                                              ; preds = %193
  br label %171

215:                                              ; preds = %171
  br label %216

216:                                              ; preds = %215, %188
  %217 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %218 = load i8, i8* @PPC_ECR_RESET, align 1
  %219 = call i32 @w_ecr(%struct.ppc_data* %217, i8 signext %218)
  br label %220

220:                                              ; preds = %216, %206, %150, %94
  %221 = call i32 @DELAY(i32 1)
  %222 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %223 = load i8, i8* %12, align 1
  %224 = call i32 @w_ecr(%struct.ppc_data* %222, i8 signext %223)
  %225 = load %struct.ppc_data*, %struct.ppc_data** %10, align 8
  %226 = load i8, i8* %14, align 1
  %227 = call i32 @w_ctr(%struct.ppc_data* %225, i8 signext %226)
  %228 = load i32, i32* %15, align 4
  store i32 %228, i32* %5, align 4
  br label %229

229:                                              ; preds = %220, %33, %26
  %230 = load i32, i32* %5, align 4
  ret i32 %230
}

declare dso_local %struct.ppc_data* @device_get_softc(i32) #1

declare dso_local i32 @PPC_ASSERT_LOCKED(%struct.ppc_data*) #1

declare dso_local i32 @r_ecr(%struct.ppc_data*) #1

declare dso_local signext i8 @r_ctr(%struct.ppc_data*) #1

declare dso_local i32 @w_ecr(%struct.ppc_data*, i8 signext) #1

declare dso_local i32 @w_ctr(%struct.ppc_data*, i8 signext) #1

declare dso_local i32 @isa_dmastart(i64, i64, i32, i64) #1

declare dso_local i32 @mtx_sleep(%struct.ppc_data*, i32*, i32, i8*, i32) #1

declare dso_local i32 @isa_dmadone(i64, i64, i32, i64) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
