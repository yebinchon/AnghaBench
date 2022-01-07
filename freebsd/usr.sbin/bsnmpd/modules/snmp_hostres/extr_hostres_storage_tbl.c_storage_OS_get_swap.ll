; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_storage_tbl.c_storage_OS_get_swap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_storage_tbl.c_storage_OS_get_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.storage_entry = type { i64, i32, i32, i32, i32*, i32 }

@SE_DESC_MLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"vm.nswapdev\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"hrStorageTable: sysctlbyname(\22vm.nswapdev\22) failed. %m\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"vm.nswapdev is %d\00", align 1
@swap_devs_len = common dso_local global i32 0, align 4
@swap_devs = common dso_local global %struct.TYPE_5__* null, align 8
@hr_kd = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"hrStorageTable: kvm_getswapinfo failed. %m\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Swap:%s%s\00", align 1
@_PATH_DEV = common dso_local global i8* null, align 8
@HR_STORAGE_FOUND = common dso_local global i32 0, align 4
@OIDX_hrStorageVirtualMemory_c = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @storage_OS_get_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @storage_OS_get_swap() #0 {
  %1 = alloca %struct.storage_entry*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @SE_DESC_MLEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %2, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %3, align 8
  store i64 4, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %11 = call i64 @sysctlbyname(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %5, i64* %4, i32* null, i32 0)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %0
  %14 = load i32, i32* @LOG_ERR, align 4
  %15 = call i32 @syslog(i32 %14, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @assert(i32 0)
  store i32 1, i32* %6, align 4
  br label %122

17:                                               ; preds = %0
  %18 = load i32, i32* %5, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @HRDBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  store i32 1, i32* %6, align 4
  br label %122

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  %26 = load i32, i32* @swap_devs_len, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @swap_devs, align 8
  %30 = icmp eq %struct.TYPE_5__* %29, null
  br i1 %30, label %31, label %48

31:                                               ; preds = %28, %23
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @swap_devs_len, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @swap_devs, align 8
  %35 = load i32, i32* @swap_devs_len, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call %struct.TYPE_5__* @reallocf(%struct.TYPE_5__* %34, i32 %38)
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** @swap_devs, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @swap_devs, align 8
  %41 = icmp ne %struct.TYPE_5__* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @swap_devs, align 8
  %45 = icmp eq %struct.TYPE_5__* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %31
  store i32 0, i32* @swap_devs_len, align 4
  store i32 1, i32* %6, align 4
  br label %122

47:                                               ; preds = %31
  br label %48

48:                                               ; preds = %47, %28
  %49 = load i32, i32* @hr_kd, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @swap_devs, align 8
  %51 = load i32, i32* @swap_devs_len, align 4
  %52 = call i32 @kvm_getswapinfo(i32 %49, %struct.TYPE_5__* %50, i32 %51, i32 0)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load i32, i32* @LOG_ERR, align 4
  %57 = call i32 @syslog(i32 %56, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %58 = call i32 @assert(i32 0)
  store i32 1, i32* %6, align 4
  br label %122

59:                                               ; preds = %48
  store i64 0, i64* %4, align 8
  br label %60

60:                                               ; preds = %118, %59
  %61 = load i64, i64* %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp ult i64 %61, %63
  br i1 %64, label %65, label %121

65:                                               ; preds = %60
  %66 = getelementptr inbounds i8, i8* %10, i64 0
  %67 = trunc i64 %8 to i32
  %68 = call i32 @memset(i8* %66, i8 signext 0, i32 %67)
  %69 = sub i64 %8, 1
  %70 = trunc i64 %69 to i32
  %71 = load i8*, i8** @_PATH_DEV, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** @swap_devs, align 8
  %73 = load i64, i64* %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @snprintf(i8* %10, i32 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %71, i32 %76)
  %78 = call %struct.storage_entry* @storage_find_by_name(i8* %10)
  store %struct.storage_entry* %78, %struct.storage_entry** %1, align 8
  %79 = load %struct.storage_entry*, %struct.storage_entry** %1, align 8
  %80 = icmp eq %struct.storage_entry* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %65
  %82 = call %struct.storage_entry* @storage_entry_create(i8* %10)
  store %struct.storage_entry* %82, %struct.storage_entry** %1, align 8
  br label %83

83:                                               ; preds = %81, %65
  %84 = load %struct.storage_entry*, %struct.storage_entry** %1, align 8
  %85 = icmp ne %struct.storage_entry* %84, null
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load %struct.storage_entry*, %struct.storage_entry** %1, align 8
  %89 = icmp eq %struct.storage_entry* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  store i32 1, i32* %6, align 4
  br label %122

91:                                               ; preds = %83
  %92 = load i32, i32* @HR_STORAGE_FOUND, align 4
  %93 = load %struct.storage_entry*, %struct.storage_entry** %1, align 8
  %94 = getelementptr inbounds %struct.storage_entry, %struct.storage_entry* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load %struct.storage_entry*, %struct.storage_entry** %1, align 8
  %98 = getelementptr inbounds %struct.storage_entry, %struct.storage_entry* %97, i32 0, i32 4
  store i32* @OIDX_hrStorageVirtualMemory_c, i32** %98, align 8
  %99 = call i32 (...) @getpagesize()
  %100 = load %struct.storage_entry*, %struct.storage_entry** %1, align 8
  %101 = getelementptr inbounds %struct.storage_entry, %struct.storage_entry* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** @swap_devs, align 8
  %103 = load i64, i64* %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.storage_entry*, %struct.storage_entry** %1, align 8
  %108 = getelementptr inbounds %struct.storage_entry, %struct.storage_entry* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** @swap_devs, align 8
  %110 = load i64, i64* %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.storage_entry*, %struct.storage_entry** %1, align 8
  %115 = getelementptr inbounds %struct.storage_entry, %struct.storage_entry* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  %116 = load %struct.storage_entry*, %struct.storage_entry** %1, align 8
  %117 = getelementptr inbounds %struct.storage_entry, %struct.storage_entry* %116, i32 0, i32 0
  store i64 0, i64* %117, align 8
  br label %118

118:                                              ; preds = %91
  %119 = load i64, i64* %4, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %4, align 8
  br label %60

121:                                              ; preds = %60
  store i32 0, i32* %6, align 4
  br label %122

122:                                              ; preds = %121, %90, %55, %46, %20, %13
  %123 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %123)
  %124 = load i32, i32* %6, align 4
  switch i32 %124, label %126 [
    i32 0, label %125
    i32 1, label %125
  ]

125:                                              ; preds = %122, %122
  ret void

126:                                              ; preds = %122
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @sysctlbyname(i8*, i32*, i64*, i32*, i32) #2

declare dso_local i32 @syslog(i32, i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @HRDBG(i8*, i32) #2

declare dso_local %struct.TYPE_5__* @reallocf(%struct.TYPE_5__*, i32) #2

declare dso_local i32 @kvm_getswapinfo(i32, %struct.TYPE_5__*, i32, i32) #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local %struct.storage_entry* @storage_find_by_name(i8*) #2

declare dso_local %struct.storage_entry* @storage_entry_create(i8*) #2

declare dso_local i32 @getpagesize(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
