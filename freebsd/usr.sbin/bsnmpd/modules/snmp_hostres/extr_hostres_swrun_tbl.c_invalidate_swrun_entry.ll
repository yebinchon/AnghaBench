; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_swrun_tbl.c_invalidate_swrun_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_swrun_tbl.c_invalidate_swrun_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swrun_entry = type { i64, i8* }
%struct.kinfo_proc = type { i32 }
%struct.kld_file_stat = type { i32, i32, i32, i32 }

@NO_PID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"atempt to unload KLD %d\00", align 1
@SWOSIndex = common dso_local global i64 0, align 8
@SNMP_ERR_NOT_WRITEABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"missing item with kid=%d\00", align 1
@SRS_INVALID = common dso_local global i64 0, align 8
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"kldunload for %d/%s failed: %m\00", align 1
@errno = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@SNMP_ERR_RES_UNAVAIL = common dso_local global i32 0, align 4
@hr_kd = common dso_local global i32* null, align 8
@KERN_PROC_PID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"missing item with PID=%d\00", align 1
@SIGKILL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"kill (%d, SIGKILL) failed: %m\00", align 1
@ESRCH = common dso_local global i64 0, align 8
@SNMP_ERR_GENERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swrun_entry*, i32)* @invalidate_swrun_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @invalidate_swrun_entry(%struct.swrun_entry* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.swrun_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kinfo_proc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kld_file_stat, align 4
  store %struct.swrun_entry* %0, %struct.swrun_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.swrun_entry*, %struct.swrun_entry** %4, align 8
  %10 = icmp ne %struct.swrun_entry* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.swrun_entry*, %struct.swrun_entry** %4, align 8
  %14 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NO_PID, align 8
  %17 = add nsw i64 %16, 1
  %18 = icmp sge i64 %15, %17
  br i1 %18, label %19, label %89

19:                                               ; preds = %2
  %20 = load %struct.swrun_entry*, %struct.swrun_entry** %4, align 8
  %21 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NO_PID, align 8
  %24 = sub nsw i64 %22, %23
  %25 = sub nsw i64 %24, 1
  %26 = call i32 @HRDBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load %struct.swrun_entry*, %struct.swrun_entry** %4, align 8
  %28 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SWOSIndex, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %19
  %33 = load i32, i32* @SNMP_ERR_NOT_WRITEABLE, align 4
  store i32 %33, i32* %3, align 4
  br label %158

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %8, i32 0, i32 0
  store i32 16, i32* %35, align 4
  %36 = load %struct.swrun_entry*, %struct.swrun_entry** %4, align 8
  %37 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NO_PID, align 8
  %40 = sub nsw i64 %38, %39
  %41 = sub nsw i64 %40, 1
  %42 = call i32 @kldstat(i64 %41, %struct.kld_file_stat* %8)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %57

44:                                               ; preds = %34
  %45 = load %struct.swrun_entry*, %struct.swrun_entry** %4, align 8
  %46 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @NO_PID, align 8
  %49 = sub nsw i64 %47, %48
  %50 = sub nsw i64 %49, 1
  %51 = call i32 @HRDBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  %52 = load i64, i64* @SRS_INVALID, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = load %struct.swrun_entry*, %struct.swrun_entry** %4, align 8
  %55 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %56, i32* %3, align 4
  br label %158

57:                                               ; preds = %34
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %8, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @SNMP_ERR_NOT_WRITEABLE, align 4
  store i32 %65, i32* %3, align 4
  br label %158

66:                                               ; preds = %60
  %67 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %67, i32* %3, align 4
  br label %158

68:                                               ; preds = %57
  %69 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %8, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @kldunload(i32 %70)
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %88

73:                                               ; preds = %68
  %74 = load i32, i32* @LOG_ERR, align 4
  %75 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %8, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %8, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i32, i8*, i64, ...) @syslog(i32 %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %77, i32 %79)
  %81 = load i64, i64* @errno, align 8
  %82 = load i64, i64* @EBUSY, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %73
  %85 = load i32, i32* @SNMP_ERR_NOT_WRITEABLE, align 4
  store i32 %85, i32* %3, align 4
  br label %158

