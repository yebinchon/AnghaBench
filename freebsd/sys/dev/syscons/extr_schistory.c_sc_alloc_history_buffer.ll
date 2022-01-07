; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_schistory.c_sc_alloc_history_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_schistory.c_sc_alloc_history_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32* }

@SC_HISTORY_SIZE = common dso_local global i32 0, align 4
@extra_history_size = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@VTB_RINGBUFFER = common dso_local global i32 0, align 4
@SC_NORM_ATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sc_alloc_history_buffer(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @SC_HISTORY_SIZE, align 4
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %17, %4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @imax(i32 %20, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %11, align 8
  store i32* %27, i32** %10, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  store i32 0, i32* %14, align 4
  %30 = load i32*, i32** %11, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %46

32:                                               ; preds = %19
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @sc_vtb_rows(i32* %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* @SC_HISTORY_SIZE, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @imax(i32 %35, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* %14, align 4
  br label %45

45:                                               ; preds = %41, %32
  br label %46

46:                                               ; preds = %45, %19
  %47 = load i32, i32* @SC_HISTORY_SIZE, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @imax(i32 %47, i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %46
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %13, align 4
  %58 = sub nsw i32 %56, %57
  %59 = load i32, i32* @extra_history_size, align 4
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %59, %60
  %62 = icmp sgt i32 %58, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = load i32*, i32** %11, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i32* %64, i32** %66, align 8
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %5, align 4
  br label %143

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %68, %46
  %70 = load i32, i32* @M_DEVBUF, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* @M_WAITOK, align 4
  br label %77

75:                                               ; preds = %69
  %76 = load i32, i32* @M_NOWAIT, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = call i64 @malloc(i32 4, i32 %70, i32 %78)
  %80 = inttoptr i64 %79 to i32*
  store i32* %80, i32** %10, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %124

83:                                               ; preds = %77
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %13, align 4
  %90 = sub nsw i32 %88, %89
  %91 = load i32, i32* @extra_history_size, align 4
  %92 = sub nsw i32 %91, %90
  store i32 %92, i32* @extra_history_size, align 4
  br label %93

93:                                               ; preds = %87, %83
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* @VTB_RINGBUFFER, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @sc_vtb_init(i32* %94, i32 %95, i32 %98, i32 %99, i32* null, i32 %100)
  %102 = load i32*, i32** %10, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 32
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @SC_NORM_ATTR, align 4
  %111 = shl i32 %110, 8
  %112 = call i32 @sc_vtb_clear(i32* %102, i32 %109, i32 %111)
  %113 = load i32*, i32** %11, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %93
  %116 = load i32*, i32** %11, align 8
  %117 = load i32*, i32** %10, align 8
  %118 = call i32 @copy_history(i32* %116, i32* %117)
  br label %119

119:                                              ; preds = %115, %93
  %120 = load i32*, i32** %10, align 8
  %121 = call i32 @sc_vtb_tail(i32* %120)
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  br label %127

124:                                              ; preds = %77
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  store i32 0, i32* %126, align 8
  br label %127

127:                                              ; preds = %124, %119
  %128 = load i32*, i32** %11, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %139

130:                                              ; preds = %127
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* @extra_history_size, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* @extra_history_size, align 4
  %134 = load i32*, i32** %11, align 8
  %135 = call i32 @sc_vtb_destroy(i32* %134)
  %136 = load i32*, i32** %11, align 8
  %137 = load i32, i32* @M_DEVBUF, align 4
  %138 = call i32 @free(i32* %136, i32 %137)
  br label %139

139:                                              ; preds = %130, %127
  %140 = load i32*, i32** %10, align 8
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  store i32* %140, i32** %142, align 8
  store i32 0, i32* %5, align 4
  br label %143

143:                                              ; preds = %139, %63
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32 @imax(i32, i32) #1

declare dso_local i32 @sc_vtb_rows(i32*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @sc_vtb_init(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @sc_vtb_clear(i32*, i32, i32) #1

declare dso_local i32 @copy_history(i32*, i32*) #1

declare dso_local i32 @sc_vtb_tail(i32*) #1

declare dso_local i32 @sc_vtb_destroy(i32*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
