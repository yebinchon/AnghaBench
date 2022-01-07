; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_gpt.c_g_part_gpt_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_gpt.c_g_part_gpt_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.g_part_parms = type { i32 }
%struct.g_part_gpt_table = type { i64*, i32*, i32* }
%struct.g_provider = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.g_provider* }

@GPT_ELT_PRIHDR = common dso_local global i64 0, align 8
@GPT_STATE_OK = common dso_local global i64 0, align 8
@GPT_ELT_SECHDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_part_parms*)* @g_part_gpt_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_gpt_destroy(%struct.g_part_table* %0, %struct.g_part_parms* %1) #0 {
  %3 = alloca %struct.g_part_table*, align 8
  %4 = alloca %struct.g_part_parms*, align 8
  %5 = alloca %struct.g_part_gpt_table*, align 8
  %6 = alloca %struct.g_provider*, align 8
  store %struct.g_part_table* %0, %struct.g_part_table** %3, align 8
  store %struct.g_part_parms* %1, %struct.g_part_parms** %4, align 8
  %7 = load %struct.g_part_table*, %struct.g_part_table** %3, align 8
  %8 = bitcast %struct.g_part_table* %7 to %struct.g_part_gpt_table*
  store %struct.g_part_gpt_table* %8, %struct.g_part_gpt_table** %5, align 8
  %9 = load %struct.g_part_table*, %struct.g_part_table** %3, align 8
  %10 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call %struct.TYPE_4__* @LIST_FIRST(i32* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.g_provider*, %struct.g_provider** %14, align 8
  store %struct.g_provider* %15, %struct.g_provider** %6, align 8
  %16 = load %struct.g_part_gpt_table*, %struct.g_part_gpt_table** %5, align 8
  %17 = getelementptr inbounds %struct.g_part_gpt_table, %struct.g_part_gpt_table* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @g_free(i32* %18)
  %20 = load %struct.g_part_gpt_table*, %struct.g_part_gpt_table** %5, align 8
  %21 = getelementptr inbounds %struct.g_part_gpt_table, %struct.g_part_gpt_table* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  %22 = load %struct.g_part_gpt_table*, %struct.g_part_gpt_table** %5, align 8
  %23 = getelementptr inbounds %struct.g_part_gpt_table, %struct.g_part_gpt_table* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* @GPT_ELT_PRIHDR, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @GPT_STATE_OK, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load %struct.g_part_table*, %struct.g_part_table** %3, align 8
  %32 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, 3
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %30, %2
  %36 = load %struct.g_part_gpt_table*, %struct.g_part_gpt_table** %5, align 8
  %37 = getelementptr inbounds %struct.g_part_gpt_table, %struct.g_part_gpt_table* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* @GPT_ELT_SECHDR, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @GPT_STATE_OK, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %35
  %45 = load %struct.g_part_gpt_table*, %struct.g_part_gpt_table** %5, align 8
  %46 = getelementptr inbounds %struct.g_part_gpt_table, %struct.g_part_gpt_table* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @GPT_ELT_SECHDR, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %52 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %55 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %53, %56
  %58 = sub nsw i32 %57, 1
  %59 = icmp eq i32 %50, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %44
  %61 = load %struct.g_part_table*, %struct.g_part_table** %3, align 8
  %62 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %60, %44, %35
  ret i32 0
}

declare dso_local %struct.TYPE_4__* @LIST_FIRST(i32*) #1

declare dso_local i32 @g_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
