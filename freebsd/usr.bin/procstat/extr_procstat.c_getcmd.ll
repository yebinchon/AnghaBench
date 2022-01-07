; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat.c_getcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat.c_getcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procstat_cmd = type { i32, i8* }

@.str = private unnamed_addr constant [6 x i8] c"basic\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@cmd_table = common dso_local global %struct.procstat_cmd* null, align 8
@PS_CMP_SUBSTR = common dso_local global i32 0, align 4
@PS_CMP_PLURAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.procstat_cmd* (i8*)* @getcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.procstat_cmd* @getcmd(i8* %0) #0 {
  %2 = alloca %struct.procstat_cmd*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.procstat_cmd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.procstat_cmd* null, %struct.procstat_cmd** %2, align 8
  br label %130

12:                                               ; preds = %1
  store %struct.procstat_cmd* null, %struct.procstat_cmd** %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %6, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call %struct.procstat_cmd* @getcmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.procstat_cmd* %18, %struct.procstat_cmd** %2, align 8
  br label %130

19:                                               ; preds = %12
  %20 = load i64, i64* %6, align 8
  %21 = icmp ugt i64 %20, 1
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i8*, i8** %3, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = getelementptr inbounds i8, i8* %25, i64 -1
  %27 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp eq i32 %27, 0
  br label %29

29:                                               ; preds = %22, %19
  %30 = phi i1 [ false, %19 ], [ %28, %22 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %8, align 4
  store i64 0, i64* %5, align 8
  br label %32

32:                                               ; preds = %125, %29
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.procstat_cmd*, %struct.procstat_cmd** @cmd_table, align 8
  %35 = call i64 @nitems(%struct.procstat_cmd* %34)
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %37, label %128

37:                                               ; preds = %32
  %38 = load %struct.procstat_cmd*, %struct.procstat_cmd** %4, align 8
  %39 = icmp eq %struct.procstat_cmd* %38, null
  br i1 %39, label %40, label %75

40:                                               ; preds = %37
  %41 = load %struct.procstat_cmd*, %struct.procstat_cmd** @cmd_table, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds %struct.procstat_cmd, %struct.procstat_cmd* %41, i64 %42
  %44 = getelementptr inbounds %struct.procstat_cmd, %struct.procstat_cmd* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @PS_CMP_SUBSTR, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %75

49:                                               ; preds = %40
  %50 = load i8*, i8** %3, align 8
  %51 = load %struct.procstat_cmd*, %struct.procstat_cmd** @cmd_table, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds %struct.procstat_cmd, %struct.procstat_cmd* %51, i64 %52
  %54 = getelementptr inbounds %struct.procstat_cmd, %struct.procstat_cmd* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.procstat_cmd*, %struct.procstat_cmd** @cmd_table, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds %struct.procstat_cmd, %struct.procstat_cmd* %57, i64 %58
  %60 = getelementptr inbounds %struct.procstat_cmd, %struct.procstat_cmd* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @PS_CMP_PLURAL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %49
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br label %68

68:                                               ; preds = %65, %49
  %69 = phi i1 [ false, %49 ], [ %67, %65 ]
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 1, i32 0
  %72 = sext i32 %71 to i64
  %73 = sub i64 %56, %72
  %74 = call i32 @strncasecmp(i8* %50, i8* %55, i64 %73)
  store i32 %74, i32* %7, align 4
  br label %117

75:                                               ; preds = %40, %37
  %76 = load %struct.procstat_cmd*, %struct.procstat_cmd** @cmd_table, align 8
  %77 = load i64, i64* %5, align 8
  %78 = getelementptr inbounds %struct.procstat_cmd, %struct.procstat_cmd* %76, i64 %77
  %79 = getelementptr inbounds %struct.procstat_cmd, %struct.procstat_cmd* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @PS_CMP_PLURAL, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %108

84:                                               ; preds = %75
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %108

87:                                               ; preds = %84
  %88 = load i64, i64* %6, align 8
  %89 = load %struct.procstat_cmd*, %struct.procstat_cmd** @cmd_table, align 8
  %90 = load i64, i64* %5, align 8
  %91 = getelementptr inbounds %struct.procstat_cmd, %struct.procstat_cmd* %89, i64 %90
  %92 = getelementptr inbounds %struct.procstat_cmd, %struct.procstat_cmd* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @strlen(i8* %93)
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = icmp eq i64 %88, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %87
  %99 = load i8*, i8** %3, align 8
  %100 = load %struct.procstat_cmd*, %struct.procstat_cmd** @cmd_table, align 8
  %101 = load i64, i64* %5, align 8
  %102 = getelementptr inbounds %struct.procstat_cmd, %struct.procstat_cmd* %100, i64 %101
  %103 = getelementptr inbounds %struct.procstat_cmd, %struct.procstat_cmd* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = load i64, i64* %6, align 8
  %106 = sub i64 %105, 1
  %107 = call i32 @strncasecmp(i8* %99, i8* %104, i64 %106)
  store i32 %107, i32* %7, align 4
  br label %116

108:                                              ; preds = %87, %84, %75
  %109 = load i8*, i8** %3, align 8
  %110 = load %struct.procstat_cmd*, %struct.procstat_cmd** @cmd_table, align 8
  %111 = load i64, i64* %5, align 8
  %112 = getelementptr inbounds %struct.procstat_cmd, %struct.procstat_cmd* %110, i64 %111
  %113 = getelementptr inbounds %struct.procstat_cmd, %struct.procstat_cmd* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @strcasecmp(i8* %109, i8* %114)
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %108, %98
  br label %117

117:                                              ; preds = %116, %68
  %118 = load i32, i32* %7, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load %struct.procstat_cmd*, %struct.procstat_cmd** @cmd_table, align 8
  %122 = load i64, i64* %5, align 8
  %123 = getelementptr inbounds %struct.procstat_cmd, %struct.procstat_cmd* %121, i64 %122
  store %struct.procstat_cmd* %123, %struct.procstat_cmd** %4, align 8
  br label %124

124:                                              ; preds = %120, %117
  br label %125

125:                                              ; preds = %124
  %126 = load i64, i64* %5, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %5, align 8
  br label %32

128:                                              ; preds = %32
  %129 = load %struct.procstat_cmd*, %struct.procstat_cmd** %4, align 8
  store %struct.procstat_cmd* %129, %struct.procstat_cmd** %2, align 8
  br label %130

130:                                              ; preds = %128, %17, %11
  %131 = load %struct.procstat_cmd*, %struct.procstat_cmd** %2, align 8
  ret %struct.procstat_cmd* %131
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @nitems(%struct.procstat_cmd*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
