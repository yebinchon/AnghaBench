; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_pf/extr_pf_snmp.c_pfa_refresh.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_pf/extr_pf_snmp.c_pfa_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfioc_table = type { i32, i32, i32, %struct.pfioc_table* }
%struct.pfr_table = type { i32, i32, i32, %struct.pfr_table* }
%struct.pfa_entry = type { i32, i32, i32, %struct.pfa_entry* }

@started = common dso_local global i64 0, align 8
@this_tick = common dso_local global i64 0, align 8
@pf_tick = common dso_local global i64 0, align 8
@pfa_table = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"pfa_refresh(): reallocf() %s\00", align 1
@errno = common dso_local global i32 0, align 4
@dev = common dso_local global i32 0, align 4
@DIOCRGETTABLES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"pfa_refresh(): ioctl(): %s\00", align 1
@PFR_TFLAG_ACTIVE = common dso_local global i32 0, align 4
@pfa_table_age = common dso_local global i32 0, align 4
@pfa_table_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pfa_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfa_refresh() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pfioc_table, align 8
  %3 = alloca %struct.pfr_table*, align 8
  %4 = alloca %struct.pfr_table*, align 8
  %5 = alloca %struct.pfa_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pfr_table* null, %struct.pfr_table** %3, align 8
  store %struct.pfr_table* null, %struct.pfr_table** %4, align 8
  store i32 1, i32* %7, align 4
  %10 = load i64, i64* @started, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %0
  %13 = load i64, i64* @this_tick, align 8
  %14 = load i64, i64* @pf_tick, align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 0, i32* %1, align 4
  br label %131

17:                                               ; preds = %12, %0
  br label %18

18:                                               ; preds = %22, %17
  %19 = call i32 @TAILQ_EMPTY(i32* @pfa_table)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = call %struct.pfr_table* @TAILQ_FIRST(i32* @pfa_table)
  %24 = bitcast %struct.pfr_table* %23 to %struct.pfa_entry*
  store %struct.pfa_entry* %24, %struct.pfa_entry** %5, align 8
  %25 = load %struct.pfa_entry*, %struct.pfa_entry** %5, align 8
  %26 = bitcast %struct.pfa_entry* %25 to %struct.pfr_table*
  %27 = load i32, i32* @link, align 4
  %28 = call i32 @TAILQ_REMOVE(i32* @pfa_table, %struct.pfr_table* %26, i32 %27)
  %29 = load %struct.pfa_entry*, %struct.pfa_entry** %5, align 8
  %30 = bitcast %struct.pfa_entry* %29 to %struct.pfr_table*
  %31 = call i32 @free(%struct.pfr_table* %30)
  br label %18

32:                                               ; preds = %18
  %33 = bitcast %struct.pfioc_table* %2 to %struct.pfr_table*
  %34 = call i32 @memset(%struct.pfr_table* %33, i32 0, i32 24)
  %35 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %2, i32 0, i32 0
  store i32 24, i32* %35, align 8
  br label %36

36:                                               ; preds = %74, %32
  %37 = load %struct.pfr_table*, %struct.pfr_table** %3, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 24
  %41 = trunc i64 %40 to i32
  %42 = call %struct.pfr_table* @reallocf(%struct.pfr_table* %37, i32 %41)
  store %struct.pfr_table* %42, %struct.pfr_table** %3, align 8
  %43 = load %struct.pfr_table*, %struct.pfr_table** %3, align 8
  %44 = icmp eq %struct.pfr_table* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load i32, i32* @LOG_ERR, align 4
  %47 = load i32, i32* @errno, align 4
  %48 = call i32 @strerror(i32 %47)
  %49 = call i32 @syslog(i32 %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %48)
  store i32 -1, i32* %1, align 4
  br label %131

