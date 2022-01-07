; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_netmap_bdg_detach_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_netmap_bdg_detach_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nm_bridge = type { i32, i32*, i32*, i32**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32*)* }

@netmap_debug = common dso_local global i32 0, align 4
@NM_DEBUG_BDG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"detach %d and %d (lim %d)\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"detach hw %d at %d\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"detach sw %d at %d\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"delete failed hw %d sw %d, should panic...\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"now %d active ports\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netmap_bdg_detach_common(%struct.nm_bridge* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nm_bridge*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.nm_bridge* %0, %struct.nm_bridge** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.nm_bridge*, %struct.nm_bridge** %4, align 8
  %15 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %10, align 4
  %17 = load %struct.nm_bridge*, %struct.nm_bridge** %4, align 8
  %18 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %11, align 8
  %20 = load i32, i32* @netmap_debug, align 4
  %21 = load i32, i32* @NM_DEBUG_BDG, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @nm_prinf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %3
  %30 = load %struct.nm_bridge*, %struct.nm_bridge** %4, align 8
  %31 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.nm_bridge*, %struct.nm_bridge** %4, align 8
  %34 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @memcpy(i32* %32, i32* %35, i32 8)
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %115, %29
  %38 = load i32, i32* %5, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %44, %45
  br label %47

47:                                               ; preds = %43, %40
  %48 = phi i1 [ false, %40 ], [ %46, %43 ]
  br i1 %48, label %49, label %116

49:                                               ; preds = %47
  %50 = load i32, i32* %5, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %80

52:                                               ; preds = %49
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %52
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 (i8*, i32, ...) @nm_prdis(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %10, align 4
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %11, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %75, i32* %79, align 4
  store i32 -1, i32* %5, align 4
  br label %115

80:                                               ; preds = %52, %49
  %81 = load i32, i32* %6, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %111

83:                                               ; preds = %80
  %84 = load i32*, i32** %11, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %111

91:                                               ; preds = %83
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 (i8*, i32, ...) @nm_prdis(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %10, align 4
  %97 = load i32*, i32** %11, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %101, i32* %105, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32*, i32** %11, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %106, i32* %110, align 4
  store i32 -1, i32* %6, align 4
  br label %114

111:                                              ; preds = %83, %80
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %111, %91
  br label %115

115:                                              ; preds = %114, %60
  br label %37

116:                                              ; preds = %47
  %117 = load i32, i32* %5, align 4
  %118 = icmp sge i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %6, align 4
  %121 = icmp sge i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119, %116
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @nm_prerr(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %122, %119
  %127 = load %struct.nm_bridge*, %struct.nm_bridge** %4, align 8
  %128 = call i32 @BDG_WLOCK(%struct.nm_bridge* %127)
  %129 = load %struct.nm_bridge*, %struct.nm_bridge** %4, align 8
  %130 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32 (i32*)*, i32 (i32*)** %131, align 8
  %133 = icmp ne i32 (i32*)* %132, null
  br i1 %133, label %134, label %147

134:                                              ; preds = %126
  %135 = load %struct.nm_bridge*, %struct.nm_bridge** %4, align 8
  %136 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32 (i32*)*, i32 (i32*)** %137, align 8
  %139 = load %struct.nm_bridge*, %struct.nm_bridge** %4, align 8
  %140 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %139, i32 0, i32 3
  %141 = load i32**, i32*** %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32*, i32** %141, i64 %143
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 %138(i32* %145)
  br label %147

147:                                              ; preds = %134, %126
  %148 = load %struct.nm_bridge*, %struct.nm_bridge** %4, align 8
  %149 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %148, i32 0, i32 3
  %150 = load i32**, i32*** %149, align 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32*, i32** %150, i64 %152
  store i32* null, i32** %153, align 8
  %154 = load i32, i32* %8, align 4
  %155 = icmp sge i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %147
  %157 = load %struct.nm_bridge*, %struct.nm_bridge** %4, align 8
  %158 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %157, i32 0, i32 3
  %159 = load i32**, i32*** %158, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32*, i32** %159, i64 %161
  store i32* null, i32** %162, align 8
  br label %163

163:                                              ; preds = %156, %147
  %164 = load %struct.nm_bridge*, %struct.nm_bridge** %4, align 8
  %165 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = load %struct.nm_bridge*, %struct.nm_bridge** %4, align 8
  %168 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @memcpy(i32* %166, i32* %169, i32 8)
  %171 = load i32, i32* %10, align 4
  %172 = load %struct.nm_bridge*, %struct.nm_bridge** %4, align 8
  %173 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  %174 = load %struct.nm_bridge*, %struct.nm_bridge** %4, align 8
  %175 = call i32 @BDG_WUNLOCK(%struct.nm_bridge* %174)
  %176 = load i32, i32* %10, align 4
  %177 = call i32 (i8*, i32, ...) @nm_prdis(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %176)
  %178 = load %struct.nm_bridge*, %struct.nm_bridge** %4, align 8
  %179 = call i32 @netmap_bdg_free(%struct.nm_bridge* %178)
  ret void
}

declare dso_local i32 @nm_prinf(i8*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @nm_prdis(i8*, i32, ...) #1

declare dso_local i32 @nm_prerr(i8*, i32, i32) #1

declare dso_local i32 @BDG_WLOCK(%struct.nm_bridge*) #1

declare dso_local i32 @BDG_WUNLOCK(%struct.nm_bridge*) #1

declare dso_local i32 @netmap_bdg_free(%struct.nm_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
