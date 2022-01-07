; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_io.c_ocs_ddump_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_io.c_ocs_ddump_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct.TYPE_9__*, i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i8*, i8*, i8* }
%struct.TYPE_8__ = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"display_name\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"node_name\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"ref_count\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"io_type\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"hio_type\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"cmd_tgt\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"cmd_ini\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"send_abts\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"init_task_tag\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"tgt_task_tag\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"hw_tag\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"tmf_cmd\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"abort_rx_id\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"busy\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"transferred\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%zu\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"auto_resp\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"exp_xfer_len\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"xfer_req\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"seq_init\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"alloc_link\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"pending_link\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"backend_link\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"%#x\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"hw_xri\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"hw_type\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"pending\00", align 1
@OCS_SCSI_DDUMP_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocs_ddump_io(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 18
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @ocs_ddump_section(i32* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @ocs_ddump_value(i32* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %13)
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 24
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @ocs_ddump_value(i32* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 23
  %25 = call i8* @ocs_ref_read_count(i32* %24)
  %26 = call i32 @ocs_ddump_value(i32* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @ocs_ddump_value(i32* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %30)
  %32 = load i32*, i32** %3, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @ocs_ddump_value(i32* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %35)
  %37 = load i32*, i32** %3, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @ocs_ddump_value(i32* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %40)
  %42 = load i32*, i32** %3, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 4
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @ocs_ddump_value(i32* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %45)
  %47 = load i32*, i32** %3, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 5
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @ocs_ddump_value(i32* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %50)
  %52 = load i32*, i32** %3, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 6
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @ocs_ddump_value(i32* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* %55)
  %57 = load i32*, i32** %3, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 7
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @ocs_ddump_value(i32* %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* %60)
  %62 = load i32*, i32** %3, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 8
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @ocs_ddump_value(i32* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* %65)
  %67 = load i32*, i32** %3, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 9
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @ocs_ddump_value(i32* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* %70)
  %72 = load i32*, i32** %3, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 10
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @ocs_ddump_value(i32* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %75)
  %77 = load i32*, i32** %3, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 11
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @ocs_ddump_value(i32* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %80)
  %82 = load i32*, i32** %3, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 12
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @ocs_ddump_value(i32* %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* %85)
  %87 = load i32*, i32** %3, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %89 = call i8* @ocs_io_busy(%struct.TYPE_10__* %88)
  %90 = call i32 @ocs_ddump_value(i32* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %89)
  %91 = load i32*, i32** %3, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 13
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @ocs_ddump_value(i32* %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8* %94)
  %96 = load i32*, i32** %3, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 14
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @ocs_ddump_value(i32* %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %99)
  %101 = load i32*, i32** %3, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 15
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @ocs_ddump_value(i32* %101, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %104)
  %106 = load i32*, i32** %3, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 16
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @ocs_ddump_value(i32* %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %109)
  %111 = load i32*, i32** %3, align 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 17
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @ocs_ddump_value(i32* %111, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %114)
  %116 = load i32*, i32** %3, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 22
  %119 = call i8* @ocs_list_on_list(i32* %118)
  %120 = call i32 @ocs_ddump_value(i32* %116, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %119)
  %121 = load i32*, i32** %3, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 21
  %124 = call i8* @ocs_list_on_list(i32* %123)
  %125 = call i32 @ocs_ddump_value(i32* %121, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %124)
  %126 = load i32*, i32** %3, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 20
  %129 = call i8* @ocs_list_on_list(i32* %128)
  %130 = call i32 @ocs_ddump_value(i32* %126, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %129)
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 19
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = icmp ne %struct.TYPE_9__* %133, null
  br i1 %134, label %135, label %157

135:                                              ; preds = %2
  %136 = load i32*, i32** %3, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 19
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @ocs_ddump_value(i32* %136, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i8* %141)
  %143 = load i32*, i32** %3, align 8
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 19
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @ocs_ddump_value(i32* %143, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i8* %148)
  %150 = load i32*, i32** %3, align 8
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 19
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 2
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @ocs_ddump_value(i32* %150, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i8* %155)
  br label %164

157:                                              ; preds = %2
  %158 = load i32*, i32** %3, align 8
  %159 = call i32 @ocs_ddump_value(i32* %158, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0))
  %160 = load i32*, i32** %3, align 8
  %161 = call i32 @ocs_ddump_value(i32* %160, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0))
  %162 = load i32*, i32** %3, align 8
  %163 = call i32 @ocs_ddump_value(i32* %162, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0))
  br label %164

164:                                              ; preds = %157, %135
  %165 = load i32*, i32** %3, align 8
  %166 = load i32, i32* @OCS_SCSI_DDUMP_IO, align 4
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %168 = call i32 @ocs_scsi_ini_ddump(i32* %165, i32 %166, %struct.TYPE_10__* %167)
  %169 = load i32*, i32** %3, align 8
  %170 = load i32, i32* @OCS_SCSI_DDUMP_IO, align 4
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %172 = call i32 @ocs_scsi_tgt_ddump(i32* %169, i32 %170, %struct.TYPE_10__* %171)
  %173 = load i32*, i32** %3, align 8
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 18
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @ocs_ddump_endsection(i32* %173, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %176)
  ret void
}

declare dso_local i32 @ocs_ddump_section(i32*, i8*, i32) #1

declare dso_local i32 @ocs_ddump_value(i32*, i8*, i8*, i8*) #1

declare dso_local i8* @ocs_ref_read_count(i32*) #1

declare dso_local i8* @ocs_io_busy(%struct.TYPE_10__*) #1

declare dso_local i8* @ocs_list_on_list(i32*) #1

declare dso_local i32 @ocs_scsi_ini_ddump(i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @ocs_scsi_tgt_ddump(i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @ocs_ddump_endsection(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
