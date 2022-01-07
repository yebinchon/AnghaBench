; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_bsd.c_g_part_bsd_dumpconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_bsd.c_g_part_bsd_dumpconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i32 }
%struct.g_part_entry = type { i32 }
%struct.sbuf = type { i32 }
%struct.g_part_bsd_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c" xs BSD xt %u\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%s<rawtype>%u</rawtype>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_part_table*, %struct.g_part_entry*, %struct.sbuf*, i8*)* @g_part_bsd_dumpconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_part_bsd_dumpconf(%struct.g_part_table* %0, %struct.g_part_entry* %1, %struct.sbuf* %2, i8* %3) #0 {
  %5 = alloca %struct.g_part_table*, align 8
  %6 = alloca %struct.g_part_entry*, align 8
  %7 = alloca %struct.sbuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.g_part_bsd_entry*, align 8
  store %struct.g_part_table* %0, %struct.g_part_table** %5, align 8
  store %struct.g_part_entry* %1, %struct.g_part_entry** %6, align 8
  store %struct.sbuf* %2, %struct.sbuf** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %11 = bitcast %struct.g_part_entry* %10 to %struct.g_part_bsd_entry*
  store %struct.g_part_bsd_entry* %11, %struct.g_part_bsd_entry** %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %4
  %15 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %16 = load %struct.g_part_bsd_entry*, %struct.g_part_bsd_entry** %9, align 8
  %17 = getelementptr inbounds %struct.g_part_bsd_entry, %struct.g_part_bsd_entry* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %36

23:                                               ; preds = %4
  %24 = load %struct.g_part_bsd_entry*, %struct.g_part_bsd_entry** %9, align 8
  %25 = icmp ne %struct.g_part_bsd_entry* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.g_part_bsd_entry*, %struct.g_part_bsd_entry** %9, align 8
  %30 = getelementptr inbounds %struct.g_part_bsd_entry, %struct.g_part_bsd_entry* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %28, i32 %32)
  br label %35

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %26
  br label %36

36:                                               ; preds = %35, %14
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
