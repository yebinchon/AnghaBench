; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hast/extr_hast_snmp.c_update_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hast/extr_hast_snmp.c_update_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hast_snmp_resource = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i32, i32, i32, i32 }
%struct.nv = type { i32 }

@update_resources.now = internal global i64 0, align 8
@last_resources_update = common dso_local global i64 0, align 8
@UPDATE_INTERVAL = common dso_local global i64 0, align 8
@HASTCTL_CMD_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"resource%d\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"resource%u\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Unable to allocate %zu bytes for resource\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"error%u\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"role%u\00", align 1
@HAST_ROLE_UNDEF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"provname%u\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"localpath%u\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"extentsize%u\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"keepdirty%u\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"remoteaddr%u\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"sourceaddr%u\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"replication%u\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"status%u\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"dirty%u\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"stat_read%u\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"stat_write%u\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"stat_delete%u\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"stat_flush%u\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"stat_activemap_update%u\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"stat_read_error%u\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"stat_write_error%u\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"stat_delete_error%u\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"stat_flush_error%u\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"workerpid%u\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"local_queue_size%u\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"send_queue_size%u\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"recv_queue_size%u\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"done_queue_size%u\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"idle_queue_size%u\00", align 1
@resources = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @update_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_resources() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.hast_snmp_resource*, align 8
  %3 = alloca %struct.nv*, align 8
  %4 = alloca %struct.nv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = call i64 (...) @get_ticks()
  store i64 %8, i64* @update_resources.now, align 8
  %9 = load i64, i64* @update_resources.now, align 8
  %10 = load i64, i64* @last_resources_update, align 8
  %11 = sub nsw i64 %9, %10
  %12 = load i64, i64* @UPDATE_INTERVAL, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %249

