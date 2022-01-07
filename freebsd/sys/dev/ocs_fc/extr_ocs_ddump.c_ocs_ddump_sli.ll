; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_ddump.c_ocs_ddump_sli.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_ddump.c_ocs_ddump_sli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i64*, i64*, i64, i64, i64, i64, i64, i64, i64*, i32*, i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"sli4\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"sli_rev\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"sli_family\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"if_type\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"BE3\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Skyhawk\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Lancer\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"LancerG6\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"asic_type\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"fpga\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"A0\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"A1\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"A2\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"A3\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"B0\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"C0\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"D0\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"asic_rev\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"e_d_tov\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"r_a_tov\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"link_module_type\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"rq_batch\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"topology\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"wwpn\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"%02x%02x%02x%02x%02x%02x%02x%02x\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"wwnn\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"fw_rev0\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"fw_rev1\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"fw_name0\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"fw_name1\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"hw_rev0\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"hw_rev1\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"hw_rev2\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"sge_supported_length\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"sgl_page_sizes\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"max_sgl_pages\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"high_login_mode\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"sgl_pre_registered\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"sgl_pre_registration_required\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"sgl_chaining_capable\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"frag_num_field_offset\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"frag_num_field_mask\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"%016llx\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"sgl_index_field_offset\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"sgl_index_field_mask\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"chain_sge_initial_value_lo\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"chain_sge_initial_value_hi\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"max_vfi\00", align 1
@SLI_RSRC_FCOE_VFI = common dso_local global i32 0, align 4
@.str.52 = private unnamed_addr constant [8 x i8] c"max_vpi\00", align 1
@SLI_RSRC_FCOE_VPI = common dso_local global i32 0, align 4
@.str.53 = private unnamed_addr constant [8 x i8] c"max_rpi\00", align 1
@SLI_RSRC_FCOE_RPI = common dso_local global i32 0, align 4
@.str.54 = private unnamed_addr constant [8 x i8] c"max_xri\00", align 1
@SLI_RSRC_FCOE_XRI = common dso_local global i32 0, align 4
@.str.55 = private unnamed_addr constant [9 x i8] c"max_fcfi\00", align 1
@SLI_RSRC_FCOE_FCFI = common dso_local global i32 0, align 4
@SLI_QTYPE_EQ = common dso_local global i32 0, align 4
@SLI_QTYPE_CQ = common dso_local global i32 0, align 4
@SLI_QTYPE_MQ = common dso_local global i32 0, align 4
@SLI_QTYPE_WQ = common dso_local global i32 0, align 4
@SLI_QTYPE_RQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*)* @ocs_ddump_sli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocs_ddump_sli(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 5
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 16
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @ocs_ddump_section(i32* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0)
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %34 [
    i32 131, label %30
    i32 128, label %31
    i32 130, label %32
    i32 129, label %33
  ]

30:                                               ; preds = %2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %35

31:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %35

32:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  br label %35

33:                                               ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  br label %35

34:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %6, align 8
  br label %35

35:                                               ; preds = %34, %33, %32, %31, %30
  %36 = load i32*, i32** %3, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %50 [
    i32 132, label %42
    i32 139, label %43
    i32 138, label %44
    i32 137, label %45
    i32 136, label %46
    i32 135, label %47
    i32 134, label %48
    i32 133, label %49
  ]

42:                                               ; preds = %35
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %6, align 8
  br label %51

43:                                               ; preds = %35
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8** %6, align 8
  br label %51

44:                                               ; preds = %35
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8** %6, align 8
  br label %51

45:                                               ; preds = %35
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8** %6, align 8
  br label %51

46:                                               ; preds = %35
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8** %6, align 8
  br label %51

47:                                               ; preds = %35
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8** %6, align 8
  br label %51

48:                                               ; preds = %35
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8** %6, align 8
  br label %51

49:                                               ; preds = %35
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8** %6, align 8
  br label %51

50:                                               ; preds = %35
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %6, align 8
  br label %51

51:                                               ; preds = %50, %49, %48, %47, %46, %45, %44, %43, %42
  %52 = load i32*, i32** %3, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* %53)
  %55 = load i32*, i32** %3, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %59)
  %61 = load i32*, i32** %3, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %65)
  %67 = load i32*, i32** %3, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %71)
  %73 = load i32*, i32** %3, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %77)
  %79 = load i32*, i32** %3, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %83)
  %85 = load i32*, i32** %3, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 15
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 15
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 5
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 15
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 15
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 15
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 4
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 15
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 5
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 15
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 6
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 15
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 7
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i64 0, i64 0), i32 %91, i32 %97, i32 %103, i32 %109, i32 %115, i32 %121, i32 %127, i32 %133)
  %135 = load i32*, i32** %3, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 14
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 14
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 14
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 5
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 14
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 3
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 5
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 14
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 4
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 14
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 5
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 14
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 6
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 5
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 14
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 7
  %183 = load i32, i32* %182, align 4
  %184 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i64 0, i64 0), i32 %141, i32 %147, i32 %153, i32 %159, i32 %165, i32 %171, i32 %177, i32 %183)
  %185 = load i32*, i32** %3, align 8
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 5
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 5
  %189 = load i64*, i64** %188, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 0
  %191 = load i64, i64* %190, align 8
  %192 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %185, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %191)
  %193 = load i32*, i32** %3, align 8
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 5
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 5
  %197 = load i64*, i64** %196, align 8
  %198 = getelementptr inbounds i64, i64* %197, i64 1
  %199 = load i64, i64* %198, align 8
  %200 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %193, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %199)
  %201 = load i32*, i32** %3, align 8
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 5
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 13
  %205 = load i64*, i64** %204, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 0
  %207 = load i64, i64* %206, align 8
  %208 = inttoptr i64 %207 to i8*
  %209 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %201, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* %208)
  %210 = load i32*, i32** %3, align 8
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 5
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 13
  %214 = load i64*, i64** %213, align 8
  %215 = getelementptr inbounds i64, i64* %214, i64 1
  %216 = load i64, i64* %215, align 8
  %217 = inttoptr i64 %216 to i8*
  %218 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %210, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* %217)
  %219 = load i32*, i32** %3, align 8
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 5
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 6
  %223 = load i64*, i64** %222, align 8
  %224 = getelementptr inbounds i64, i64* %223, i64 0
  %225 = load i64, i64* %224, align 8
  %226 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %219, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i64 %225)
  %227 = load i32*, i32** %3, align 8
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 5
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 6
  %231 = load i64*, i64** %230, align 8
  %232 = getelementptr inbounds i64, i64* %231, i64 1
  %233 = load i64, i64* %232, align 8
  %234 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %227, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i64 %233)
  %235 = load i32*, i32** %3, align 8
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 5
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 6
  %239 = load i64*, i64** %238, align 8
  %240 = getelementptr inbounds i64, i64* %239, i64 2
  %241 = load i64, i64* %240, align 8
  %242 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %235, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i64 %241)
  %243 = load i32*, i32** %3, align 8
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 5
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 7
  %247 = load i64, i64* %246, align 8
  %248 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %243, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i64 %247)
  %249 = load i32*, i32** %3, align 8
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 5
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 8
  %253 = load i64, i64* %252, align 8
  %254 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %249, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i64 %253)
  %255 = load i32*, i32** %3, align 8
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 5
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 9
  %259 = load i64, i64* %258, align 8
  %260 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %255, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i64 %259)
  %261 = load i32*, i32** %3, align 8
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 5
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 10
  %265 = load i64, i64* %264, align 8
  %266 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %261, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i64 %265)
  %267 = load i32*, i32** %3, align 8
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 5
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 11
  %271 = load i64, i64* %270, align 8
  %272 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %267, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i64 %271)
  %273 = load i32*, i32** %3, align 8
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 5
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 12
  %277 = load i64, i64* %276, align 8
  %278 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %273, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i64 %277)
  %279 = load i32*, i32** %3, align 8
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %279, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i64 %282)
  %284 = load i32*, i32** %3, align 8
  %285 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %284, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i64 %287)
  %289 = load i32*, i32** %3, align 8
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 6
  %292 = load i64, i64* %291, align 8
  %293 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %289, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0), i64 %292)
  %294 = load i32*, i32** %3, align 8
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 2
  %297 = load i64, i64* %296, align 8
  %298 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %294, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i64 %297)
  %299 = load i32*, i32** %3, align 8
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 5
  %302 = load i64, i64* %301, align 8
  %303 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %299, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0), i64 %302)
  %304 = load i32*, i32** %3, align 8
  %305 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 3
  %307 = load i64, i64* %306, align 8
  %308 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %304, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i64 %307)
  %309 = load i32*, i32** %3, align 8
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 4
  %312 = load i64, i64* %311, align 8
  %313 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %309, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i64 %312)
  %314 = load i32*, i32** %3, align 8
  %315 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %316 = load i32, i32* @SLI_RSRC_FCOE_VFI, align 4
  %317 = call i64 @sli_get_max_rsrc(%struct.TYPE_8__* %315, i32 %316)
  %318 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %314, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %317)
  %319 = load i32*, i32** %3, align 8
  %320 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %321 = load i32, i32* @SLI_RSRC_FCOE_VPI, align 4
  %322 = call i64 @sli_get_max_rsrc(%struct.TYPE_8__* %320, i32 %321)
  %323 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %319, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %322)
  %324 = load i32*, i32** %3, align 8
  %325 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %326 = load i32, i32* @SLI_RSRC_FCOE_RPI, align 4
  %327 = call i64 @sli_get_max_rsrc(%struct.TYPE_8__* %325, i32 %326)
  %328 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %324, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %327)
  %329 = load i32*, i32** %3, align 8
  %330 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %331 = load i32, i32* @SLI_RSRC_FCOE_XRI, align 4
  %332 = call i64 @sli_get_max_rsrc(%struct.TYPE_8__* %330, i32 %331)
  %333 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %329, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %332)
  %334 = load i32*, i32** %3, align 8
  %335 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %336 = load i32, i32* @SLI_RSRC_FCOE_FCFI, align 4
  %337 = call i64 @sli_get_max_rsrc(%struct.TYPE_8__* %335, i32 %336)
  %338 = call i32 (i32*, i8*, i8*, ...) @ocs_ddump_value(i32* %334, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %337)
  %339 = load i32*, i32** %3, align 8
  %340 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %341 = load i32, i32* @SLI_QTYPE_EQ, align 4
  %342 = call i32 @ocs_ddump_sli_q_fields(i32* %339, %struct.TYPE_8__* %340, i32 %341)
  %343 = load i32*, i32** %3, align 8
  %344 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %345 = load i32, i32* @SLI_QTYPE_CQ, align 4
  %346 = call i32 @ocs_ddump_sli_q_fields(i32* %343, %struct.TYPE_8__* %344, i32 %345)
  %347 = load i32*, i32** %3, align 8
  %348 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %349 = load i32, i32* @SLI_QTYPE_MQ, align 4
  %350 = call i32 @ocs_ddump_sli_q_fields(i32* %347, %struct.TYPE_8__* %348, i32 %349)
  %351 = load i32*, i32** %3, align 8
  %352 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %353 = load i32, i32* @SLI_QTYPE_WQ, align 4
  %354 = call i32 @ocs_ddump_sli_q_fields(i32* %351, %struct.TYPE_8__* %352, i32 %353)
  %355 = load i32*, i32** %3, align 8
  %356 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %357 = load i32, i32* @SLI_QTYPE_RQ, align 4
  %358 = call i32 @ocs_ddump_sli_q_fields(i32* %355, %struct.TYPE_8__* %356, i32 %357)
  %359 = load i32*, i32** %3, align 8
  %360 = call i32 @ocs_ddump_endsection(i32* %359, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0)
  ret void
}

declare dso_local i32 @ocs_ddump_section(i32*, i8*, i32) #1

declare dso_local i32 @ocs_ddump_value(i32*, i8*, i8*, ...) #1

declare dso_local i64 @sli_get_max_rsrc(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ocs_ddump_sli_q_fields(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @ocs_ddump_endsection(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
