; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/test/extr_main.c_gnet_stats_deq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/test/extr_main.c_gnet_stats_deq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg_s = type { double, double*, %struct.dn_sch_inst* }
%struct.dn_sch_inst = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.mbuf = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.dn_queue = type { %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64* }
%struct.TYPE_8__ = type { i32, i64, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfg_s*, %struct.mbuf*)* @gnet_stats_deq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gnet_stats_deq(%struct.cfg_s* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.cfg_s*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.dn_sch_inst*, align 8
  %6 = alloca %struct.dn_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store %struct.cfg_s* %0, %struct.cfg_s** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %12 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %13 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %12, i32 0, i32 2
  %14 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %13, align 8
  store %struct.dn_sch_inst* %14, %struct.dn_sch_inst** %5, align 8
  %15 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %16 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %17 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call %struct.dn_queue* @FI2Q(%struct.cfg_s* %15, i64 %18)
  store %struct.dn_queue* %19, %struct.dn_queue** %6, align 8
  %20 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %21 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %26 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, %24
  store i32 %29, i32* %27, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %5, align 8
  %32 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, %30
  store i32 %35, i32* %33, align 4
  %36 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %37 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %95

41:                                               ; preds = %2
  %42 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %43 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sitofp i32 %45 to double
  store double %46, double* %8, align 8
  %47 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %5, align 8
  %48 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sitofp i32 %50 to double
  %52 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %53 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = load double, double* %54, align 8
  %56 = fsub double %51, %55
  store double %56, double* %9, align 8
  %57 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %58 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %57, i32 0, i32 0
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = sitofp i64 %64 to double
  %66 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %67 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %66, i32 0, i32 0
  %68 = load double, double* %67, align 8
  %69 = fdiv double %65, %68
  store double %69, double* %10, align 8
  %70 = load double, double* %9, align 8
  %71 = load double, double* %10, align 8
  %72 = fmul double %70, %71
  %73 = load double, double* %8, align 8
  %74 = fsub double %72, %73
  store double %74, double* %11, align 8
  %75 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %76 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %75, i32 0, i32 1
  %77 = load double*, double** %76, align 8
  %78 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %79 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds double, double* %77, i64 %80
  %82 = load double, double* %81, align 8
  %83 = load double, double* %11, align 8
  %84 = fcmp olt double %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %41
  %86 = load double, double* %11, align 8
  %87 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %88 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %87, i32 0, i32 1
  %89 = load double*, double** %88, align 8
  %90 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %91 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds double, double* %89, i64 %92
  store double %86, double* %93, align 8
  br label %94

94:                                               ; preds = %85, %41
  br label %95

95:                                               ; preds = %94, %2
  ret void
}

declare dso_local %struct.dn_queue* @FI2Q(%struct.cfg_s*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
