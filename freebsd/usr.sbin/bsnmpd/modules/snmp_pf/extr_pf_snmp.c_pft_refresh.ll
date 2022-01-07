; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_pf/extr_pf_snmp.c_pft_refresh.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_pf/extr_pf_snmp.c_pft_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfioc_table = type { i32, i32, %struct.pft_entry* }
%struct.pft_entry = type { i32, i32 }
%struct.pfr_tstats = type { i32, i32 }

@started = common dso_local global i64 0, align 8
@this_tick = common dso_local global i64 0, align 8
@pf_tick = common dso_local global i64 0, align 8
@pft_table = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"pft_refresh(): reallocf() numtbls=%d: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@dev = common dso_local global i32 0, align 4
@DIOCRGETTSTATS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"pft_refresh(): ioctl(): %s\00", align 1
@pft_table_age = common dso_local global i32 0, align 4
@pft_table_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pft_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pft_refresh() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pfioc_table, align 8
  %3 = alloca %struct.pfr_tstats*, align 8
  %4 = alloca %struct.pft_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pfr_tstats* null, %struct.pfr_tstats** %3, align 8
  store i32 1, i32* %6, align 4
  %7 = load i64, i64* @started, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %0
  %10 = load i64, i64* @this_tick, align 8
  %11 = load i64, i64* @pf_tick, align 8
  %12 = icmp sle i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %123

14:                                               ; preds = %9, %0
  br label %15

15:                                               ; preds = %19, %14
  %16 = call i32 @TAILQ_EMPTY(i32* @pft_table)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = call %struct.pft_entry* @TAILQ_FIRST(i32* @pft_table)
  store %struct.pft_entry* %20, %struct.pft_entry** %4, align 8
  %21 = load %struct.pft_entry*, %struct.pft_entry** %4, align 8
  %22 = load i32, i32* @link, align 4
  %23 = call i32 @TAILQ_REMOVE(i32* @pft_table, %struct.pft_entry* %21, i32 %22)
  %24 = load %struct.pft_entry*, %struct.pft_entry** %4, align 8
  %25 = call i32 @free(%struct.pft_entry* %24)
  br label %15

26:                                               ; preds = %15
  %27 = call i32 @bzero(%struct.pfioc_table* %2, i32 16)
  %28 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %2, i32 0, i32 0
  store i32 8, i32* %28, align 8
  br label %29

29:                                               ; preds = %67, %26
  %30 = load %struct.pfr_tstats*, %struct.pfr_tstats** %3, align 8
  %31 = bitcast %struct.pfr_tstats* %30 to %struct.pft_entry*
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 8
  %35 = trunc i64 %34 to i32
  %36 = call %struct.pft_entry* @reallocf(%struct.pft_entry* %31, i32 %35)
  %37 = bitcast %struct.pft_entry* %36 to %struct.pfr_tstats*
  store %struct.pfr_tstats* %37, %struct.pfr_tstats** %3, align 8
  %38 = load %struct.pfr_tstats*, %struct.pfr_tstats** %3, align 8
  %39 = icmp eq %struct.pfr_tstats* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %29
  %41 = load i32, i32* @LOG_ERR, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @errno, align 4
  %44 = call i32 @strerror(i32 %43)
  %45 = call i32 (i32, i8*, i32, ...) @syslog(i32 %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %44)
  br label %119

