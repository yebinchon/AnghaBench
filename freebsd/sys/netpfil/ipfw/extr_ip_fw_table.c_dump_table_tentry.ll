; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_dump_table_tentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_dump_table_tentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dump_args = type { %struct.table_config*, i32, i32, i32, i32, i32 }
%struct.table_config = type { i32, %struct.table_algo* }
%struct.table_algo = type { i32 (i32, i32, i8*, %struct.TYPE_7__*)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.table_value = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @dump_table_tentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_table_tentry(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dump_args*, align 8
  %7 = alloca %struct.table_config*, align 8
  %8 = alloca %struct.table_algo*, align 8
  %9 = alloca %struct.table_value*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.dump_args*
  store %struct.dump_args* %13, %struct.dump_args** %6, align 8
  %14 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %15 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %14, i32 0, i32 0
  %16 = load %struct.table_config*, %struct.table_config** %15, align 8
  store %struct.table_config* %16, %struct.table_config** %7, align 8
  %17 = load %struct.table_config*, %struct.table_config** %7, align 8
  %18 = getelementptr inbounds %struct.table_config, %struct.table_config* %17, i32 0, i32 1
  %19 = load %struct.table_algo*, %struct.table_algo** %18, align 8
  store %struct.table_algo* %19, %struct.table_algo** %8, align 8
  %20 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %21 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @ipfw_get_sopt_space(i32 %22, i32 16)
  %24 = inttoptr i64 %23 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %10, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %26 = icmp eq %struct.TYPE_7__* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %30 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  store i32 1, i32* %3, align 4
  br label %73

31:                                               ; preds = %2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 16, i32* %34, align 4
  %35 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %36 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.table_algo*, %struct.table_algo** %8, align 8
  %41 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %40, i32 0, i32 0
  %42 = load i32 (i32, i32, i8*, %struct.TYPE_7__*)*, i32 (i32, i32, i8*, %struct.TYPE_7__*)** %41, align 8
  %43 = load %struct.table_config*, %struct.table_config** %7, align 8
  %44 = getelementptr inbounds %struct.table_config, %struct.table_config* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %47 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %51 = call i32 %42(i32 %45, i32 %48, i8* %49, %struct.TYPE_7__* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %31
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %3, align 4
  br label %73

56:                                               ; preds = %31
  %57 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %58 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %61 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %60, i32 0, i32 0
  %62 = load %struct.table_config*, %struct.table_config** %61, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.table_value* @get_table_value(i32 %59, %struct.table_config* %62, i32 %66)
  store %struct.table_value* %67, %struct.table_value** %9, align 8
  %68 = load %struct.table_value*, %struct.table_value** %9, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = call i32 @ipfw_export_table_value_v1(%struct.table_value* %68, i32* %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %56, %54, %27
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @ipfw_get_sopt_space(i32, i32) #1

declare dso_local %struct.table_value* @get_table_value(i32, %struct.table_config*, i32) #1

declare dso_local i32 @ipfw_export_table_value_v1(%struct.table_value*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
