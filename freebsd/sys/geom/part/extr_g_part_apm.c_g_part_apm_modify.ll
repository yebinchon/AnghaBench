; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_apm.c_g_part_apm_modify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_apm.c_g_part_apm_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i32 }
%struct.g_part_entry = type { i32 }
%struct.g_part_parms = type { i32, i32, i32 }
%struct.g_part_apm_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@G_PART_PARM_LABEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@G_PART_PARM_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_part_entry*, %struct.g_part_parms*)* @g_part_apm_modify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_apm_modify(%struct.g_part_table* %0, %struct.g_part_entry* %1, %struct.g_part_parms* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_part_table*, align 8
  %6 = alloca %struct.g_part_entry*, align 8
  %7 = alloca %struct.g_part_parms*, align 8
  %8 = alloca %struct.g_part_apm_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.g_part_table* %0, %struct.g_part_table** %5, align 8
  store %struct.g_part_entry* %1, %struct.g_part_entry** %6, align 8
  store %struct.g_part_parms* %2, %struct.g_part_parms** %7, align 8
  %10 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %11 = bitcast %struct.g_part_entry* %10 to %struct.g_part_apm_entry*
  store %struct.g_part_apm_entry* %11, %struct.g_part_apm_entry** %8, align 8
  %12 = load %struct.g_part_parms*, %struct.g_part_parms** %7, align 8
  %13 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @G_PART_PARM_LABEL, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load %struct.g_part_parms*, %struct.g_part_parms** %7, align 8
  %20 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strlen(i32 %21)
  %23 = sext i32 %22 to i64
  %24 = icmp ugt i64 %23, 4
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %4, align 4
  br label %66

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %3
  %29 = load %struct.g_part_parms*, %struct.g_part_parms** %7, align 8
  %30 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @G_PART_PARM_TYPE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %28
  %36 = load %struct.g_part_parms*, %struct.g_part_parms** %7, align 8
  %37 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.g_part_apm_entry*, %struct.g_part_apm_entry** %8, align 8
  %40 = getelementptr inbounds %struct.g_part_apm_entry, %struct.g_part_apm_entry* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @apm_parse_type(i32 %38, i32 %42, i32 4)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %66

48:                                               ; preds = %35
  br label %49

49:                                               ; preds = %48, %28
  %50 = load %struct.g_part_parms*, %struct.g_part_parms** %7, align 8
  %51 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @G_PART_PARM_LABEL, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = load %struct.g_part_apm_entry*, %struct.g_part_apm_entry** %8, align 8
  %58 = getelementptr inbounds %struct.g_part_apm_entry, %struct.g_part_apm_entry* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.g_part_parms*, %struct.g_part_parms** %7, align 8
  %62 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @strncpy(i32 %60, i32 %63, i32 4)
  br label %65

65:                                               ; preds = %56, %49
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %46, %25
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @apm_parse_type(i32, i32, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