46:                                               ; preds = %29
  %47 = load i32, i32* %6, align 4
  %48 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %2, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load %struct.pfr_tstats*, %struct.pfr_tstats** %3, align 8
  %50 = bitcast %struct.pfr_tstats* %49 to %struct.pft_entry*
  %51 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %2, i32 0, i32 2
  store %struct.pft_entry* %50, %struct.pft_entry** %51, align 8
  %52 = load i32, i32* @dev, align 4
  %53 = load i32, i32* @DIOCRGETTSTATS, align 4
  %54 = call i64 @ioctl(i32 %52, i32 %53, %struct.pfioc_table* %2)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  %57 = load i32, i32* @LOG_ERR, align 4
  %58 = load i32, i32* @errno, align 4
  %59 = call i32 @strerror(i32 %58)
  %60 = call i32 (i32, i8*, i32, ...) @syslog(i32 %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %119

61:                                               ; preds = %46
  %62 = load i32, i32* %6, align 4
  %63 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %2, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp sge i32 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %70

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %2, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %6, align 4
  br label %29

70:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %96, %70
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %99

75:                                               ; preds = %71
  %76 = call %struct.pft_entry* @malloc(i32 8)
  store %struct.pft_entry* %76, %struct.pft_entry** %4, align 8
  %77 = load %struct.pft_entry*, %struct.pft_entry** %4, align 8
  %78 = icmp eq %struct.pft_entry* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %106

80:                                               ; preds = %75
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  %83 = load %struct.pft_entry*, %struct.pft_entry** %4, align 8
  %84 = getelementptr inbounds %struct.pft_entry, %struct.pft_entry* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.pft_entry*, %struct.pft_entry** %4, align 8
  %86 = getelementptr inbounds %struct.pft_entry, %struct.pft_entry* %85, i32 0, i32 1
  %87 = load %struct.pfr_tstats*, %struct.pfr_tstats** %3, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.pfr_tstats, %struct.pfr_tstats* %87, i64 %89
  %91 = bitcast %struct.pfr_tstats* %90 to %struct.pft_entry*
  %92 = call i32 @memcpy(i32* %86, %struct.pft_entry* %91, i32 8)
  %93 = load %struct.pft_entry*, %struct.pft_entry** %4, align 8
  %94 = load i32, i32* @link, align 4
  %95 = call i32 @TAILQ_INSERT_TAIL(i32* @pft_table, %struct.pft_entry* %93, i32 %94)
  br label %96

96:                                               ; preds = %80
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %71

99:                                               ; preds = %71
  %100 = call i32 @time(i32* null)
  store i32 %100, i32* @pft_table_age, align 4
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* @pft_table_count, align 4
  %102 = load i64, i64* @this_tick, align 8
  store i64 %102, i64* @pf_tick, align 8
  %103 = load %struct.pfr_tstats*, %struct.pfr_tstats** %3, align 8
  %104 = bitcast %struct.pfr_tstats* %103 to %struct.pft_entry*
  %105 = call i32 @free(%struct.pft_entry* %104)
  store i32 0, i32* %1, align 4
  br label %123

106:                                              ; preds = %79
  br label %107

107:                                              ; preds = %111, %106
  %108 = call i32 @TAILQ_EMPTY(i32* @pft_table)
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  br i1 %110, label %111, label %118

111:                                              ; preds = %107
  %112 = call %struct.pft_entry* @TAILQ_FIRST(i32* @pft_table)
  store %struct.pft_entry* %112, %struct.pft_entry** %4, align 8
  %113 = load %struct.pft_entry*, %struct.pft_entry** %4, align 8
  %114 = load i32, i32* @link, align 4
  %115 = call i32 @TAILQ_REMOVE(i32* @pft_table, %struct.pft_entry* %113, i32 %114)
  %116 = load %struct.pft_entry*, %struct.pft_entry** %4, align 8
  %117 = call i32 @free(%struct.pft_entry* %116)
  br label %107

118:                                              ; preds = %107
  br label %119

119:                                              ; preds = %118, %56, %40
  %120 = load %struct.pfr_tstats*, %struct.pfr_tstats** %3, align 8
  %121 = bitcast %struct.pfr_tstats* %120 to %struct.pft_entry*
  %122 = call i32 @free(%struct.pft_entry* %121)
  store i32 -1, i32* %1, align 4
  br label %123

123:                                              ; preds = %119, %99, %13
  %124 = load i32, i32* %1, align 4
  ret i32 %124
}

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.pft_entry* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pft_entry*, i32) #1

declare dso_local i32 @free(%struct.pft_entry*) #1

declare dso_local i32 @bzero(%struct.pfioc_table*, i32) #1

declare dso_local %struct.pft_entry* @reallocf(%struct.pft_entry*, i32) #1

declare dso_local i32 @syslog(i32, i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.pfioc_table*) #1

declare dso_local %struct.pft_entry* @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.pft_entry*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.pft_entry*, i32) #1

declare dso_local i32 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
