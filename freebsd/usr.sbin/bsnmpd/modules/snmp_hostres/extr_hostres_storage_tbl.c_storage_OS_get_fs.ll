; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_storage_tbl.c_storage_OS_get_fs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_storage_tbl.c_storage_OS_get_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i8*, i32, i32, i32 }
%struct.storage_entry = type { i32, i32, i32, i32, i64, i32, i32 }

@SE_DESC_MLEN = common dso_local global i32 0, align 4
@MNT_NOWAIT = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"hrStorageTable: getfsstat() failed: %m\00", align 1
@fs_buf_count = common dso_local global i32 0, align 4
@fs_buf = common dso_local global %struct.TYPE_7__* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"got %d mounted FS\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%s, type: %s, dev: %s\00", align 1
@HR_STORAGE_FOUND = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @storage_OS_get_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @storage_OS_get_fs() #0 {
  %1 = alloca %struct.storage_entry*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = load i32, i32* @SE_DESC_MLEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i32, i32* @MNT_NOWAIT, align 4
  %15 = call i32 @getfsstat(%struct.TYPE_7__* null, i32 0, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = load i32, i32* @LOG_ERR, align 4
  %19 = call i32 @syslog(i32 %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %168

20:                                               ; preds = %0
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @fs_buf_count, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fs_buf, align 8
  %26 = icmp eq %struct.TYPE_7__* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %24, %20
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* @fs_buf_count, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fs_buf, align 8
  %30 = load i32, i32* @fs_buf_count, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = call %struct.TYPE_7__* @reallocf(%struct.TYPE_7__* %29, i32 %33)
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** @fs_buf, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fs_buf, align 8
  %36 = icmp eq %struct.TYPE_7__* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  store i32 0, i32* @fs_buf_count, align 4
  %38 = call i32 @assert(i32 0)
  store i32 1, i32* %9, align 4
  br label %168

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39, %24
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fs_buf, align 8
  %42 = load i32, i32* @fs_buf_count, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* @MNT_NOWAIT, align 4
  %47 = call i32 @getfsstat(%struct.TYPE_7__* %41, i32 %45, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32, i32* @LOG_ERR, align 4
  %51 = call i32 @syslog(i32 %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %168

52:                                               ; preds = %40
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @HRDBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = call i32 (...) @fs_tbl_pre_refresh()
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %163, %52
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %166

60:                                               ; preds = %56
  %61 = trunc i64 %11 to i32
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fs_buf, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fs_buf, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fs_buf, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @snprintf(i8* %13, i32 %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %67, i8* %73, i8* %79)
  %81 = call %struct.storage_entry* @storage_find_by_name(i8* %13)
  store %struct.storage_entry* %81, %struct.storage_entry** %1, align 8
  %82 = load %struct.storage_entry*, %struct.storage_entry** %1, align 8
  %83 = icmp eq %struct.storage_entry* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %60
  %85 = call %struct.storage_entry* @storage_entry_create(i8* %13)
  store %struct.storage_entry* %85, %struct.storage_entry** %1, align 8
  br label %86

86:                                               ; preds = %84, %60
  %87 = load %struct.storage_entry*, %struct.storage_entry** %1, align 8
  %88 = icmp ne %struct.storage_entry* %87, null
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load %struct.storage_entry*, %struct.storage_entry** %1, align 8
  %92 = icmp eq %struct.storage_entry* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store i32 1, i32* %9, align 4
  br label %168

94:                                               ; preds = %86
  %95 = load i32, i32* @HR_STORAGE_FOUND, align 4
  %96 = load %struct.storage_entry*, %struct.storage_entry** %1, align 8
  %97 = getelementptr inbounds %struct.storage_entry, %struct.storage_entry* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fs_buf, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 %102
  %104 = call i32 @fs_get_type(%struct.TYPE_7__* %103)
  %105 = load %struct.storage_entry*, %struct.storage_entry** %1, align 8
  %106 = getelementptr inbounds %struct.storage_entry, %struct.storage_entry* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fs_buf, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %6, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fs_buf, align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %2, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fs_buf, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fs_buf, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = sub nsw i32 %124, %130
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %136, %94
  %133 = load i32, i32* %2, align 4
  %134 = load i32, i32* @INT_MAX, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %132
  %137 = load i32, i32* %6, align 4
  %138 = shl i32 %137, 1
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %2, align 4
  %140 = ashr i32 %139, 1
  store i32 %140, i32* %2, align 4
  %141 = load i32, i32* %3, align 4
  %142 = ashr i32 %141, 1
  store i32 %142, i32* %3, align 4
  br label %132

143:                                              ; preds = %132
  %144 = load i32, i32* %6, align 4
  %145 = load %struct.storage_entry*, %struct.storage_entry** %1, align 8
  %146 = getelementptr inbounds %struct.storage_entry, %struct.storage_entry* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load i32, i32* %2, align 4
  %148 = load %struct.storage_entry*, %struct.storage_entry** %1, align 8
  %149 = getelementptr inbounds %struct.storage_entry, %struct.storage_entry* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* %3, align 4
  %151 = load %struct.storage_entry*, %struct.storage_entry** %1, align 8
  %152 = getelementptr inbounds %struct.storage_entry, %struct.storage_entry* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 8
  %153 = load %struct.storage_entry*, %struct.storage_entry** %1, align 8
  %154 = getelementptr inbounds %struct.storage_entry, %struct.storage_entry* %153, i32 0, i32 4
  store i64 0, i64* %154, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fs_buf, align 8
  %156 = load i32, i32* %4, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i64 %157
  %159 = load %struct.storage_entry*, %struct.storage_entry** %1, align 8
  %160 = getelementptr inbounds %struct.storage_entry, %struct.storage_entry* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @fs_tbl_process_statfs_entry(%struct.TYPE_7__* %158, i32 %161)
  br label %163

163:                                              ; preds = %143
  %164 = load i32, i32* %4, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %4, align 4
  br label %56

166:                                              ; preds = %56
  %167 = call i32 (...) @fs_tbl_post_refresh()
  store i32 0, i32* %9, align 4
  br label %168

168:                                              ; preds = %166, %93, %49, %37, %17
  %169 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %169)
  %170 = load i32, i32* %9, align 4
  switch i32 %170, label %172 [
    i32 0, label %171
    i32 1, label %171
  ]

171:                                              ; preds = %168, %168
  ret void

172:                                              ; preds = %168
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getfsstat(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @syslog(i32, i8*) #2

declare dso_local %struct.TYPE_7__* @reallocf(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @HRDBG(i8*, i32) #2

declare dso_local i32 @fs_tbl_pre_refresh(...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*) #2

declare dso_local %struct.storage_entry* @storage_find_by_name(i8*) #2

declare dso_local %struct.storage_entry* @storage_entry_create(i8*) #2

declare dso_local i32 @fs_get_type(%struct.TYPE_7__*) #2

declare dso_local i32 @fs_tbl_process_statfs_entry(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @fs_tbl_post_refresh(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
