; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_dyn_alloc_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_dyn_alloc_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dyn_parent = type { i64, i8*, i32, i8*, i8* }

@V_dyn_parent_zone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@last_log = common dso_local global i64 0, align 8
@time_uptime = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"ipfw: Cannot allocate parent dynamic state, consider increasing net.inet.ip.fw.dyn_parent_max\0A\00", align 1
@V_dyn_short_lifetime = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dyn_parent* (i8*, i8*, i32, i8*)* @dyn_alloc_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dyn_parent* @dyn_alloc_parent(i8* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.dyn_parent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dyn_parent*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* @V_dyn_parent_zone, align 4
  %12 = load i32, i32* @M_NOWAIT, align 4
  %13 = load i32, i32* @M_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = call %struct.dyn_parent* @uma_zalloc(i32 %11, i32 %14)
  store %struct.dyn_parent* %15, %struct.dyn_parent** %10, align 8
  %16 = load %struct.dyn_parent*, %struct.dyn_parent** %10, align 8
  %17 = icmp eq %struct.dyn_parent* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = load i64, i64* @last_log, align 8
  %20 = load i64, i64* @time_uptime, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i64, i64* @time_uptime, align 8
  store i64 %23, i64* @last_log, align 8
  %24 = load i32, i32* @LOG_DEBUG, align 4
  %25 = call i32 @log(i32 %24, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %22, %18
  store %struct.dyn_parent* null, %struct.dyn_parent** %5, align 8
  br label %46

27:                                               ; preds = %4
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.dyn_parent*, %struct.dyn_parent** %10, align 8
  %30 = getelementptr inbounds %struct.dyn_parent, %struct.dyn_parent* %29, i32 0, i32 4
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.dyn_parent*, %struct.dyn_parent** %10, align 8
  %33 = getelementptr inbounds %struct.dyn_parent, %struct.dyn_parent* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.dyn_parent*, %struct.dyn_parent** %10, align 8
  %36 = getelementptr inbounds %struct.dyn_parent, %struct.dyn_parent* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load %struct.dyn_parent*, %struct.dyn_parent** %10, align 8
  %39 = getelementptr inbounds %struct.dyn_parent, %struct.dyn_parent* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load i64, i64* @time_uptime, align 8
  %41 = load i64, i64* @V_dyn_short_lifetime, align 8
  %42 = add nsw i64 %40, %41
  %43 = load %struct.dyn_parent*, %struct.dyn_parent** %10, align 8
  %44 = getelementptr inbounds %struct.dyn_parent, %struct.dyn_parent* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.dyn_parent*, %struct.dyn_parent** %10, align 8
  store %struct.dyn_parent* %45, %struct.dyn_parent** %5, align 8
  br label %46

46:                                               ; preds = %27, %26
  %47 = load %struct.dyn_parent*, %struct.dyn_parent** %5, align 8
  ret %struct.dyn_parent* %47
}

declare dso_local %struct.dyn_parent* @uma_zalloc(i32, i32) #1

declare dso_local i32 @log(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
