; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_init_main.c_sysinit_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_init_main.c_sysinit_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysinit = type { i32 }

@newsysinit = common dso_local global %struct.sysinit** null, align 8
@newsysinit_end = common dso_local global %struct.sysinit** null, align 8
@sysinit_end = common dso_local global %struct.sysinit** null, align 8
@sysinit = common dso_local global %struct.sysinit** null, align 8
@M_TEMP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cannot malloc for sysinit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sysinit_add(%struct.sysinit** %0, %struct.sysinit** %1) #0 {
  %3 = alloca %struct.sysinit**, align 8
  %4 = alloca %struct.sysinit**, align 8
  %5 = alloca %struct.sysinit**, align 8
  %6 = alloca %struct.sysinit**, align 8
  %7 = alloca %struct.sysinit**, align 8
  %8 = alloca i32, align 4
  store %struct.sysinit** %0, %struct.sysinit*** %3, align 8
  store %struct.sysinit** %1, %struct.sysinit*** %4, align 8
  %9 = load %struct.sysinit**, %struct.sysinit*** %4, align 8
  %10 = load %struct.sysinit**, %struct.sysinit*** %3, align 8
  %11 = ptrtoint %struct.sysinit** %9 to i64
  %12 = ptrtoint %struct.sysinit** %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load %struct.sysinit**, %struct.sysinit*** @newsysinit, align 8
  %17 = icmp ne %struct.sysinit** %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load %struct.sysinit**, %struct.sysinit*** @newsysinit_end, align 8
  %20 = load %struct.sysinit**, %struct.sysinit*** @newsysinit, align 8
  %21 = ptrtoint %struct.sysinit** %19 to i64
  %22 = ptrtoint %struct.sysinit** %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %8, align 4
  br label %40

29:                                               ; preds = %2
  %30 = load %struct.sysinit**, %struct.sysinit*** @sysinit_end, align 8
  %31 = load %struct.sysinit**, %struct.sysinit*** @sysinit, align 8
  %32 = ptrtoint %struct.sysinit** %30 to i64
  %33 = ptrtoint %struct.sysinit** %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %29, %18
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 8
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* @M_TEMP, align 4
  %46 = load i32, i32* @M_NOWAIT, align 4
  %47 = call %struct.sysinit** @malloc(i32 %44, i32 %45, i32 %46)
  store %struct.sysinit** %47, %struct.sysinit*** %5, align 8
  %48 = load %struct.sysinit**, %struct.sysinit*** %5, align 8
  %49 = icmp eq %struct.sysinit** %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %40
  %53 = load %struct.sysinit**, %struct.sysinit*** %5, align 8
  store %struct.sysinit** %53, %struct.sysinit*** %7, align 8
  %54 = load %struct.sysinit**, %struct.sysinit*** @newsysinit, align 8
  %55 = icmp ne %struct.sysinit** %54, null
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load %struct.sysinit**, %struct.sysinit*** @newsysinit, align 8
  store %struct.sysinit** %57, %struct.sysinit*** %6, align 8
  br label %58

58:                                               ; preds = %67, %56
  %59 = load %struct.sysinit**, %struct.sysinit*** %6, align 8
  %60 = load %struct.sysinit**, %struct.sysinit*** @newsysinit_end, align 8
  %61 = icmp ult %struct.sysinit** %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load %struct.sysinit**, %struct.sysinit*** %6, align 8
  %64 = load %struct.sysinit*, %struct.sysinit** %63, align 8
  %65 = load %struct.sysinit**, %struct.sysinit*** %7, align 8
  %66 = getelementptr inbounds %struct.sysinit*, %struct.sysinit** %65, i32 1
  store %struct.sysinit** %66, %struct.sysinit*** %7, align 8
  store %struct.sysinit* %64, %struct.sysinit** %65, align 8
  br label %67

67:                                               ; preds = %62
  %68 = load %struct.sysinit**, %struct.sysinit*** %6, align 8
  %69 = getelementptr inbounds %struct.sysinit*, %struct.sysinit** %68, i32 1
  store %struct.sysinit** %69, %struct.sysinit*** %6, align 8
  br label %58

70:                                               ; preds = %58
  br label %86

71:                                               ; preds = %52
  %72 = load %struct.sysinit**, %struct.sysinit*** @sysinit, align 8
  store %struct.sysinit** %72, %struct.sysinit*** %6, align 8
  br label %73

73:                                               ; preds = %82, %71
  %74 = load %struct.sysinit**, %struct.sysinit*** %6, align 8
  %75 = load %struct.sysinit**, %struct.sysinit*** @sysinit_end, align 8
  %76 = icmp ult %struct.sysinit** %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = load %struct.sysinit**, %struct.sysinit*** %6, align 8
  %79 = load %struct.sysinit*, %struct.sysinit** %78, align 8
  %80 = load %struct.sysinit**, %struct.sysinit*** %7, align 8
  %81 = getelementptr inbounds %struct.sysinit*, %struct.sysinit** %80, i32 1
  store %struct.sysinit** %81, %struct.sysinit*** %7, align 8
  store %struct.sysinit* %79, %struct.sysinit** %80, align 8
  br label %82

82:                                               ; preds = %77
  %83 = load %struct.sysinit**, %struct.sysinit*** %6, align 8
  %84 = getelementptr inbounds %struct.sysinit*, %struct.sysinit** %83, i32 1
  store %struct.sysinit** %84, %struct.sysinit*** %6, align 8
  br label %73

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85, %70
  %87 = load %struct.sysinit**, %struct.sysinit*** %3, align 8
  store %struct.sysinit** %87, %struct.sysinit*** %6, align 8
  br label %88

88:                                               ; preds = %97, %86
  %89 = load %struct.sysinit**, %struct.sysinit*** %6, align 8
  %90 = load %struct.sysinit**, %struct.sysinit*** %4, align 8
  %91 = icmp ult %struct.sysinit** %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load %struct.sysinit**, %struct.sysinit*** %6, align 8
  %94 = load %struct.sysinit*, %struct.sysinit** %93, align 8
  %95 = load %struct.sysinit**, %struct.sysinit*** %7, align 8
  %96 = getelementptr inbounds %struct.sysinit*, %struct.sysinit** %95, i32 1
  store %struct.sysinit** %96, %struct.sysinit*** %7, align 8
  store %struct.sysinit* %94, %struct.sysinit** %95, align 8
  br label %97

97:                                               ; preds = %92
  %98 = load %struct.sysinit**, %struct.sysinit*** %6, align 8
  %99 = getelementptr inbounds %struct.sysinit*, %struct.sysinit** %98, i32 1
  store %struct.sysinit** %99, %struct.sysinit*** %6, align 8
  br label %88

100:                                              ; preds = %88
  %101 = load %struct.sysinit**, %struct.sysinit*** @newsysinit, align 8
  %102 = icmp ne %struct.sysinit** %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load %struct.sysinit**, %struct.sysinit*** @newsysinit, align 8
  %105 = load i32, i32* @M_TEMP, align 4
  %106 = call i32 @free(%struct.sysinit** %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %100
  %108 = load %struct.sysinit**, %struct.sysinit*** %5, align 8
  store %struct.sysinit** %108, %struct.sysinit*** @newsysinit, align 8
  %109 = load %struct.sysinit**, %struct.sysinit*** %5, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.sysinit*, %struct.sysinit** %109, i64 %111
  store %struct.sysinit** %112, %struct.sysinit*** @newsysinit_end, align 8
  ret void
}

declare dso_local %struct.sysinit** @malloc(i32, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @free(%struct.sysinit**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
