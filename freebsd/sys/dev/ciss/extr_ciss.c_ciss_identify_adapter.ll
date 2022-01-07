; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_identify_adapter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_identify_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_softc = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i8*, i8*, i32, i32 }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.ciss_request = type { i32 }

@CISS_BMIC_ID_CTLR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"error sending BMIC ID_CTLR command (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"data over/underrun reading adapter information\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"error reading adapter information (%s)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@CONTROLLER_FLAGS_BIG_MAP_SUPPORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"adapter does not support BIG_MAP\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@CISS_FLAG_BMIC_ABORT = common dso_local global i32 0, align 4
@CISS_MAX_LOGICAL = common dso_local global i8* null, align 8
@CISS_MAX_PHYSICAL = common dso_local global i8* null, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"  %d logical drive%s configured\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"  firmware %4.4s\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"  %d SCSI channels\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"  signature '%.4s'\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"  valence %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"  supported I/O methods 0x%b\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"\10\01READY\02simple\03performant\04MEMQ\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"  active I/O method 0x%b\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"\10\02simple\03performant\04MEMQ\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"  4G page base 0x%08x\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"  interrupt coalesce delay %dus\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"  interrupt coalesce count %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"  max outstanding commands %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"  bus types 0x%b\0A\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"\10\01ultra2\02ultra3\08fibre1\09fibre2\0A\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"  server name '%.16s'\0A\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"  heartbeat 0x%x\0A\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"  max logical logical volumes: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"  max physical disks supported: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"  max physical disks per logical volume: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"  JBOD Support is %s\0A\00", align 1
@YMORE_CONTROLLER_FLAGS_JBOD_SUPPORTED = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [10 x i8] c"Available\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"Unavailable\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"  JBOD Mode is %s\0A\00", align 1
@PWR_UP_FLAG_JBOD_ENABLED = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@CISS_MALLOC_CLASS = common dso_local global i32 0, align 4
@CISS_FLAG_FAKE_SYNCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ciss_softc*)* @ciss_identify_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciss_identify_adapter(%struct.ciss_softc* %0) #0 {
  %2 = alloca %struct.ciss_softc*, align 8
  %3 = alloca %struct.ciss_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ciss_softc* %0, %struct.ciss_softc** %2, align 8
  %6 = call i32 @debug_called(i32 1)
  store %struct.ciss_request* null, %struct.ciss_request** %3, align 8
  %7 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %8 = load i32, i32* @CISS_BMIC_ID_CTLR, align 4
  %9 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %9, i32 0, i32 0
  %11 = bitcast %struct.TYPE_4__** %10 to i8**
  %12 = call i32 @ciss_get_bmic_request(%struct.ciss_softc* %7, %struct.ciss_request** %3, i32 %8, i8** %11, i32 32)
  store i32 %12, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %237

15:                                               ; preds = %1
  %16 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %17 = call i32 @ciss_synch_request(%struct.ciss_request* %16, i32 60000)
  store i32 %17, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %237

23:                                               ; preds = %15
  %24 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %25 = call i32 @ciss_report_request(%struct.ciss_request* %24, i32* %5, i32* null)
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %31 [
    i32 128, label %27
    i32 129, label %28
    i32 130, label %28
  ]

27:                                               ; preds = %23
  br label %37

28:                                               ; preds = %23, %23
  %29 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %30 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %29, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %23, %28
  %32 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i8* @ciss_name_command_status(i32 %33)
  %35 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* @EIO, align 4
  store i32 %36, i32* %4, align 4
  br label %237

37:                                               ; preds = %27
  %38 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %39 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @CONTROLLER_FLAGS_BIG_MAP_SUPPORT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %37
  %47 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %48 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32, i32* @ENXIO, align 4
  store i32 %49, i32* %4, align 4
  br label %237

50:                                               ; preds = %37
  %51 = load i32, i32* @CISS_FLAG_BMIC_ABORT, align 4
  %52 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %53 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %57 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %50
  %63 = load i8*, i8** @CISS_MAX_LOGICAL, align 8
  %64 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %65 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i8* %63, i8** %67, align 8
  br label %68

68:                                               ; preds = %62, %50
  %69 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %70 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load i8*, i8** @CISS_MAX_PHYSICAL, align 8
  %77 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %78 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %77, i32 0, i32 1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  store i8* %76, i8** %80, align 8
  br label %81

