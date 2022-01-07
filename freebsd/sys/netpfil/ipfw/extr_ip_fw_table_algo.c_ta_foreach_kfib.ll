; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_foreach_kfib.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_foreach_kfib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_info = type { i32 }
%struct.rib_head = type { i32 (i32*, i32*, i8*)*, i32 }

@RIB_RLOCK_TRACKER = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.table_info*, i32*, i8*)* @ta_foreach_kfib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ta_foreach_kfib(i8* %0, %struct.table_info* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.table_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.rib_head*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.table_info* %1, %struct.table_info** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* @RIB_RLOCK_TRACKER, align 4
  %12 = load %struct.table_info*, %struct.table_info** %6, align 8
  %13 = getelementptr inbounds %struct.table_info, %struct.table_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @AF_INET, align 4
  %16 = call %struct.rib_head* @rt_tables_get_rnh(i32 %14, i32 %15)
  store %struct.rib_head* %16, %struct.rib_head** %9, align 8
  %17 = load %struct.rib_head*, %struct.rib_head** %9, align 8
  %18 = icmp ne %struct.rib_head* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %4
  %20 = load %struct.rib_head*, %struct.rib_head** %9, align 8
  %21 = call i32 @RIB_RLOCK(%struct.rib_head* %20)
  %22 = load %struct.rib_head*, %struct.rib_head** %9, align 8
  %23 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %22, i32 0, i32 0
  %24 = load i32 (i32*, i32*, i8*)*, i32 (i32*, i32*, i8*)** %23, align 8
  %25 = load %struct.rib_head*, %struct.rib_head** %9, align 8
  %26 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %25, i32 0, i32 1
  %27 = load i32*, i32** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 %24(i32* %26, i32* %27, i8* %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.rib_head*, %struct.rib_head** %9, align 8
  %31 = call i32 @RIB_RUNLOCK(%struct.rib_head* %30)
  br label %32

32:                                               ; preds = %19, %4
  %33 = load %struct.table_info*, %struct.table_info** %6, align 8
  %34 = getelementptr inbounds %struct.table_info, %struct.table_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AF_INET6, align 4
  %37 = call %struct.rib_head* @rt_tables_get_rnh(i32 %35, i32 %36)
  store %struct.rib_head* %37, %struct.rib_head** %9, align 8
  %38 = load %struct.rib_head*, %struct.rib_head** %9, align 8
  %39 = icmp ne %struct.rib_head* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %32
  %41 = load %struct.rib_head*, %struct.rib_head** %9, align 8
  %42 = call i32 @RIB_RLOCK(%struct.rib_head* %41)
  %43 = load %struct.rib_head*, %struct.rib_head** %9, align 8
  %44 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %43, i32 0, i32 0
  %45 = load i32 (i32*, i32*, i8*)*, i32 (i32*, i32*, i8*)** %44, align 8
  %46 = load %struct.rib_head*, %struct.rib_head** %9, align 8
  %47 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %46, i32 0, i32 1
  %48 = load i32*, i32** %7, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 %45(i32* %47, i32* %48, i8* %49)
  store i32 %50, i32* %10, align 4
  %51 = load %struct.rib_head*, %struct.rib_head** %9, align 8
  %52 = call i32 @RIB_RUNLOCK(%struct.rib_head* %51)
  br label %53

53:                                               ; preds = %40, %32
  ret void
}

declare dso_local %struct.rib_head* @rt_tables_get_rnh(i32, i32) #1

declare dso_local i32 @RIB_RLOCK(%struct.rib_head*) #1

declare dso_local i32 @RIB_RUNLOCK(%struct.rib_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
