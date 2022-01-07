; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-raid.c_pst_rw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-raid.c_pst_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pst_request = type { i32, i64, %struct.TYPE_10__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i64 }
%struct.i2o_bsa_rw_block_message = type { i32, i32, i32, i32, i32, i32, i64, i32, i8*, i8*, i32, i32, i32 }
%struct.i2o_basic_message = type { i32 }

@I2O_TID_HOST = common dso_local global i32 0, align 4
@I2O_BSA_BLOCK_READ = common dso_local global i32 0, align 4
@I2O_BSA_BLOCK_WRITE = common dso_local global i32 0, align 4
@I2O_SGL_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"pst: unknown command type 0x%02x\0A\00", align 1
@pst_done = common dso_local global i64 0, align 8
@DEV_BSIZE = common dso_local global i64 0, align 8
@dumping = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@pst_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pst_rw(%struct.pst_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pst_request*, align 8
  %4 = alloca %struct.i2o_bsa_rw_block_message*, align 8
  %5 = alloca i32, align 4
  store %struct.pst_request* %0, %struct.pst_request** %3, align 8
  %6 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %7 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %6, i32 0, i32 2
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %14 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = inttoptr i64 %16 to %struct.i2o_bsa_rw_block_message*
  store %struct.i2o_bsa_rw_block_message* %17, %struct.i2o_bsa_rw_block_message** %4, align 8
  %18 = load %struct.i2o_bsa_rw_block_message*, %struct.i2o_bsa_rw_block_message** %4, align 8
  %19 = call i32 @bzero(%struct.i2o_bsa_rw_block_message* %18, i32 72)
  %20 = load %struct.i2o_bsa_rw_block_message*, %struct.i2o_bsa_rw_block_message** %4, align 8
  %21 = getelementptr inbounds %struct.i2o_bsa_rw_block_message, %struct.i2o_bsa_rw_block_message* %20, i32 0, i32 0
  store i32 129, i32* %21, align 8
  %22 = load %struct.i2o_bsa_rw_block_message*, %struct.i2o_bsa_rw_block_message** %4, align 8
  %23 = getelementptr inbounds %struct.i2o_bsa_rw_block_message, %struct.i2o_bsa_rw_block_message* %22, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = load %struct.i2o_bsa_rw_block_message*, %struct.i2o_bsa_rw_block_message** %4, align 8
  %25 = getelementptr inbounds %struct.i2o_bsa_rw_block_message, %struct.i2o_bsa_rw_block_message* %24, i32 0, i32 2
  store i32 18, i32* %25, align 8
  %26 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %27 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %26, i32 0, i32 2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.i2o_bsa_rw_block_message*, %struct.i2o_bsa_rw_block_message** %4, align 8
  %34 = getelementptr inbounds %struct.i2o_bsa_rw_block_message, %struct.i2o_bsa_rw_block_message* %33, i32 0, i32 12
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @I2O_TID_HOST, align 4
  %36 = load %struct.i2o_bsa_rw_block_message*, %struct.i2o_bsa_rw_block_message** %4, align 8
  %37 = getelementptr inbounds %struct.i2o_bsa_rw_block_message, %struct.i2o_bsa_rw_block_message* %36, i32 0, i32 11
  store i32 %35, i32* %37, align 4
  %38 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %39 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %38, i32 0, i32 3
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %60 [
    i32 129, label %43
    i32 128, label %51
  ]

43:                                               ; preds = %1
  %44 = load i32, i32* @I2O_BSA_BLOCK_READ, align 4
  %45 = load %struct.i2o_bsa_rw_block_message*, %struct.i2o_bsa_rw_block_message** %4, align 8
  %46 = getelementptr inbounds %struct.i2o_bsa_rw_block_message, %struct.i2o_bsa_rw_block_message* %45, i32 0, i32 10
  store i32 %44, i32* %46, align 8
  %47 = load %struct.i2o_bsa_rw_block_message*, %struct.i2o_bsa_rw_block_message** %4, align 8
  %48 = getelementptr inbounds %struct.i2o_bsa_rw_block_message, %struct.i2o_bsa_rw_block_message* %47, i32 0, i32 3
  store i32 0, i32* %48, align 4
  %49 = load %struct.i2o_bsa_rw_block_message*, %struct.i2o_bsa_rw_block_message** %4, align 8
  %50 = getelementptr inbounds %struct.i2o_bsa_rw_block_message, %struct.i2o_bsa_rw_block_message* %49, i32 0, i32 4
  store i32 0, i32* %50, align 8
  store i32 0, i32* %5, align 4
  br label %67

51:                                               ; preds = %1
  %52 = load i32, i32* @I2O_BSA_BLOCK_WRITE, align 4
  %53 = load %struct.i2o_bsa_rw_block_message*, %struct.i2o_bsa_rw_block_message** %4, align 8
  %54 = getelementptr inbounds %struct.i2o_bsa_rw_block_message, %struct.i2o_bsa_rw_block_message* %53, i32 0, i32 10
  store i32 %52, i32* %54, align 8
  %55 = load %struct.i2o_bsa_rw_block_message*, %struct.i2o_bsa_rw_block_message** %4, align 8
  %56 = getelementptr inbounds %struct.i2o_bsa_rw_block_message, %struct.i2o_bsa_rw_block_message* %55, i32 0, i32 3
  store i32 0, i32* %56, align 4
  %57 = load %struct.i2o_bsa_rw_block_message*, %struct.i2o_bsa_rw_block_message** %4, align 8
  %58 = getelementptr inbounds %struct.i2o_bsa_rw_block_message, %struct.i2o_bsa_rw_block_message* %57, i32 0, i32 4
  store i32 0, i32* %58, align 8
  %59 = load i32, i32* @I2O_SGL_DIR, align 4
  store i32 %59, i32* %5, align 4
  br label %67

60:                                               ; preds = %1
  %61 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %62 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %61, i32 0, i32 3
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %65)
  store i32 -1, i32* %2, align 4
  br label %134

