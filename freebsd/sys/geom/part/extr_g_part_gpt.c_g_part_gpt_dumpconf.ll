; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_gpt.c_g_part_gpt_dumpconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_gpt.c_g_part_gpt_dumpconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i32 }
%struct.g_part_entry = type { i32 }
%struct.sbuf = type { i32 }
%struct.g_part_gpt_entry = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c" xs GPT xt \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s<label>\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"</label>\0A\00", align 1
@GPT_ENT_ATTR_BOOTME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"%s<attrib>bootme</attrib>\0A\00", align 1
@GPT_ENT_ATTR_BOOTONCE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"%s<attrib>bootonce</attrib>\0A\00", align 1
@GPT_ENT_ATTR_BOOTFAILED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"%s<attrib>bootfailed</attrib>\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"%s<rawtype>\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"</rawtype>\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"%s<rawuuid>\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"</rawuuid>\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"%s<efimedia>\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"HD(%d,GPT,\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c",%#jx,%#jx)\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"</efimedia>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_part_table*, %struct.g_part_entry*, %struct.sbuf*, i8*)* @g_part_gpt_dumpconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_part_gpt_dumpconf(%struct.g_part_table* %0, %struct.g_part_entry* %1, %struct.sbuf* %2, i8* %3) #0 {
  %5 = alloca %struct.g_part_table*, align 8
  %6 = alloca %struct.g_part_entry*, align 8
  %7 = alloca %struct.sbuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.g_part_gpt_entry*, align 8
  store %struct.g_part_table* %0, %struct.g_part_table** %5, align 8
  store %struct.g_part_entry* %1, %struct.g_part_entry** %6, align 8
  store %struct.sbuf* %2, %struct.sbuf** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %11 = bitcast %struct.g_part_entry* %10 to %struct.g_part_gpt_entry*
  store %struct.g_part_gpt_entry* %11, %struct.g_part_gpt_entry** %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %4
  %15 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %16 = call i32 @sbuf_cat(%struct.sbuf* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %18 = load %struct.g_part_gpt_entry*, %struct.g_part_gpt_entry** %9, align 8
  %19 = getelementptr inbounds %struct.g_part_gpt_entry, %struct.g_part_gpt_entry* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = call i32 @sbuf_printf_uuid(%struct.sbuf* %17, i32* %20)
  br label %133

22:                                               ; preds = %4
  %23 = load %struct.g_part_gpt_entry*, %struct.g_part_gpt_entry** %9, align 8
  %24 = icmp ne %struct.g_part_gpt_entry* %23, null
  br i1 %24, label %25, label %131

25:                                               ; preds = %22
  %26 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  %29 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %30 = load %struct.g_part_gpt_entry*, %struct.g_part_gpt_entry** %9, align 8
  %31 = getelementptr inbounds %struct.g_part_gpt_entry, %struct.g_part_gpt_entry* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @g_gpt_printf_utf16(%struct.sbuf* %29, i32 %33, i32 2)
  %35 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %36 = call i32 @sbuf_cat(%struct.sbuf* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.g_part_gpt_entry*, %struct.g_part_gpt_entry** %9, align 8
  %38 = getelementptr inbounds %struct.g_part_gpt_entry, %struct.g_part_gpt_entry* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @GPT_ENT_ATTR_BOOTME, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %25
  %45 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %44, %25
  %49 = load %struct.g_part_gpt_entry*, %struct.g_part_gpt_entry** %9, align 8
  %50 = getelementptr inbounds %struct.g_part_gpt_entry, %struct.g_part_gpt_entry* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @GPT_ENT_ATTR_BOOTONCE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %56, %48
  %61 = load %struct.g_part_gpt_entry*, %struct.g_part_gpt_entry** %9, align 8
  %62 = getelementptr inbounds %struct.g_part_gpt_entry, %struct.g_part_gpt_entry* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @GPT_ENT_ATTR_BOOTFAILED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %68, %60
  %73 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %74)
  %76 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %77 = load %struct.g_part_gpt_entry*, %struct.g_part_gpt_entry** %9, align 8
  %78 = getelementptr inbounds %struct.g_part_gpt_entry, %struct.g_part_gpt_entry* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = call i32 @sbuf_printf_uuid(%struct.sbuf* %76, i32* %79)
  %81 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %82 = call i32 @sbuf_cat(%struct.sbuf* %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %83 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %84)
  %86 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %87 = load %struct.g_part_gpt_entry*, %struct.g_part_gpt_entry** %9, align 8
  %88 = getelementptr inbounds %struct.g_part_gpt_entry, %struct.g_part_gpt_entry* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = call i32 @sbuf_printf_uuid(%struct.sbuf* %86, i32* %89)
  %91 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %92 = call i32 @sbuf_cat(%struct.sbuf* %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %93 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %93, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* %94)
  %96 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %97 = load %struct.g_part_gpt_entry*, %struct.g_part_gpt_entry** %9, align 8
  %98 = getelementptr inbounds %struct.g_part_gpt_entry, %struct.g_part_gpt_entry* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to i8*
  %103 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %96, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* %102)
  %104 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %105 = load %struct.g_part_gpt_entry*, %struct.g_part_gpt_entry** %9, align 8
  %106 = getelementptr inbounds %struct.g_part_gpt_entry, %struct.g_part_gpt_entry* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = call i32 @sbuf_printf_uuid(%struct.sbuf* %104, i32* %107)
  %109 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %110 = load %struct.g_part_gpt_entry*, %struct.g_part_gpt_entry** %9, align 8
  %111 = getelementptr inbounds %struct.g_part_gpt_entry, %struct.g_part_gpt_entry* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = sext i32 %114 to i64
  %116 = inttoptr i64 %115 to i8*
  %117 = load %struct.g_part_gpt_entry*, %struct.g_part_gpt_entry** %9, align 8
  %118 = getelementptr inbounds %struct.g_part_gpt_entry, %struct.g_part_gpt_entry* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.g_part_gpt_entry*, %struct.g_part_gpt_entry** %9, align 8
  %122 = getelementptr inbounds %struct.g_part_gpt_entry, %struct.g_part_gpt_entry* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = sub nsw i64 %120, %124
  %126 = add nsw i64 %125, 1
  %127 = trunc i64 %126 to i32
  %128 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %109, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8* %116, i32 %127)
  %129 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %130 = call i32 @sbuf_cat(%struct.sbuf* %129, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  br label %132

131:                                              ; preds = %22
  br label %132

132:                                              ; preds = %131, %72
  br label %133

133:                                              ; preds = %132, %14
  ret void
}

declare dso_local i32 @sbuf_cat(%struct.sbuf*, i8*) #1

declare dso_local i32 @sbuf_printf_uuid(%struct.sbuf*, i32*) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i8*, ...) #1

declare dso_local i32 @g_gpt_printf_utf16(%struct.sbuf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
