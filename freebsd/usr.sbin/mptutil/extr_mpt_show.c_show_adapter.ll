; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_show.c_show_adapter.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_show.c_show_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"show adapter: extra arguments\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mpt_unit = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"mpt_open\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to get controller info\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Invalid controller info\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"mpt%d Adapter:\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"       Board Name: %.16s\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"   Board Assembly: %.16s\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"        Chip Name: %.16s\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"    Chip Revision: %.16s\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"      RAID Levels:\00", align 1
@MPI_IOCPAGE2_CAP_FLAGS_IS_SUPPORT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c" RAID0\00", align 1
@MPI_IOCPAGE2_CAP_FLAGS_IM_SUPPORT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"%s RAID1\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MPI_IOCPAGE2_CAP_FLAGS_IME_SUPPORT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"%s RAID1E\00", align 1
@MPI_IOCPAGE2_CAP_FLAGS_RAID_5_SUPPORT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"%s RAID5\00", align 1
@MPI_IOCPAGE2_CAP_FLAGS_RAID_6_SUPPORT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"%s RAID6\00", align 1
@MPI_IOCPAGE2_CAP_FLAGS_RAID_10_SUPPORT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [10 x i8] c"%s RAID10\00", align 1
@MPI_IOCPAGE2_CAP_FLAGS_RAID_50_SUPPORT = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [10 x i8] c"%s RAID50\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c" none\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MPI_IOCSTATUS_MASK = common dso_local global i32 0, align 4
@MPI_IOCSTATUS_CONFIG_INVALID_PAGE = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [25 x i8] c"mpt_read_ioc_page(2): %s\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"    RAID0 Stripes\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"   RAID1E Stripes\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c" RAID0 Drives/Vol: %u\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"-%u\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c" RAID1 Drives/Vol: %u\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"RAID1E Drives/Vol: %u\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"mpt_read_ioc_page(6): %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @show_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_adapter(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %269

18:                                               ; preds = %2
  %19 = load i32, i32* @mpt_unit, align 4
  %20 = call i32 @mpt_open(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @errno, align 4
  store i32 %24, i32* %11, align 4
  %25 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %3, align 4
  br label %269

27:                                               ; preds = %18
  %28 = load i32, i32* %12, align 4
  %29 = call %struct.TYPE_9__* @mpt_read_man_page(i32 %28, i32 0, i32* null)
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %6, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = icmp eq %struct.TYPE_9__* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32, i32* @errno, align 4
  store i32 %33, i32* %11, align 4
  %34 = call i32 @warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @close(i32 %35)
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %3, align 4
  br label %269

38:                                               ; preds = %27
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 13
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %43, 18
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = call i32 @free(%struct.TYPE_9__* %47)
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @close(i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %3, align 4
  br label %269

52:                                               ; preds = %38
  %53 = load i32, i32* @mpt_unit, align 4
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %57)
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %61)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %65)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 3
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* %69)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = call i32 @free(%struct.TYPE_9__* %71)
  %73 = load i32, i32* %12, align 4
  %74 = call %struct.TYPE_9__* @mpt_read_ioc_page(i32 %73, i32 2, i32* %9)
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %7, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = icmp ne %struct.TYPE_9__* %75, null
  br i1 %76, label %77, label %174

77:                                               ; preds = %52
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @MPI_IOCPAGE2_CAP_FLAGS_IS_SUPPORT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %87

87:                                               ; preds = %85, %77
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @MPI_IOCPAGE2_CAP_FLAGS_IM_SUPPORT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %87
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* %98)
  store i32 1, i32* %10, align 4
  br label %100

100:                                              ; preds = %94, %87
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @MPI_IOCPAGE2_CAP_FLAGS_IME_SUPPORT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* %111)
  store i32 1, i32* %10, align 4
  br label %113

113:                                              ; preds = %107, %100
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @MPI_IOCPAGE2_CAP_FLAGS_RAID_5_SUPPORT, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %113
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8* %124)
  store i32 1, i32* %10, align 4
  br label %126

126:                                              ; preds = %120, %113
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @MPI_IOCPAGE2_CAP_FLAGS_RAID_6_SUPPORT, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %126
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* %137)
  store i32 1, i32* %10, align 4
  br label %139

