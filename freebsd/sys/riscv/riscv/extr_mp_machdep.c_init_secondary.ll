; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_mp_machdep.c_init_secondary.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_mp_machdep.c_init_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu = type { %struct.TYPE_3__*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@boot_hart = common dso_local global i64 0, align 8
@mp_maxid = common dso_local global i64 0, align 8
@__pcpu = common dso_local global %struct.pcpu* null, align 8
@sie = common dso_local global i32 0, align 4
@SIE_SSIE = common dso_local global i32 0, align 4
@sip = common dso_local global i32 0, align 4
@aps_ready = common dso_local global i32 0, align 4
@idlethread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"no idle thread\00", align 1
@SIE_SEIE = common dso_local global i32 0, align 4
@proc0 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ap_boot_mtx = common dso_local global i32 0, align 4
@smp_cpus = common dso_local global i64 0, align 8
@mp_ncpus = common dso_local global i64 0, align 8
@smp_started = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"scheduler returned us to init_secondary\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_secondary(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pcpu*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  store i64 %5, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @boot_hart, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i64, i64* @mp_maxid, align 8
  %11 = add nsw i64 %10, 1
  %12 = load i64, i64* %4, align 8
  %13 = add i64 %12, %11
  store i64 %13, i64* %4, align 8
  br label %14

14:                                               ; preds = %9, %1
  %15 = load i64, i64* @boot_hart, align 8
  %16 = load i64, i64* %4, align 8
  %17 = sub i64 %16, %15
  store i64 %17, i64* %4, align 8
  %18 = load %struct.pcpu*, %struct.pcpu** @__pcpu, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %18, i64 %19
  store %struct.pcpu* %20, %struct.pcpu** %3, align 8
  %21 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  call void asm sideeffect "mv tp, $0", "r,~{dirflag},~{fpsr},~{flags}"(%struct.pcpu* %21) #2, !srcloc !2
  %22 = load i32, i32* @sie, align 4
  %23 = load i32, i32* @SIE_SSIE, align 4
  %24 = call i32 @csr_set(i32 %22, i32 %23)
  %25 = load i32, i32* @sip, align 4
  %26 = load i32, i32* @SIE_SSIE, align 4
  %27 = call i32 @csr_set(i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %32, %14
  %29 = load i32, i32* @aps_ready, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  call void asm sideeffect "wfi", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  br label %28

33:                                               ; preds = %28
  %34 = load i32, i32* @idlethread, align 4
  %35 = call i32* @PCPU_GET(i32 %34)
  %36 = icmp ne i32* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @KASSERT(i32 %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %40 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %43 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %42, i32 0, i32 2
  store %struct.TYPE_3__* %41, %struct.TYPE_3__** %43, align 8
  %44 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %45 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %50 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = call i32 (...) @identify_cpu()
  %52 = call i32 (...) @riscv_unmask_ipi()
  %53 = call i32 (...) @cpu_initclocks_ap()
  %54 = load i32, i32* @sie, align 4
  %55 = load i32, i32* @SIE_SEIE, align 4
  %56 = call i32 @csr_set(i32 %54, i32 %55)
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @proc0, i32 0, i32 0), align 4
  %58 = call i32 @vmspace_pmap(i32 %57)
  %59 = call i32 @pmap_activate_boot(i32 %58)
  %60 = call i32 @mtx_lock_spin(i32* @ap_boot_mtx)
  %61 = call i32 @atomic_add_rel_32(i64* @smp_cpus, i32 1)
  %62 = load i64, i64* @smp_cpus, align 8
  %63 = load i64, i64* @mp_ncpus, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %33
  %66 = call i32 @atomic_store_rel_int(i32* @smp_started, i32 1)
  br label %67

67:                                               ; preds = %65, %33
  %68 = call i32 @mtx_unlock_spin(i32* @ap_boot_mtx)
  %69 = call i32 @sched_throw(i32* null)
  %70 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @csr_set(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @PCPU_GET(i32) #1

declare dso_local i32 @identify_cpu(...) #1

declare dso_local i32 @riscv_unmask_ipi(...) #1

declare dso_local i32 @cpu_initclocks_ap(...) #1

declare dso_local i32 @pmap_activate_boot(i32) #1

declare dso_local i32 @vmspace_pmap(i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @atomic_add_rel_32(i64*, i32) #1

declare dso_local i32 @atomic_store_rel_int(i32*, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @sched_throw(i32*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1281}
!3 = !{i32 1402}
