; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_intr_machdep.c_intr_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_intr_machdep.c_intr_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerpc_intr = type { i64, i32, i64, i32*, i32, i64, i64, i32*, i32, i32, i32*, i32* }

@intr_table_lock = common dso_local global i32 0, align 4
@nvectors = common dso_local global i32 0, align 4
@powerpc_intrs = common dso_local global %struct.powerpc_intr** null, align 8
@M_INTR = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@INTR_TRIGGER_CONFORM = common dso_local global i32 0, align 4
@INTR_POLARITY_CONFORM = common dso_local global i32 0, align 4
@num_io_irqs = common dso_local global i32 0, align 4
@intrcnt_index = common dso_local global i32 0, align 4
@intrcnt = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"irq%u:\00", align 1
@all_cpus = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.powerpc_intr* (i64)* @intr_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.powerpc_intr* @intr_lookup(i64 %0) #0 {
  %2 = alloca %struct.powerpc_intr*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [16 x i8], align 16
  %5 = alloca %struct.powerpc_intr*, align 8
  %6 = alloca %struct.powerpc_intr*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %8 = call i32 @mtx_lock(i32* @intr_table_lock)
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %31, %1
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @nvectors, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  %14 = load %struct.powerpc_intr**, %struct.powerpc_intr*** @powerpc_intrs, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.powerpc_intr*, %struct.powerpc_intr** %14, i64 %16
  %18 = load %struct.powerpc_intr*, %struct.powerpc_intr** %17, align 8
  store %struct.powerpc_intr* %18, %struct.powerpc_intr** %5, align 8
  %19 = load %struct.powerpc_intr*, %struct.powerpc_intr** %5, align 8
  %20 = icmp ne %struct.powerpc_intr* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %13
  %22 = load %struct.powerpc_intr*, %struct.powerpc_intr** %5, align 8
  %23 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %3, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = call i32 @mtx_unlock(i32* @intr_table_lock)
  %29 = load %struct.powerpc_intr*, %struct.powerpc_intr** %5, align 8
  store %struct.powerpc_intr* %29, %struct.powerpc_intr** %2, align 8
  br label %164

30:                                               ; preds = %21, %13
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %9

34:                                               ; preds = %9
  %35 = load i32, i32* @M_INTR, align 4
  %36 = load i32, i32* @M_NOWAIT, align 4
  %37 = call %struct.powerpc_intr* @malloc(i32 88, i32 %35, i32 %36)
  store %struct.powerpc_intr* %37, %struct.powerpc_intr** %5, align 8
  %38 = load %struct.powerpc_intr*, %struct.powerpc_intr** %5, align 8
  %39 = icmp eq %struct.powerpc_intr* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 @mtx_unlock(i32* @intr_table_lock)
  store %struct.powerpc_intr* null, %struct.powerpc_intr** %2, align 8
  br label %164

42:                                               ; preds = %34
  %43 = load %struct.powerpc_intr*, %struct.powerpc_intr** %5, align 8
  %44 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %43, i32 0, i32 11
  store i32* null, i32** %44, align 8
  %45 = load %struct.powerpc_intr*, %struct.powerpc_intr** %5, align 8
  %46 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %45, i32 0, i32 3
  store i32* null, i32** %46, align 8
  %47 = load %struct.powerpc_intr*, %struct.powerpc_intr** %5, align 8
  %48 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %47, i32 0, i32 10
  store i32* null, i32** %48, align 8
  %49 = load i32, i32* @INTR_TRIGGER_CONFORM, align 4
  %50 = load %struct.powerpc_intr*, %struct.powerpc_intr** %5, align 8
  %51 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %50, i32 0, i32 9
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @INTR_POLARITY_CONFORM, align 4
  %53 = load %struct.powerpc_intr*, %struct.powerpc_intr** %5, align 8
  %54 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %53, i32 0, i32 8
  store i32 %52, i32* %54, align 8
  %55 = load i64, i64* %3, align 8
  %56 = load %struct.powerpc_intr*, %struct.powerpc_intr** %5, align 8
  %57 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.powerpc_intr*, %struct.powerpc_intr** %5, align 8
  %59 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %58, i32 0, i32 7
  store i32* null, i32** %59, align 8
  %60 = load %struct.powerpc_intr*, %struct.powerpc_intr** %5, align 8
  %61 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %60, i32 0, i32 1
  store i32 -1, i32* %61, align 8
  %62 = load %struct.powerpc_intr*, %struct.powerpc_intr** %5, align 8
  %63 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %62, i32 0, i32 6
  store i64 0, i64* %63, align 8
  %64 = load %struct.powerpc_intr*, %struct.powerpc_intr** %5, align 8
  %65 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %64, i32 0, i32 5
  store i64 0, i64* %65, align 8
  %66 = load %struct.powerpc_intr*, %struct.powerpc_intr** %5, align 8
  %67 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %66, i32 0, i32 4
  %68 = call i32 @CPU_SETOF(i32 0, i32* %67)
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %107, %42
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @num_io_irqs, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @nvectors, align 4
  %76 = icmp sle i32 %74, %75
  br label %77

