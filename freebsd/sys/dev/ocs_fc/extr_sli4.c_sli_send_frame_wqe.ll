; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_send_frame_wqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_send_frame_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i64, i64, i8*, i8*, i8*, i8*, i32, i32, i64, i64, i64, i8*, i8*, i8**, i8**, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@SLI4_WQE_SEND_FRAME = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_CLASS_3 = common dso_local global i32 0, align 4
@SLI4_CMD_SEND_FRAME_WQE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_send_frame_wqe(i32* %0, i8* %1, i64 %2, i8* %3, i8* %4, i8** %5, %struct.TYPE_11__* %6, i8* %7, i8* %8, i8* %9, i8* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %12, align 8
  store i8* %1, i8** %13, align 8
  store i64 %2, i64* %14, align 8
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8** %5, i8*** %17, align 8
  store %struct.TYPE_11__* %6, %struct.TYPE_11__** %18, align 8
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i8* %9, i8** %21, align 8
  store i8* %10, i8** %22, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %23, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = load i64, i64* %14, align 8
  %28 = call i32 @ocs_memset(i8* %26, i32 0, i64 %27)
  %29 = load i32, i32* @TRUE, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 20
  store i32 %29, i32* %31, align 8
  %32 = load i8*, i8** %19, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 19
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  store i8* %32, i8** %35, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ocs_addr32_lo(i32 %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 19
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  store i32 %39, i32* %44, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ocs_addr32_hi(i32 %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 19
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i32 %48, i32* %53, align 8
  %54 = load i8**, i8*** %17, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 18
  %59 = load i8**, i8*** %58, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  store i8* %56, i8** %60, align 8
  %61 = load i8**, i8*** %17, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 1
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 18
  %66 = load i8**, i8*** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 1
  store i8* %63, i8** %67, align 8
  %68 = load i8**, i8*** %17, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 2
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 17
  %73 = load i8**, i8*** %72, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 0
  store i8* %70, i8** %74, align 8
  %75 = load i8**, i8*** %17, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 3
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 17
  %80 = load i8**, i8*** %79, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 1
  store i8* %77, i8** %81, align 8
  %82 = load i8**, i8*** %17, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 4
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 17
  %87 = load i8**, i8*** %86, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 2
  store i8* %84, i8** %88, align 8
  %89 = load i8**, i8*** %17, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 5
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 17
  %94 = load i8**, i8*** %93, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 3
  store i8* %91, i8** %95, align 8
  %96 = load i8*, i8** %19, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 16
  store i8* %96, i8** %98, align 8
  %99 = load i8*, i8** %21, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 15
  store i8* %99, i8** %101, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 14
  store i64 0, i64* %103, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 13
  store i64 0, i64* %105, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 12
  store i64 0, i64* %107, align 8
  %108 = load i32, i32* @SLI4_WQE_SEND_FRAME, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 11
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @SLI4_ELS_REQUEST64_CLASS_3, align 4
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 10
  store i32 %111, i32* %113, align 8
  %114 = load i8*, i8** %20, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 9
  store i8* %114, i8** %116, align 8
  %117 = load i8*, i8** %22, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 8
  store i8* %117, i8** %119, align 8
  %120 = load i8*, i8** %16, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 7
  store i8* %120, i8** %122, align 8
  %123 = load i8*, i8** %15, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 6
  store i8* %123, i8** %125, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 5
  store i64 0, i64* %127, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  store i32 1, i32* %129, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 4
  store i64 0, i64* %131, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  store i32 1, i32* %133, align 4
  %134 = load i32, i32* @SLI4_CMD_SEND_FRAME_WQE, align 4
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 4
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 2
  store i32 65535, i32* %138, align 8
  ret i32 0
}

declare dso_local i32 @ocs_memset(i8*, i32, i64) #1

declare dso_local i32 @ocs_addr32_lo(i32) #1

declare dso_local i32 @ocs_addr32_hi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
