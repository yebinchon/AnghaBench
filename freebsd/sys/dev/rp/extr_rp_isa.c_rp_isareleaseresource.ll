; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp_isa.c_rp_isareleaseresource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp_isa.c_rp_isareleaseresource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32**, i32**, i32**, i32 }
%struct.TYPE_8__ = type { i64 }

@rp_controller = common dso_local global %struct.TYPE_7__* null, align 8
@MAX_AIOPS_PER_BOARD = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @rp_isareleaseresource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rp_isareleaseresource(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = call i32 @rp_releaseresource(%struct.TYPE_7__* %4)
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rp_controller, align 8
  %8 = icmp eq %struct.TYPE_7__* %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** @rp_controller, align 8
  br label %10

10:                                               ; preds = %9, %1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %13 = load i32**, i32*** %12, align 8
  %14 = icmp ne i32** %13, null
  br i1 %14, label %15, label %59

15:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %50, %15
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @MAX_AIOPS_PER_BOARD, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %16
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load i32**, i32*** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %49

29:                                               ; preds = %20
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SYS_RES_IOPORT, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @bus_release_resource(i32 %32, i32 %33, i32* %40, i32* %47)
  br label %49

49:                                               ; preds = %29, %20
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %16

53:                                               ; preds = %16
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* @M_DEVBUF, align 4
  %58 = call i32 @free(i32** %56, i32 %57)
  br label %59

59:                                               ; preds = %53, %10
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32**, i32*** %61, align 8
  %63 = icmp ne i32** %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32**, i32*** %66, align 8
  %68 = load i32, i32* @M_DEVBUF, align 4
  %69 = call i32 @free(i32** %67, i32 %68)
  br label %70

70:                                               ; preds = %64, %59
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rp_controller, align 8
  %72 = icmp ne %struct.TYPE_7__* %71, null
  br i1 %72, label %73, label %124

73:                                               ; preds = %70
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rp_controller, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i32**, i32*** %75, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %78 = call %struct.TYPE_8__* @ISACTL(%struct.TYPE_7__* %77)
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i32*, i32** %76, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %124

84:                                               ; preds = %73
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rp_controller, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @SYS_RES_IOPORT, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rp_controller, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32**, i32*** %90, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %93 = call %struct.TYPE_8__* @ISACTL(%struct.TYPE_7__* %92)
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i32*, i32** %91, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rp_controller, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = load i32**, i32*** %99, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %102 = call %struct.TYPE_8__* @ISACTL(%struct.TYPE_7__* %101)
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i32*, i32** %100, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @bus_release_resource(i32 %87, i32 %88, i32* %97, i32* %106)
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rp_controller, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  %110 = load i32**, i32*** %109, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %112 = call %struct.TYPE_8__* @ISACTL(%struct.TYPE_7__* %111)
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i32*, i32** %110, i64 %114
  store i32* null, i32** %115, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rp_controller, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i32**, i32*** %117, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %120 = call %struct.TYPE_8__* @ISACTL(%struct.TYPE_7__* %119)
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds i32*, i32** %118, i64 %122
  store i32* null, i32** %123, align 8
  br label %124

124:                                              ; preds = %84, %73, %70
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32**, i32*** %126, align 8
  %128 = icmp ne i32** %127, null
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32**, i32*** %131, align 8
  %133 = load i32, i32* @M_DEVBUF, align 4
  %134 = call i32 @free(i32** %132, i32 %133)
  br label %135

135:                                              ; preds = %129, %124
  ret void
}

declare dso_local i32 @rp_releaseresource(%struct.TYPE_7__*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32*, i32*) #1

declare dso_local i32 @free(i32**, i32) #1

declare dso_local %struct.TYPE_8__* @ISACTL(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
