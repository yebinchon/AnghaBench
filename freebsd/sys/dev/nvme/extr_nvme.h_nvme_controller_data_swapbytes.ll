; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme.h_nvme_controller_data_swapbytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme.h_nvme_controller_data_swapbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller_data = type { i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_controller_data*)* @nvme_controller_data_swapbytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_controller_data_swapbytes(%struct.nvme_controller_data* %0) #0 {
  %2 = alloca %struct.nvme_controller_data*, align 8
  %3 = alloca i32, align 4
  store %struct.nvme_controller_data* %0, %struct.nvme_controller_data** %2, align 8
  %4 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %5 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %4, i32 0, i32 41
  %6 = load i8*, i8** %5, align 8
  %7 = call i8* @le16toh(i8* %6)
  %8 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %9 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %8, i32 0, i32 41
  store i8* %7, i8** %9, align 8
  %10 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %11 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %10, i32 0, i32 40
  %12 = load i8*, i8** %11, align 8
  %13 = call i8* @le16toh(i8* %12)
  %14 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %15 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %14, i32 0, i32 40
  store i8* %13, i8** %15, align 8
  %16 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %17 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %16, i32 0, i32 39
  %18 = load i8*, i8** %17, align 8
  %19 = call i8* @le16toh(i8* %18)
  %20 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %21 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %20, i32 0, i32 39
  store i8* %19, i8** %21, align 8
  %22 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %23 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %22, i32 0, i32 38
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @le32toh(i8* %24)
  %26 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %27 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %26, i32 0, i32 38
  store i8* %25, i8** %27, align 8
  %28 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %29 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %28, i32 0, i32 37
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @le32toh(i8* %30)
  %32 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %33 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %32, i32 0, i32 37
  store i8* %31, i8** %33, align 8
  %34 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %35 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %34, i32 0, i32 36
  %36 = load i8*, i8** %35, align 8
  %37 = call i8* @le32toh(i8* %36)
  %38 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %39 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %38, i32 0, i32 36
  store i8* %37, i8** %39, align 8
  %40 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %41 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %40, i32 0, i32 35
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @le32toh(i8* %42)
  %44 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %45 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %44, i32 0, i32 35
  store i8* %43, i8** %45, align 8
  %46 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %47 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %46, i32 0, i32 34
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @le32toh(i8* %48)
  %50 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %51 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %50, i32 0, i32 34
  store i8* %49, i8** %51, align 8
  %52 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %53 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %52, i32 0, i32 33
  %54 = load i8*, i8** %53, align 8
  %55 = call i8* @le16toh(i8* %54)
  %56 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %57 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %56, i32 0, i32 33
  store i8* %55, i8** %57, align 8
  %58 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %59 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %58, i32 0, i32 32
  %60 = load i8*, i8** %59, align 8
  %61 = call i8* @le16toh(i8* %60)
  %62 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %63 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %62, i32 0, i32 32
  store i8* %61, i8** %63, align 8
  %64 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %65 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %64, i32 0, i32 31
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* @le16toh(i8* %66)
  %68 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %69 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %68, i32 0, i32 31
  store i8* %67, i8** %69, align 8
  %70 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %71 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %70, i32 0, i32 30
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @le16toh(i8* %72)
  %74 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %75 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %74, i32 0, i32 30
  store i8* %73, i8** %75, align 8
  %76 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %77 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %76, i32 0, i32 29
  %78 = load i8*, i8** %77, align 8
  %79 = call i8* @le16toh(i8* %78)
  %80 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %81 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %80, i32 0, i32 29
  store i8* %79, i8** %81, align 8
  %82 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %83 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %82, i32 0, i32 28
  %84 = load i8*, i8** %83, align 8
  %85 = call i8* @le16toh(i8* %84)
  %86 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %87 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %86, i32 0, i32 28
  store i8* %85, i8** %87, align 8
  %88 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %89 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %88, i32 0, i32 27
  %90 = load i8*, i8** %89, align 8
  %91 = call i8* @le16toh(i8* %90)
  %92 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %93 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %92, i32 0, i32 27
  store i8* %91, i8** %93, align 8
  %94 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %95 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %94, i32 0, i32 26
  %96 = load i8*, i8** %95, align 8
  %97 = call i8* @le16toh(i8* %96)
  %98 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %99 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %98, i32 0, i32 26
  store i8* %97, i8** %99, align 8
  %100 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %101 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %100, i32 0, i32 25
  %102 = load i8*, i8** %101, align 8
  %103 = call i8* @le32toh(i8* %102)
  %104 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %105 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %104, i32 0, i32 25
  store i8* %103, i8** %105, align 8
  %106 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %107 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %106, i32 0, i32 24
  %108 = load i8*, i8** %107, align 8
  %109 = call i8* @le32toh(i8* %108)
  %110 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %111 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %110, i32 0, i32 24
  store i8* %109, i8** %111, align 8
  %112 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %113 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %112, i32 0, i32 23
  %114 = load i8*, i8** %113, align 8
  %115 = call i8* @le32toh(i8* %114)
  %116 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %117 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %116, i32 0, i32 23
  store i8* %115, i8** %117, align 8
  %118 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %119 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %118, i32 0, i32 22
  %120 = load i8*, i8** %119, align 8
  %121 = call i8* @le16toh(i8* %120)
  %122 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %123 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %122, i32 0, i32 22
  store i8* %121, i8** %123, align 8
  %124 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %125 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %124, i32 0, i32 21
  %126 = load i8*, i8** %125, align 8
  %127 = call i8* @le16toh(i8* %126)
  %128 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %129 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %128, i32 0, i32 21
  store i8* %127, i8** %129, align 8
  %130 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %131 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %130, i32 0, i32 20
  %132 = load i8*, i8** %131, align 8
  %133 = call i8* @le16toh(i8* %132)
  %134 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %135 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %134, i32 0, i32 20
  store i8* %133, i8** %135, align 8
  %136 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %137 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %136, i32 0, i32 19
  %138 = load i8*, i8** %137, align 8
  %139 = call i8* @le16toh(i8* %138)
  %140 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %141 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %140, i32 0, i32 19
  store i8* %139, i8** %141, align 8
  %142 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %143 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %142, i32 0, i32 18
  %144 = load i8*, i8** %143, align 8
  %145 = call i8* @le16toh(i8* %144)
  %146 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %147 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %146, i32 0, i32 18
  store i8* %145, i8** %147, align 8
  %148 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %149 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %148, i32 0, i32 17
  %150 = load i8*, i8** %149, align 8
  %151 = call i8* @le32toh(i8* %150)
  %152 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %153 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %152, i32 0, i32 17
  store i8* %151, i8** %153, align 8
  %154 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %155 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %154, i32 0, i32 16
  %156 = load i8*, i8** %155, align 8
  %157 = call i8* @le32toh(i8* %156)
  %158 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %159 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %158, i32 0, i32 16
  store i8* %157, i8** %159, align 8
  %160 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %161 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %160, i32 0, i32 15
  %162 = load i8*, i8** %161, align 8
  %163 = call i8* @le16toh(i8* %162)
  %164 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %165 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %164, i32 0, i32 15
  store i8* %163, i8** %165, align 8
  %166 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %167 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %166, i32 0, i32 14
  %168 = load i8*, i8** %167, align 8
  %169 = call i8* @le16toh(i8* %168)
  %170 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %171 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %170, i32 0, i32 14
  store i8* %169, i8** %171, align 8
  %172 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %173 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %172, i32 0, i32 13
  %174 = load i8*, i8** %173, align 8
  %175 = call i8* @le16toh(i8* %174)
  %176 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %177 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %176, i32 0, i32 13
  store i8* %175, i8** %177, align 8
  %178 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %179 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %178, i32 0, i32 12
  %180 = load i8*, i8** %179, align 8
  %181 = call i8* @le32toh(i8* %180)
  %182 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %183 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %182, i32 0, i32 12
  store i8* %181, i8** %183, align 8
  %184 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %185 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %184, i32 0, i32 11
  %186 = load i8*, i8** %185, align 8
  %187 = call i8* @le32toh(i8* %186)
  %188 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %189 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %188, i32 0, i32 11
  store i8* %187, i8** %189, align 8
  %190 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %191 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %190, i32 0, i32 10
  %192 = load i8*, i8** %191, align 8
  %193 = call i8* @le32toh(i8* %192)
  %194 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %195 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %194, i32 0, i32 10
  store i8* %193, i8** %195, align 8
  %196 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %197 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %196, i32 0, i32 9
  %198 = load i8*, i8** %197, align 8
  %199 = call i8* @le16toh(i8* %198)
  %200 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %201 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %200, i32 0, i32 9
  store i8* %199, i8** %201, align 8
  %202 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %203 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %202, i32 0, i32 8
  %204 = load i8*, i8** %203, align 8
  %205 = call i8* @le32toh(i8* %204)
  %206 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %207 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %206, i32 0, i32 8
  store i8* %205, i8** %207, align 8
  %208 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %209 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %208, i32 0, i32 7
  %210 = load i8*, i8** %209, align 8
  %211 = call i8* @le16toh(i8* %210)
  %212 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %213 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %212, i32 0, i32 7
  store i8* %211, i8** %213, align 8
  %214 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %215 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %214, i32 0, i32 6
  %216 = load i8*, i8** %215, align 8
  %217 = call i8* @le16toh(i8* %216)
  %218 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %219 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %218, i32 0, i32 6
  store i8* %217, i8** %219, align 8
  %220 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %221 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %220, i32 0, i32 5
  %222 = load i8*, i8** %221, align 8
  %223 = call i8* @le16toh(i8* %222)
  %224 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %225 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %224, i32 0, i32 5
  store i8* %223, i8** %225, align 8
  %226 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %227 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %226, i32 0, i32 4
  %228 = load i8*, i8** %227, align 8
  %229 = call i8* @le16toh(i8* %228)
  %230 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %231 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %230, i32 0, i32 4
  store i8* %229, i8** %231, align 8
  %232 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %233 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %232, i32 0, i32 3
  %234 = load i8*, i8** %233, align 8
  %235 = call i8* @le16toh(i8* %234)
  %236 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %237 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %236, i32 0, i32 3
  store i8* %235, i8** %237, align 8
  %238 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %239 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %238, i32 0, i32 2
  %240 = load i8*, i8** %239, align 8
  %241 = call i8* @le32toh(i8* %240)
  %242 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %243 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %242, i32 0, i32 2
  store i8* %241, i8** %243, align 8
  %244 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %245 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %244, i32 0, i32 1
  %246 = load i8*, i8** %245, align 8
  %247 = call i8* @le32toh(i8* %246)
  %248 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %249 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %248, i32 0, i32 1
  store i8* %247, i8** %249, align 8
  store i32 0, i32* %3, align 4
  br label %250

250:                                              ; preds = %261, %1
  %251 = load i32, i32* %3, align 4
  %252 = icmp slt i32 %251, 32
  br i1 %252, label %253, label %264

253:                                              ; preds = %250
  %254 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %255 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %254, i32 0, i32 0
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %3, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = call i32 @nvme_power_state_swapbytes(i32* %259)
  br label %261

261:                                              ; preds = %253
  %262 = load i32, i32* %3, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %3, align 4
  br label %250

264:                                              ; preds = %250
  ret void
}

declare dso_local i8* @le16toh(i8*) #1

declare dso_local i8* @le32toh(i8*) #1

declare dso_local i32 @nvme_power_state_swapbytes(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
