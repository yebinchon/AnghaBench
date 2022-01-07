; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_elan-mmcr.c_init_AMD_Elan_sc520.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_elan-mmcr.c_init_AMD_Elan_sc520.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elan_mmcr = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@mmcrptr = common dso_local global i64 0, align 8
@elan_mmcr = common dso_local global %struct.elan_mmcr* null, align 8
@thread0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"machdep.i8254_freq\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"sysctl machdep.i8254_freq=%d returns %d\0A\00", align 1
@elan_timecounter = common dso_local global i32 0, align 4
@PPS_CAPTUREASSERT = common dso_local global i32 0, align 4
@elan_pps = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_AMD_Elan_sc520() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i64 @pmap_mapdev(i32 -69632, i32 4096)
  store i64 %3, i64* @mmcrptr, align 8
  %4 = load i64, i64* @mmcrptr, align 8
  %5 = inttoptr i64 %4 to %struct.elan_mmcr*
  store %struct.elan_mmcr* %5, %struct.elan_mmcr** @elan_mmcr, align 8
  store i32 1189161, i32* %1, align 4
  %6 = call i32 @kernel_sysctlbyname(i32* @thread0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* null, i32 0, i32* %1, i32 4, i32* null, i32 0)
  store i32 %6, i32* %2, align 4
  %7 = load i64, i64* @bootverbose, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br i1 true, label %10, label %14

10:                                               ; preds = %9, %0
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %10, %9
  %15 = load %struct.elan_mmcr*, %struct.elan_mmcr** @elan_mmcr, align 8
  %16 = getelementptr inbounds %struct.elan_mmcr, %struct.elan_mmcr* %15, i32 0, i32 5
  store volatile i64 0, i64* %16, align 8
  %17 = load %struct.elan_mmcr*, %struct.elan_mmcr** @elan_mmcr, align 8
  %18 = getelementptr inbounds %struct.elan_mmcr, %struct.elan_mmcr* %17, i32 0, i32 0
  store volatile i32 49153, i32* %18, align 8
  %19 = call i32 @tc_init(i32* @elan_timecounter)
  ret void
}

declare dso_local i64 @pmap_mapdev(i32, i32) #1

declare dso_local i32 @kernel_sysctlbyname(i32*, i8*, i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @tc_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