15:                                               ; preds = %0
  %16 = load i64, i64* @update_resources.now, align 8
  store i64 %16, i64* @last_resources_update, align 8
  %17 = call i32 (...) @free_resources()
  %18 = call %struct.nv* (...) @nv_alloc()
  store %struct.nv* %18, %struct.nv** %3, align 8
  %19 = load %struct.nv*, %struct.nv** %3, align 8
  %20 = load i32, i32* @HASTCTL_CMD_STATUS, align 4
  %21 = call i32 @nv_add_uint8(%struct.nv* %19, i32 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.nv*, %struct.nv** %3, align 8
  %23 = call i32 @nv_add_string(%struct.nv* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %24 = load %struct.nv*, %struct.nv** %3, align 8
  %25 = call i32 @hastctl(%struct.nv* %24, %struct.nv** %4)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.nv*, %struct.nv** %3, align 8
  %27 = call i32 @nv_free(%struct.nv* %26)
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %15
  store i32 -1, i32* %1, align 4
  br label %249

31:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %243, %31
  %33 = load %struct.nv*, %struct.nv** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i8* @nv_get_string(%struct.nv* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  store i8* %35, i8** %6, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %246

39:                                               ; preds = %32
  %40 = call %struct.hast_snmp_resource* @calloc(i32 1, i32 184)
  store %struct.hast_snmp_resource* %40, %struct.hast_snmp_resource** %2, align 8
  %41 = load %struct.hast_snmp_resource*, %struct.hast_snmp_resource** %2, align 8
  %42 = icmp eq %struct.hast_snmp_resource* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i32 @pjdlog_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 184)
  store i32 -1, i32* %1, align 4
  br label %249

45:                                               ; preds = %39
  %46 = load i32, i32* %5, align 4
  %47 = add i32 %46, 1
  %48 = load %struct.hast_snmp_resource*, %struct.hast_snmp_resource** %2, align 8
  %49 = getelementptr inbounds %struct.hast_snmp_resource, %struct.hast_snmp_resource* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.hast_snmp_resource*, %struct.hast_snmp_resource** %2, align 8
  %51 = getelementptr inbounds %struct.hast_snmp_resource, %struct.hast_snmp_resource* %50, i32 0, i32 26
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @strncpy(i32 %52, i8* %53, i32 3)
  %55 = load %struct.nv*, %struct.nv** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @nv_get_int16(%struct.nv* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %45
  br label %243

61:                                               ; preds = %45
  %62 = load %struct.nv*, %struct.nv** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i8* @nv_get_string(%struct.nv* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %63)
  store i8* %64, i8** %6, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @str2role(i8* %68)
  br label %72

70:                                               ; preds = %61
  %71 = load i32, i32* @HAST_ROLE_UNDEF, align 4
  br label %72

72:                                               ; preds = %70, %67
  %73 = phi i32 [ %69, %67 ], [ %71, %70 ]
  %74 = load %struct.hast_snmp_resource*, %struct.hast_snmp_resource** %2, align 8
  %75 = getelementptr inbounds %struct.hast_snmp_resource, %struct.hast_snmp_resource* %74, i32 0, i32 25
  store i32 %73, i32* %75, align 8
  %76 = load %struct.nv*, %struct.nv** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i8* @nv_get_string(%struct.nv* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %77)
  store i8* %78, i8** %6, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %72
  %82 = load %struct.hast_snmp_resource*, %struct.hast_snmp_resource** %2, align 8
  %83 = getelementptr inbounds %struct.hast_snmp_resource, %struct.hast_snmp_resource* %82, i32 0, i32 24
  %84 = load i32, i32* %83, align 4
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @strncpy(i32 %84, i8* %85, i32 3)
  br label %87

87:                                               ; preds = %81, %72
  %88 = load %struct.nv*, %struct.nv** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i8* @nv_get_string(%struct.nv* %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %89)
  store i8* %90, i8** %6, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load %struct.hast_snmp_resource*, %struct.hast_snmp_resource** %2, align 8
  %95 = getelementptr inbounds %struct.hast_snmp_resource, %struct.hast_snmp_resource* %94, i32 0, i32 23
  %96 = load i32, i32* %95, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 @strncpy(i32 %96, i8* %97, i32 3)
  br label %99

99:                                               ; preds = %93, %87
  %100 = load %struct.nv*, %struct.nv** %4, align 8
  %101 = load i32, i32* %5, align 4
  %102 = call i8* @nv_get_uint32(%struct.nv* %100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %101)
  %103 = load %struct.hast_snmp_resource*, %struct.hast_snmp_resource** %2, align 8
  %104 = getelementptr inbounds %struct.hast_snmp_resource, %struct.hast_snmp_resource* %103, i32 0, i32 22
  store i8* %102, i8** %104, align 8
  %105 = load %struct.nv*, %struct.nv** %4, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i8* @nv_get_uint32(%struct.nv* %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %106)
  %108 = load %struct.hast_snmp_resource*, %struct.hast_snmp_resource** %2, align 8
  %109 = getelementptr inbounds %struct.hast_snmp_resource, %struct.hast_snmp_resource* %108, i32 0, i32 21
  store i8* %107, i8** %109, align 8
  %110 = load %struct.nv*, %struct.nv** %4, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i8* @nv_get_string(%struct.nv* %110, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %111)
  store i8* %112, i8** %6, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %99
  %116 = load %struct.hast_snmp_resource*, %struct.hast_snmp_resource** %2, align 8
  %117 = getelementptr inbounds %struct.hast_snmp_resource, %struct.hast_snmp_resource* %116, i32 0, i32 20
  %118 = load i32, i32* %117, align 4
  %119 = load i8*, i8** %6, align 8
  %120 = call i32 @strncpy(i32 %118, i8* %119, i32 3)
  br label %121

121:                                              ; preds = %115, %99
  %122 = load %struct.nv*, %struct.nv** %4, align 8
  %123 = load i32, i32* %5, align 4
  %124 = call i8* @nv_get_string(%struct.nv* %122, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %123)
  store i8* %124, i8** %6, align 8
  %125 = load i8*, i8** %6, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = load %struct.hast_snmp_resource*, %struct.hast_snmp_resource** %2, align 8
  %129 = getelementptr inbounds %struct.hast_snmp_resource, %struct.hast_snmp_resource* %128, i32 0, i32 19
  %130 = load i32, i32* %129, align 8
  %131 = load i8*, i8** %6, align 8
  %132 = call i32 @strncpy(i32 %130, i8* %131, i32 3)
  br label %133

133:                                              ; preds = %127, %121
  %134 = load %struct.nv*, %struct.nv** %4, align 8
  %135 = load i32, i32* %5, align 4
  %136 = call i8* @nv_get_string(%struct.nv* %134, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %135)
  store i8* %136, i8** %6, align 8
  %137 = load i8*, i8** %6, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load i8*, i8** %6, align 8
  %141 = call i32 @str2replication(i8* %140)
  br label %143

142:                                              ; preds = %133
  br label %143

143:                                              ; preds = %142, %139
  %144 = phi i32 [ %141, %139 ], [ -1, %142 ]
  %145 = load %struct.hast_snmp_resource*, %struct.hast_snmp_resource** %2, align 8
  %146 = getelementptr inbounds %struct.hast_snmp_resource, %struct.hast_snmp_resource* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load %struct.nv*, %struct.nv** %4, align 8
  %148 = load i32, i32* %5, align 4
  %149 = call i8* @nv_get_string(%struct.nv* %147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 %148)
  store i8* %149, i8** %6, align 8
  %150 = load i8*, i8** %6, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %143
  %153 = load i8*, i8** %6, align 8
  %154 = call i32 @str2status(i8* %153)
  br label %156

155:                                              ; preds = %143
  br label %156

156:                                              ; preds = %155, %152
  %157 = phi i32 [ %154, %152 ], [ -1, %155 ]
  %158 = load %struct.hast_snmp_resource*, %struct.hast_snmp_resource** %2, align 8
  %159 = getelementptr inbounds %struct.hast_snmp_resource, %struct.hast_snmp_resource* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  %160 = load %struct.nv*, %struct.nv** %4, align 8
  %161 = load i32, i32* %5, align 4
  %162 = call i8* @nv_get_uint64(%struct.nv* %160, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32 %161)
  %163 = load %struct.hast_snmp_resource*, %struct.hast_snmp_resource** %2, align 8
  %164 = getelementptr inbounds %struct.hast_snmp_resource, %struct.hast_snmp_resource* %163, i32 0, i32 18
  store i8* %162, i8** %164, align 8
  %165 = load %struct.nv*, %struct.nv** %4, align 8
  %166 = load i32, i32* %5, align 4
  %167 = call i8* @nv_get_uint64(%struct.nv* %165, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 %166)
  %168 = load %struct.hast_snmp_resource*, %struct.hast_snmp_resource** %2, align 8
  %169 = getelementptr inbounds %struct.hast_snmp_resource, %struct.hast_snmp_resource* %168, i32 0, i32 17
  store i8* %167, i8** %169, align 8
  %170 = load %struct.nv*, %struct.nv** %4, align 8
  %171 = load i32, i32* %5, align 4
  %172 = call i8* @nv_get_uint64(%struct.nv* %170, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i32 %171)
  %173 = load %struct.hast_snmp_resource*, %struct.hast_snmp_resource** %2, align 8
  %174 = getelementptr inbounds %struct.hast_snmp_resource, %struct.hast_snmp_resource* %173, i32 0, i32 16
  store i8* %172, i8** %174, align 8
  %175 = load %struct.nv*, %struct.nv** %4, align 8
  %176 = load i32, i32* %5, align 4
  %177 = call i8* @nv_get_uint64(%struct.nv* %175, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 %176)
  %178 = load %struct.hast_snmp_resource*, %struct.hast_snmp_resource** %2, align 8
  %179 = getelementptr inbounds %struct.hast_snmp_resource, %struct.hast_snmp_resource* %178, i32 0, i32 15
  store i8* %177, i8** %179, align 8
  %180 = load %struct.nv*, %struct.nv** %4, align 8
  %181 = load i32, i32* %5, align 4
  %182 = call i8* @nv_get_uint64(%struct.nv* %180, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i32 %181)
  %183 = load %struct.hast_snmp_resource*, %struct.hast_snmp_resource** %2, align 8
  %184 = getelementptr inbounds %struct.hast_snmp_resource, %struct.hast_snmp_resource* %183, i32 0, i32 14
  store i8* %182, i8** %184, align 8
  %185 = load %struct.nv*, %struct.nv** %4, align 8
  %186 = load i32, i32* %5, align 4
  %187 = call i8* @nv_get_uint64(%struct.nv* %185, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i32 %186)
  %188 = load %struct.hast_snmp_resource*, %struct.hast_snmp_resource** %2, align 8
  %189 = getelementptr inbounds %struct.hast_snmp_resource, %struct.hast_snmp_resource* %188, i32 0, i32 13
  store i8* %187, i8** %189, align 8
  %190 = load %struct.nv*, %struct.nv** %4, align 8
  %191 = load i32, i32* %5, align 4
  %192 = call i8* @nv_get_uint64(%struct.nv* %190, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i32 %191)
  %193 = load %struct.hast_snmp_resource*, %struct.hast_snmp_resource** %2, align 8
  %194 = getelementptr inbounds %struct.hast_snmp_resource, %struct.hast_snmp_resource* %193, i32 0, i32 12
  store i8* %192, i8** %194, align 8
  %195 = load %struct.nv*, %struct.nv** %4, align 8
  %196 = load i32, i32* %5, align 4
  %197 = call i8* @nv_get_uint64(%struct.nv* %195, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i32 %196)
  %198 = load %struct.hast_snmp_resource*, %struct.hast_snmp_resource** %2, align 8
  %199 = getelementptr inbounds %struct.hast_snmp_resource, %struct.hast_snmp_resource* %198, i32 0, i32 11
  store i8* %197, i8** %199, align 8
  %200 = load %struct.nv*, %struct.nv** %4, align 8
  %201 = load i32, i32* %5, align 4
  %202 = call i8* @nv_get_uint64(%struct.nv* %200, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 %201)
  %203 = load %struct.hast_snmp_resource*, %struct.hast_snmp_resource** %2, align 8
  %204 = getelementptr inbounds %struct.hast_snmp_resource, %struct.hast_snmp_resource* %203, i32 0, i32 10
  store i8* %202, i8** %204, align 8
  %205 = load %struct.nv*, %struct.nv** %4, align 8
  %206 = load i32, i32* %5, align 4
  %207 = call i8* @nv_get_uint64(%struct.nv* %205, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i32 %206)
  %208 = load %struct.hast_snmp_resource*, %struct.hast_snmp_resource** %2, align 8
  %209 = getelementptr inbounds %struct.hast_snmp_resource, %struct.hast_snmp_resource* %208, i32 0, i32 9
  store i8* %207, i8** %209, align 8
  %210 = load %struct.nv*, %struct.nv** %4, align 8
  %211 = load i32, i32* %5, align 4
  %212 = call i32 @nv_get_int32(%struct.nv* %210, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i32 %211)
  %213 = load %struct.hast_snmp_resource*, %struct.hast_snmp_resource** %2, align 8
  %214 = getelementptr inbounds %struct.hast_snmp_resource, %struct.hast_snmp_resource* %213, i32 0, i32 8
  store i32 %212, i32* %214, align 8
  %215 = load %struct.nv*, %struct.nv** %4, align 8
  %216 = load i32, i32* %5, align 4
  %217 = call i8* @nv_get_uint64(%struct.nv* %215, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0), i32 %216)
  %218 = load %struct.hast_snmp_resource*, %struct.hast_snmp_resource** %2, align 8
  %219 = getelementptr inbounds %struct.hast_snmp_resource, %struct.hast_snmp_resource* %218, i32 0, i32 7
  store i8* %217, i8** %219, align 8
  %220 = load %struct.nv*, %struct.nv** %4, align 8
  %221 = load i32, i32* %5, align 4
  %222 = call i8* @nv_get_uint64(%struct.nv* %220, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0), i32 %221)
  %223 = load %struct.hast_snmp_resource*, %struct.hast_snmp_resource** %2, align 8
  %224 = getelementptr inbounds %struct.hast_snmp_resource, %struct.hast_snmp_resource* %223, i32 0, i32 6
  store i8* %222, i8** %224, align 8
  %225 = load %struct.nv*, %struct.nv** %4, align 8
  %226 = load i32, i32* %5, align 4
  %227 = call i8* @nv_get_uint64(%struct.nv* %225, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0), i32 %226)
  %228 = load %struct.hast_snmp_resource*, %struct.hast_snmp_resource** %2, align 8
  %229 = getelementptr inbounds %struct.hast_snmp_resource, %struct.hast_snmp_resource* %228, i32 0, i32 5
  store i8* %227, i8** %229, align 8
  %230 = load %struct.nv*, %struct.nv** %4, align 8
  %231 = load i32, i32* %5, align 4
  %232 = call i8* @nv_get_uint64(%struct.nv* %230, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i32 %231)
  %233 = load %struct.hast_snmp_resource*, %struct.hast_snmp_resource** %2, align 8
  %234 = getelementptr inbounds %struct.hast_snmp_resource, %struct.hast_snmp_resource* %233, i32 0, i32 4
  store i8* %232, i8** %234, align 8
  %235 = load %struct.nv*, %struct.nv** %4, align 8
  %236 = load i32, i32* %5, align 4
  %237 = call i8* @nv_get_uint64(%struct.nv* %235, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0), i32 %236)
  %238 = load %struct.hast_snmp_resource*, %struct.hast_snmp_resource** %2, align 8
  %239 = getelementptr inbounds %struct.hast_snmp_resource, %struct.hast_snmp_resource* %238, i32 0, i32 3
  store i8* %237, i8** %239, align 8
  %240 = load %struct.hast_snmp_resource*, %struct.hast_snmp_resource** %2, align 8
  %241 = load i32, i32* @link, align 4
  %242 = call i32 @TAILQ_INSERT_TAIL(i32* @resources, %struct.hast_snmp_resource* %240, i32 %241)
  br label %243