77:                                               ; preds = %73, %69
  %78 = phi i1 [ false, %69 ], [ %76, %73 ]
  br i1 %78, label %79, label %110

79:                                               ; preds = %77
  %80 = load %struct.powerpc_intr**, %struct.powerpc_intr*** @powerpc_intrs, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.powerpc_intr*, %struct.powerpc_intr** %80, i64 %82
  %84 = load %struct.powerpc_intr*, %struct.powerpc_intr** %83, align 8
  store %struct.powerpc_intr* %84, %struct.powerpc_intr** %6, align 8
  %85 = load %struct.powerpc_intr*, %struct.powerpc_intr** %6, align 8
  %86 = icmp ne %struct.powerpc_intr* %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %79
  %88 = load %struct.powerpc_intr*, %struct.powerpc_intr** %6, align 8
  %89 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %3, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %110

94:                                               ; preds = %87, %79
  %95 = load %struct.powerpc_intr*, %struct.powerpc_intr** %6, align 8
  %96 = icmp eq %struct.powerpc_intr* %95, null
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = load %struct.powerpc_intr*, %struct.powerpc_intr** %5, align 8
  %99 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.powerpc_intr*, %struct.powerpc_intr** %5, align 8
  %105 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 8
  br label %106

106:                                              ; preds = %102, %97, %94
  store %struct.powerpc_intr* null, %struct.powerpc_intr** %6, align 8
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %69

110:                                              ; preds = %93, %77
  %111 = load %struct.powerpc_intr*, %struct.powerpc_intr** %6, align 8
  %112 = icmp eq %struct.powerpc_intr* %111, null
  br i1 %112, label %113, label %148

113:                                              ; preds = %110
  %114 = load %struct.powerpc_intr*, %struct.powerpc_intr** %5, align 8
  %115 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, -1
  br i1 %117, label %118, label %148

118:                                              ; preds = %113
  %119 = load %struct.powerpc_intr*, %struct.powerpc_intr** %5, align 8
  %120 = load %struct.powerpc_intr**, %struct.powerpc_intr*** @powerpc_intrs, align 8
  %121 = load %struct.powerpc_intr*, %struct.powerpc_intr** %5, align 8
  %122 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.powerpc_intr*, %struct.powerpc_intr** %120, i64 %124
  store %struct.powerpc_intr* %119, %struct.powerpc_intr** %125, align 8
  %126 = call i64 @atomic_fetchadd_int(i32* @intrcnt_index, i32 1)
  %127 = load %struct.powerpc_intr*, %struct.powerpc_intr** %5, align 8
  %128 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %127, i32 0, i32 2
  store i64 %126, i64* %128, align 8
  %129 = load i32*, i32** @intrcnt, align 8
  %130 = load %struct.powerpc_intr*, %struct.powerpc_intr** %5, align 8
  %131 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  %134 = load %struct.powerpc_intr*, %struct.powerpc_intr** %5, align 8
  %135 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %134, i32 0, i32 3
  store i32* %133, i32** %135, align 8
  %136 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %137 = load %struct.powerpc_intr*, %struct.powerpc_intr** %5, align 8
  %138 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @sprintf(i8* %136, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %139)
  %141 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %142 = load %struct.powerpc_intr*, %struct.powerpc_intr** %5, align 8
  %143 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @intrcnt_setname(i8* %141, i64 %144)
  %146 = load i32, i32* @nvectors, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* @nvectors, align 4
  br label %148

148:                                              ; preds = %118, %113, %110
  %149 = call i32 @mtx_unlock(i32* @intr_table_lock)
  %150 = load %struct.powerpc_intr*, %struct.powerpc_intr** %6, align 8
  %151 = icmp ne %struct.powerpc_intr* %150, null
  br i1 %151, label %157, label %152

152:                                              ; preds = %148
  %153 = load %struct.powerpc_intr*, %struct.powerpc_intr** %5, align 8
  %154 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, -1
  br i1 %156, label %157, label %162

157:                                              ; preds = %152, %148
  %158 = load %struct.powerpc_intr*, %struct.powerpc_intr** %5, align 8
  %159 = load i32, i32* @M_INTR, align 4
  %160 = call i32 @free(%struct.powerpc_intr* %158, i32 %159)
  %161 = load %struct.powerpc_intr*, %struct.powerpc_intr** %6, align 8
  store %struct.powerpc_intr* %161, %struct.powerpc_intr** %5, align 8
  br label %162

162:                                              ; preds = %157, %152
  %163 = load %struct.powerpc_intr*, %struct.powerpc_intr** %5, align 8
  store %struct.powerpc_intr* %163, %struct.powerpc_intr** %2, align 8
  br label %164

164:                                              ; preds = %162, %40, %27
  %165 = load %struct.powerpc_intr*, %struct.powerpc_intr** %2, align 8
  ret %struct.powerpc_intr* %165
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.powerpc_intr* @malloc(i32, i32, i32) #1

declare dso_local i32 @CPU_SETOF(i32, i32*) #1

declare dso_local i64 @atomic_fetchadd_int(i32*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @intrcnt_setname(i8*, i64) #1

declare dso_local i32 @free(%struct.powerpc_intr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
