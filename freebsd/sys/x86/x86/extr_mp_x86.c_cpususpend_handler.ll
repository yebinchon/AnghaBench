; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mp_x86.c_cpususpend_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mp_x86.c_cpususpend_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 (...)* }

@smp_ipi_mtx = common dso_local global i32 0, align 4
@MA_NOTOWNED = common dso_local global i32 0, align 4
@cpuid = common dso_local global i32 0, align 4
@susppcbs = common dso_local global %struct.TYPE_3__** null, align 8
@suspended_cpus = common dso_local global i32 0, align 4
@resuming_cpus = common dso_local global i32 0, align 4
@switchtime = common dso_local global i32 0, align 4
@switchticks = common dso_local global i32 0, align 4
@ticks = common dso_local global i32 0, align 4
@toresume_cpus = common dso_local global i32 0, align 4
@cpu_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpususpend_handler() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @MA_NOTOWNED, align 4
  %3 = call i32 @mtx_assert(i32* @smp_ipi_mtx, i32 %2)
  %4 = load i32, i32* @cpuid, align 4
  %5 = call i64 @PCPU_GET(i32 %4)
  store i64 %5, i64* %1, align 8
  %6 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @susppcbs, align 8
  %7 = load i64, i64* %1, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %6, i64 %7
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = call i64 @savectx(i32* %10) #3
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %0
  %14 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @susppcbs, align 8
  %15 = load i64, i64* %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %14, i64 %15
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @fpususpend(i32 %19)
  %21 = load i64, i64* %1, align 8
  %22 = call i32 @CPU_SET_ATOMIC(i64 %21, i32* @suspended_cpus)
  %23 = load i64, i64* %1, align 8
  %24 = call i32 @CPU_SET_ATOMIC(i64 %23, i32* @resuming_cpus)
  %25 = call i32 (...) @wbinvd()
  br label %43

26:                                               ; preds = %0
  %27 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @susppcbs, align 8
  %28 = load i64, i64* %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %27, i64 %28
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @fpuresume(i32 %32)
  %34 = call i32 (...) @pmap_init_pat()
  %35 = call i32 (...) @initializecpu()
  %36 = load i32, i32* @switchtime, align 4
  %37 = call i32 @PCPU_SET(i32 %36, i32 0)
  %38 = load i32, i32* @switchticks, align 4
  %39 = load i32, i32* @ticks, align 4
  %40 = call i32 @PCPU_SET(i32 %38, i32 %39)
  %41 = load i64, i64* %1, align 8
  %42 = call i32 @CPU_CLR_ATOMIC(i64 %41, i32* @suspended_cpus)
  br label %43

43:                                               ; preds = %26, %13
  br label %44

44:                                               ; preds = %49, %43
  %45 = load i64, i64* %1, align 8
  %46 = call i32 @CPU_ISSET(i64 %45, i32* @toresume_cpus)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 (...) @ia32_pause()
  br label %44

51:                                               ; preds = %44
  %52 = call i32 (...) @ucode_reload()
  %53 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cpu_ops, i32 0, i32 0), align 8
  %54 = icmp ne i32 (...)* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cpu_ops, i32 0, i32 0), align 8
  %57 = call i32 (...) %56()
  br label %58

58:                                               ; preds = %55, %51
  br i1 true, label %59, label %61

59:                                               ; preds = %58
  %60 = call i32 (...) @vmm_resume_p()
  br label %61

61:                                               ; preds = %59, %58
  %62 = call i32 (...) @lapic_xapic_mode()
  %63 = call i32 (...) @mca_resume()
  %64 = call i32 @lapic_setup(i32 0)
  %65 = load i64, i64* %1, align 8
  %66 = call i32 @CPU_CLR_ATOMIC(i64 %65, i32* @resuming_cpus)
  %67 = load i64, i64* %1, align 8
  %68 = call i32 @CPU_CLR_ATOMIC(i64 %67, i32* @suspended_cpus)
  %69 = load i64, i64* %1, align 8
  %70 = call i32 @CPU_CLR_ATOMIC(i64 %69, i32* @toresume_cpus)
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @PCPU_GET(i32) #1

; Function Attrs: returns_twice
declare dso_local i64 @savectx(i32*) #2

declare dso_local i32 @fpususpend(i32) #1

declare dso_local i32 @CPU_SET_ATOMIC(i64, i32*) #1

declare dso_local i32 @wbinvd(...) #1

declare dso_local i32 @fpuresume(i32) #1

declare dso_local i32 @pmap_init_pat(...) #1

declare dso_local i32 @initializecpu(...) #1

declare dso_local i32 @PCPU_SET(i32, i32) #1

declare dso_local i32 @CPU_CLR_ATOMIC(i64, i32*) #1

declare dso_local i32 @CPU_ISSET(i64, i32*) #1

declare dso_local i32 @ia32_pause(...) #1

declare dso_local i32 @ucode_reload(...) #1

declare dso_local i32 @vmm_resume_p(...) #1

declare dso_local i32 @lapic_xapic_mode(...) #1

declare dso_local i32 @mca_resume(...) #1

declare dso_local i32 @lapic_setup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
