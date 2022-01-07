; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-iop.c_iop_queue_wait_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-iop.c_iop_queue_wait_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iop_softc = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.i2o_basic_message = type { i32, i32 }
%struct.i2o_single_reply = type { i32 }
%struct.iop_request = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@iop_done = common dso_local global i64 0, align 8
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"pstwt\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"pstiop: timeout waiting for message response\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iop_queue_wait_msg(%struct.iop_softc* %0, i32 %1, %struct.i2o_basic_message* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iop_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2o_basic_message*, align 8
  %8 = alloca %struct.i2o_single_reply*, align 8
  %9 = alloca %struct.iop_request, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iop_softc* %0, %struct.iop_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i2o_basic_message* %2, %struct.i2o_basic_message** %7, align 8
  store i32 10000, i32* %12, align 4
  %13 = load %struct.iop_softc*, %struct.iop_softc** %5, align 8
  %14 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %13, i32 0, i32 2
  %15 = call i32 @mtx_lock(i32* %14)
  %16 = load %struct.iop_softc*, %struct.iop_softc** %5, align 8
  %17 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %16, i32 0, i32 3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %62, label %23

23:                                               ; preds = %3
  %24 = ptrtoint %struct.iop_request* %9 to i32
  %25 = load %struct.i2o_basic_message*, %struct.i2o_basic_message** %7, align 8
  %26 = getelementptr inbounds %struct.i2o_basic_message, %struct.i2o_basic_message* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i64, i64* @iop_done, align 8
  %28 = trunc i64 %27 to i32
  %29 = load %struct.i2o_basic_message*, %struct.i2o_basic_message** %7, align 8
  %30 = getelementptr inbounds %struct.i2o_basic_message, %struct.i2o_basic_message* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.iop_softc*, %struct.iop_softc** %5, align 8
  %33 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %32, i32 0, i32 3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32 %31, i32* %35, align 4
  %36 = load %struct.iop_softc*, %struct.iop_softc** %5, align 8
  %37 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %36, i32 0, i32 2
  %38 = load i32, i32* @PRIBIO, align 4
  %39 = load i32, i32* @hz, align 4
  %40 = mul nsw i32 10, %39
  %41 = call i64 @msleep(%struct.iop_request* %9, i32* %37, i32 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %23
  %44 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.iop_softc*, %struct.iop_softc** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @iop_free_mfa(%struct.iop_softc* %45, i32 %46)
  %48 = load %struct.iop_softc*, %struct.iop_softc** %5, align 8
  %49 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %48, i32 0, i32 2
  %50 = call i32 @mtx_unlock(i32* %49)
  store i32 -1, i32* %4, align 4
  br label %119

51:                                               ; preds = %23
  %52 = getelementptr inbounds %struct.iop_request, %struct.iop_request* %9, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %11, align 4
  %56 = getelementptr inbounds %struct.iop_request, %struct.iop_request* %9, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.iop_softc*, %struct.iop_softc** %5, align 8
  %59 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %58, i32 0, i32 3
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  store i32 %57, i32* %61, align 4
  br label %114

62:                                               ; preds = %3
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.iop_softc*, %struct.iop_softc** %5, align 8
  %65 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %64, i32 0, i32 3
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i32 %63, i32* %67, align 4
  br label %68

68:                                               ; preds = %81, %62
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load %struct.iop_softc*, %struct.iop_softc** %5, align 8
  %74 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %73, i32 0, i32 3
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %10, align 4
  %78 = icmp eq i32 %77, -1
  br label %79

79:                                               ; preds = %72, %68
  %80 = phi i1 [ false, %68 ], [ %78, %72 ]
  br i1 %80, label %81, label %83

81:                                               ; preds = %79
  %82 = call i32 @DELAY(i32 1000)
  br label %68

83:                                               ; preds = %79
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %83
  %87 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %88 = load %struct.iop_softc*, %struct.iop_softc** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @iop_free_mfa(%struct.iop_softc* %88, i32 %89)
  %91 = load %struct.iop_softc*, %struct.iop_softc** %5, align 8
  %92 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %91, i32 0, i32 2
  %93 = call i32 @mtx_unlock(i32* %92)
  store i32 -1, i32* %4, align 4
  br label %119

94:                                               ; preds = %83
  %95 = load %struct.iop_softc*, %struct.iop_softc** %5, align 8
  %96 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.iop_softc*, %struct.iop_softc** %5, align 8
  %100 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %98, %101
  %103 = add nsw i32 %97, %102
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to %struct.i2o_single_reply*
  store %struct.i2o_single_reply* %105, %struct.i2o_single_reply** %8, align 8
  %106 = load %struct.i2o_single_reply*, %struct.i2o_single_reply** %8, align 8
  %107 = getelementptr inbounds %struct.i2o_single_reply, %struct.i2o_single_reply* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.iop_softc*, %struct.iop_softc** %5, align 8
  %111 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %110, i32 0, i32 3
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  store i32 %109, i32* %113, align 4
  br label %114

114:                                              ; preds = %94, %51
  %115 = load %struct.iop_softc*, %struct.iop_softc** %5, align 8
  %116 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %115, i32 0, i32 2
  %117 = call i32 @mtx_unlock(i32* %116)
  %118 = load i32, i32* %11, align 4
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %114, %86, %43
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @msleep(%struct.iop_request*, i32*, i32, i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @iop_free_mfa(%struct.iop_softc*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
