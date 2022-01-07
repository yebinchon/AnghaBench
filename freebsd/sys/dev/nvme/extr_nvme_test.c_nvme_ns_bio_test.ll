; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_test.c_nvme_ns_bio_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_test.c_nvme_ns_bio_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_io_test_internal = type { i64, i64, i32, i64, i32, i8**, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { %struct.cdev* }
%struct.cdev = type { %struct.cdevsw* }
%struct.cdevsw = type { i32 (%struct.bio*)* }
%struct.bio = type opaque
%struct.mtx = type { i32 }
%struct.bio.0 = type { i64, i32, i64, i8*, i8*, %struct.cdev*, i32, i32 }
%struct.timeval = type { i64 }

@M_NVME = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@NVME_OPC_READ = common dso_local global i64 0, align 8
@BIO_READ = common dso_local global i32 0, align 4
@BIO_WRITE = common dso_local global i32 0, align 4
@nvme_ns_bio_test_cb = common dso_local global i32 0, align 4
@NVME_TEST_FLAG_REFTHREAD = common dso_local global i32 0, align 4
@mtxpool_sleep = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"biotestwait\00", align 1
@BIO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nvme_ns_bio_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_ns_bio_test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nvme_io_test_internal*, align 8
  %4 = alloca %struct.cdevsw*, align 8
  %5 = alloca %struct.mtx*, align 8
  %6 = alloca %struct.bio.0*, align 8
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = bitcast i8* %14 to %struct.nvme_io_test_internal*
  store %struct.nvme_io_test_internal* %15, %struct.nvme_io_test_internal** %3, align 8
  store i8* null, i8** %10, align 8
  %16 = load %struct.nvme_io_test_internal*, %struct.nvme_io_test_internal** %3, align 8
  %17 = getelementptr inbounds %struct.nvme_io_test_internal, %struct.nvme_io_test_internal* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @M_NVME, align 4
  %20 = load i32, i32* @M_WAITOK, align 4
  %21 = call i8* @malloc(i64 %18, i32 %19, i32 %20)
  store i8* %21, i8** %8, align 8
  %22 = load %struct.nvme_io_test_internal*, %struct.nvme_io_test_internal** %3, align 8
  %23 = getelementptr inbounds %struct.nvme_io_test_internal, %struct.nvme_io_test_internal* %22, i32 0, i32 8
  %24 = call i32 @atomic_fetchadd_int(i32* %23, i32 1)
  store i32 %24, i32* %12, align 4
  %25 = load %struct.nvme_io_test_internal*, %struct.nvme_io_test_internal** %3, align 8
  %26 = getelementptr inbounds %struct.nvme_io_test_internal, %struct.nvme_io_test_internal* %25, i32 0, i32 6
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.cdev*, %struct.cdev** %28, align 8
  store %struct.cdev* %29, %struct.cdev** %7, align 8
  %30 = load i32, i32* %12, align 4
  %31 = mul nsw i32 %30, 2048
  %32 = load %struct.nvme_io_test_internal*, %struct.nvme_io_test_internal** %3, align 8
  %33 = getelementptr inbounds %struct.nvme_io_test_internal, %struct.nvme_io_test_internal* %32, i32 0, i32 6
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = call i32 @nvme_ns_get_sector_size(%struct.TYPE_3__* %34)
  %36 = mul nsw i32 %31, %35
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %11, align 8
  br label %39

39:                                               ; preds = %1, %161
  %40 = call %struct.bio.0* (...) @g_alloc_bio()
  store %struct.bio.0* %40, %struct.bio.0** %6, align 8
  %41 = load %struct.bio.0*, %struct.bio.0** %6, align 8
  %42 = call i32 @memset(%struct.bio.0* %41, i32 0, i32 56)
  %43 = load %struct.nvme_io_test_internal*, %struct.nvme_io_test_internal** %3, align 8
  %44 = getelementptr inbounds %struct.nvme_io_test_internal, %struct.nvme_io_test_internal* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NVME_OPC_READ, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* @BIO_READ, align 4
  br label %52

50:                                               ; preds = %39
  %51 = load i32, i32* @BIO_WRITE, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = load %struct.bio.0*, %struct.bio.0** %6, align 8
  %55 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @nvme_ns_bio_test_cb, align 4
  %57 = load %struct.bio.0*, %struct.bio.0** %6, align 8
  %58 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 8
  %59 = load %struct.cdev*, %struct.cdev** %7, align 8
  %60 = load %struct.bio.0*, %struct.bio.0** %6, align 8
  %61 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %60, i32 0, i32 5
  store %struct.cdev* %59, %struct.cdev** %61, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = load %struct.bio.0*, %struct.bio.0** %6, align 8
  %64 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.bio.0*, %struct.bio.0** %6, align 8
  %67 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load %struct.nvme_io_test_internal*, %struct.nvme_io_test_internal** %3, align 8
  %69 = getelementptr inbounds %struct.nvme_io_test_internal, %struct.nvme_io_test_internal* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.bio.0*, %struct.bio.0** %6, align 8
  %72 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.nvme_io_test_internal*, %struct.nvme_io_test_internal** %3, align 8
  %74 = getelementptr inbounds %struct.nvme_io_test_internal, %struct.nvme_io_test_internal* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @NVME_TEST_FLAG_REFTHREAD, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %52
  %80 = load %struct.cdev*, %struct.cdev** %7, align 8
  %81 = call %struct.cdevsw* @dev_refthread(%struct.cdev* %80, i32* %13)
  store %struct.cdevsw* %81, %struct.cdevsw** %4, align 8
  br label %86

82:                                               ; preds = %52
  %83 = load %struct.cdev*, %struct.cdev** %7, align 8
  %84 = getelementptr inbounds %struct.cdev, %struct.cdev* %83, i32 0, i32 0
  %85 = load %struct.cdevsw*, %struct.cdevsw** %84, align 8
  store %struct.cdevsw* %85, %struct.cdevsw** %4, align 8
  br label %86

86:                                               ; preds = %82, %79
  %87 = load i32, i32* @mtxpool_sleep, align 4
  %88 = load %struct.bio.0*, %struct.bio.0** %6, align 8
  %89 = call %struct.mtx* @mtx_pool_find(i32 %87, %struct.bio.0* %88)
  store %struct.mtx* %89, %struct.mtx** %5, align 8
  %90 = load %struct.mtx*, %struct.mtx** %5, align 8
  %91 = call i32 @mtx_lock(%struct.mtx* %90)
  %92 = load %struct.cdevsw*, %struct.cdevsw** %4, align 8
  %93 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %92, i32 0, i32 0
  %94 = load i32 (%struct.bio*)*, i32 (%struct.bio*)** %93, align 8
  %95 = load %struct.bio.0*, %struct.bio.0** %6, align 8
  %96 = bitcast %struct.bio.0* %95 to %struct.bio*
  %97 = call i32 %94(%struct.bio* %96)
  %98 = load %struct.bio.0*, %struct.bio.0** %6, align 8
  %99 = load %struct.mtx*, %struct.mtx** %5, align 8
  %100 = load i32, i32* @PRIBIO, align 4
  %101 = call i32 @msleep(%struct.bio.0* %98, %struct.mtx* %99, i32 %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0)
  %102 = load %struct.mtx*, %struct.mtx** %5, align 8
  %103 = call i32 @mtx_unlock(%struct.mtx* %102)
  %104 = load %struct.nvme_io_test_internal*, %struct.nvme_io_test_internal** %3, align 8
  %105 = getelementptr inbounds %struct.nvme_io_test_internal, %struct.nvme_io_test_internal* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @NVME_TEST_FLAG_REFTHREAD, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %86
  %111 = load %struct.cdev*, %struct.cdev** %7, align 8
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @dev_relthread(%struct.cdev* %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %86
  %115 = load %struct.bio.0*, %struct.bio.0** %6, align 8
  %116 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @BIO_ERROR, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %114
  %122 = load %struct.bio.0*, %struct.bio.0** %6, align 8
  %123 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121, %114
  br label %162

127:                                              ; preds = %121
  %128 = load %struct.bio.0*, %struct.bio.0** %6, align 8
  %129 = call i32 @g_destroy_bio(%struct.bio.0* %128)
  %130 = load i8*, i8** %10, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %10, align 8
  %132 = call i32 @getmicrouptime(%struct.timeval* %9)
  %133 = load %struct.nvme_io_test_internal*, %struct.nvme_io_test_internal** %3, align 8
  %134 = getelementptr inbounds %struct.nvme_io_test_internal, %struct.nvme_io_test_internal* %133, i32 0, i32 7
  %135 = call i32 @timevalsub(%struct.timeval* %9, i32* %134)
  %136 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.nvme_io_test_internal*, %struct.nvme_io_test_internal** %3, align 8
  %139 = getelementptr inbounds %struct.nvme_io_test_internal, %struct.nvme_io_test_internal* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = icmp sge i64 %137, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %127
  br label %162

143:                                              ; preds = %127
  %144 = load %struct.nvme_io_test_internal*, %struct.nvme_io_test_internal** %3, align 8
  %145 = getelementptr inbounds %struct.nvme_io_test_internal, %struct.nvme_io_test_internal* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i8*, i8** %11, align 8
  %148 = getelementptr i8, i8* %147, i64 %146
  store i8* %148, i8** %11, align 8
  %149 = load i8*, i8** %11, align 8
  %150 = load %struct.nvme_io_test_internal*, %struct.nvme_io_test_internal** %3, align 8
  %151 = getelementptr inbounds %struct.nvme_io_test_internal, %struct.nvme_io_test_internal* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr i8, i8* %149, i64 %152
  %154 = load %struct.nvme_io_test_internal*, %struct.nvme_io_test_internal** %3, align 8
  %155 = getelementptr inbounds %struct.nvme_io_test_internal, %struct.nvme_io_test_internal* %154, i32 0, i32 6
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = call i64 @nvme_ns_get_size(%struct.TYPE_3__* %156)
  %158 = inttoptr i64 %157 to i8*
  %159 = icmp ugt i8* %153, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %143
  store i8* null, i8** %11, align 8
  br label %161

161:                                              ; preds = %160, %143
  br label %39

162:                                              ; preds = %142, %126
  %163 = load i8*, i8** %10, align 8
  %164 = load %struct.nvme_io_test_internal*, %struct.nvme_io_test_internal** %3, align 8
  %165 = getelementptr inbounds %struct.nvme_io_test_internal, %struct.nvme_io_test_internal* %164, i32 0, i32 5
  %166 = load i8**, i8*** %165, align 8
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %166, i64 %168
  store i8* %163, i8** %169, align 8
  %170 = load %struct.nvme_io_test_internal*, %struct.nvme_io_test_internal** %3, align 8
  %171 = call i32 @wakeup_one(%struct.nvme_io_test_internal* %170)
  %172 = load i8*, i8** %8, align 8
  %173 = load i32, i32* @M_NVME, align 4
  %174 = call i32 @free(i8* %172, i32 %173)
  %175 = load %struct.nvme_io_test_internal*, %struct.nvme_io_test_internal** %3, align 8
  %176 = getelementptr inbounds %struct.nvme_io_test_internal, %struct.nvme_io_test_internal* %175, i32 0, i32 4
  %177 = call i32 @atomic_subtract_int(i32* %176, i32 1)
  %178 = call i32 (...) @mb()
  %179 = call i32 (...) @kthread_exit()
  ret void
}

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i32 @atomic_fetchadd_int(i32*, i32) #1

declare dso_local i32 @nvme_ns_get_sector_size(%struct.TYPE_3__*) #1

declare dso_local %struct.bio.0* @g_alloc_bio(...) #1

declare dso_local i32 @memset(%struct.bio.0*, i32, i32) #1

declare dso_local %struct.cdevsw* @dev_refthread(%struct.cdev*, i32*) #1

declare dso_local %struct.mtx* @mtx_pool_find(i32, %struct.bio.0*) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i32 @msleep(%struct.bio.0*, %struct.mtx*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

declare dso_local i32 @dev_relthread(%struct.cdev*, i32) #1

declare dso_local i32 @g_destroy_bio(%struct.bio.0*) #1

declare dso_local i32 @getmicrouptime(%struct.timeval*) #1

declare dso_local i32 @timevalsub(%struct.timeval*, i32*) #1

declare dso_local i64 @nvme_ns_get_size(%struct.TYPE_3__*) #1

declare dso_local i32 @wakeup_one(%struct.nvme_io_test_internal*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @atomic_subtract_int(i32*, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @kthread_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
