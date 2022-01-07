; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_annotate_cg.c_pmcpl_annotate_cg_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_annotate_cg.c_pmcpl_annotate_cg_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcstat_process = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pmcstat_pmcrecord = type { i32 }
%struct.pmcstat_pcmap = type { i64, i64, %struct.pmcstat_image* }
%struct.pmcstat_image = type { i64, i64 }
%struct.pmcstat_symbol = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@pmcstat_kernproc = common dso_local global %struct.pmcstat_process* null, align 8
@args = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [13 x i8] c"%p %s %s:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%p <unknown> ??:0\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"--\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmcpl_annotate_cg_process(%struct.pmcstat_process* %0, %struct.pmcstat_pmcrecord* %1, i64 %2, i64* %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.pmcstat_process*, align 8
  %8 = alloca %struct.pmcstat_pmcrecord*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.pmcstat_pcmap*, align 8
  %14 = alloca %struct.pmcstat_symbol*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.pmcstat_image*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.pmcstat_process* %0, %struct.pmcstat_process** %7, align 8
  store %struct.pmcstat_pmcrecord* %1, %struct.pmcstat_pmcrecord** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %22 = load i32, i32* @PATH_MAX, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %18, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %19, align 8
  %26 = load i32, i32* @PATH_MAX, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %20, align 8
  %29 = load %struct.pmcstat_pmcrecord*, %struct.pmcstat_pmcrecord** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i64, i64* %12, align 8
  store i32 0, i32* %17, align 4
  br label %33

33:                                               ; preds = %149, %6
  %34 = load i32, i32* %17, align 4
  %35 = load i64, i64* %9, align 8
  %36 = trunc i64 %35 to i32
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %152

38:                                               ; preds = %33
  store %struct.pmcstat_pcmap* null, %struct.pmcstat_pcmap** %13, align 8
  store %struct.pmcstat_symbol* null, %struct.pmcstat_symbol** %14, align 8
  store %struct.pmcstat_image* null, %struct.pmcstat_image** %16, align 8
  %39 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 0, i8* %39, align 16
  %40 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 0, i8* %40, align 16
  store i32 0, i32* %21, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load %struct.pmcstat_process*, %struct.pmcstat_process** %7, align 8
  br label %47

45:                                               ; preds = %38
  %46 = load %struct.pmcstat_process*, %struct.pmcstat_process** @pmcstat_kernproc, align 8
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi %struct.pmcstat_process* [ %44, %43 ], [ %46, %45 ]
  %49 = load i64*, i64** %10, align 8
  %50 = load i32, i32* %17, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = call %struct.pmcstat_pcmap* @pmcstat_process_find_map(%struct.pmcstat_process* %48, i64 %53)
  store %struct.pmcstat_pcmap* %54, %struct.pmcstat_pcmap** %13, align 8
  %55 = load %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %13, align 8
  %56 = icmp ne %struct.pmcstat_pcmap* %55, null
  br i1 %56, label %57, label %104

57:                                               ; preds = %47
  %58 = load i64*, i64** %10, align 8
  %59 = load i32, i32* %17, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %13, align 8
  %64 = getelementptr inbounds %struct.pmcstat_pcmap, %struct.pmcstat_pcmap* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sge i64 %62, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %57
  %68 = load i64*, i64** %10, align 8
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %13, align 8
  %74 = getelementptr inbounds %struct.pmcstat_pcmap, %struct.pmcstat_pcmap* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %72, %75
  br label %77

77:                                               ; preds = %67, %57
  %78 = phi i1 [ false, %57 ], [ %76, %67 ]
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %13, align 8
  %82 = getelementptr inbounds %struct.pmcstat_pcmap, %struct.pmcstat_pcmap* %81, i32 0, i32 2
  %83 = load %struct.pmcstat_image*, %struct.pmcstat_image** %82, align 8
  store %struct.pmcstat_image* %83, %struct.pmcstat_image** %16, align 8
  %84 = load i64*, i64** %10, align 8
  %85 = load i32, i32* %17, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %13, align 8
  %90 = getelementptr inbounds %struct.pmcstat_pcmap, %struct.pmcstat_pcmap* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.pmcstat_image*, %struct.pmcstat_image** %16, align 8
  %93 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.pmcstat_image*, %struct.pmcstat_image** %16, align 8
  %96 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %94, %97
  %99 = add nsw i64 %91, %98
  %100 = sub nsw i64 %88, %99
  store i64 %100, i64* %15, align 8
  %101 = load %struct.pmcstat_image*, %struct.pmcstat_image** %16, align 8
  %102 = load i64, i64* %15, align 8
  %103 = call %struct.pmcstat_symbol* @pmcstat_symbol_search(%struct.pmcstat_image* %101, i64 %102)
  store %struct.pmcstat_symbol* %103, %struct.pmcstat_symbol** %14, align 8
  br label %104

104:                                              ; preds = %77, %47
  %105 = load %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %13, align 8
  %106 = icmp ne %struct.pmcstat_pcmap* %105, null
  br i1 %106, label %107, label %123

107:                                              ; preds = %104
  %108 = load %struct.pmcstat_image*, %struct.pmcstat_image** %16, align 8
  %109 = icmp ne %struct.pmcstat_image* %108, null
  br i1 %109, label %110, label %123

110:                                              ; preds = %107
  %111 = load %struct.pmcstat_symbol*, %struct.pmcstat_symbol** %14, align 8
  %112 = icmp ne %struct.pmcstat_symbol* %111, null
  br i1 %112, label %113, label %123

113:                                              ; preds = %110
  %114 = load %struct.pmcstat_image*, %struct.pmcstat_image** %16, align 8
  %115 = load i64*, i64** %10, align 8
  %116 = load i32, i32* %17, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %23 to i32
  %121 = trunc i64 %27 to i32
  %122 = call i32 @pmcstat_image_addr2line(%struct.pmcstat_image* %114, i64 %119, i8* %25, i32 %120, i32* %21, i8* %28, i32 %121)
  br label %123

123:                                              ; preds = %113, %110, %107, %104
  %124 = load %struct.pmcstat_pcmap*, %struct.pmcstat_pcmap** %13, align 8
  %125 = icmp ne %struct.pmcstat_pcmap* %124, null
  br i1 %125, label %126, label %139

126:                                              ; preds = %123
  %127 = load %struct.pmcstat_symbol*, %struct.pmcstat_symbol** %14, align 8
  %128 = icmp ne %struct.pmcstat_symbol* %127, null
  br i1 %128, label %129, label %139

129:                                              ; preds = %126
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 0), align 4
  %131 = load i64*, i64** %10, align 8
  %132 = load i32, i32* %17, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = inttoptr i64 %135 to i8*
  %137 = load i32, i32* %21, align 4
  %138 = call i32 (i32, i8*, ...) @fprintf(i32 %130, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %136, i8* %28, i8* %25, i32 %137)
  br label %148

139:                                              ; preds = %126, %123
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 0), align 4
  %141 = load i64*, i64** %10, align 8
  %142 = load i32, i32* %17, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = inttoptr i64 %145 to i8*
  %147 = call i32 (i32, i8*, ...) @fprintf(i32 %140, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %146)
  br label %148

148:                                              ; preds = %139, %129
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %17, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %17, align 4
  br label %33

152:                                              ; preds = %33
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 0), align 4
  %154 = call i32 (i32, i8*, ...) @fprintf(i32 %153, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %155 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %155)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.pmcstat_pcmap* @pmcstat_process_find_map(%struct.pmcstat_process*, i64) #2

declare dso_local i32 @assert(i32) #2

declare dso_local %struct.pmcstat_symbol* @pmcstat_symbol_search(%struct.pmcstat_image*, i64) #2

declare dso_local i32 @pmcstat_image_addr2line(%struct.pmcstat_image*, i64, i8*, i32, i32*, i8*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
