; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mpsutil/extr_mps_show.c_show_iocfacts.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mpsutil/extr_mps_show.c_show_iocfacts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@mps_unit = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"mps_open\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"could not get controller IOCFacts\0A\00", align 1
@.str.2 = private unnamed_addr constant [162 x i8] c"\03ScsiTaskFull\04DiagTrace\05SnapBuf\06ExtBuf\07EEDP\08BiDirTarg\09Multicast\0CTransRetry\0DIR\0EEventReplay\0FRaidAccel\10MSIXIndex\11HostDisc\12FastPath\13RDPQArray\14AtomicReqDesc\15PCIeSRIOV\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"          MsgVersion: %02d.%02d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"           MsgLength: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"            Function: 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"       HeaderVersion: %02d,%02d\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"           IOCNumber: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"            MsgFlags: 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"               VP_ID: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"               VF_ID: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"       IOCExceptions: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"           IOCStatus: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"          IOCLogInfo: 0x%x\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"       MaxChainDepth: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"             WhoInit: 0x%x\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"       NumberOfPorts: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"      MaxMSIxVectors: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"       RequestCredit: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"           ProductID: 0x%x\0A\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"     IOCCapabilities: 0x%x %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"           FWVersion: 0x%08x\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c" IOCRequestFrameSize: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"       MaxInitiators: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"          MaxTargets: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"     MaxSasExpanders: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"       MaxEnclosures: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"\04NvmeDevices\02ScsiTarget\01ScsiInitiator\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"       ProtocolFlags: 0x%x %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"  HighPriorityCredit: %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"MaxRepDescPostQDepth: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"      ReplyFrameSize: %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"          MaxVolumes: %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"        MaxDevHandle: %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"MaxPersistentEntries: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"        MinDevHandle: %d\0A\00", align 1
@IOCCAP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @show_iocfacts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_iocfacts(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* @mps_unit, align 4
  %11 = call i32 @mps_open(i32 %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @errno, align 4
  store i32 %15, i32* %8, align 4
  %16 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %185

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.TYPE_6__* @mps_get_iocfacts(i32 %19)
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %6, align 8
  %21 = icmp eq %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @close(i32 %24)
  %26 = load i32, i32* @errno, align 4
  store i32 %26, i32* %3, align 4
  br label %185

27:                                               ; preds = %18
  %28 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %29 = call i32 @bzero(i8* %28, i32 128)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %34 = call i32 @mps_parse_flags(i32 %32, i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str.2, i64 0, i64 0), i8* %33, i32 128)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 255
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %38, i32 %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 255
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %55, i32 %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %67)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %71)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %75)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 %79)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 10
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %83)
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 11
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 %87)
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 12
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %91)
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 13
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i32 %95)
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 14
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i32 %99)
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 15
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i32 %103)
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 16
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i32 %107)
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 17
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i32 %111)
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i32 %115, i8* %116)
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 31
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0), i32 %121)
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 18
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0), i32 %125)
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 19
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0), i32 %129)
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 20
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0), i32 %133)
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 21
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0), i32 %137)
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 22
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0), i32 %141)
  %143 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %144 = call i32 @bzero(i8* %143, i32 128)
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 23
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %149 = call i32 @mps_parse_flags(i32 %147, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.27, i64 0, i64 0), i8* %148, i32 128)
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 23
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0), i32 %152, i8* %153)
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 24
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i64 0, i64 0), i32 %157)
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 25
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0), i32 %161)
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 26
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i64 0, i64 0), i32 %165)
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 27
  %169 = load i32, i32* %168, align 4
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i64 0, i64 0), i32 %169)
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 28
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i64 0, i64 0), i32 %173)
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 29
  %177 = load i32, i32* %176, align 4
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.34, i64 0, i64 0), i32 %177)
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 30
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i64 0, i64 0), i32 %181)
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %184 = call i32 @free(%struct.TYPE_6__* %183)
  store i32 0, i32* %3, align 4
  br label %185

185:                                              ; preds = %27, %22, %14
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local i32 @mps_open(i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local %struct.TYPE_6__* @mps_get_iocfacts(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @mps_parse_flags(i32, i8*, i8*, i32) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
