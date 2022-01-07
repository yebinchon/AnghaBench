; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_pie.c_fq_pie_getconfig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_pie.c_fq_pie_getconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.dn_schk = type { i32 }
%struct.dn_extra_parms = type { i32*, i32 }
%struct.fq_pie_schk = type { %struct.dn_sch_fq_pie_parms }
%struct.dn_sch_fq_pie_parms = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@fq_pie_desc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_schk*, %struct.dn_extra_parms*)* @fq_pie_getconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fq_pie_getconfig(%struct.dn_schk* %0, %struct.dn_extra_parms* %1) #0 {
  %3 = alloca %struct.dn_schk*, align 8
  %4 = alloca %struct.dn_extra_parms*, align 8
  %5 = alloca %struct.fq_pie_schk*, align 8
  %6 = alloca %struct.dn_sch_fq_pie_parms*, align 8
  store %struct.dn_schk* %0, %struct.dn_schk** %3, align 8
  store %struct.dn_extra_parms* %1, %struct.dn_extra_parms** %4, align 8
  %7 = load %struct.dn_schk*, %struct.dn_schk** %3, align 8
  %8 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %7, i64 1
  %9 = bitcast %struct.dn_schk* %8 to %struct.fq_pie_schk*
  store %struct.fq_pie_schk* %9, %struct.fq_pie_schk** %5, align 8
  %10 = load %struct.fq_pie_schk*, %struct.fq_pie_schk** %5, align 8
  %11 = getelementptr inbounds %struct.fq_pie_schk, %struct.fq_pie_schk* %10, i32 0, i32 0
  store %struct.dn_sch_fq_pie_parms* %11, %struct.dn_sch_fq_pie_parms** %6, align 8
  %12 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %4, align 8
  %13 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fq_pie_desc, i32 0, i32 0), align 4
  %16 = call i32 @strcpy(i32 %14, i32 %15)
  %17 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %18 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %4, align 8
  %22 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %20, i32* %24, align 4
  %25 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %26 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %4, align 8
  %30 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 %28, i32* %32, align 4
  %33 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %34 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %4, align 8
  %38 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  store i32 %36, i32* %40, align 4
  %41 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %42 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %4, align 8
  %46 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  store i32 %44, i32* %48, align 4
  %49 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %50 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %4, align 8
  %54 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  store i32 %52, i32* %56, align 4
  %57 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %58 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %4, align 8
  %62 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 5
  store i32 %60, i32* %64, align 4
  %65 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %66 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %4, align 8
  %70 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 6
  store i32 %68, i32* %72, align 4
  %73 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %74 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %4, align 8
  %77 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 7
  store i32 %75, i32* %79, align 4
  %80 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %81 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %4, align 8
  %84 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 8
  store i32 %82, i32* %86, align 4
  %87 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %88 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %4, align 8
  %91 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 9
  store i32 %89, i32* %93, align 4
  ret i32 0
}

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
