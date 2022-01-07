; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mp_x86.c_nmi_call_kdb_smp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mp_x86.c_nmi_call_kdb_smp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32 }

@cpuid = common dso_local global i32 0, align 4
@nmi_kdb_lock = common dso_local global i32 0, align 4
@stoppcbs = common dso_local global i32* null, align 8
@stopped_cpus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nmi_call_kdb_smp(i32 %0, %struct.trapframe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trapframe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.trapframe* %1, %struct.trapframe** %4, align 8
  %7 = load i32, i32* @cpuid, align 4
  %8 = call i32 @PCPU_GET(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = call i64 @atomic_cmpset_acq_int(i32* @nmi_kdb_lock, i32 0, i32 1)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %15 = call i32 @nmi_call_kdb(i32 %12, i32 %13, %struct.trapframe* %14)
  store i32 0, i32* %6, align 4
  br label %31

16:                                               ; preds = %2
  %17 = load i32*, i32** @stoppcbs, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call i32 @savectx(i32* %20) #3
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @CPU_SET_ATOMIC(i32 %22, i32* @stopped_cpus)
  br label %24

24:                                               ; preds = %28, %16
  %25 = call i64 @atomic_cmpset_acq_int(i32* @nmi_kdb_lock, i32 0, i32 1)
  %26 = icmp ne i64 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 (...) @ia32_pause()
  br label %24

30:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  br label %31

31:                                               ; preds = %30, %11
  %32 = call i32 @atomic_store_rel_int(i32* @nmi_kdb_lock, i32 0)
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @cpustop_handler_post(i32 %36)
  br label %38

38:                                               ; preds = %35, %31
  ret void
}

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i64 @atomic_cmpset_acq_int(i32*, i32, i32) #1

declare dso_local i32 @nmi_call_kdb(i32, i32, %struct.trapframe*) #1

; Function Attrs: returns_twice
declare dso_local i32 @savectx(i32*) #2

declare dso_local i32 @CPU_SET_ATOMIC(i32, i32*) #1

declare dso_local i32 @ia32_pause(...) #1

declare dso_local i32 @atomic_store_rel_int(i32*, i32) #1

declare dso_local i32 @cpustop_handler_post(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