86:                                               ; preds = %73
  %87 = load i32, i32* @SNMP_ERR_RES_UNAVAIL, align 4
  store i32 %87, i32* %3, align 4
  br label %158

88:                                               ; preds = %68
  br label %156

89:                                               ; preds = %2
  %90 = load i32*, i32** @hr_kd, align 8
  %91 = icmp ne i32* %90, null
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load i32*, i32** @hr_kd, align 8
  %95 = load i32, i32* @KERN_PROC_PID, align 4
  %96 = load %struct.swrun_entry*, %struct.swrun_entry** %4, align 8
  %97 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %98, 1
  %100 = call %struct.kinfo_proc* @kvm_getprocs(i32* %94, i32 %95, i64 %99, i32* %7)
  store %struct.kinfo_proc* %100, %struct.kinfo_proc** %6, align 8
  %101 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %102 = icmp eq %struct.kinfo_proc* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %89
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 1
  br i1 %105, label %106, label %117

106:                                              ; preds = %103, %89
  %107 = load %struct.swrun_entry*, %struct.swrun_entry** %4, align 8
  %108 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %109, 1
  %111 = call i32 @HRDBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %110)
  %112 = load i64, i64* @SRS_INVALID, align 8
  %113 = inttoptr i64 %112 to i8*
  %114 = load %struct.swrun_entry*, %struct.swrun_entry** %4, align 8
  %115 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  %116 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %116, i32* %3, align 4
  br label %158

117:                                              ; preds = %103
  %118 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %119 = call i64 @IS_KERNPROC(%struct.kinfo_proc* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i32, i32* @SNMP_ERR_NOT_WRITEABLE, align 4
  store i32 %122, i32* %3, align 4
  br label %158

123:                                              ; preds = %117
  %124 = load %struct.swrun_entry*, %struct.swrun_entry** %4, align 8
  %125 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = sub nsw i64 %126, 1
  %128 = load i32, i32* %5, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = load i32, i32* @SIGKILL, align 4
  br label %133

132:                                              ; preds = %123
  br label %133

133:                                              ; preds = %132, %130
  %134 = phi i32 [ %131, %130 ], [ 0, %132 ]
  %135 = call i64 @kill(i64 %127, i32 %134)
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %155

137:                                              ; preds = %133
  %138 = load i32, i32* @LOG_ERR, align 4
  %139 = load %struct.swrun_entry*, %struct.swrun_entry** %4, align 8
  %140 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = sub nsw i64 %141, 1
  %143 = call i32 (i32, i8*, i64, ...) @syslog(i32 %138, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %142)
  %144 = load i64, i64* @errno, align 8
  %145 = load i64, i64* @ESRCH, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %137
  %148 = load i64, i64* @SRS_INVALID, align 8
  %149 = inttoptr i64 %148 to i8*
  %150 = load %struct.swrun_entry*, %struct.swrun_entry** %4, align 8
  %151 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %150, i32 0, i32 1
  store i8* %149, i8** %151, align 8
  %152 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %152, i32* %3, align 4
  br label %158

153:                                              ; preds = %137
  %154 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %154, i32* %3, align 4
  br label %158

155:                                              ; preds = %133
  br label %156

156:                                              ; preds = %155, %88
  %157 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %156, %153, %147, %121, %106, %86, %84, %66, %64, %44, %32
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @HRDBG(i8*, i64) #1

declare dso_local i32 @kldstat(i64, %struct.kld_file_stat*) #1

declare dso_local i32 @kldunload(i32) #1

declare dso_local i32 @syslog(i32, i8*, i64, ...) #1

declare dso_local %struct.kinfo_proc* @kvm_getprocs(i32*, i32, i64, i32*) #1

declare dso_local i64 @IS_KERNPROC(%struct.kinfo_proc*) #1

declare dso_local i64 @kill(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
