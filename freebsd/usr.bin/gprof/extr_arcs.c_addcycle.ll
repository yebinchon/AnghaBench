; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_arcs.c_addcycle.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_arcs.c_addcycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i32, %struct.TYPE_9__*, i32 }

@TRUE = common dso_local global i32 0, align 4
@cyclehead = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"no room for %zu bytes of subcycle storage\00", align 1
@FALSE = common dso_local global i32 0, align 4
@ONLIST = common dso_local global i32 0, align 4
@archead = common dso_local global %struct.TYPE_9__* null, align 8
@cyclecnt = common dso_local global i64 0, align 8
@CYCLEMAX = common dso_local global i64 0, align 8
@SUBCYCLELIST = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@newcycle = common dso_local global i32 0, align 4
@oldcycle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @addcycle(%struct.TYPE_9__** %0, %struct.TYPE_9__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__**, align 8
  %5 = alloca %struct.TYPE_9__**, align 8
  %6 = alloca %struct.TYPE_9__**, align 8
  %7 = alloca %struct.TYPE_9__**, align 8
  %8 = alloca %struct.TYPE_9__**, align 8
  %9 = alloca %struct.TYPE_9__**, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %4, align 8
  store %struct.TYPE_9__** %1, %struct.TYPE_9__*** %5, align 8
  %14 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %15 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %16 = ptrtoint %struct.TYPE_9__** %14 to i64
  %17 = ptrtoint %struct.TYPE_9__** %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 8
  %20 = add nsw i64 %19, 1
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp sle i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %3, align 4
  br label %190

26:                                               ; preds = %2
  %27 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  store %struct.TYPE_9__** %27, %struct.TYPE_9__*** %6, align 8
  %28 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %10, align 8
  br label %30

30:                                               ; preds = %44, %26
  %31 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %32 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %33 = icmp ule %struct.TYPE_9__** %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %38 = icmp ugt %struct.TYPE_9__* %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %44

40:                                               ; preds = %34
  %41 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %10, align 8
  %43 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  store %struct.TYPE_9__** %43, %struct.TYPE_9__*** %7, align 8
  br label %44

44:                                               ; preds = %40, %39
  %45 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %45, i32 1
  store %struct.TYPE_9__** %46, %struct.TYPE_9__*** %6, align 8
  br label %30

47:                                               ; preds = %30
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cyclehead, align 8
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %12, align 8
  br label %49

49:                                               ; preds = %99, %47
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %51 = icmp ne %struct.TYPE_8__* %50, null
  br i1 %51, label %52, label %103

52:                                               ; preds = %49
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %99

59:                                               ; preds = %52
  %60 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  store %struct.TYPE_9__** %60, %struct.TYPE_9__*** %8, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %63, i64 %65
  store %struct.TYPE_9__** %66, %struct.TYPE_9__*** %9, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %68, align 8
  store %struct.TYPE_9__** %69, %struct.TYPE_9__*** %6, align 8
  br label %70

70:                                               ; preds = %89, %59
  %71 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %72 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %73 = icmp ult %struct.TYPE_9__** %71, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %70
  %75 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %75, i32 1
  store %struct.TYPE_9__** %76, %struct.TYPE_9__*** %8, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %78 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = icmp ne %struct.TYPE_9__* %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %92

82:                                               ; preds = %74
  %83 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %84 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %85 = icmp ugt %struct.TYPE_9__** %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  store %struct.TYPE_9__** %87, %struct.TYPE_9__*** %8, align 8
  br label %88

88:                                               ; preds = %86, %82
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %90, i32 1
  store %struct.TYPE_9__** %91, %struct.TYPE_9__*** %6, align 8
  br label %70

92:                                               ; preds = %81, %70
  %93 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %94 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %95 = icmp eq %struct.TYPE_9__** %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* @TRUE, align 4
  store i32 %97, i32* %3, align 4
  br label %190

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %98, %58
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  store %struct.TYPE_8__* %102, %struct.TYPE_8__** %12, align 8
  br label %49

103:                                              ; preds = %49
  %104 = load i32, i32* %13, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 8
  %108 = add i64 24, %107
  %109 = trunc i64 %108 to i32
  %110 = call i64 @calloc(i32 1, i32 %109)
  %111 = inttoptr i64 %110 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %111, %struct.TYPE_8__** %12, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %113 = icmp eq %struct.TYPE_8__* %112, null
  br i1 %113, label %114, label %123

114:                                              ; preds = %103
  %115 = load i32, i32* %13, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = mul i64 %117, 8
  %119 = add i64 24, %118
  %120 = trunc i64 %119 to i32
  %121 = call i32 @warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @FALSE, align 4
  store i32 %122, i32* %3, align 4
  br label %190

123:                                              ; preds = %103
  %124 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  store %struct.TYPE_9__** %124, %struct.TYPE_9__*** %8, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %126, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %127, i64 %129
  store %struct.TYPE_9__** %130, %struct.TYPE_9__*** %9, align 8
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %132, align 8
  store %struct.TYPE_9__** %133, %struct.TYPE_9__*** %6, align 8
  br label %134

134:                                              ; preds = %170, %123
  %135 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %136 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %137 = icmp ult %struct.TYPE_9__** %135, %136
  br i1 %137, label %138, label %173

138:                                              ; preds = %134
  %139 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %139, i32 1
  store %struct.TYPE_9__** %140, %struct.TYPE_9__*** %8, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %142 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  store %struct.TYPE_9__* %141, %struct.TYPE_9__** %142, align 8
  store %struct.TYPE_9__* %141, %struct.TYPE_9__** %11, align 8
  %143 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %144 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %145 = icmp ugt %struct.TYPE_9__** %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %138
  %147 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  store %struct.TYPE_9__** %147, %struct.TYPE_9__*** %8, align 8
  br label %148

148:                                              ; preds = %146, %138
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 8
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @ONLIST, align 4
  %157 = and i32 %155, %156
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %148
  %160 = load i32, i32* @ONLIST, align 4
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** @archead, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 1
  store %struct.TYPE_9__* %165, %struct.TYPE_9__** %167, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %168, %struct.TYPE_9__** @archead, align 8
  br label %169

169:                                              ; preds = %159, %148
  br label %170

170:                                              ; preds = %169
  %171 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %171, i32 1
  store %struct.TYPE_9__** %172, %struct.TYPE_9__*** %6, align 8
  br label %134

173:                                              ; preds = %134
  %174 = load i32, i32* %13, align 4
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cyclehead, align 8
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 1
  store %struct.TYPE_8__* %177, %struct.TYPE_8__** %179, align 8
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %180, %struct.TYPE_8__** @cyclehead, align 8
  %181 = load i64, i64* @cyclecnt, align 8
  %182 = add nsw i64 %181, 1
  store i64 %182, i64* @cyclecnt, align 8
  %183 = load i64, i64* @cyclecnt, align 8
  %184 = load i64, i64* @CYCLEMAX, align 8
  %185 = icmp sge i64 %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %173
  %187 = load i32, i32* @FALSE, align 4
  store i32 %187, i32* %3, align 4
  br label %190

188:                                              ; preds = %173
  %189 = load i32, i32* @TRUE, align 4
  store i32 %189, i32* %3, align 4
  br label %190

190:                                              ; preds = %188, %186, %114, %96, %24
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @warnx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
