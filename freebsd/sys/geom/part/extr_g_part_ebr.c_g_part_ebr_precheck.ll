; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ebr.c_g_part_ebr_precheck.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ebr.c_g_part_ebr_precheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i32 }
%struct.g_part_parms = type { i32, i32 }

@G_PART_CTL_ADD = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4
@G_PART_CTL_DESTROY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, i32, %struct.g_part_parms*)* @g_part_ebr_precheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_ebr_precheck(%struct.g_part_table* %0, i32 %1, %struct.g_part_parms* %2) #0 {
  %4 = alloca %struct.g_part_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.g_part_parms*, align 8
  store %struct.g_part_table* %0, %struct.g_part_table** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.g_part_parms* %2, %struct.g_part_parms** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @G_PART_CTL_ADD, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %3
  %11 = load %struct.g_part_parms*, %struct.g_part_parms** %6, align 8
  %12 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %15 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %13, %16
  %18 = add nsw i32 %17, 1
  %19 = load %struct.g_part_parms*, %struct.g_part_parms** %6, align 8
  %20 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %10, %3
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
