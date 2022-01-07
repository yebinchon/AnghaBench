; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/vmstat/extr_vmstat.c_doobjstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/vmstat/extr_vmstat.c_doobjstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_vmobject = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to fetch VM object list\00", align 1
@.str.1 = private unnamed_addr constant [97 x i8] c"{T:RES/%5s} {T:ACT/%5s} {T:INACT/%5s} {T:REF/%3s} {T:SHD/%3s} {T:CM/%3s} {T:TP/%2s} {T:PATH/%s}\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @doobjstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doobjstat() #0 {
  %1 = alloca %struct.kinfo_vmobject*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call %struct.kinfo_vmobject* @kinfo_getvmobject(i32* %2)
  store %struct.kinfo_vmobject* %4, %struct.kinfo_vmobject** %1, align 8
  %5 = load %struct.kinfo_vmobject*, %struct.kinfo_vmobject** %1, align 8
  %6 = icmp eq %struct.kinfo_vmobject* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @xo_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %29

9:                                                ; preds = %0
  %10 = call i32 @xo_emit(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @xo_open_list(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %22, %9
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load %struct.kinfo_vmobject*, %struct.kinfo_vmobject** %1, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.kinfo_vmobject, %struct.kinfo_vmobject* %17, i64 %19
  %21 = call i32 @display_object(%struct.kinfo_vmobject* %20)
  br label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %12

25:                                               ; preds = %12
  %26 = load %struct.kinfo_vmobject*, %struct.kinfo_vmobject** %1, align 8
  %27 = call i32 @free(%struct.kinfo_vmobject* %26)
  %28 = call i32 @xo_close_list(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %25, %7
  ret void
}

declare dso_local %struct.kinfo_vmobject* @kinfo_getvmobject(i32*) #1

declare dso_local i32 @xo_warn(i8*) #1

declare dso_local i32 @xo_emit(i8*) #1

declare dso_local i32 @xo_open_list(i8*) #1

declare dso_local i32 @display_object(%struct.kinfo_vmobject*) #1

declare dso_local i32 @free(%struct.kinfo_vmobject*) #1

declare dso_local i32 @xo_close_list(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
