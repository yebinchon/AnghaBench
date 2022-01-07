; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ebr.c_g_part_ebr_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ebr.c_g_part_ebr_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.g_part_table = type { i32 }
%struct.g_part_entry = type { i32 }
%struct.g_part_ebr_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@ebr_alias_match = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"!%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.g_part_table*, %struct.g_part_entry*, i8*, i64)* @g_part_ebr_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @g_part_ebr_type(%struct.g_part_table* %0, %struct.g_part_entry* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.g_part_table*, align 8
  %7 = alloca %struct.g_part_entry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.g_part_ebr_entry*, align 8
  %11 = alloca i32, align 4
  store %struct.g_part_table* %0, %struct.g_part_table** %6, align 8
  store %struct.g_part_entry* %1, %struct.g_part_entry** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.g_part_entry*, %struct.g_part_entry** %7, align 8
  %13 = bitcast %struct.g_part_entry* %12 to %struct.g_part_ebr_entry*
  store %struct.g_part_ebr_entry* %13, %struct.g_part_ebr_entry** %10, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %40, %4
  %15 = load i32, i32* %11, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ebr_alias_match, align 8
  %17 = call i32 @nitems(%struct.TYPE_5__* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %14
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ebr_alias_match, align 8
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.g_part_ebr_entry*, %struct.g_part_ebr_entry** %10, align 8
  %27 = getelementptr inbounds %struct.g_part_ebr_entry, %struct.g_part_ebr_entry* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %25, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %19
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ebr_alias_match, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @g_part_alias_name(i32 %37)
  store i8* %38, i8** %5, align 8
  br label %53

39:                                               ; preds = %19
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %14

43:                                               ; preds = %14
  %44 = load i8*, i8** %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.g_part_ebr_entry*, %struct.g_part_ebr_entry** %10, align 8
  %47 = getelementptr inbounds %struct.g_part_ebr_entry, %struct.g_part_ebr_entry* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @snprintf(i8* %44, i64 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i8*, i8** %8, align 8
  store i8* %52, i8** %5, align 8
  br label %53

53:                                               ; preds = %43, %31
  %54 = load i8*, i8** %5, align 8
  ret i8* %54
}

declare dso_local i32 @nitems(%struct.TYPE_5__*) #1

declare dso_local i8* @g_part_alias_name(i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