81:                                               ; preds = %75, %68
  %82 = load i64, i64* @bootverbose, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %236

84:                                               ; preds = %81
  %85 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %86 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %87 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %92 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 1
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %99 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %85, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %90, i8* %98)
  %100 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %101 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %102 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %105)
  %107 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %108 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %109 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 3
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %107, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %112)
  %114 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %115 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %116 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %115, i32 0, i32 1
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 2
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %114, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %119)
  %121 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %122 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %123 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %122, i32 0, i32 1
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 3
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %121, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %126)
  %128 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %129 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %130 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %129, i32 0, i32 1
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 13
  %133 = load i32, i32* %132, align 8
  %134 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %128, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %133, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  %135 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %136 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %137 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %136, i32 0, i32 1
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 12
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %135, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 %140, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  %142 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %143 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %144 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %143, i32 0, i32 1
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 4
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %142, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i8* %147)
  %149 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %150 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %151 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %150, i32 0, i32 1
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 5
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %149, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i8* %154)
  %156 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %157 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %158 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %157, i32 0, i32 1
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 6
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %156, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* %161)
  %163 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %164 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %165 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %164, i32 0, i32 1
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 7
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %163, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i8* %168)
  %170 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %171 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %172 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %171, i32 0, i32 1
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 11
  %175 = load i32, i32* %174, align 8
  %176 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %170, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i32 %175, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0))
  %177 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %178 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %179 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %178, i32 0, i32 1
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 8
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %177, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i8* %182)
  %184 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %185 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %186 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %185, i32 0, i32 1
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 9
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %184, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0), i8* %189)
  %191 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %192 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %193 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %192, i32 0, i32 1
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %191, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i64 0, i64 0), i8* %196)
  %198 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %199 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %200 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %199, i32 0, i32 1
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 1
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %198, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i64 0, i64 0), i8* %203)
  %205 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %206 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %207 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %206, i32 0, i32 1
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 10
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %205, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.25, i64 0, i64 0), i8* %210)
  %212 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %213 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %214 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %213, i32 0, i32 0
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @YMORE_CONTROLLER_FLAGS_JBOD_SUPPORTED, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0)
  %223 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %212, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0), i8* %222)
  %224 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %225 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %226 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %225, i32 0, i32 0
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 5
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @PWR_UP_FLAG_JBOD_ENABLED, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  %233 = zext i1 %232 to i64
  %234 = select i1 %232, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0)
  %235 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %224, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0), i8* %234)
  br label %236

236:                                              ; preds = %84, %81
  br label %237

237:                                              ; preds = %236, %46, %31, %19, %14
  %238 = load i32, i32* %4, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %254

240:                                              ; preds = %237
  %241 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %242 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %241, i32 0, i32 0
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %242, align 8
  %244 = icmp ne %struct.TYPE_4__* %243, null
  br i1 %244, label %245, label %253

245:                                              ; preds = %240
  %246 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %247 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %246, i32 0, i32 0
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %247, align 8
  %249 = load i32, i32* @CISS_MALLOC_CLASS, align 4
  %250 = call i32 @free(%struct.TYPE_4__* %248, i32 %249)
  %251 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %252 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %251, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %252, align 8
  br label %253

253:                                              ; preds = %245, %240
  br label %254

254:                                              ; preds = %253, %237
  %255 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %256 = icmp ne %struct.ciss_request* %255, null
  br i1 %256, label %257, label %260

257:                                              ; preds = %254
  %258 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %259 = call i32 @ciss_release_request(%struct.ciss_request* %258)
  br label %260

260:                                              ; preds = %257, %254
  %261 = load i32, i32* %4, align 4
  ret i32 %261
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @ciss_get_bmic_request(%struct.ciss_softc*, %struct.ciss_request**, i32, i8**, i32) #1

declare dso_local i32 @ciss_synch_request(%struct.ciss_request*, i32) #1

declare dso_local i32 @ciss_printf(%struct.ciss_softc*, i8*, ...) #1

declare dso_local i32 @ciss_report_request(%struct.ciss_request*, i32*, i32*) #1

declare dso_local i8* @ciss_name_command_status(i32) #1

declare dso_local i32 @free(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @ciss_release_request(%struct.ciss_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
