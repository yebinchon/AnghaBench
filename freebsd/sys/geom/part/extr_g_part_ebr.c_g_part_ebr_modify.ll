; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ebr.c_g_part_ebr_modify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ebr.c_g_part_ebr_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i32 }
%struct.g_part_entry = type { i32 }
%struct.g_part_parms = type { i32, i32 }
%struct.g_part_ebr_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@G_PART_PARM_LABEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@G_PART_PARM_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_part_entry*, %struct.g_part_parms*)* @g_part_ebr_modify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_ebr_modify(%struct.g_part_table* %0, %struct.g_part_entry* %1, %struct.g_part_parms* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_part_table*, align 8
  %6 = alloca %struct.g_part_entry*, align 8
  %7 = alloca %struct.g_part_parms*, align 8
  %8 = alloca %struct.g_part_ebr_entry*, align 8
  store %struct.g_part_table* %0, %struct.g_part_table** %5, align 8
  store %struct.g_part_entry* %1, %struct.g_part_entry** %6, align 8
  store %struct.g_part_parms* %2, %struct.g_part_parms** %7, align 8
  %9 = load %struct.g_part_parms*, %struct.g_part_parms** %7, align 8
  %10 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @G_PART_PARM_LABEL, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %4, align 4
  br label %35

17:                                               ; preds = %3
  %18 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %19 = bitcast %struct.g_part_entry* %18 to %struct.g_part_ebr_entry*
  store %struct.g_part_ebr_entry* %19, %struct.g_part_ebr_entry** %8, align 8
  %20 = load %struct.g_part_parms*, %struct.g_part_parms** %7, align 8
  %21 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @G_PART_PARM_TYPE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %17
  %27 = load %struct.g_part_parms*, %struct.g_part_parms** %7, align 8
  %28 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.g_part_ebr_entry*, %struct.g_part_ebr_entry** %8, align 8
  %31 = getelementptr inbounds %struct.g_part_ebr_entry, %struct.g_part_ebr_entry* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @ebr_parse_type(i32 %29, i32* %32)
  store i32 %33, i32* %4, align 4
  br label %35

34:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %26, %15
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @ebr_parse_type(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
