; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_free_ccb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_free_ccb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_17__*, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i64, i32, i32, i32, i32*, i64, i32, i32 }
%struct.TYPE_15__ = type { i32*, i64, i64, i64, %struct.TYPE_13__, i8** }
%struct.TYPE_13__ = type { i8*, i8* }

@DEBUG_FLAGS = common dso_local global i32 0, align 4
@DEBUG_TAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ccb @%p freeing tag %d.\0A\00", align 1
@NO_TAG = common dso_local global i32 0, align 4
@SYM_CONF_MAX_TASK = common dso_local global i64 0, align 8
@resel_bad_lun = common dso_local global i32 0, align 4
@HS_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_17__*)* @sym_free_ccb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_free_ccb(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 5
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i64 %12
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %5, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_15__* @sym_lp(%struct.TYPE_14__* %14, i32 %17)
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %6, align 8
  %19 = load i32, i32* @DEBUG_FLAGS, align 4
  %20 = load i32, i32* @DEBUG_TAGS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %2
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PRINT_LUN(%struct.TYPE_16__* %24, i64 %27, i32 %30)
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__* %32, i32 %35)
  br label %37

37:                                               ; preds = %23, %2
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = icmp ne %struct.TYPE_15__* %38, null
  br i1 %39, label %40, label %114

40:                                               ; preds = %37
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @NO_TAG, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %83

46:                                               ; preds = %40
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  store i32 %49, i32* %56, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %58, align 8
  %61 = load i64, i64* @SYM_CONF_MAX_TASK, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %46
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %63, %46
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @cpu_to_scr(i32 %69)
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 5
  %73 = load i8**, i8*** %72, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %73, i64 %77
  store i8* %70, i8** %78, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, -1
  store i64 %82, i64* %80, align 8
  br label %95

83:                                               ; preds = %40
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i8* @cpu_to_scr(i32 %86)
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  store i8* %87, i8** %90, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, -1
  store i64 %94, i64* %92, align 8
  br label %95

95:                                               ; preds = %83, %66
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %95
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %107 = load i32, i32* @resel_bad_lun, align 4
  %108 = call i32 @SCRIPTB_BA(%struct.TYPE_16__* %106, i32 %107)
  %109 = call i8* @cpu_to_scr(i32 %108)
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  store i8* %109, i8** %112, align 8
  br label %113

113:                                              ; preds = %105, %100, %95
  br label %122

114:                                              ; preds = %37
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @sym_clr_bit(i32 %117, i32 %120)
  br label %122

122:                                              ; preds = %114, %113
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %125, align 8
  %127 = icmp eq %struct.TYPE_17__* %123, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %130, align 8
  br label %131

131:                                              ; preds = %128, %122
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 5
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %131
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @bus_dmamap_unload(i32 %139, i32 %142)
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 5
  store i64 0, i64* %145, align 8
  br label %146

146:                                              ; preds = %136, %131
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 4
  store i32* null, i32** %148, align 8
  %149 = load i32, i32* @HS_IDLE, align 4
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 8
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 2
  %154 = call i32 @sym_remque(i32* %153)
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  %159 = call i32 @sym_insque_head(i32* %156, i32* %158)
  ret void
}

declare dso_local %struct.TYPE_15__* @sym_lp(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @PRINT_LUN(%struct.TYPE_16__*, i64, i32) #1

declare dso_local i32 @printf(i8*, %struct.TYPE_17__*, i32) #1

declare dso_local i8* @cpu_to_scr(i32) #1

declare dso_local i32 @SCRIPTB_BA(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @sym_clr_bit(i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @sym_remque(i32*) #1

declare dso_local i32 @sym_insque_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
