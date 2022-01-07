; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_erom.c_bcma_erom_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_erom.c_bcma_erom_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_erom = type { i32 }

@BCMA_EROM_TABLE_EOF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"EOF\0A\00", align 1
@ENTRY_ISVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"invalid EROM entry %#x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENTRY_TYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"coreA (0x%x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"\09designer:\090x%x\0A\00", align 1
@COREA_DESIGNER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"\09id:\09\090x%x\0A\00", align 1
@COREA_ID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"\09class:\09\090x%x\0A\00", align 1
@COREA_CLASS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"error reading CoreDescB: %d\0A\00", align 1
@CORE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [63 x i8] c"invalid core descriptor; found unexpected entry %#x (type=%s)\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"coreB (0x%x)\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"\09rev:\090x%x\0A\00", align 1
@COREB_REV = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"\09nummp:\090x%x\0A\00", align 1
@COREB_NUM_MP = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"\09numdp:\090x%x\0A\00", align 1
@COREB_NUM_DP = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"\09numwmp:\090x%x\0A\00", align 1
@COREB_NUM_WMP = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [15 x i8] c"\09numwsp:\090x%x\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"\09mport 0x%x\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"\09\09port:\090x%x\0A\00", align 1
@MPORT_NUM = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [13 x i8] c"\09\09id:\09\090x%x\0A\00", align 1
@MPORT_ID = common dso_local global i32 0, align 4
@REGION_64BIT = common dso_local global i32 0, align 4
@REGION_SIZE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [15 x i8] c"\09region 0x%x:\0A\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"\09\09%s:\090x%x\0A\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"baselo\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@REGION_BASE = common dso_local global i32 0, align 4
@REGION_PORT = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [14 x i8] c"\09\09type:\090x%x\0A\00", align 1
@REGION_TYPE = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [18 x i8] c"\09\09sztype:\090x%hhx\0A\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"error reading region base address high bits %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"\09\09basehi:\090x%x\0A\00", align 1
@BCMA_EROM_REGION_SIZE_OTHER = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [41 x i8] c"error reading region size descriptor %d\0A\00", align 1
@RSIZE_64BIT = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [7 x i8] c"sizelo\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@RSIZE_VAL = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [41 x i8] c"error reading region size high bits: %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"\09\09sizehi:\090x%x\0A\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"unknown EROM entry 0x%x (type=%s)\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [41 x i8] c"BCMA EROM table missing terminating EOF\0A\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"EROM read failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @bcma_erom_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_erom_dump(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.bcma_erom*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = bitcast i32* %10 to %struct.bcma_erom*
  store %struct.bcma_erom* %11, %struct.bcma_erom** %4, align 8
  %12 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %13 = call i32 @bcma_erom_reset(%struct.bcma_erom* %12)
  br label %14

14:                                               ; preds = %226, %1
  %15 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %16 = call i32 @bcma_erom_read32(%struct.bcma_erom* %15, i64* %5)
  store i32 %16, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %227

19:                                               ; preds = %14
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @BCMA_EROM_TABLE_EOF, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %25 = call i32 (%struct.bcma_erom*, i8*, ...) @EROM_LOG(%struct.bcma_erom* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %244

26:                                               ; preds = %19
  %27 = load i64, i64* %5, align 8
  %28 = load i32, i32* @ENTRY_ISVALID, align 4
  %29 = call i32 @BCMA_EROM_GET_ATTR(i64 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 (%struct.bcma_erom*, i8*, ...) @EROM_LOG(%struct.bcma_erom* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %2, align 4
  br label %244

36:                                               ; preds = %26
  %37 = load i64, i64* %5, align 8
  %38 = load i32, i32* @ENTRY_TYPE, align 4
  %39 = call i32 @BCMA_EROM_GET_ATTR(i64 %37, i32 %38)
  switch i32 %39, label %219 [
    i32 130, label %40
    i32 129, label %108
    i32 128, label %122
  ]

40:                                               ; preds = %36
  %41 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i32 (%struct.bcma_erom*, i8*, ...) @EROM_LOG(%struct.bcma_erom* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  %44 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i32, i32* @COREA_DESIGNER, align 4
  %47 = call i32 @BCMA_EROM_GET_ATTR(i64 %45, i32 %46)
  %48 = call i32 (%struct.bcma_erom*, i8*, ...) @EROM_LOG(%struct.bcma_erom* %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i32, i32* @COREA_ID, align 4
  %52 = call i32 @BCMA_EROM_GET_ATTR(i64 %50, i32 %51)
  %53 = call i32 (%struct.bcma_erom*, i8*, ...) @EROM_LOG(%struct.bcma_erom* %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  %54 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i32, i32* @COREA_CLASS, align 4
  %57 = call i32 @BCMA_EROM_GET_ATTR(i64 %55, i32 %56)
  %58 = call i32 (%struct.bcma_erom*, i8*, ...) @EROM_LOG(%struct.bcma_erom* %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %57)
  %59 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %60 = call i32 @bcma_erom_read32(%struct.bcma_erom* %59, i64* %5)
  store i32 %60, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %40
  %63 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 (%struct.bcma_erom*, i8*, ...) @EROM_LOG(%struct.bcma_erom* %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %244

67:                                               ; preds = %40
  %68 = load i64, i64* %5, align 8
  %69 = load i32, i32* @CORE, align 4
  %70 = call i32 @BCMA_EROM_ENTRY_IS(i64 %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %67
  %73 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* %5, align 8
  %76 = call i32 @bcma_erom_entry_type_name(i64 %75)
  %77 = call i32 (%struct.bcma_erom*, i8*, ...) @EROM_LOG(%struct.bcma_erom* %73, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i64 %74, i32 %76)
  %78 = load i32, i32* @EINVAL, align 4
  store i32 %78, i32* %2, align 4
  br label %244

79:                                               ; preds = %67
  %80 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %81 = load i64, i64* %5, align 8
  %82 = call i32 (%struct.bcma_erom*, i8*, ...) @EROM_LOG(%struct.bcma_erom* %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i64 %81)
  %83 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %84 = load i64, i64* %5, align 8
  %85 = load i32, i32* @COREB_REV, align 4
  %86 = call i32 @BCMA_EROM_GET_ATTR(i64 %84, i32 %85)
  %87 = call i32 (%struct.bcma_erom*, i8*, ...) @EROM_LOG(%struct.bcma_erom* %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %86)
  %88 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %89 = load i64, i64* %5, align 8
  %90 = load i32, i32* @COREB_NUM_MP, align 4
  %91 = call i32 @BCMA_EROM_GET_ATTR(i64 %89, i32 %90)
  %92 = call i32 (%struct.bcma_erom*, i8*, ...) @EROM_LOG(%struct.bcma_erom* %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %91)
  %93 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %94 = load i64, i64* %5, align 8
  %95 = load i32, i32* @COREB_NUM_DP, align 4
  %96 = call i32 @BCMA_EROM_GET_ATTR(i64 %94, i32 %95)
  %97 = call i32 (%struct.bcma_erom*, i8*, ...) @EROM_LOG(%struct.bcma_erom* %93, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %96)
  %98 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %99 = load i64, i64* %5, align 8
  %100 = load i32, i32* @COREB_NUM_WMP, align 4
  %101 = call i32 @BCMA_EROM_GET_ATTR(i64 %99, i32 %100)
  %102 = call i32 (%struct.bcma_erom*, i8*, ...) @EROM_LOG(%struct.bcma_erom* %98, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 %101)
  %103 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %104 = load i64, i64* %5, align 8
  %105 = load i32, i32* @COREB_NUM_WMP, align 4
  %106 = call i32 @BCMA_EROM_GET_ATTR(i64 %104, i32 %105)
  %107 = call i32 (%struct.bcma_erom*, i8*, ...) @EROM_LOG(%struct.bcma_erom* %103, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 %106)
  br label %226

108:                                              ; preds = %36
  %109 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %110 = load i64, i64* %5, align 8
  %111 = call i32 (%struct.bcma_erom*, i8*, ...) @EROM_LOG(%struct.bcma_erom* %109, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i64 %110)
  %112 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %113 = load i64, i64* %5, align 8
  %114 = load i32, i32* @MPORT_NUM, align 4
  %115 = call i32 @BCMA_EROM_GET_ATTR(i64 %113, i32 %114)
  %116 = call i32 (%struct.bcma_erom*, i8*, ...) @EROM_LOG(%struct.bcma_erom* %112, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 %115)
  %117 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %118 = load i64, i64* %5, align 8
  %119 = load i32, i32* @MPORT_ID, align 4
  %120 = call i32 @BCMA_EROM_GET_ATTR(i64 %118, i32 %119)
  %121 = call i32 (%struct.bcma_erom*, i8*, ...) @EROM_LOG(%struct.bcma_erom* %117, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32 %120)
  br label %226

122:                                              ; preds = %36
  %123 = load i64, i64* %5, align 8
  %124 = load i32, i32* @REGION_64BIT, align 4
  %125 = call i32 @BCMA_EROM_GET_ATTR(i64 %123, i32 %124)
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i32
  store i32 %127, i32* %7, align 4
  %128 = load i64, i64* %5, align 8
  %129 = load i32, i32* @REGION_SIZE, align 4
  %130 = call i32 @BCMA_EROM_GET_ATTR(i64 %128, i32 %129)
  store i32 %130, i32* %8, align 4
  %131 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %132 = load i64, i64* %5, align 8
  %133 = call i32 (%struct.bcma_erom*, i8*, ...) @EROM_LOG(%struct.bcma_erom* %131, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i64 %132)
  %134 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0)
  %139 = load i64, i64* %5, align 8
  %140 = load i32, i32* @REGION_BASE, align 4
  %141 = call i32 @BCMA_EROM_GET_ATTR(i64 %139, i32 %140)
  %142 = call i32 (%struct.bcma_erom*, i8*, ...) @EROM_LOG(%struct.bcma_erom* %134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* %138, i32 %141)
  %143 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %144 = load i64, i64* %5, align 8
  %145 = load i32, i32* @REGION_PORT, align 4
  %146 = call i32 @BCMA_EROM_GET_ATTR(i64 %144, i32 %145)
  %147 = call i32 (%struct.bcma_erom*, i8*, ...) @EROM_LOG(%struct.bcma_erom* %143, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 %146)
  %148 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %149 = load i64, i64* %5, align 8
  %150 = load i32, i32* @REGION_TYPE, align 4
  %151 = call i32 @BCMA_EROM_GET_ATTR(i64 %149, i32 %150)
  %152 = call i32 (%struct.bcma_erom*, i8*, ...) @EROM_LOG(%struct.bcma_erom* %148, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i32 %151)
  %153 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %154 = load i32, i32* %8, align 4
  %155 = call i32 (%struct.bcma_erom*, i8*, ...) @EROM_LOG(%struct.bcma_erom* %153, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0), i32 %154)
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %122
  %159 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %160 = call i32 @bcma_erom_read32(%struct.bcma_erom* %159, i64* %5)
  store i32 %160, i32* %6, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %158
  %163 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %164 = load i32, i32* %6, align 4
  %165 = call i32 (%struct.bcma_erom*, i8*, ...) @EROM_LOG(%struct.bcma_erom* %163, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.23, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* %6, align 4
  store i32 %166, i32* %2, align 4
  br label %244

167:                                              ; preds = %158
  %168 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %169 = load i64, i64* %5, align 8
  %170 = call i32 (%struct.bcma_erom*, i8*, ...) @EROM_LOG(%struct.bcma_erom* %168, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i64 %169)
  br label %171

171:                                              ; preds = %167, %122
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @BCMA_EROM_REGION_SIZE_OTHER, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %218

175:                                              ; preds = %171
  %176 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %177 = call i32 @bcma_erom_read32(%struct.bcma_erom* %176, i64* %5)
  store i32 %177, i32* %6, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %175
  %180 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %181 = load i32, i32* %6, align 4
  %182 = call i32 (%struct.bcma_erom*, i8*, ...) @EROM_LOG(%struct.bcma_erom* %180, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.25, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* %6, align 4
  store i32 %183, i32* %2, align 4
  br label %244

184:                                              ; preds = %175
  %185 = load i64, i64* %5, align 8
  %186 = load i32, i32* @RSIZE_64BIT, align 4
  %187 = call i32 @BCMA_EROM_GET_ATTR(i64 %185, i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  store i32 1, i32* %9, align 4
  br label %191

190:                                              ; preds = %184
  store i32 0, i32* %9, align 4
  br label %191

191:                                              ; preds = %190, %189
  %192 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %193 = load i32, i32* %9, align 4
  %194 = icmp ne i32 %193, 0
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0)
  %197 = load i64, i64* %5, align 8
  %198 = load i32, i32* @RSIZE_VAL, align 4
  %199 = call i32 @BCMA_EROM_GET_ATTR(i64 %197, i32 %198)
  %200 = call i32 (%struct.bcma_erom*, i8*, ...) @EROM_LOG(%struct.bcma_erom* %192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* %196, i32 %199)
  %201 = load i32, i32* %9, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %217

203:                                              ; preds = %191
  %204 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %205 = call i32 @bcma_erom_read32(%struct.bcma_erom* %204, i64* %5)
  store i32 %205, i32* %6, align 4
  %206 = load i32, i32* %6, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %203
  %209 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %210 = load i32, i32* %6, align 4
  %211 = call i32 (%struct.bcma_erom*, i8*, ...) @EROM_LOG(%struct.bcma_erom* %209, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i64 0, i64 0), i32 %210)
  %212 = load i32, i32* %6, align 4
  store i32 %212, i32* %2, align 4
  br label %244

213:                                              ; preds = %203
  %214 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %215 = load i64, i64* %5, align 8
  %216 = call i32 (%struct.bcma_erom*, i8*, ...) @EROM_LOG(%struct.bcma_erom* %214, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), i64 %215)
  br label %217

217:                                              ; preds = %213, %191
  br label %218

218:                                              ; preds = %217, %171
  br label %226

219:                                              ; preds = %36
  %220 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %221 = load i64, i64* %5, align 8
  %222 = load i64, i64* %5, align 8
  %223 = call i32 @bcma_erom_entry_type_name(i64 %222)
  %224 = call i32 (%struct.bcma_erom*, i8*, ...) @EROM_LOG(%struct.bcma_erom* %220, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.30, i64 0, i64 0), i64 %221, i32 %223)
  %225 = load i32, i32* @EINVAL, align 4
  store i32 %225, i32* %2, align 4
  br label %244

226:                                              ; preds = %218, %108, %79
  br label %14

227:                                              ; preds = %14
  %228 = load i32, i32* %6, align 4
  %229 = load i32, i32* @ENOENT, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %227
  %232 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %233 = call i32 (%struct.bcma_erom*, i8*, ...) @EROM_LOG(%struct.bcma_erom* %232, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i64 0, i64 0))
  br label %242

234:                                              ; preds = %227
  %235 = load i32, i32* %6, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %234
  %238 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %239 = load i32, i32* %6, align 4
  %240 = call i32 (%struct.bcma_erom*, i8*, ...) @EROM_LOG(%struct.bcma_erom* %238, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i64 0, i64 0), i32 %239)
  br label %241

241:                                              ; preds = %237, %234
  br label %242

242:                                              ; preds = %241, %231
  %243 = load i32, i32* %6, align 4
  store i32 %243, i32* %2, align 4
  br label %244

244:                                              ; preds = %242, %219, %208, %179, %162, %72, %62, %31, %23
  %245 = load i32, i32* %2, align 4
  ret i32 %245
}

declare dso_local i32 @bcma_erom_reset(%struct.bcma_erom*) #1

declare dso_local i32 @bcma_erom_read32(%struct.bcma_erom*, i64*) #1

declare dso_local i32 @EROM_LOG(%struct.bcma_erom*, i8*, ...) #1

declare dso_local i32 @BCMA_EROM_GET_ATTR(i64, i32) #1

declare dso_local i32 @BCMA_EROM_ENTRY_IS(i64, i32) #1

declare dso_local i32 @bcma_erom_entry_type_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
