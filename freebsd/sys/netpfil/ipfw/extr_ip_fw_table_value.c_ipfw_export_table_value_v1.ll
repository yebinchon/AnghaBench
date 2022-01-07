; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_value.c_ipfw_export_table_value_v1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_value.c_ipfw_export_table_value_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_value = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipfw_export_table_value_v1(%struct.table_value* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.table_value*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__, align 4
  store %struct.table_value* %0, %struct.table_value** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %6 = call i32 @memset(%struct.TYPE_6__* %5, i32 0, i32 48)
  %7 = load %struct.table_value*, %struct.table_value** %3, align 8
  %8 = getelementptr inbounds %struct.table_value, %struct.table_value* %7, i32 0, i32 11
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 11
  store i32 %9, i32* %10, align 4
  %11 = load %struct.table_value*, %struct.table_value** %3, align 8
  %12 = getelementptr inbounds %struct.table_value, %struct.table_value* %11, i32 0, i32 10
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 10
  store i32 %13, i32* %14, align 4
  %15 = load %struct.table_value*, %struct.table_value** %3, align 8
  %16 = getelementptr inbounds %struct.table_value, %struct.table_value* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 9
  store i32 %17, i32* %18, align 4
  %19 = load %struct.table_value*, %struct.table_value** %3, align 8
  %20 = getelementptr inbounds %struct.table_value, %struct.table_value* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 8
  store i32 %21, i32* %22, align 4
  %23 = load %struct.table_value*, %struct.table_value** %3, align 8
  %24 = getelementptr inbounds %struct.table_value, %struct.table_value* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 7
  store i32 %25, i32* %26, align 4
  %27 = load %struct.table_value*, %struct.table_value** %3, align 8
  %28 = getelementptr inbounds %struct.table_value, %struct.table_value* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 6
  store i32 %29, i32* %30, align 4
  %31 = load %struct.table_value*, %struct.table_value** %3, align 8
  %32 = getelementptr inbounds %struct.table_value, %struct.table_value* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 5
  store i32 %33, i32* %34, align 4
  %35 = load %struct.table_value*, %struct.table_value** %3, align 8
  %36 = getelementptr inbounds %struct.table_value, %struct.table_value* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 4
  store i32 %37, i32* %38, align 4
  %39 = load %struct.table_value*, %struct.table_value** %3, align 8
  %40 = getelementptr inbounds %struct.table_value, %struct.table_value* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  store i32 %41, i32* %42, align 4
  %43 = load %struct.table_value*, %struct.table_value** %3, align 8
  %44 = getelementptr inbounds %struct.table_value, %struct.table_value* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = load %struct.table_value*, %struct.table_value** %3, align 8
  %48 = getelementptr inbounds %struct.table_value, %struct.table_value* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load %struct.table_value*, %struct.table_value** %3, align 8
  %52 = getelementptr inbounds %struct.table_value, %struct.table_value* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = call i32 @memcpy(%struct.TYPE_6__* %55, %struct.TYPE_6__* %5, i32 48)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
