; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tsort/extr_tsort.c_tsort.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tsort/extr_tsort.c_tsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }

@graph = common dso_local global %struct.TYPE_7__* null, align 8
@cycle_buf = common dso_local global i32* null, align 8
@longest_cycle = common dso_local global %struct.TYPE_8__** null, align 8
@NF_ACYCLIC = common dso_local global i32 0, align 4
@quiet = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"cycle in data\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"internal error -- could not find cycle\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tsort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsort() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  br label %5

5:                                                ; preds = %140, %0
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** @graph, align 8
  %7 = icmp ne %struct.TYPE_7__* %6, null
  br i1 %7, label %8, label %141

8:                                                ; preds = %5
  br label %9

9:                                                ; preds = %37, %8
  store i32 0, i32* %3, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @graph, align 8
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %1, align 8
  br label %11

11:                                               ; preds = %28, %9
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %2, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %24 = call i32 @remove_node(%struct.TYPE_7__* %23)
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %22, %14
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %1, align 8
  br label %11

30:                                               ; preds = %11
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** @graph, align 8
  %33 = icmp ne %struct.TYPE_7__* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi i1 [ false, %31 ], [ %36, %34 ]
  br i1 %38, label %9, label %39

39:                                               ; preds = %37
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** @graph, align 8
  %41 = icmp eq %struct.TYPE_7__* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %141

43:                                               ; preds = %39
  %44 = load i32*, i32** @cycle_buf, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %79, label %46

46:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** @graph, align 8
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %1, align 8
  br label %48

48:                                               ; preds = %54, %46
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %50 = icmp ne %struct.TYPE_7__* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  store %struct.TYPE_7__* %57, %struct.TYPE_7__** %1, align 8
  br label %48

58:                                               ; preds = %48
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 8, %60
  %62 = trunc i64 %61 to i32
  %63 = call i8* @malloc(i32 %62)
  %64 = bitcast i8* %63 to i32*
  store i32* %64, i32** @cycle_buf, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 8, %66
  %68 = trunc i64 %67 to i32
  %69 = call i8* @malloc(i32 %68)
  %70 = bitcast i8* %69 to %struct.TYPE_8__**
  store %struct.TYPE_8__** %70, %struct.TYPE_8__*** @longest_cycle, align 8
  %71 = load i32*, i32** @cycle_buf, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %58
  %74 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @longest_cycle, align 8
  %75 = icmp eq %struct.TYPE_8__** %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %73, %58
  %77 = call i32 @err(i32 1, i32* null)
  br label %78

78:                                               ; preds = %76, %73
  br label %79

79:                                               ; preds = %78, %43
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** @graph, align 8
  store %struct.TYPE_7__* %80, %struct.TYPE_7__** %1, align 8
  br label %81

81:                                               ; preds = %131, %79
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %83 = icmp ne %struct.TYPE_7__* %82, null
  br i1 %83, label %84, label %135

84:                                               ; preds = %81
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @NF_ACYCLIC, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %130, label %91

91:                                               ; preds = %84
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %94 = call i32 @find_cycle(%struct.TYPE_7__* %92, %struct.TYPE_7__* %93, i32 0, i32 0)
  store i32 %94, i32* %3, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %122

96:                                               ; preds = %91
  %97 = load i32, i32* @quiet, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %118, label %99

99:                                               ; preds = %96
  %100 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %114, %99
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* %3, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %101
  %106 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @longest_cycle, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %106, i64 %108
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %105
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %4, align 4
  br label %101

117:                                              ; preds = %101
  br label %118

118:                                              ; preds = %117, %96
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %120 = call i32 @remove_node(%struct.TYPE_7__* %119)
  %121 = call i32 (...) @clear_cycle()
  br label %135

122:                                              ; preds = %91
  %123 = load i32, i32* @NF_ACYCLIC, align 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  %128 = call i32 (...) @clear_cycle()
  br label %129

129:                                              ; preds = %122
  br label %130

130:                                              ; preds = %129, %84
  br label %131

131:                                              ; preds = %130
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  store %struct.TYPE_7__* %134, %struct.TYPE_7__** %1, align 8
  br label %81

135:                                              ; preds = %118, %81
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %137 = icmp eq %struct.TYPE_7__* %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = call i32 @errx(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %135
  br label %5

141:                                              ; preds = %42, %5
  ret void
}

declare dso_local i32 @remove_node(%struct.TYPE_7__*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local i32 @find_cycle(%struct.TYPE_7__*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @clear_cycle(...) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
