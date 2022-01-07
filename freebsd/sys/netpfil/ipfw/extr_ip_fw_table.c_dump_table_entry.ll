; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_dump_table_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_dump_table_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dump_args = type { i64, i64, %struct.TYPE_10__, %struct.table_config*, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.table_config = type { i32, %struct.table_algo* }
%struct.table_algo = type { i32 (i32, i32, i8*, %struct.TYPE_10__*)* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.table_value = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @dump_table_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_table_entry(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dump_args*, align 8
  %7 = alloca %struct.table_config*, align 8
  %8 = alloca %struct.table_algo*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.table_value*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.dump_args*
  store %struct.dump_args* %13, %struct.dump_args** %6, align 8
  %14 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %15 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %14, i32 0, i32 3
  %16 = load %struct.table_config*, %struct.table_config** %15, align 8
  store %struct.table_config* %16, %struct.table_config** %7, align 8
  %17 = load %struct.table_config*, %struct.table_config** %7, align 8
  %18 = getelementptr inbounds %struct.table_config, %struct.table_config* %17, i32 0, i32 1
  %19 = load %struct.table_algo*, %struct.table_algo** %18, align 8
  store %struct.table_algo* %19, %struct.table_algo** %8, align 8
  %20 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %21 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %24 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %92

28:                                               ; preds = %2
  %29 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %30 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = sext i32 %31 to i64
  %34 = inttoptr i64 %33 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %9, align 8
  %35 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %36 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %41 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %41, align 8
  %44 = load %struct.table_algo*, %struct.table_algo** %8, align 8
  %45 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %44, i32 0, i32 0
  %46 = load i32 (i32, i32, i8*, %struct.TYPE_10__*)*, i32 (i32, i32, i8*, %struct.TYPE_10__*)** %45, align 8
  %47 = load %struct.table_config*, %struct.table_config** %7, align 8
  %48 = getelementptr inbounds %struct.table_config, %struct.table_config* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %51 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %4, align 8
  %54 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %55 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %54, i32 0, i32 2
  %56 = call i32 %46(i32 %49, i32 %52, i8* %53, %struct.TYPE_10__* %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %28
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %3, align 4
  br label %92

61:                                               ; preds = %28
  %62 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %63 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %71 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %77 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %80 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %79, i32 0, i32 3
  %81 = load %struct.table_config*, %struct.table_config** %80, align 8
  %82 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %83 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call %struct.table_value* @get_table_value(i32 %78, %struct.table_config* %81, i32 %86)
  store %struct.table_value* %87, %struct.table_value** %10, align 8
  %88 = load %struct.table_value*, %struct.table_value** %10, align 8
  %89 = call i32 @ipfw_export_table_value_legacy(%struct.table_value* %88)
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %61, %59, %27
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.table_value* @get_table_value(i32, %struct.table_config*, i32) #1

declare dso_local i32 @ipfw_export_table_value_legacy(%struct.table_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
