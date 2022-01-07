; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_devclass_alloc_unit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_devclass_alloc_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32** }

@.str = private unnamed_addr constant [23 x i8] c"unit %d in devclass %s\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"%s: %s%d already exists; skipping it\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"at\00", align 1
@MINALLOCSIZE = common dso_local global i32 0, align 4
@M_BUS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"now: unit %d in devclass %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32*)* @devclass_alloc_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devclass_alloc_unit(%struct.TYPE_4__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = call i32 @DEVCLANAME(%struct.TYPE_4__* %16)
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @PDEBUG(i8* %19)
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %31

23:                                               ; preds = %3
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @device_get_parent(i32* %24)
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @BUS_HINT_DEVICE_UNIT(i32 %25, i32* %26, i8* %29, i32* %9)
  br label %31

31:                                               ; preds = %23, %3
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %68

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %34
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %37
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %67

52:                                               ; preds = %43
  %53 = load i64, i64* @bootverbose, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %58, i8* %61, i32 %63)
  br label %65

65:                                               ; preds = %55, %52
  %66 = load i32, i32* @EEXIST, align 4
  store i32 %66, i32* %4, align 4
  br label %177

67:                                               ; preds = %43, %37, %34
  br label %98

68:                                               ; preds = %31
  store i32 0, i32* %9, align 4
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %94, %68
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i64 @resource_string_value(i8* %72, i32 %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %8)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %94

77:                                               ; preds = %69
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %77
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i32**, i32*** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  br label %94

93:                                               ; preds = %83, %77
  br label %97

94:                                               ; preds = %92, %76
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %69

97:                                               ; preds = %93
  br label %98

98:                                               ; preds = %97, %67
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp sge i32 %99, %102
  br i1 %103, label %104, label %168

104:                                              ; preds = %98
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i32**, i32*** %106, align 8
  store i32** %107, i32*** %11, align 8
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 1
  %110 = load i32, i32* @MINALLOCSIZE, align 4
  %111 = sext i32 %110 to i64
  %112 = udiv i64 %111, 8
  %113 = trunc i64 %112 to i32
  %114 = call i32 @roundup(i32 %109, i32 %113)
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = mul i64 8, %116
  %118 = trunc i64 %117 to i32
  %119 = load i32, i32* @M_BUS, align 4
  %120 = load i32, i32* @M_NOWAIT, align 4
  %121 = call i32** @malloc(i32 %118, i32 %119, i32 %120)
  store i32** %121, i32*** %10, align 8
  %122 = load i32**, i32*** %10, align 8
  %123 = icmp ne i32** %122, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %104
  %125 = load i32, i32* @ENOMEM, align 4
  store i32 %125, i32* %4, align 4
  br label %177

126:                                              ; preds = %104
  %127 = load i32**, i32*** %11, align 8
  %128 = icmp ne i32** %127, null
  br i1 %128, label %129, label %139

129:                                              ; preds = %126
  %130 = load i32**, i32*** %11, align 8
  %131 = load i32**, i32*** %10, align 8
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = mul i64 8, %135
  %137 = trunc i64 %136 to i32
  %138 = call i32 @bcopy(i32** %130, i32** %131, i32 %137)
  br label %139

139:                                              ; preds = %129, %126
  %140 = load i32**, i32*** %10, align 8
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32*, i32** %140, i64 %144
  %146 = load i32, i32* %12, align 4
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = sub nsw i32 %146, %149
  %151 = sext i32 %150 to i64
  %152 = mul i64 8, %151
  %153 = trunc i64 %152 to i32
  %154 = call i32 @bzero(i32** %145, i32 %153)
  %155 = load i32**, i32*** %10, align 8
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 2
  store i32** %155, i32*** %157, align 8
  %158 = load i32, i32* %12, align 4
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 8
  %161 = load i32**, i32*** %11, align 8
  %162 = icmp ne i32** %161, null
  br i1 %162, label %163, label %167

163:                                              ; preds = %139
  %164 = load i32**, i32*** %11, align 8
  %165 = load i32, i32* @M_BUS, align 4
  %166 = call i32 @free(i32** %164, i32 %165)
  br label %167

167:                                              ; preds = %163, %139
  br label %168

168:                                              ; preds = %167, %98
  %169 = load i32, i32* %9, align 4
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %171 = call i32 @DEVCLANAME(%struct.TYPE_4__* %170)
  %172 = sext i32 %171 to i64
  %173 = inttoptr i64 %172 to i8*
  %174 = call i32 @PDEBUG(i8* %173)
  %175 = load i32, i32* %9, align 4
  %176 = load i32*, i32** %7, align 8
  store i32 %175, i32* %176, align 4
  store i32 0, i32* %4, align 4
  br label %177

177:                                              ; preds = %168, %124, %65
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local i32 @PDEBUG(i8*) #1

declare dso_local i32 @DEVCLANAME(%struct.TYPE_4__*) #1

declare dso_local i32 @BUS_HINT_DEVICE_UNIT(i32, i32*, i8*, i32*) #1

declare dso_local i32 @device_get_parent(i32*) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i32) #1

declare dso_local i64 @resource_string_value(i8*, i32, i8*, i8**) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32** @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(i32**, i32**, i32) #1

declare dso_local i32 @bzero(i32**, i32) #1

declare dso_local i32 @free(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
