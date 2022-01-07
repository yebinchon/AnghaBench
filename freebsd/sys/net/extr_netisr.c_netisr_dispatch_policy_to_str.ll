; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_netisr.c_netisr_dispatch_policy_to_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_netisr.c_netisr_dispatch_policy_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netisr_dispatch_table_entry = type { i64, i8* }

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@netisr_dispatch_table = common dso_local global %struct.netisr_dispatch_table_entry* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*, i64)* @netisr_dispatch_policy_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netisr_dispatch_policy_to_str(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.netisr_dispatch_table_entry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %29, %3
  %11 = load i64, i64* %9, align 8
  %12 = load %struct.netisr_dispatch_table_entry*, %struct.netisr_dispatch_table_entry** @netisr_dispatch_table, align 8
  %13 = call i64 @nitems(%struct.netisr_dispatch_table_entry* %12)
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %10
  %16 = load %struct.netisr_dispatch_table_entry*, %struct.netisr_dispatch_table_entry** @netisr_dispatch_table, align 8
  %17 = load i64, i64* %9, align 8
  %18 = getelementptr inbounds %struct.netisr_dispatch_table_entry, %struct.netisr_dispatch_table_entry* %16, i64 %17
  store %struct.netisr_dispatch_table_entry* %18, %struct.netisr_dispatch_table_entry** %7, align 8
  %19 = load %struct.netisr_dispatch_table_entry*, %struct.netisr_dispatch_table_entry** %7, align 8
  %20 = getelementptr inbounds %struct.netisr_dispatch_table_entry, %struct.netisr_dispatch_table_entry* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load %struct.netisr_dispatch_table_entry*, %struct.netisr_dispatch_table_entry** %7, align 8
  %26 = getelementptr inbounds %struct.netisr_dispatch_table_entry, %struct.netisr_dispatch_table_entry* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %8, align 8
  br label %32

28:                                               ; preds = %15
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* %9, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %9, align 8
  br label %10

32:                                               ; preds = %24, %10
  %33 = load i8*, i8** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @snprintf(i8* %33, i64 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  ret void
}

declare dso_local i64 @nitems(%struct.netisr_dispatch_table_entry*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
