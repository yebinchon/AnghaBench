; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_dump_blocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_dump_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twe_softc = type { i32 }
%struct.twe_request = type { i32, i32, i32, i8* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@TWE_CMD_SETUP = common dso_local global i32 0, align 4
@TWE_BLOCK_SIZE = common dso_local global i32 0, align 4
@TWE_CMD_DATAOUT = common dso_local global i32 0, align 4
@TWE_OP_WRITE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @twe_dump_blocks(%struct.twe_softc* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.twe_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.twe_request*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32, align 4
  store %struct.twe_softc* %0, %struct.twe_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.twe_softc*, %struct.twe_softc** %7, align 8
  %16 = call i64 @twe_get_request(%struct.twe_softc* %15, %struct.twe_request** %12)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOMEM, align 4
  store i32 %19, i32* %6, align 4
  br label %71

20:                                               ; preds = %5
  %21 = load i8*, i8** %10, align 8
  %22 = load %struct.twe_request*, %struct.twe_request** %12, align 8
  %23 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* @TWE_CMD_SETUP, align 4
  %25 = load %struct.twe_request*, %struct.twe_request** %12, align 8
  %26 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @TWE_BLOCK_SIZE, align 4
  %29 = mul nsw i32 %27, %28
  %30 = load %struct.twe_request*, %struct.twe_request** %12, align 8
  %31 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @TWE_CMD_DATAOUT, align 4
  %33 = load %struct.twe_request*, %struct.twe_request** %12, align 8
  %34 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.twe_request*, %struct.twe_request** %12, align 8
  %36 = call %struct.TYPE_5__* @TWE_FIND_COMMAND(%struct.twe_request* %35)
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %13, align 8
  %37 = load i32, i32* @TWE_OP_WRITE, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  store i32 %37, i32* %40, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 3, i32* %43, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  store i32 %52, i32* %55, align 4
  %56 = load %struct.twe_request*, %struct.twe_request** %12, align 8
  %57 = call i32 @twe_immediate_request(%struct.twe_request* %56, i32 0)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %20
  %61 = load %struct.twe_request*, %struct.twe_request** %12, align 8
  %62 = call i64 @twe_report_request(%struct.twe_request* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @EIO, align 4
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %64, %60
  br label %67

67:                                               ; preds = %66, %20
  %68 = load %struct.twe_request*, %struct.twe_request** %12, align 8
  %69 = call i32 @twe_release_request(%struct.twe_request* %68)
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %67, %18
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i64 @twe_get_request(%struct.twe_softc*, %struct.twe_request**) #1

declare dso_local %struct.TYPE_5__* @TWE_FIND_COMMAND(%struct.twe_request*) #1

declare dso_local i32 @twe_immediate_request(%struct.twe_request*, i32) #1

declare dso_local i64 @twe_report_request(%struct.twe_request*) #1

declare dso_local i32 @twe_release_request(%struct.twe_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
