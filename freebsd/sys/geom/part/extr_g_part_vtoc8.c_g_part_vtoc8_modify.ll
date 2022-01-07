; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_vtoc8.c_g_part_vtoc8_modify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_vtoc8.c_g_part_vtoc8_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i32 }
%struct.g_part_entry = type { i32 }
%struct.g_part_parms = type { i32, i32 }
%struct.g_part_vtoc8_table = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@G_PART_PARM_LABEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@G_PART_PARM_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_part_entry*, %struct.g_part_parms*)* @g_part_vtoc8_modify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_vtoc8_modify(%struct.g_part_table* %0, %struct.g_part_entry* %1, %struct.g_part_parms* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_part_table*, align 8
  %6 = alloca %struct.g_part_entry*, align 8
  %7 = alloca %struct.g_part_parms*, align 8
  %8 = alloca %struct.g_part_vtoc8_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.g_part_table* %0, %struct.g_part_table** %5, align 8
  store %struct.g_part_entry* %1, %struct.g_part_entry** %6, align 8
  store %struct.g_part_parms* %2, %struct.g_part_parms** %7, align 8
  %11 = load %struct.g_part_parms*, %struct.g_part_parms** %7, align 8
  %12 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @G_PART_PARM_LABEL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %52

19:                                               ; preds = %3
  %20 = load %struct.g_part_table*, %struct.g_part_table** %5, align 8
  %21 = bitcast %struct.g_part_table* %20 to %struct.g_part_vtoc8_table*
  store %struct.g_part_vtoc8_table* %21, %struct.g_part_vtoc8_table** %8, align 8
  %22 = load %struct.g_part_parms*, %struct.g_part_parms** %7, align 8
  %23 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @G_PART_PARM_TYPE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %51

28:                                               ; preds = %19
  %29 = load %struct.g_part_parms*, %struct.g_part_parms** %7, align 8
  %30 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @vtoc8_parse_type(i32 %31, i32* %10)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %52

37:                                               ; preds = %28
  %38 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %8, align 8
  %39 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %43 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @be16enc(i32* %48, i32 %49)
  br label %51

51:                                               ; preds = %37, %19
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %35, %17
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @vtoc8_parse_type(i32, i32*) #1

declare dso_local i32 @be16enc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
