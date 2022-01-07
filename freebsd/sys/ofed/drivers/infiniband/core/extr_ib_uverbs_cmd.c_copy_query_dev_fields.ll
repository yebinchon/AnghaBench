; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_cmd.c_copy_query_dev_fields.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_cmd.c_copy_query_dev_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_uverbs_file = type { i32 }
%struct.ib_device = type { i32, i32 }
%struct.ib_uverbs_query_device_resp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_device_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_uverbs_file*, %struct.ib_device*, %struct.ib_uverbs_query_device_resp*, %struct.ib_device_attr*)* @copy_query_dev_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_query_dev_fields(%struct.ib_uverbs_file* %0, %struct.ib_device* %1, %struct.ib_uverbs_query_device_resp* %2, %struct.ib_device_attr* %3) #0 {
  %5 = alloca %struct.ib_uverbs_file*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca %struct.ib_uverbs_query_device_resp*, align 8
  %8 = alloca %struct.ib_device_attr*, align 8
  store %struct.ib_uverbs_file* %0, %struct.ib_uverbs_file** %5, align 8
  store %struct.ib_device* %1, %struct.ib_device** %6, align 8
  store %struct.ib_uverbs_query_device_resp* %2, %struct.ib_uverbs_query_device_resp** %7, align 8
  store %struct.ib_device_attr* %3, %struct.ib_device_attr** %8, align 8
  %9 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %10 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %9, i32 0, i32 37
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %13 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %12, i32 0, i32 39
  store i32 %11, i32* %13, align 4
  %14 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %15 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %18 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %17, i32 0, i32 38
  store i32 %16, i32* %18, align 8
  %19 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %20 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %19, i32 0, i32 36
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %23 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %22, i32 0, i32 37
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %25 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %24, i32 0, i32 35
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %28 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %27, i32 0, i32 36
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %30 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %29, i32 0, i32 34
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %33 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %32, i32 0, i32 35
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %35 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %34, i32 0, i32 33
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %38 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %37, i32 0, i32 34
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %40 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %39, i32 0, i32 32
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %43 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %42, i32 0, i32 33
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %45 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %44, i32 0, i32 31
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %48 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %47, i32 0, i32 32
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %50 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %49, i32 0, i32 30
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %53 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %52, i32 0, i32 31
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %55 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %54, i32 0, i32 29
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %58 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %57, i32 0, i32 30
  store i32 %56, i32* %58, align 8
  %59 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %60 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %59, i32 0, i32 28
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %63 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %62, i32 0, i32 29
  store i64 %61, i64* %63, align 8
  %64 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %65 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %64, i32 0, i32 27
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %68 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %67, i32 0, i32 28
  store i32 %66, i32* %68, align 8
  %69 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %70 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %69, i32 0, i32 26
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %73 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %72, i32 0, i32 27
  store i32 %71, i32* %73, align 4
  %74 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %75 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %74, i32 0, i32 25
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %78 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %77, i32 0, i32 26
  store i32 %76, i32* %78, align 8
  %79 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %80 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %79, i32 0, i32 24
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %83 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %82, i32 0, i32 25
  store i32 %81, i32* %83, align 4
  %84 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %85 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %84, i32 0, i32 23
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %88 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %87, i32 0, i32 24
  store i32 %86, i32* %88, align 8
  %89 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %90 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %89, i32 0, i32 22
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %93 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %92, i32 0, i32 23
  store i32 %91, i32* %93, align 4
  %94 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %95 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %94, i32 0, i32 21
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %98 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %97, i32 0, i32 22
  store i32 %96, i32* %98, align 8
  %99 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %100 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %99, i32 0, i32 20
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %103 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %102, i32 0, i32 21
  store i32 %101, i32* %103, align 4
  %104 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %105 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %104, i32 0, i32 19
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %108 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %107, i32 0, i32 20
  store i32 %106, i32* %108, align 8
  %109 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %110 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %109, i32 0, i32 18
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %113 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %112, i32 0, i32 19
  store i32 %111, i32* %113, align 4
  %114 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %115 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %114, i32 0, i32 17
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %118 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %117, i32 0, i32 18
  store i32 %116, i32* %118, align 8
  %119 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %120 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %119, i32 0, i32 16
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %123 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %122, i32 0, i32 17
  store i32 %121, i32* %123, align 4
  %124 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %125 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %124, i32 0, i32 15
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %128 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %127, i32 0, i32 16
  store i32 %126, i32* %128, align 8
  %129 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %130 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %129, i32 0, i32 14
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %133 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %132, i32 0, i32 15
  store i32 %131, i32* %133, align 4
  %134 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %135 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %134, i32 0, i32 13
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %138 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %137, i32 0, i32 14
  store i32 %136, i32* %138, align 8
  %139 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %140 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %139, i32 0, i32 12
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %143 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %142, i32 0, i32 13
  store i32 %141, i32* %143, align 4
  %144 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %145 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %144, i32 0, i32 11
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %148 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %147, i32 0, i32 12
  store i32 %146, i32* %148, align 8
  %149 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %150 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %149, i32 0, i32 10
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %153 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %152, i32 0, i32 11
  store i32 %151, i32* %153, align 4
  %154 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %155 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %154, i32 0, i32 9
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %158 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %157, i32 0, i32 10
  store i32 %156, i32* %158, align 8
  %159 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %160 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %159, i32 0, i32 8
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %163 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %162, i32 0, i32 9
  store i32 %161, i32* %163, align 4
  %164 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %165 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %164, i32 0, i32 7
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %168 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %167, i32 0, i32 8
  store i32 %166, i32* %168, align 8
  %169 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %170 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %173 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %172, i32 0, i32 7
  store i32 %171, i32* %173, align 4
  %174 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %175 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %178 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %177, i32 0, i32 6
  store i32 %176, i32* %178, align 8
  %179 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %180 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %183 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %182, i32 0, i32 5
  store i32 %181, i32* %183, align 4
  %184 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %185 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %188 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %187, i32 0, i32 4
  store i32 %186, i32* %188, align 8
  %189 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %190 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %193 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %192, i32 0, i32 3
  store i32 %191, i32* %193, align 4
  %194 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %195 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %198 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %197, i32 0, i32 2
  store i32 %196, i32* %198, align 8
  %199 = load %struct.ib_device_attr*, %struct.ib_device_attr** %8, align 8
  %200 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %203 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 4
  %204 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %205 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.ib_uverbs_query_device_resp*, %struct.ib_uverbs_query_device_resp** %7, align 8
  %208 = getelementptr inbounds %struct.ib_uverbs_query_device_resp, %struct.ib_uverbs_query_device_resp* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