50:                                               ; preds = %36
  %51 = load %struct.pfr_table*, %struct.pfr_table** %3, align 8
  %52 = call i32 @memset(%struct.pfr_table* %51, i32 0, i32 24)
  %53 = load i32, i32* %7, align 4
  %54 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %2, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load %struct.pfr_table*, %struct.pfr_table** %3, align 8
  %56 = bitcast %struct.pfr_table* %55 to %struct.pfioc_table*
  %57 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %2, i32 0, i32 3
  store %struct.pfioc_table* %56, %struct.pfioc_table** %57, align 8
  %58 = load i32, i32* @dev, align 4
  %59 = load i32, i32* @DIOCRGETTABLES, align 4
  %60 = bitcast %struct.pfioc_table* %2 to %struct.pfr_table*
  %61 = call i64 @ioctl(i32 %58, i32 %59, %struct.pfr_table* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %50
  %64 = load i32, i32* @LOG_ERR, align 4
  %65 = load i32, i32* @errno, align 4
  %66 = call i32 @strerror(i32 %65)
  %67 = call i32 @syslog(i32 %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %128

68:                                               ; preds = %50
  %69 = load i32, i32* %7, align 4
  %70 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %2, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp sge i32 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %77

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %2, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %7, align 4
  br label %36

77:                                               ; preds = %73
  store i32 1, i32* %8, align 4
  %78 = load %struct.pfr_table*, %struct.pfr_table** %3, align 8
  store %struct.pfr_table* %78, %struct.pfr_table** %4, align 8
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %101, %77
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %106

83:                                               ; preds = %79
  %84 = load %struct.pfr_table*, %struct.pfr_table** %4, align 8
  %85 = getelementptr inbounds %struct.pfr_table, %struct.pfr_table* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %83
  br label %101

91:                                               ; preds = %83
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.pfr_table*, %struct.pfr_table** %4, align 8
  %94 = call i32 @pfa_table_addrs(i32 %92, %struct.pfr_table* %93)
  store i32 %94, i32* %9, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %112

97:                                               ; preds = %91
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %97, %90
  %102 = load %struct.pfr_table*, %struct.pfr_table** %4, align 8
  %103 = getelementptr inbounds %struct.pfr_table, %struct.pfr_table* %102, i32 1
  store %struct.pfr_table* %103, %struct.pfr_table** %4, align 8
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %79

106:                                              ; preds = %79
  %107 = call i32 @time(i32* null)
  store i32 %107, i32* @pfa_table_age, align 4
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* @pfa_table_count, align 4
  %109 = load i64, i64* @this_tick, align 8
  store i64 %109, i64* @pf_tick, align 8
  %110 = load %struct.pfr_table*, %struct.pfr_table** %3, align 8
  %111 = call i32 @free(%struct.pfr_table* %110)
  store i32 0, i32* %1, align 4
  br label %131

112:                                              ; preds = %96
  br label %113

113:                                              ; preds = %117, %112
  %114 = call i32 @TAILQ_EMPTY(i32* @pfa_table)
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  br i1 %116, label %117, label %127

117:                                              ; preds = %113
  %118 = call %struct.pfr_table* @TAILQ_FIRST(i32* @pfa_table)
  %119 = bitcast %struct.pfr_table* %118 to %struct.pfa_entry*
  store %struct.pfa_entry* %119, %struct.pfa_entry** %5, align 8
  %120 = load %struct.pfa_entry*, %struct.pfa_entry** %5, align 8
  %121 = bitcast %struct.pfa_entry* %120 to %struct.pfr_table*
  %122 = load i32, i32* @link, align 4
  %123 = call i32 @TAILQ_REMOVE(i32* @pfa_table, %struct.pfr_table* %121, i32 %122)
  %124 = load %struct.pfa_entry*, %struct.pfa_entry** %5, align 8
  %125 = bitcast %struct.pfa_entry* %124 to %struct.pfr_table*
  %126 = call i32 @free(%struct.pfr_table* %125)
  br label %113

127:                                              ; preds = %113
  br label %128

128:                                              ; preds = %127, %63
  %129 = load %struct.pfr_table*, %struct.pfr_table** %3, align 8
  %130 = call i32 @free(%struct.pfr_table* %129)
  store i32 -1, i32* %1, align 4
  br label %131

131:                                              ; preds = %128, %106, %45, %16
  %132 = load i32, i32* %1, align 4
  ret i32 %132
}

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.pfr_table* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pfr_table*, i32) #1

declare dso_local i32 @free(%struct.pfr_table*) #1

declare dso_local i32 @memset(%struct.pfr_table*, i32, i32) #1

declare dso_local %struct.pfr_table* @reallocf(%struct.pfr_table*, i32) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.pfr_table*) #1

declare dso_local i32 @pfa_table_addrs(i32, %struct.pfr_table*) #1

declare dso_local i32 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
