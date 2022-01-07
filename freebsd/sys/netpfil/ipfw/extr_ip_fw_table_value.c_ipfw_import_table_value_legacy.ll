; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_value.c_ipfw_import_table_value_legacy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_value.c_ipfw_import_table_value_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_value = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipfw_import_table_value_legacy(i8* %0, %struct.table_value* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.table_value*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.table_value* %1, %struct.table_value** %4, align 8
  %5 = load %struct.table_value*, %struct.table_value** %4, align 8
  %6 = call i32 @memset(%struct.table_value* %5, i32 0, i32 80)
  %7 = load i8*, i8** %3, align 8
  %8 = load %struct.table_value*, %struct.table_value** %4, align 8
  %9 = getelementptr inbounds %struct.table_value, %struct.table_value* %8, i32 0, i32 9
  store i8* %7, i8** %9, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load %struct.table_value*, %struct.table_value** %4, align 8
  %12 = getelementptr inbounds %struct.table_value, %struct.table_value* %11, i32 0, i32 8
  store i8* %10, i8** %12, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load %struct.table_value*, %struct.table_value** %4, align 8
  %15 = getelementptr inbounds %struct.table_value, %struct.table_value* %14, i32 0, i32 7
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load %struct.table_value*, %struct.table_value** %4, align 8
  %18 = getelementptr inbounds %struct.table_value, %struct.table_value* %17, i32 0, i32 6
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = load %struct.table_value*, %struct.table_value** %4, align 8
  %21 = getelementptr inbounds %struct.table_value, %struct.table_value* %20, i32 0, i32 5
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = load %struct.table_value*, %struct.table_value** %4, align 8
  %24 = getelementptr inbounds %struct.table_value, %struct.table_value* %23, i32 0, i32 4
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = load %struct.table_value*, %struct.table_value** %4, align 8
  %27 = getelementptr inbounds %struct.table_value, %struct.table_value* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = load %struct.table_value*, %struct.table_value** %4, align 8
  %30 = getelementptr inbounds %struct.table_value, %struct.table_value* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %3, align 8
  %32 = load %struct.table_value*, %struct.table_value** %4, align 8
  %33 = getelementptr inbounds %struct.table_value, %struct.table_value* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = load %struct.table_value*, %struct.table_value** %4, align 8
  %36 = getelementptr inbounds %struct.table_value, %struct.table_value* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  ret void
}

declare dso_local i32 @memset(%struct.table_value*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
