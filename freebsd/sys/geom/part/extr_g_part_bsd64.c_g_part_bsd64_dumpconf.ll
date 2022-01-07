; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_bsd64.c_g_part_bsd64_dumpconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_bsd64.c_g_part_bsd64_dumpconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i32 }
%struct.g_part_entry = type { i32 }
%struct.sbuf = type { i32 }
%struct.g_part_bsd64_table = type { i32, i32, i64, i64 }
%struct.g_part_bsd64_entry = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c" xs BSD64 xt %u\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%s<rawtype>%u</rawtype>\0A\00", align 1
@bsd64_uuid_unused = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"%s<type_uuid>\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"</type_uuid>\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"%s<stor_uuid>\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"</stor_uuid>\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"%s<bootbase>%ju</bootbase>\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"%s<backupbase>%ju</backupbase>\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"%s<label>\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"</label>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_part_table*, %struct.g_part_entry*, %struct.sbuf*, i8*)* @g_part_bsd64_dumpconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_part_bsd64_dumpconf(%struct.g_part_table* %0, %struct.g_part_entry* %1, %struct.sbuf* %2, i8* %3) #0 {
  %5 = alloca %struct.g_part_table*, align 8
  %6 = alloca %struct.g_part_entry*, align 8
  %7 = alloca %struct.sbuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.g_part_bsd64_table*, align 8
  %10 = alloca %struct.g_part_bsd64_entry*, align 8
  %11 = alloca [4 x i8], align 1
  store %struct.g_part_table* %0, %struct.g_part_table** %5, align 8
  store %struct.g_part_entry* %1, %struct.g_part_entry** %6, align 8
  store %struct.sbuf* %2, %struct.sbuf** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %13 = bitcast %struct.g_part_entry* %12 to %struct.g_part_bsd64_entry*
  store %struct.g_part_bsd64_entry* %13, %struct.g_part_bsd64_entry** %10, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %18 = load %struct.g_part_bsd64_entry*, %struct.g_part_bsd64_entry** %10, align 8
  %19 = getelementptr inbounds %struct.g_part_bsd64_entry, %struct.g_part_bsd64_entry* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %103

22:                                               ; preds = %4
  %23 = load %struct.g_part_bsd64_entry*, %struct.g_part_bsd64_entry** %10, align 8
  %24 = icmp ne %struct.g_part_bsd64_entry* %23, null
  br i1 %24, label %25, label %56

25:                                               ; preds = %22
  %26 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load %struct.g_part_bsd64_entry*, %struct.g_part_bsd64_entry** %10, align 8
  %29 = getelementptr inbounds %struct.g_part_bsd64_entry, %struct.g_part_bsd64_entry* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %27, i8* %30)
  %32 = load %struct.g_part_bsd64_entry*, %struct.g_part_bsd64_entry** %10, align 8
  %33 = getelementptr inbounds %struct.g_part_bsd64_entry, %struct.g_part_bsd64_entry* %32, i32 0, i32 2
  %34 = call i32 @EQUUID(i32* @bsd64_uuid_unused, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %25
  %37 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  %40 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %41 = load %struct.g_part_bsd64_entry*, %struct.g_part_bsd64_entry** %10, align 8
  %42 = getelementptr inbounds %struct.g_part_bsd64_entry, %struct.g_part_bsd64_entry* %41, i32 0, i32 2
  %43 = call i32 @sbuf_printf_uuid(%struct.sbuf* %40, i32* %42)
  %44 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %45 = call i32 @sbuf_cat(%struct.sbuf* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %36, %25
  %47 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %48)
  %50 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %51 = load %struct.g_part_bsd64_entry*, %struct.g_part_bsd64_entry** %10, align 8
  %52 = getelementptr inbounds %struct.g_part_bsd64_entry, %struct.g_part_bsd64_entry* %51, i32 0, i32 1
  %53 = call i32 @sbuf_printf_uuid(%struct.sbuf* %50, i32* %52)
  %54 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %55 = call i32 @sbuf_cat(%struct.sbuf* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %102

56:                                               ; preds = %22
  %57 = load %struct.g_part_table*, %struct.g_part_table** %5, align 8
  %58 = bitcast %struct.g_part_table* %57 to %struct.g_part_bsd64_table*
  store %struct.g_part_bsd64_table* %58, %struct.g_part_bsd64_table** %9, align 8
  %59 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load %struct.g_part_bsd64_table*, %struct.g_part_bsd64_table** %9, align 8
  %62 = getelementptr inbounds %struct.g_part_bsd64_table, %struct.g_part_bsd64_table* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %60, i32 %64)
  %66 = load %struct.g_part_bsd64_table*, %struct.g_part_bsd64_table** %9, align 8
  %67 = getelementptr inbounds %struct.g_part_bsd64_table, %struct.g_part_bsd64_table* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %56
  %71 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load %struct.g_part_bsd64_table*, %struct.g_part_bsd64_table** %9, align 8
  %74 = getelementptr inbounds %struct.g_part_bsd64_table, %struct.g_part_bsd64_table* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* %72, i32 %76)
  br label %78

78:                                               ; preds = %70, %56
  %79 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %80)
  %82 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %83 = load %struct.g_part_bsd64_table*, %struct.g_part_bsd64_table** %9, align 8
  %84 = getelementptr inbounds %struct.g_part_bsd64_table, %struct.g_part_bsd64_table* %83, i32 0, i32 1
  %85 = call i32 @sbuf_printf_uuid(%struct.sbuf* %82, i32* %84)
  %86 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %87 = call i32 @sbuf_cat(%struct.sbuf* %86, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %88 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %89)
  %91 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %92 = load %struct.g_part_bsd64_table*, %struct.g_part_bsd64_table** %9, align 8
  %93 = getelementptr inbounds %struct.g_part_bsd64_table, %struct.g_part_bsd64_table* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @strncpy(i8* %91, i32 %94, i32 3)
  %96 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 3
  store i8 0, i8* %96, align 1
  %97 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %98 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %99 = call i32 @g_conf_cat_escaped(%struct.sbuf* %97, i8* %98)
  %100 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %101 = call i32 @sbuf_cat(%struct.sbuf* %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  br label %102

102:                                              ; preds = %78, %46
  br label %103

103:                                              ; preds = %102, %16
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i8*, ...) #1

declare dso_local i32 @EQUUID(i32*, i32*) #1

declare dso_local i32 @sbuf_printf_uuid(%struct.sbuf*, i32*) #1

declare dso_local i32 @sbuf_cat(%struct.sbuf*, i8*) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @g_conf_cat_escaped(%struct.sbuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
