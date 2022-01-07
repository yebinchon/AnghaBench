; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_aim_machdep.c_cpu_sleep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_aim_machdep.c_cpu_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.thread* }

@cpu_sleep.timebase = internal global i32 0, align 4
@cpu_sleep.sprgs = internal global [4 x i32] zeroinitializer, align 16
@cpu_sleep.srrs = internal global [2 x i32] zeroinitializer, align 4
@pcpup = common dso_local global i32 0, align 4
@ap_pcpu = common dso_local global i32 0, align 4
@restore = common dso_local global %struct.thread* null, align 8
@fputhread = common dso_local global i32 0, align 4
@vecthread = common dso_local global i32 0, align 4
@SPR_SPRG0 = common dso_local global i32 0, align 4
@SPR_SPRG1 = common dso_local global i32 0, align 4
@SPR_SPRG2 = common dso_local global i32 0, align 4
@SPR_SPRG3 = common dso_local global i32 0, align 4
@SPR_SRR0 = common dso_local global i32 0, align 4
@SPR_SRR1 = common dso_local global i32 0, align 4
@SPR_HID0 = common dso_local global i32 0, align 4
@HID0_DOZE = common dso_local global i32 0, align 4
@HID0_NAP = common dso_local global i32 0, align 4
@HID0_SLEEP = common dso_local global i32 0, align 4
@PSL_POW = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@curpcb = common dso_local global %struct.thread* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_sleep() #0 {
  %1 = alloca %struct.thread, align 8
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @pcpup, align 4
  store i32 %7, i32* @ap_pcpu, align 4
  %8 = load %struct.thread*, %struct.thread** @restore, align 8
  %9 = call i32 @PCPU_SET(%struct.thread* %8, %struct.thread* %1)
  %10 = call i32 (...) @mfmsr()
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @fputhread, align 4
  %12 = call %struct.thread* @PCPU_GET(i32 %11)
  store %struct.thread* %12, %struct.thread** %2, align 8
  %13 = load i32, i32* @vecthread, align 4
  %14 = call %struct.thread* @PCPU_GET(i32 %13)
  store %struct.thread* %14, %struct.thread** %3, align 8
  %15 = load %struct.thread*, %struct.thread** %2, align 8
  %16 = icmp ne %struct.thread* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = load %struct.thread*, %struct.thread** %2, align 8
  %19 = call i32 @save_fpu(%struct.thread* %18)
  br label %20

20:                                               ; preds = %17, %0
  %21 = load %struct.thread*, %struct.thread** %3, align 8
  %22 = icmp ne %struct.thread* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.thread*, %struct.thread** %3, align 8
  %25 = call i32 @save_vec(%struct.thread* %24)
  br label %26

