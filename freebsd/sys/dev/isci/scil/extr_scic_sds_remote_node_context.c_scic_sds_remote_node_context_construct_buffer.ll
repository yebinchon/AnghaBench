; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_remote_node_context.c_scic_sds_remote_node_context_construct_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_remote_node_context.c_scic_sds_remote_node_context_construct_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_24__, %struct.TYPE_21__, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i64, i64, i64, i32, i64, i32, i32, i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32, i32, i32 }

@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scic_sds_remote_node_context_construct_buffer(%struct.TYPE_29__* %0) #0 {
  %2 = alloca %struct.TYPE_29__*, align 8
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %2, align 8
  %5 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %8 = call %struct.TYPE_19__* @scic_sds_remote_device_get_controller(%struct.TYPE_20__* %7)
  store %struct.TYPE_19__* %8, %struct.TYPE_19__** %4, align 8
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %10 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.TYPE_28__* @scic_sds_controller_get_remote_node_context_buffer(%struct.TYPE_19__* %9, i32 %12)
  store %struct.TYPE_28__* %13, %struct.TYPE_28__** %3, align 8
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %15 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %18 = call i32 @scic_sds_remote_device_node_count(%struct.TYPE_20__* %17)
  %19 = sext i32 %18 to i64
  %20 = mul i64 128, %19
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memset(%struct.TYPE_28__* %14, i32 0, i32 %21)
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %27, i32 0, i32 17
  store i32 %25, i32* %28, align 8
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 16
  store i32 %33, i32* %36, align 4
  %37 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %38, align 8
  %40 = call i32 @scic_sds_remote_device_get_port_index(%struct.TYPE_20__* %39)
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 15
  store i32 %40, i32* %43, align 8
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @SCIC_SWAP_DWORD(i32 %49)
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 14
  store i8* %50, i8** %53, align 8
  %54 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @SCIC_SWAP_DWORD(i32 %59)
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %62, i32 0, i32 13
  store i8* %60, i8** %63, align 8
  %64 = load i8*, i8** @TRUE, align 8
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %66, i32 0, i32 12
  store i8* %64, i8** %67, align 8
  %68 = load i8*, i8** @FALSE, align 8
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i32 0, i32 11
  store i8* %68, i8** %71, align 8
  %72 = load i8*, i8** @FALSE, align 8
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %74, i32 0, i32 10
  store i8* %72, i8** %75, align 8
  %76 = load i8*, i8** @TRUE, align 8
  %77 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 9
  store i8* %76, i8** %79, align 8
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 8
  store i64 0, i64* %82, align 8
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %84, i32 0, i32 7
  store i64 0, i64* %85, align 8
  %86 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %1
  %96 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %122

105:                                              ; preds = %95, %1
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 6
  store i32 %110, i32* %113, align 4
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %120, i32 0, i32 5
  store i32 %118, i32* %121, align 8
  br label %139

122:                                              ; preds = %95
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 6
  store i32 %127, i32* %130, align 4
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %137, i32 0, i32 5
  store i32 %135, i32* %138, align 8
  br label %139

139:                                              ; preds = %122, %105
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %141, i32 0, i32 4
  store i64 0, i64* %142, align 8
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 3
  store i32 %147, i32* %150, align 8
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i32 0, i32 2
  store i64 0, i64* %153, align 8
  %154 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 1
  store i64 0, i64* %156, align 8
  %157 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %158, i32 0, i32 0
  store i64 0, i64* %159, align 8
  ret void
}

declare dso_local %struct.TYPE_19__* @scic_sds_remote_device_get_controller(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_28__* @scic_sds_controller_get_remote_node_context_buffer(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @scic_sds_remote_device_node_count(%struct.TYPE_20__*) #1

declare dso_local i32 @scic_sds_remote_device_get_port_index(%struct.TYPE_20__*) #1

declare dso_local i8* @SCIC_SWAP_DWORD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
