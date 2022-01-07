; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_mp_cpudep.c_cpudep_ap_bootstrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_mp_cpudep.c_cpudep_ap_bootstrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }

@SPR_L1CSR0 = common dso_local global i32 0, align 4
@L1CSR0_DCE = common dso_local global i32 0, align 4
@SPR_L1CSR1 = common dso_local global i32 0, align 4
@L1CSR1_ICE = common dso_local global i32 0, align 4
@PSL_ME = common dso_local global i32 0, align 4
@pcpup = common dso_local global %struct.TYPE_6__* null, align 8
@PSL_CM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cpudep_ap_bootstrap() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i32, i32* @SPR_L1CSR0, align 4
  %5 = call i32 @mfspr(i32 %4)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @L1CSR0_DCE, align 4
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = call i32 (...) @dcache_inval()
  %12 = call i32 (...) @dcache_enable()
  br label %13

13:                                               ; preds = %10, %0
  %14 = load i32, i32* @SPR_L1CSR1, align 4
  %15 = call i32 @mfspr(i32 %14)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @L1CSR1_ICE, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = call i32 (...) @icache_inval()
  %22 = call i32 (...) @icache_enable()
  br label %23

23:                                               ; preds = %20, %13
  %24 = load i32, i32* @PSL_ME, align 4
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @mtmsr(i32 %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pcpup, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pcpup, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %31, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pcpup, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  call void asm sideeffect "mr 2,$0", "r,~{dirflag},~{fpsr},~{flags}"(%struct.TYPE_4__* %34) #2, !srcloc !2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pcpup, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pcpup, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %41, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pcpup, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %3, align 8
  %47 = load i64, i64* %3, align 8
  ret i64 %47
}

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @dcache_inval(...) #1

declare dso_local i32 @dcache_enable(...) #1

declare dso_local i32 @icache_inval(...) #1

declare dso_local i32 @icache_enable(...) #1

declare dso_local i32 @mtmsr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1061}
