; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppc/extr_ppc.c_ppcintr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppc/extr_ppc.c_ppcintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc_data = type { i64 (i32)*, i32, i32, i32, i64, i32 (%struct.ppc_data*)*, i32 }

@IRQENABLE = common dso_local global i32 0, align 4
@nFAULT = common dso_local global i32 0, align 4
@PPB_ECP = common dso_local global i32 0, align 4
@PPC_IRQ_nFAULT = common dso_local global i32 0, align 4
@PPC_nFAULT_INTR = common dso_local global i32 0, align 4
@PPC_IRQ_DMA = common dso_local global i32 0, align 4
@PPC_SERVICE_INTR = common dso_local global i32 0, align 4
@PPC_ENABLE_DMA = common dso_local global i32 0, align 4
@PPC_DMA_STARTED = common dso_local global i64 0, align 8
@PPC_DMA_COMPLETE = common dso_local global i64 0, align 8
@PPC_IRQ_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ppcintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppcintr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ppc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.ppc_data*
  store %struct.ppc_data* %8, %struct.ppc_data** %3, align 8
  %9 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %10 = call i32 @PPC_LOCK(%struct.ppc_data* %9)
  %11 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %12 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %11, i32 0, i32 0
  %13 = load i64 (i32)*, i64 (i32)** %12, align 8
  %14 = icmp ne i64 (i32)* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %17 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %16, i32 0, i32 0
  %18 = load i64 (i32)*, i64 (i32)** %17, align 8
  %19 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %20 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = call i64 %18(i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %26 = call i32 @PPC_UNLOCK(%struct.ppc_data* %25)
  br label %153

27:                                               ; preds = %15, %1
  %28 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %29 = call i32 @r_str(%struct.ppc_data* %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %31 = call i32 @r_ctr(%struct.ppc_data* %30)
  store i32 %31, i32* %4, align 4
  %32 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %33 = call i32 @r_ecr(%struct.ppc_data* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @IRQENABLE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %40 = call i32 @PPC_UNLOCK(%struct.ppc_data* %39)
  br label %153

41:                                               ; preds = %27
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @nFAULT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %76

46:                                               ; preds = %41
  %47 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %48 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @PPB_ECP, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %46
  %54 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %55 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PPC_IRQ_nFAULT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %53
  %61 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @PPC_nFAULT_INTR, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @w_ecr(%struct.ppc_data* %61, i32 %64)
  %66 = load i32, i32* @PPC_IRQ_nFAULT, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %69 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %75

72:                                               ; preds = %53
  %73 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %74 = call i32 @PPC_UNLOCK(%struct.ppc_data* %73)
  br label %153

75:                                               ; preds = %60
  br label %76

76:                                               ; preds = %75, %46, %41
  %77 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %78 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @PPC_IRQ_DMA, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %135

83:                                               ; preds = %76
  %84 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @PPC_SERVICE_INTR, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @w_ecr(%struct.ppc_data* %84, i32 %87)
  %89 = load i32, i32* @PPC_IRQ_DMA, align 4
  %90 = xor i32 %89, -1
  %91 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %92 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %96 = call i32 @r_ecr(%struct.ppc_data* %95)
  store i32 %96, i32* %5, align 4
  %97 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %98 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @PPB_ECP, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %134

103:                                              ; preds = %83
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @PPC_ENABLE_DMA, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %134

108:                                              ; preds = %103
  %109 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @PPC_ENABLE_DMA, align 4
  %112 = xor i32 %111, -1
  %113 = and i32 %110, %112
  %114 = call i32 @w_ecr(%struct.ppc_data* %109, i32 %113)
  %115 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %116 = call i32 @r_ecr(%struct.ppc_data* %115)
  store i32 %116, i32* %5, align 4
  %117 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %118 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @PPC_DMA_STARTED, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %133

122:                                              ; preds = %108
  %123 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %124 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %123, i32 0, i32 5
  %125 = load i32 (%struct.ppc_data*)*, i32 (%struct.ppc_data*)** %124, align 8
  %126 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %127 = call i32 %125(%struct.ppc_data* %126)
  %128 = load i64, i64* @PPC_DMA_COMPLETE, align 8
  %129 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %130 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %129, i32 0, i32 4
  store i64 %128, i64* %130, align 8
  %131 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %132 = call i32 @wakeup(%struct.ppc_data* %131)
  br label %133

133:                                              ; preds = %122, %108
  br label %134

134:                                              ; preds = %133, %103, %83
  br label %150

135:                                              ; preds = %76
  %136 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %137 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @PPC_IRQ_FIFO, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %135
  %143 = load i32, i32* @PPC_IRQ_FIFO, align 4
  %144 = xor i32 %143, -1
  %145 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %146 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, %144
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %142, %135
  br label %150

150:                                              ; preds = %149, %134
  %151 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %152 = call i32 @PPC_UNLOCK(%struct.ppc_data* %151)
  br label %153

153:                                              ; preds = %150, %72, %38, %24
  ret void
}

declare dso_local i32 @PPC_LOCK(%struct.ppc_data*) #1

declare dso_local i32 @PPC_UNLOCK(%struct.ppc_data*) #1

declare dso_local i32 @r_str(%struct.ppc_data*) #1

declare dso_local i32 @r_ctr(%struct.ppc_data*) #1

declare dso_local i32 @r_ecr(%struct.ppc_data*) #1

declare dso_local i32 @w_ecr(%struct.ppc_data*, i32) #1

declare dso_local i32 @wakeup(%struct.ppc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
