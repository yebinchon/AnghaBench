; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_prepare_table_tentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_prepare_table_tentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dump_args = type { i32, i32, i32 (i32*, i32)*, i32, %struct.table_config* }
%struct.table_config = type { i32, %struct.table_algo* }
%struct.table_algo = type { i32 (i32, i32, i8*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @prepare_table_tentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_table_tentry(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dump_args*, align 8
  %7 = alloca %struct.table_config*, align 8
  %8 = alloca %struct.table_algo*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.dump_args*
  store %struct.dump_args* %11, %struct.dump_args** %6, align 8
  %12 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %13 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %12, i32 0, i32 4
  %14 = load %struct.table_config*, %struct.table_config** %13, align 8
  store %struct.table_config* %14, %struct.table_config** %7, align 8
  %15 = load %struct.table_config*, %struct.table_config** %7, align 8
  %16 = getelementptr inbounds %struct.table_config, %struct.table_config* %15, i32 0, i32 1
  %17 = load %struct.table_algo*, %struct.table_algo** %16, align 8
  store %struct.table_algo* %17, %struct.table_algo** %8, align 8
  %18 = load %struct.table_algo*, %struct.table_algo** %8, align 8
  %19 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %18, i32 0, i32 0
  %20 = load i32 (i32, i32, i8*, i32*)*, i32 (i32, i32, i8*, i32*)** %19, align 8
  %21 = load %struct.table_config*, %struct.table_config** %7, align 8
  %22 = getelementptr inbounds %struct.table_config, %struct.table_config* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %25 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %29 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %28, i32 0, i32 1
  %30 = call i32 %20(i32 %23, i32 %26, i8* %27, i32* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %45

35:                                               ; preds = %2
  %36 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %37 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %36, i32 0, i32 2
  %38 = load i32 (i32*, i32)*, i32 (i32*, i32)** %37, align 8
  %39 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %40 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %39, i32 0, i32 1
  %41 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %42 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 %38(i32* %40, i32 %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %35, %33
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
