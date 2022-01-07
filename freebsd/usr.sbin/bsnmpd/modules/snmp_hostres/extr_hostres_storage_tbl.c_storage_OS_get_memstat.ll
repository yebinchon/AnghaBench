; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_storage_tbl.c_storage_OS_get_memstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_storage_tbl.c_storage_OS_get_memstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_type = type { i32 }
%struct.storage_entry = type { i64, i64, i64, i64, i32*, i32 }

@mt_list = common dso_local global i32* null, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"memstat_sysctl_all failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"memstat_mtl_first failed\00", align 1
@SE_DESC_MLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"MALLOC: %s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"UMA: %s\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"UNKNOWN%d: %s\00", align 1
@HR_STORAGE_FOUND = common dso_local global i32 0, align 4
@OIDX_hrStorageRam_c = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @storage_OS_get_memstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @storage_OS_get_memstat() #0 {
  %1 = alloca %struct.memory_type*, align 8
  %2 = alloca %struct.storage_entry*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = load i32*, i32** @mt_list, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %0
  %12 = call i32* (...) @memstat_mtl_alloc()
  store i32* %12, i32** @mt_list, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %143

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %15, %0
  %17 = load i32*, i32** @mt_list, align 8
  %18 = call i64 @memstat_sysctl_all(i32* %17, i32 0)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i32, i32* @LOG_ERR, align 4
  %22 = load i32*, i32** @mt_list, align 8
  %23 = call i32 @memstat_mtl_geterror(i32* %22)
  %24 = call i32 @memstat_strerror(i32 %23)
  %25 = call i32 @syslog(i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %143

26:                                               ; preds = %16
  %27 = load i32*, i32** @mt_list, align 8
  %28 = call %struct.memory_type* @memstat_mtl_first(i32* %27)
  store %struct.memory_type* %28, %struct.memory_type** %1, align 8
  %29 = icmp eq %struct.memory_type* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 @HRDBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %143

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %139, %32
  %34 = load i32, i32* @SE_DESC_MLEN, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %6, align 8
  %37 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %7, align 8
  %38 = load %struct.memory_type*, %struct.memory_type** %1, align 8
  %39 = call i8* @memstat_get_name(%struct.memory_type* %38)
  store i8* %39, i8** %3, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %33
  %43 = load i8*, i8** %3, align 8
  %44 = call i64 @strlen(i8* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %33
  store i32 3, i32* %8, align 4
  br label %135

47:                                               ; preds = %42
  %48 = load %struct.memory_type*, %struct.memory_type** %1, align 8
  %49 = call i32 @memstat_get_allocator(%struct.memory_type* %48)
  store i32 %49, i32* %5, align 4
  switch i32 %49, label %58 [
    i32 129, label %50
    i32 128, label %54
  ]

50:                                               ; preds = %47
  %51 = trunc i64 %35 to i32
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %37, i32 %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  br label %63

54:                                               ; preds = %47
  %55 = trunc i64 %35 to i32
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %37, i32 %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  br label %63

58:                                               ; preds = %47
  %59 = trunc i64 %35 to i32
  %60 = load i32, i32* %5, align 4
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %37, i32 %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %60, i8* %61)
  br label %63

63:                                               ; preds = %58, %54, %50
  %64 = call %struct.storage_entry* @storage_find_by_name(i8* %37)
  store %struct.storage_entry* %64, %struct.storage_entry** %2, align 8
  %65 = icmp eq %struct.storage_entry* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = call %struct.storage_entry* @storage_entry_create(i8* %37)
  store %struct.storage_entry* %67, %struct.storage_entry** %2, align 8
  %68 = icmp eq %struct.storage_entry* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 1, i32* %8, align 4
  br label %135

70:                                               ; preds = %66, %63
  %71 = load i32, i32* @HR_STORAGE_FOUND, align 4
  %72 = load %struct.storage_entry*, %struct.storage_entry** %2, align 8
  %73 = getelementptr inbounds %struct.storage_entry, %struct.storage_entry* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.storage_entry*, %struct.storage_entry** %2, align 8
  %77 = getelementptr inbounds %struct.storage_entry, %struct.storage_entry* %76, i32 0, i32 4
  store i32* @OIDX_hrStorageRam_c, i32** %77, align 8
  %78 = load %struct.memory_type*, %struct.memory_type** %1, align 8
  %79 = call i64 @memstat_get_size(%struct.memory_type* %78)
  store i64 %79, i64* %4, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %70
  %82 = load %struct.memory_type*, %struct.memory_type** %1, align 8
  %83 = call i64 @memstat_get_sizemask(%struct.memory_type* %82)
  store i64 %83, i64* %4, align 8
  br label %84

84:                                               ; preds = %81, %70
  %85 = load i64, i64* %4, align 8
  %86 = load i64, i64* @INT_MAX, align 8
  %87 = icmp sgt i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i64, i64* @INT_MAX, align 8
  br label %92

90:                                               ; preds = %84
  %91 = load i64, i64* %4, align 8
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i64 [ %89, %88 ], [ %91, %90 ]
  %94 = load %struct.storage_entry*, %struct.storage_entry** %2, align 8
  %95 = getelementptr inbounds %struct.storage_entry, %struct.storage_entry* %94, i32 0, i32 3
  store i64 %93, i64* %95, align 8
  %96 = load %struct.memory_type*, %struct.memory_type** %1, align 8
  %97 = call i64 @memstat_get_countlimit(%struct.memory_type* %96)
  store i64 %97, i64* %4, align 8
  %98 = load i64, i64* %4, align 8
  %99 = load i64, i64* @INT_MAX, align 8
  %100 = icmp sgt i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %92
  %102 = load i64, i64* @INT_MAX, align 8
  br label %105

103:                                              ; preds = %92
  %104 = load i64, i64* %4, align 8
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i64 [ %102, %101 ], [ %104, %103 ]
  %107 = load %struct.storage_entry*, %struct.storage_entry** %2, align 8
  %108 = getelementptr inbounds %struct.storage_entry, %struct.storage_entry* %107, i32 0, i32 2
  store i64 %106, i64* %108, align 8
  %109 = load %struct.memory_type*, %struct.memory_type** %1, align 8
  %110 = call i64 @memstat_get_count(%struct.memory_type* %109)
  store i64 %110, i64* %4, align 8
  %111 = load i64, i64* %4, align 8
  %112 = load i64, i64* @INT_MAX, align 8
  %113 = icmp sgt i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %105
  %115 = load i64, i64* @INT_MAX, align 8
  br label %118

116:                                              ; preds = %105
  %117 = load i64, i64* %4, align 8
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i64 [ %115, %114 ], [ %117, %116 ]
  %120 = load %struct.storage_entry*, %struct.storage_entry** %2, align 8
  %121 = getelementptr inbounds %struct.storage_entry, %struct.storage_entry* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  %122 = load %struct.memory_type*, %struct.memory_type** %1, align 8
  %123 = call i64 @memstat_get_failures(%struct.memory_type* %122)
  store i64 %123, i64* %4, align 8
  %124 = load i64, i64* %4, align 8
  %125 = load i64, i64* @INT_MAX, align 8
  %126 = icmp sgt i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %118
  %128 = load i64, i64* @INT_MAX, align 8
  br label %131

129:                                              ; preds = %118
  %130 = load i64, i64* %4, align 8
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i64 [ %128, %127 ], [ %130, %129 ]
  %133 = load %struct.storage_entry*, %struct.storage_entry** %2, align 8
  %134 = getelementptr inbounds %struct.storage_entry, %struct.storage_entry* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  store i32 0, i32* %8, align 4
  br label %135

135:                                              ; preds = %131, %69, %46
  %136 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %136)
  %137 = load i32, i32* %8, align 4
  switch i32 %137, label %144 [
    i32 0, label %138
    i32 3, label %139
    i32 1, label %143
  ]