67:                                               ; preds = %51, %43
  %68 = load i64, i64* @pst_done, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = load %struct.i2o_bsa_rw_block_message*, %struct.i2o_bsa_rw_block_message** %4, align 8
  %71 = getelementptr inbounds %struct.i2o_bsa_rw_block_message, %struct.i2o_bsa_rw_block_message* %70, i32 0, i32 9
  store i8* %69, i8** %71, align 8
  %72 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %73 = bitcast %struct.pst_request* %72 to i8*
  %74 = load %struct.i2o_bsa_rw_block_message*, %struct.i2o_bsa_rw_block_message** %4, align 8
  %75 = getelementptr inbounds %struct.i2o_bsa_rw_block_message, %struct.i2o_bsa_rw_block_message* %74, i32 0, i32 8
  store i8* %73, i8** %75, align 8
  %76 = load %struct.i2o_bsa_rw_block_message*, %struct.i2o_bsa_rw_block_message** %4, align 8
  %77 = getelementptr inbounds %struct.i2o_bsa_rw_block_message, %struct.i2o_bsa_rw_block_message* %76, i32 0, i32 5
  store i32 1, i32* %77, align 4
  %78 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %79 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %78, i32 0, i32 3
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.i2o_bsa_rw_block_message*, %struct.i2o_bsa_rw_block_message** %4, align 8
  %84 = getelementptr inbounds %struct.i2o_bsa_rw_block_message, %struct.i2o_bsa_rw_block_message* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 8
  %85 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %86 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %85, i32 0, i32 3
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @DEV_BSIZE, align 8
  %91 = mul nsw i64 %90, 1
  %92 = mul nsw i64 %89, %91
  %93 = load %struct.i2o_bsa_rw_block_message*, %struct.i2o_bsa_rw_block_message** %4, align 8
  %94 = getelementptr inbounds %struct.i2o_bsa_rw_block_message, %struct.i2o_bsa_rw_block_message* %93, i32 0, i32 6
  store i64 %92, i64* %94, align 8
  %95 = load %struct.i2o_bsa_rw_block_message*, %struct.i2o_bsa_rw_block_message** %4, align 8
  %96 = bitcast %struct.i2o_bsa_rw_block_message* %95 to %struct.i2o_basic_message*
  %97 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %98 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %97, i32 0, i32 3
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %103 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %102, i32 0, i32 3
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @iop_create_sgl(%struct.i2o_basic_message* %96, i32 %101, i32 %106, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %67
  store i32 -1, i32* %2, align 4
  br label %134

111:                                              ; preds = %67
  %112 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %113 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %116 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %115, i32 0, i32 2
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  store i64 %114, i64* %122, align 8
  %123 = load i32, i32* @dumping, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %111
  %126 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %127 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %126, i32 0, i32 0
  %128 = load i32, i32* @hz, align 4
  %129 = mul nsw i32 10, %128
  %130 = load i32, i32* @pst_timeout, align 4
  %131 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %132 = call i32 @callout_reset(i32* %127, i32 %129, i32 %130, %struct.pst_request* %131)
  br label %133

133:                                              ; preds = %125, %111
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %133, %110, %60
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @bzero(%struct.i2o_bsa_rw_block_message*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @iop_create_sgl(%struct.i2o_basic_message*, i32, i32, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.pst_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