139:                                              ; preds = %133, %126
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @MPI_IOCPAGE2_CAP_FLAGS_RAID_10_SUPPORT, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %139
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* %150)
  store i32 1, i32* %10, align 4
  br label %152

152:                                              ; preds = %146, %139
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @MPI_IOCPAGE2_CAP_FLAGS_RAID_50_SUPPORT, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %152
  %160 = load i32, i32* %10, align 4
  %161 = icmp ne i32 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)
  %164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* %163)
  store i32 1, i32* %10, align 4
  br label %165

165:                                              ; preds = %159, %152
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %165
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  br label %170

170:                                              ; preds = %168, %165
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %173 = call i32 @free(%struct.TYPE_9__* %172)
  br label %185

174:                                              ; preds = %52
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* @MPI_IOCSTATUS_MASK, align 4
  %177 = and i32 %175, %176
  %178 = load i32, i32* @MPI_IOCSTATUS_CONFIG_INVALID_PAGE, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %174
  %181 = load i32, i32* %9, align 4
  %182 = call i32 @mpt_ioc_status(i32 %181)
  %183 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i32 %182)
  br label %184

184:                                              ; preds = %180, %174
  br label %185

185:                                              ; preds = %184, %170
  %186 = load i32, i32* %12, align 4
  %187 = call %struct.TYPE_9__* @mpt_read_ioc_page(i32 %186, i32 6, i32* %9)
  store %struct.TYPE_9__* %187, %struct.TYPE_9__** %8, align 8
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %189 = icmp ne %struct.TYPE_9__* %188, null
  br i1 %189, label %190, label %255

190:                                              ; preds = %185
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 12
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @display_stripe_map(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0), i32 %193)
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 11
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @display_stripe_map(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 %197)
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 4
  %202 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0), i32 %201)
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 8
  %209 = icmp ne i32 %205, %208
  br i1 %209, label %210, label %215

210:                                              ; preds = %190
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 8
  %214 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i32 %213)
  br label %215

215:                                              ; preds = %210, %190
  %216 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 7
  %219 = load i32, i32* %218, align 4
  %220 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0), i32 %219)
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 7
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 8
  %226 = load i32, i32* %225, align 8
  %227 = icmp ne i32 %223, %226
  br i1 %227, label %228, label %233

228:                                              ; preds = %215
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 8
  %231 = load i32, i32* %230, align 8
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i32 %231)
  br label %233

233:                                              ; preds = %228, %215
  %234 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 9
  %237 = load i32, i32* %236, align 4
  %238 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0), i32 %237)
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 9
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 10
  %244 = load i32, i32* %243, align 8
  %245 = icmp ne i32 %241, %244
  br i1 %245, label %246, label %251

246:                                              ; preds = %233
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 10
  %249 = load i32, i32* %248, align 8
  %250 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i32 %249)
  br label %251

251:                                              ; preds = %246, %233
  %252 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %254 = call i32 @free(%struct.TYPE_9__* %253)
  br label %266

255:                                              ; preds = %185
  %256 = load i32, i32* %9, align 4
  %257 = load i32, i32* @MPI_IOCSTATUS_MASK, align 4
  %258 = and i32 %256, %257
  %259 = load i32, i32* @MPI_IOCSTATUS_CONFIG_INVALID_PAGE, align 4
  %260 = icmp ne i32 %258, %259
  br i1 %260, label %261, label %265

261:                                              ; preds = %255
  %262 = load i32, i32* %9, align 4
  %263 = call i32 @mpt_ioc_status(i32 %262)
  %264 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0), i32 %263)
  br label %265

265:                                              ; preds = %261, %255
  br label %266

266:                                              ; preds = %265, %251
  %267 = load i32, i32* %12, align 4
  %268 = call i32 @close(i32 %267)
  store i32 0, i32* %3, align 4
  br label %269

269:                                              ; preds = %266, %45, %32, %23, %15
  %270 = load i32, i32* %3, align 4
  ret i32 %270
}

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @mpt_open(i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local %struct.TYPE_9__* @mpt_read_man_page(i32, i32, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.TYPE_9__* @mpt_read_ioc_page(i32, i32, i32*) #1

declare dso_local i32 @mpt_ioc_status(i32) #1

declare dso_local i32 @display_stripe_map(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
