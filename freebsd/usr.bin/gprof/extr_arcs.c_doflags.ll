; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_arcs.c_doflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_arcs.c_doflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, double, i32, i32, i32, %struct.TYPE_5__* }

@nname = common dso_local global i32 0, align 4
@topsortnlp = common dso_local global %struct.TYPE_5__** null, align 8
@flist = common dso_local global i32 0, align 4
@fflag = common dso_local global i32 0, align 4
@elist = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@Flist = common dso_local global i32 0, align 4
@Fflag = common dso_local global i32 0, align 4
@Elist = common dso_local global i32 0, align 4
@printtime = common dso_local global double 0.000000e+00, align 8
@PROPDEBUG = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @doflags() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  %4 = load i32, i32* @nname, align 4
  %5 = sub nsw i32 %4, 1
  store i32 %5, i32* %1, align 4
  br label %6

6:                                                ; preds = %134, %0
  %7 = load i32, i32* %1, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %137

9:                                                ; preds = %6
  %10 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @topsortnlp, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %10, i64 %12
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %2, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 5
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = icmp ne %struct.TYPE_5__* %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %9
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %3, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = call i32 @inheritflags(%struct.TYPE_5__* %24)
  br label %26

26:                                               ; preds = %20, %9
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %53, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @flist, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @onlist(i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @fflag, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @elist, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @onlist(i32 %42, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %41, %31
  %49 = load i32, i32* @TRUE, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %48, %41, %38
  br label %72

53:                                               ; preds = %26
  %54 = load i32, i32* @flist, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @onlist(i32 %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @elist, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @onlist(i32 %61, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32, i32* @FALSE, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %67, %60, %53
  br label %72

72:                                               ; preds = %71, %52
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load double, double* %74, align 8
  %76 = fcmp oeq double %75, 0.000000e+00
  br i1 %76, label %77, label %98

77:                                               ; preds = %72
  %78 = load i32, i32* @Flist, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @onlist(i32 %78, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* @Fflag, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* @Elist, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @onlist(i32 %88, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %87, %77
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  store double 1.000000e+00, double* %96, align 8
  br label %97

97:                                               ; preds = %94, %87, %84
  br label %116

98:                                               ; preds = %72
  %99 = load i32, i32* @Flist, align 4
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @onlist(i32 %99, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %115, label %105

105:                                              ; preds = %98
  %106 = load i32, i32* @Elist, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @onlist(i32 %106, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %105
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  store double 0.000000e+00, double* %114, align 8
  br label %115

115:                                              ; preds = %112, %105, %98
  br label %116

116:                                              ; preds = %115, %97
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = sitofp i32 %119 to double
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load double, double* %122, align 8
  %124 = fmul double %120, %123
  %125 = fptosi double %124 to i32
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = sitofp i32 %130 to double
  %132 = load double, double* @printtime, align 8
  %133 = fadd double %132, %131
  store double %133, double* @printtime, align 8
  br label %134

134:                                              ; preds = %116
  %135 = load i32, i32* %1, align 4
  %136 = sub nsw i32 %135, 1
  store i32 %136, i32* %1, align 4
  br label %6

137:                                              ; preds = %6
  ret void
}

declare dso_local i32 @inheritflags(%struct.TYPE_5__*) #1

declare dso_local i64 @onlist(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
