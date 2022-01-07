; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_fcoe_wq_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_fcoe_wq_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_14__ = type { i64, i32, i32, %struct.TYPE_12__*, i8*, i8*, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@SLI4_PORT_TYPE_FC = common dso_local global i64 0, align 8
@SLI4_OPC_FCOE_WQ_CREATE = common dso_local global i32 0, align 4
@SLI4_SUBSYSTEM_FCFCOE = common dso_local global i32 0, align 4
@SLI_PAGE_SIZE = common dso_local global i64 0, align 8
@SLI4_FCOE_WQ_CREATE_V0_MAX_PAGES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_cmd_fcoe_wq_create(%struct.TYPE_13__* %0, i8* %1, i64 %2, %struct.TYPE_15__* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %14, align 8
  store i32 0, i32* %15, align 4
  %19 = load i64, i64* @SLI4_PORT_TYPE_FC, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %6
  %25 = call i32 @max(i32 56, i32 4)
  store i32 %25, i32* %18, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i32, i32* %18, align 4
  %30 = call i32 @sli_cmd_sli_config(%struct.TYPE_13__* %26, i8* %27, i64 %28, i32 %29, i32* null)
  store i32 %30, i32* %15, align 4
  br label %31

31:                                               ; preds = %24, %6
  %32 = load i8*, i8** %9, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = load i32, i32* %15, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = bitcast i32* %36 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %14, align 8
  %38 = load i32, i32* @SLI4_OPC_FCOE_WQ_CREATE, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* @SLI4_SUBSYSTEM_FCFCOE, align 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  store i32 52, i32* %48, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* @SLI_PAGE_SIZE, align 8
  %53 = call i64 @sli_page_count(i32 %51, i64 %52)
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %31
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SLI4_FCOE_WQ_CREATE_V0_MAX_PAGES, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60, %31
  store i32 0, i32* %7, align 4
  br label %125

67:                                               ; preds = %60
  %68 = load i8*, i8** %12, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 5
  store i8* %68, i8** %70, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %67
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  store i32 1, i32* %78, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 2
  store i32 1, i32* %80, align 4
  %81 = load i8*, i8** %13, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 4
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %76, %67
  store i32 0, i32* %16, align 4
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %17, align 8
  br label %88

88:                                               ; preds = %114, %84
  %89 = load i32, i32* %16, align 4
  %90 = sext i32 %89 to i64
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %90, %93
  br i1 %94, label %95, label %120

95:                                               ; preds = %88
  %96 = load i64, i64* %17, align 8
  %97 = call i32 @ocs_addr32_lo(i64 %96)
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = load i32, i32* %16, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  store i32 %97, i32* %104, align 4
  %105 = load i64, i64* %17, align 8
  %106 = call i32 @ocs_addr32_hi(i64 %105)
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = load i32, i32* %16, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  store i32 %106, i32* %113, align 4
  br label %114

114:                                              ; preds = %95
  %115 = load i32, i32* %16, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %16, align 4
  %117 = load i64, i64* @SLI_PAGE_SIZE, align 8
  %118 = load i64, i64* %17, align 8
  %119 = add i64 %118, %117
  store i64 %119, i64* %17, align 8
  br label %88

120:                                              ; preds = %88
  %121 = load i32, i32* %15, align 4
  %122 = sext i32 %121 to i64
  %123 = add i64 %122, 56
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %120, %66
  %126 = load i32, i32* %7, align 4
  ret i32 %126
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @sli_cmd_sli_config(%struct.TYPE_13__*, i8*, i64, i32, i32*) #1

declare dso_local i64 @sli_page_count(i32, i64) #1

declare dso_local i32 @ocs_addr32_lo(i64) #1

declare dso_local i32 @ocs_addr32_hi(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
