; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_busdma.c_proto_busdma_tag_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_busdma.c_proto_busdma_tag_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_busdma = type { i32 }
%struct.proto_tag = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.proto_tag* }
%struct.proto_ioc_busdma = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@M_PROTO_BUSDMA = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@peers = common dso_local global i32 0, align 4
@tags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proto_busdma*, %struct.proto_tag*, %struct.proto_ioc_busdma*)* @proto_busdma_tag_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proto_busdma_tag_create(%struct.proto_busdma* %0, %struct.proto_tag* %1, %struct.proto_ioc_busdma* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proto_busdma*, align 8
  %6 = alloca %struct.proto_tag*, align 8
  %7 = alloca %struct.proto_ioc_busdma*, align 8
  %8 = alloca %struct.proto_tag*, align 8
  store %struct.proto_busdma* %0, %struct.proto_busdma** %5, align 8
  store %struct.proto_tag* %1, %struct.proto_tag** %6, align 8
  store %struct.proto_ioc_busdma* %2, %struct.proto_ioc_busdma** %7, align 8
  %9 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %10 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %3
  %16 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %17 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %22 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  %27 = and i32 %20, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %15
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %4, align 4
  br label %269

31:                                               ; preds = %15, %3
  %32 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %33 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %38 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %36, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %31
  %44 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %45 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %60

50:                                               ; preds = %43, %31
  %51 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %52 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %57 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store i32 %55, i32* %59, align 4
  br label %60

60:                                               ; preds = %50, %43
  %61 = load i32, i32* @M_PROTO_BUSDMA, align 4
  %62 = load i32, i32* @M_WAITOK, align 4
  %63 = load i32, i32* @M_ZERO, align 4
  %64 = or i32 %62, %63
  %65 = call %struct.proto_tag* @malloc(i32 40, i32 %61, i32 %64)
  store %struct.proto_tag* %65, %struct.proto_tag** %8, align 8
  %66 = load %struct.proto_tag*, %struct.proto_tag** %6, align 8
  %67 = icmp ne %struct.proto_tag* %66, null
  br i1 %67, label %68, label %208

68:                                               ; preds = %60
  %69 = load %struct.proto_tag*, %struct.proto_tag** %6, align 8
  %70 = load %struct.proto_tag*, %struct.proto_tag** %8, align 8
  %71 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %70, i32 0, i32 8
  store %struct.proto_tag* %69, %struct.proto_tag** %71, align 8
  %72 = load %struct.proto_tag*, %struct.proto_tag** %6, align 8
  %73 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %72, i32 0, i32 7
  %74 = load %struct.proto_tag*, %struct.proto_tag** %8, align 8
  %75 = load i32, i32* @peers, align 4
  %76 = call i32 @LIST_INSERT_HEAD(i32* %73, %struct.proto_tag* %74, i32 %75)
  %77 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %78 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.proto_tag*, %struct.proto_tag** %6, align 8
  %83 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @MAX(i32 %81, i32 %84)
  %86 = load %struct.proto_tag*, %struct.proto_tag** %8, align 8
  %87 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 8
  %88 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %89 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.proto_tag*, %struct.proto_tag** %6, align 8
  %94 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @BNDRY_MIN(i32 %92, i32 %95)
  %97 = load %struct.proto_tag*, %struct.proto_tag** %8, align 8
  %98 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %100 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.proto_tag*, %struct.proto_tag** %6, align 8
  %105 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @MIN(i32 %103, i32 %106)
  %108 = ptrtoint i8* %107 to i32
  %109 = load %struct.proto_tag*, %struct.proto_tag** %8, align 8
  %110 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %112 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.proto_tag*, %struct.proto_tag** %6, align 8
  %117 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i8* @MIN(i32 %115, i32 %118)
  %120 = ptrtoint i8* %119 to i32
  %121 = load %struct.proto_tag*, %struct.proto_tag** %8, align 8
  %122 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %124 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.proto_tag*, %struct.proto_tag** %6, align 8
  %129 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @MIN(i32 %127, i32 %130)
  %132 = ptrtoint i8* %131 to i32
  %133 = load %struct.proto_tag*, %struct.proto_tag** %8, align 8
  %134 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  %135 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %136 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.proto_tag*, %struct.proto_tag** %6, align 8
  %141 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = call i8* @MIN(i32 %139, i32 %142)
  %144 = ptrtoint i8* %143 to i32
  %145 = load %struct.proto_tag*, %struct.proto_tag** %8, align 8
  %146 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %145, i32 0, i32 4
  store i32 %144, i32* %146, align 8
  %147 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %148 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.proto_tag*, %struct.proto_tag** %6, align 8
  %153 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = call i8* @MIN(i32 %151, i32 %154)
  %156 = ptrtoint i8* %155 to i32
  %157 = load %struct.proto_tag*, %struct.proto_tag** %8, align 8
  %158 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %157, i32 0, i32 5
  store i32 %156, i32* %158, align 4
  %159 = load %struct.proto_tag*, %struct.proto_tag** %8, align 8
  %160 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %163 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 6
  store i32 %161, i32* %165, align 8
  %166 = load %struct.proto_tag*, %struct.proto_tag** %8, align 8
  %167 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %170 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  store i32 %168, i32* %172, align 8
  %173 = load %struct.proto_tag*, %struct.proto_tag** %8, align 8
  %174 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %177 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 4
  store i32 %175, i32* %179, align 8
  %180 = load %struct.proto_tag*, %struct.proto_tag** %8, align 8
  %181 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %184 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 2
  store i32 %182, i32* %186, align 8
  %187 = load %struct.proto_tag*, %struct.proto_tag** %8, align 8
  %188 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %191 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 1
  store i32 %189, i32* %193, align 4
  %194 = load %struct.proto_tag*, %struct.proto_tag** %8, align 8
  %195 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %198 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 3
  store i32 %196, i32* %200, align 4
  %201 = load %struct.proto_tag*, %struct.proto_tag** %8, align 8
  %202 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %205 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 5
  store i32 %203, i32* %207, align 4
  br label %258

208:                                              ; preds = %60
  %209 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %210 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.proto_tag*, %struct.proto_tag** %8, align 8
  %215 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %214, i32 0, i32 6
  store i32 %213, i32* %215, align 8
  %216 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %217 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.proto_tag*, %struct.proto_tag** %8, align 8
  %222 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  %223 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %224 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.proto_tag*, %struct.proto_tag** %8, align 8
  %229 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %228, i32 0, i32 1
  store i32 %227, i32* %229, align 4
  %230 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %231 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.proto_tag*, %struct.proto_tag** %8, align 8
  %236 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %235, i32 0, i32 2
  store i32 %234, i32* %236, align 8
  %237 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %238 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.proto_tag*, %struct.proto_tag** %8, align 8
  %243 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %242, i32 0, i32 3
  store i32 %241, i32* %243, align 4
  %244 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %245 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.proto_tag*, %struct.proto_tag** %8, align 8
  %250 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %249, i32 0, i32 4
  store i32 %248, i32* %250, align 8
  %251 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %252 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.proto_tag*, %struct.proto_tag** %8, align 8
  %257 = getelementptr inbounds %struct.proto_tag, %struct.proto_tag* %256, i32 0, i32 5
  store i32 %255, i32* %257, align 4
  br label %258

258:                                              ; preds = %208, %68
  %259 = load %struct.proto_busdma*, %struct.proto_busdma** %5, align 8
  %260 = getelementptr inbounds %struct.proto_busdma, %struct.proto_busdma* %259, i32 0, i32 0
  %261 = load %struct.proto_tag*, %struct.proto_tag** %8, align 8
  %262 = load i32, i32* @tags, align 4
  %263 = call i32 @LIST_INSERT_HEAD(i32* %260, %struct.proto_tag* %261, i32 %262)
  %264 = load %struct.proto_tag*, %struct.proto_tag** %8, align 8
  %265 = bitcast %struct.proto_tag* %264 to i8*
  %266 = ptrtoint i8* %265 to i64
  %267 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %268 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %267, i32 0, i32 0
  store i64 %266, i64* %268, align 8
  store i32 0, i32* %4, align 4
  br label %269

269:                                              ; preds = %258, %29
  %270 = load i32, i32* %4, align 4
  ret i32 %270
}

declare dso_local %struct.proto_tag* @malloc(i32, i32, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.proto_tag*, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @BNDRY_MIN(i32, i32) #1

declare dso_local i8* @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
