; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_unsol.c_ocs_unsol_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_unsol.c_ocs_unsol_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_16__, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i64 }
%struct.TYPE_21__ = type { i64, i32* }

@.str = private unnamed_addr constant [38 x i8] c"FCFI %d is not valid, dropping frame\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_21__*)* @ocs_unsol_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_unsol_process(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %6, align 8
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %8, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %8, align 8
  br label %30

30:                                               ; preds = %24, %18
  br label %31

31:                                               ; preds = %30, %2
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %38 = call i64 @ARRAY_SIZE(%struct.TYPE_19__* %37)
  %39 = icmp ult i64 %32, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %31
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i64 %46
  store %struct.TYPE_19__* %47, %struct.TYPE_19__** %6, align 8
  br label %48

48:                                               ; preds = %40, %31
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %50 = icmp eq %struct.TYPE_19__* %49, null
  br i1 %50, label %51, label %72

51:                                               ; preds = %48
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @ocs_log_test(%struct.TYPE_20__* %52, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %55)
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %51
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @ocs_port_owned_abort(%struct.TYPE_20__* %62, i32* %65)
  br label %67

67:                                               ; preds = %61, %51
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %71 = call i32 @ocs_hw_sequence_free(%struct.TYPE_16__* %69, %struct.TYPE_21__* %70)
  store i32 0, i32* %3, align 4
  br label %129

72:                                               ; preds = %48
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = load i64, i64* %8, align 8
  %76 = call i32* @ocs_hw_domain_get(%struct.TYPE_16__* %74, i64 %75)
  store i32* %76, i32** %7, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %89, label %79

79:                                               ; preds = %72
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 1
  %87 = call i32 @ocs_list_empty(i32* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %106, label %89

89:                                               ; preds = %84, %79, %72
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = call i32 @ocs_lock(i32* %91)
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %96 = call i32 @ocs_list_add_tail(i32* %94, %struct.TYPE_21__* %95)
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = call i32 @ocs_unlock(i32* %98)
  %100 = load i32*, i32** %7, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %89
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 @ocs_domain_process_pending(i32* %103)
  br label %105

105:                                              ; preds = %102, %89
  br label %128

106:                                              ; preds = %84
  %107 = load i32*, i32** %7, align 8
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %109 = call i64 @ocs_domain_dispatch_frame(i32* %107, %struct.TYPE_21__* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %106
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @ocs_port_owned_abort(%struct.TYPE_20__* %117, i32* %120)
  br label %122

122:                                              ; preds = %116, %111
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %126 = call i32 @ocs_hw_sequence_free(%struct.TYPE_16__* %124, %struct.TYPE_21__* %125)
  br label %127

127:                                              ; preds = %122, %106
  br label %128

128:                                              ; preds = %127, %105
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %128, %67
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_19__*) #1

declare dso_local i32 @ocs_log_test(%struct.TYPE_20__*, i8*, i64) #1

declare dso_local i32 @ocs_port_owned_abort(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @ocs_hw_sequence_free(%struct.TYPE_16__*, %struct.TYPE_21__*) #1

declare dso_local i32* @ocs_hw_domain_get(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @ocs_list_empty(i32*) #1

declare dso_local i32 @ocs_lock(i32*) #1

declare dso_local i32 @ocs_list_add_tail(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @ocs_unlock(i32*) #1

declare dso_local i32 @ocs_domain_process_pending(i32*) #1

declare dso_local i64 @ocs_domain_dispatch_frame(i32*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
