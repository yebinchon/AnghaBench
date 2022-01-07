; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev.c_evdev_sysctl_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev.c_evdev_sysctl_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sysctl_oid = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@_kern_evdev_input = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"device index\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Input device name\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@input_id = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"Input device identification\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Input device short name\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"uniq\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Input device unique number\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"props\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Input device properties\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"type_bits\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"Input device supported events types\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"key_bits\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"Input device supported keys\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"rel_bits\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"Input device supported relative events\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"abs_bits\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"Input device supported absolute events\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"msc_bits\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"Input device supported miscellaneous events\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"led_bits\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"Input device supported LED events\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"snd_bits\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"Input device supported sound events\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"sw_bits\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"Input device supported switch events\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evdev_dev*)* @evdev_sysctl_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evdev_sysctl_create(%struct.evdev_dev* %0) #0 {
  %2 = alloca %struct.evdev_dev*, align 8
  %3 = alloca %struct.sysctl_oid*, align 8
  %4 = alloca [8 x i8], align 1
  store %struct.evdev_dev* %0, %struct.evdev_dev** %2, align 8
  %5 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %6 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %7 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @snprintf(i8* %5, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %11 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %10, i32 0, i32 2
  %12 = call i32 @sysctl_ctx_init(i32* %11)
  %13 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %14 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %13, i32 0, i32 2
  %15 = load i32, i32* @_kern_evdev_input, align 4
  %16 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %15)
  %17 = load i32, i32* @OID_AUTO, align 4
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %19 = load i32, i32* @CTLFLAG_RD, align 4
  %20 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE_WITH_LABEL(i32* %14, i32 %16, i32 %17, i8* %18, i32 %19, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store %struct.sysctl_oid* %20, %struct.sysctl_oid** %3, align 8
  %21 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %22 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %21, i32 0, i32 2
  %23 = load %struct.sysctl_oid*, %struct.sysctl_oid** %3, align 8
  %24 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %23)
  %25 = load i32, i32* @OID_AUTO, align 4
  %26 = load i32, i32* @CTLFLAG_RD, align 4
  %27 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %28 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %27, i32 0, i32 14
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @SYSCTL_ADD_STRING(i32* %22, i32 %24, i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %26, i32 %29, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %31 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %32 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %31, i32 0, i32 2
  %33 = load %struct.sysctl_oid*, %struct.sysctl_oid** %3, align 8
  %34 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %33)
  %35 = load i32, i32* @OID_AUTO, align 4
  %36 = load i32, i32* @CTLFLAG_RD, align 4
  %37 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %38 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %37, i32 0, i32 13
  %39 = load i32, i32* @input_id, align 4
  %40 = call i32 @SYSCTL_ADD_STRUCT(i32* %32, i32 %34, i32 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %36, i32* %38, i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %41 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %42 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %41, i32 0, i32 2
  %43 = load %struct.sysctl_oid*, %struct.sysctl_oid** %3, align 8
  %44 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %43)
  %45 = load i32, i32* @OID_AUTO, align 4
  %46 = load i32, i32* @CTLFLAG_RD, align 4
  %47 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %48 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %47, i32 0, i32 12
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @SYSCTL_ADD_STRING(i32* %42, i32 %44, i32 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %46, i32 %49, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %51 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %52 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %51, i32 0, i32 2
  %53 = load %struct.sysctl_oid*, %struct.sysctl_oid** %3, align 8
  %54 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %53)
  %55 = load i32, i32* @OID_AUTO, align 4
  %56 = load i32, i32* @CTLFLAG_RD, align 4
  %57 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %58 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %57, i32 0, i32 11
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @SYSCTL_ADD_STRING(i32* %52, i32 %54, i32 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %56, i32 %59, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %61 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %62 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %61, i32 0, i32 2
  %63 = load %struct.sysctl_oid*, %struct.sysctl_oid** %3, align 8
  %64 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %63)
  %65 = load i32, i32* @OID_AUTO, align 4
  %66 = load i32, i32* @CTLFLAG_RD, align 4
  %67 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %68 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %67, i32 0, i32 10
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @SYSCTL_ADD_OPAQUE(i32* %62, i32 %64, i32 %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %66, i32 %69, i32 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  %71 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %72 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %71, i32 0, i32 2
  %73 = load %struct.sysctl_oid*, %struct.sysctl_oid** %3, align 8
  %74 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %73)
  %75 = load i32, i32* @OID_AUTO, align 4
  %76 = load i32, i32* @CTLFLAG_RD, align 4
  %77 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %78 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @SYSCTL_ADD_OPAQUE(i32* %72, i32 %74, i32 %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %76, i32 %79, i32 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0))
  %81 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %82 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %81, i32 0, i32 2
  %83 = load %struct.sysctl_oid*, %struct.sysctl_oid** %3, align 8
  %84 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %83)
  %85 = load i32, i32* @OID_AUTO, align 4
  %86 = load i32, i32* @CTLFLAG_RD, align 4
  %87 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %88 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @SYSCTL_ADD_OPAQUE(i32* %82, i32 %84, i32 %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %86, i32 %89, i32 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  %91 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %92 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %91, i32 0, i32 2
  %93 = load %struct.sysctl_oid*, %struct.sysctl_oid** %3, align 8
  %94 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %93)
  %95 = load i32, i32* @OID_AUTO, align 4
  %96 = load i32, i32* @CTLFLAG_RD, align 4
  %97 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %98 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @SYSCTL_ADD_OPAQUE(i32* %92, i32 %94, i32 %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 %96, i32 %99, i32 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i64 0, i64 0))
  %101 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %102 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %101, i32 0, i32 2
  %103 = load %struct.sysctl_oid*, %struct.sysctl_oid** %3, align 8
  %104 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %103)
  %105 = load i32, i32* @OID_AUTO, align 4
  %106 = load i32, i32* @CTLFLAG_RD, align 4
  %107 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %108 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @SYSCTL_ADD_OPAQUE(i32* %102, i32 %104, i32 %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %106, i32 %109, i32 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i64 0, i64 0))
  %111 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %112 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %111, i32 0, i32 2
  %113 = load %struct.sysctl_oid*, %struct.sysctl_oid** %3, align 8
  %114 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %113)
  %115 = load i32, i32* @OID_AUTO, align 4
  %116 = load i32, i32* @CTLFLAG_RD, align 4
  %117 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %118 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @SYSCTL_ADD_OPAQUE(i32* %112, i32 %114, i32 %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i32 %116, i32 %119, i32 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i64 0, i64 0))
  %121 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %122 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %121, i32 0, i32 2
  %123 = load %struct.sysctl_oid*, %struct.sysctl_oid** %3, align 8
  %124 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %123)
  %125 = load i32, i32* @OID_AUTO, align 4
  %126 = load i32, i32* @CTLFLAG_RD, align 4
  %127 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %128 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @SYSCTL_ADD_OPAQUE(i32* %122, i32 %124, i32 %125, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i32 %126, i32 %129, i32 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i64 0, i64 0))
  %131 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %132 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %131, i32 0, i32 2
  %133 = load %struct.sysctl_oid*, %struct.sysctl_oid** %3, align 8
  %134 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %133)
  %135 = load i32, i32* @OID_AUTO, align 4
  %136 = load i32, i32* @CTLFLAG_RD, align 4
  %137 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %138 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @SYSCTL_ADD_OPAQUE(i32* %132, i32 %134, i32 %135, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 %136, i32 %139, i32 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0))
  %141 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %142 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %141, i32 0, i32 2
  %143 = load %struct.sysctl_oid*, %struct.sysctl_oid** %3, align 8
  %144 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %143)
  %145 = load i32, i32* @OID_AUTO, align 4
  %146 = load i32, i32* @CTLFLAG_RD, align 4
  %147 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %148 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @SYSCTL_ADD_OPAQUE(i32* %142, i32 %144, i32 %145, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i32 %146, i32 %149, i32 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.28, i64 0, i64 0))
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @sysctl_ctx_init(i32*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE_WITH_LABEL(i32*, i32, i32, i8*, i32, i32*, i8*, i8*) #1

declare dso_local i32 @SYSCTL_STATIC_CHILDREN(i32) #1

declare dso_local i32 @SYSCTL_ADD_STRING(i32*, i32, i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_STRUCT(i32*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_OPAQUE(i32*, i32, i32, i8*, i32, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