138:                                              ; preds = %135
  br label %139

139:                                              ; preds = %138, %135
  %140 = load %struct.memory_type*, %struct.memory_type** %1, align 8
  %141 = call %struct.memory_type* @memstat_mtl_next(%struct.memory_type* %140)
  store %struct.memory_type* %141, %struct.memory_type** %1, align 8
  %142 = icmp ne %struct.memory_type* %141, null
  br i1 %142, label %33, label %143

143:                                              ; preds = %14, %20, %30, %135, %139
  ret void

144:                                              ; preds = %135
  unreachable
}

declare dso_local i32* @memstat_mtl_alloc(...) #1

declare dso_local i64 @memstat_sysctl_all(i32*, i32) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @memstat_strerror(i32) #1

declare dso_local i32 @memstat_mtl_geterror(i32*) #1

declare dso_local %struct.memory_type* @memstat_mtl_first(i32*) #1

declare dso_local i32 @HRDBG(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @memstat_get_name(%struct.memory_type*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memstat_get_allocator(%struct.memory_type*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local %struct.storage_entry* @storage_find_by_name(i8*) #1

declare dso_local %struct.storage_entry* @storage_entry_create(i8*) #1

declare dso_local i64 @memstat_get_size(%struct.memory_type*) #1

declare dso_local i64 @memstat_get_sizemask(%struct.memory_type*) #1

declare dso_local i64 @memstat_get_countlimit(%struct.memory_type*) #1

declare dso_local i64 @memstat_get_count(%struct.memory_type*) #1

declare dso_local i64 @memstat_get_failures(%struct.memory_type*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local %struct.memory_type* @memstat_mtl_next(%struct.memory_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