26:                                               ; preds = %23, %20
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %1, i32 0, i32 0
  %28 = load %struct.thread*, %struct.thread** %27, align 8
  %29 = call i64 @setjmp(%struct.thread* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %69

31:                                               ; preds = %26
  %32 = load i32, i32* @SPR_SPRG0, align 4
  %33 = call i32 @mfspr(i32 %32)
  store i32 %33, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @cpu_sleep.sprgs, i64 0, i64 0), align 16
  %34 = load i32, i32* @SPR_SPRG1, align 4
  %35 = call i32 @mfspr(i32 %34)
  store i32 %35, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @cpu_sleep.sprgs, i64 0, i64 1), align 4
  %36 = load i32, i32* @SPR_SPRG2, align 4
  %37 = call i32 @mfspr(i32 %36)
  store i32 %37, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @cpu_sleep.sprgs, i64 0, i64 2), align 8
  %38 = load i32, i32* @SPR_SPRG3, align 4
  %39 = call i32 @mfspr(i32 %38)
  store i32 %39, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @cpu_sleep.sprgs, i64 0, i64 3), align 4
  %40 = load i32, i32* @SPR_SRR0, align 4
  %41 = call i32 @mfspr(i32 %40)
  store i32 %41, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @cpu_sleep.srrs, i64 0, i64 0), align 4
  %42 = load i32, i32* @SPR_SRR1, align 4
  %43 = call i32 @mfspr(i32 %42)
  store i32 %43, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @cpu_sleep.srrs, i64 0, i64 1), align 4
  %44 = call i32 (...) @mftb()
  store i32 %44, i32* @cpu_sleep.timebase, align 4
  %45 = call i32 (...) @powerpc_sync()
  %46 = call i32 (...) @flush_disable_caches()
  %47 = load i32, i32* @SPR_HID0, align 4
  %48 = call i32 @mfspr(i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @HID0_DOZE, align 4
  %51 = load i32, i32* @HID0_NAP, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = and i32 %49, %53
  %55 = load i32, i32* @HID0_SLEEP, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %4, align 4
  %57 = call i32 (...) @powerpc_sync()
  %58 = call i32 (...) @isync()
  %59 = call i32 (...) @mfmsr()
  %60 = load i32, i32* @PSL_POW, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* @SPR_HID0, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @mtspr(i32 %62, i32 %63)
  %65 = call i32 (...) @powerpc_sync()
  br label %66

66:                                               ; preds = %31, %66
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @mtmsr(i32 %67)
  br label %66

69:                                               ; preds = %26
  %70 = load i32, i32* @cpu_sleep.timebase, align 4
  %71 = call i32 @platform_smp_timebase_sync(i32 %70, i32 0)
  %72 = load %struct.thread*, %struct.thread** @curthread, align 8
  %73 = load %struct.thread*, %struct.thread** @curthread, align 8
  %74 = call i32 @PCPU_SET(%struct.thread* %72, %struct.thread* %73)
  %75 = load %struct.thread*, %struct.thread** @curpcb, align 8
  %76 = load %struct.thread*, %struct.thread** @curthread, align 8
  %77 = getelementptr inbounds %struct.thread, %struct.thread* %76, i32 0, i32 0
  %78 = load %struct.thread*, %struct.thread** %77, align 8
  %79 = call i32 @PCPU_SET(%struct.thread* %75, %struct.thread* %78)
  %80 = load %struct.thread*, %struct.thread** @curthread, align 8
  %81 = call i32 @pmap_activate(%struct.thread* %80)
  %82 = call i32 (...) @powerpc_sync()
  %83 = load i32, i32* @SPR_SPRG0, align 4
  %84 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @cpu_sleep.sprgs, i64 0, i64 0), align 16
  %85 = call i32 @mtspr(i32 %83, i32 %84)
  %86 = load i32, i32* @SPR_SPRG1, align 4
  %87 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @cpu_sleep.sprgs, i64 0, i64 1), align 4
  %88 = call i32 @mtspr(i32 %86, i32 %87)
  %89 = load i32, i32* @SPR_SPRG2, align 4
  %90 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @cpu_sleep.sprgs, i64 0, i64 2), align 8
  %91 = call i32 @mtspr(i32 %89, i32 %90)
  %92 = load i32, i32* @SPR_SPRG3, align 4
  %93 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @cpu_sleep.sprgs, i64 0, i64 3), align 4
  %94 = call i32 @mtspr(i32 %92, i32 %93)
  %95 = load i32, i32* @SPR_SRR0, align 4
  %96 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @cpu_sleep.srrs, i64 0, i64 0), align 4
  %97 = call i32 @mtspr(i32 %95, i32 %96)
  %98 = load i32, i32* @SPR_SRR1, align 4
  %99 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @cpu_sleep.srrs, i64 0, i64 1), align 4
  %100 = call i32 @mtspr(i32 %98, i32 %99)
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @mtmsr(i32 %101)
  %103 = load %struct.thread*, %struct.thread** %2, align 8
  %104 = load %struct.thread*, %struct.thread** @curthread, align 8
  %105 = icmp eq %struct.thread* %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %69
  %107 = load %struct.thread*, %struct.thread** @curthread, align 8
  %108 = call i32 @enable_fpu(%struct.thread* %107)
  br label %109

109:                                              ; preds = %106, %69
  %110 = load %struct.thread*, %struct.thread** %3, align 8
  %111 = load %struct.thread*, %struct.thread** @curthread, align 8
  %112 = icmp eq %struct.thread* %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load %struct.thread*, %struct.thread** @curthread, align 8
  %115 = call i32 @enable_vec(%struct.thread* %114)
  br label %116

116:                                              ; preds = %113, %109
  %117 = call i32 (...) @powerpc_sync()
  ret void
}

declare dso_local i32 @PCPU_SET(%struct.thread*, %struct.thread*) #1

declare dso_local i32 @mfmsr(...) #1

declare dso_local %struct.thread* @PCPU_GET(i32) #1

declare dso_local i32 @save_fpu(%struct.thread*) #1

declare dso_local i32 @save_vec(%struct.thread*) #1

declare dso_local i64 @setjmp(%struct.thread*) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @mftb(...) #1

declare dso_local i32 @powerpc_sync(...) #1

declare dso_local i32 @flush_disable_caches(...) #1

declare dso_local i32 @isync(...) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @mtmsr(i32) #1

declare dso_local i32 @platform_smp_timebase_sync(i32, i32) #1

declare dso_local i32 @pmap_activate(%struct.thread*) #1

declare dso_local i32 @enable_fpu(%struct.thread*) #1

declare dso_local i32 @enable_vec(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