243:                                              ; preds = %156, %60
  %244 = load i32, i32* %5, align 4
  %245 = add i32 %244, 1
  store i32 %245, i32* %5, align 4
  br label %32

246:                                              ; preds = %38
  %247 = load %struct.nv*, %struct.nv** %4, align 8
  %248 = call i32 @nv_free(%struct.nv* %247)
  store i32 0, i32* %1, align 4
  br label %249

249:                                              ; preds = %246, %43, %30, %14
  %250 = load i32, i32* %1, align 4
  ret i32 %250
}

declare dso_local i64 @get_ticks(...) #1

declare dso_local i32 @free_resources(...) #1

declare dso_local %struct.nv* @nv_alloc(...) #1

declare dso_local i32 @nv_add_uint8(%struct.nv*, i32, i8*) #1

declare dso_local i32 @nv_add_string(%struct.nv*, i8*, i8*, i32) #1

declare dso_local i32 @hastctl(%struct.nv*, %struct.nv**) #1

declare dso_local i32 @nv_free(%struct.nv*) #1

declare dso_local i8* @nv_get_string(%struct.nv*, i8*, i32) #1

declare dso_local %struct.hast_snmp_resource* @calloc(i32, i32) #1

declare dso_local i32 @pjdlog_error(i8*, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @nv_get_int16(%struct.nv*, i8*, i32) #1

declare dso_local i32 @str2role(i8*) #1

declare dso_local i8* @nv_get_uint32(%struct.nv*, i8*, i32) #1

declare dso_local i32 @str2replication(i8*) #1

declare dso_local i32 @str2status(i8*) #1

declare dso_local i8* @nv_get_uint64(%struct.nv*, i8*, i32) #1

declare dso_local i32 @nv_get_int32(%struct.nv*, i8*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.hast_snmp_resource*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
