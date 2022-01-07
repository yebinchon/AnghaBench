; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-iop.c_iop_get_lct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-iop.c_iop_get_lct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iop_softc = type { i32, i32, i64 }
%struct.i2o_exec_get_lct_message = type { i32, i32, i32, %struct.TYPE_2__, i64, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32*, i32 }
%struct.i2o_get_lct_reply = type { i32, i32* }
%struct.i2o_basic_message = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@M_PSTIOP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@I2O_TID_IOP = common dso_local global i32 0, align 4
@I2O_TID_HOST = common dso_local global i32 0, align 4
@I2O_EXEC_LCT_NOTIFY = common dso_local global i32 0, align 4
@I2O_CLASS_MATCH_ANYCLASS = common dso_local global i32 0, align 4
@I2O_SGL_SIMPLE = common dso_local global i32 0, align 4
@I2O_SGL_END = common dso_local global i32 0, align 4
@I2O_SGL_EOB = common dso_local global i32 0, align 4
@ALLOCSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iop_get_lct(%struct.iop_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iop_softc*, align 8
  %4 = alloca %struct.i2o_exec_get_lct_message*, align 8
  %5 = alloca %struct.i2o_get_lct_reply*, align 8
  %6 = alloca i32, align 4
  store %struct.iop_softc* %0, %struct.iop_softc** %3, align 8
  %7 = load i32, i32* @PAGE_SIZE, align 4
  %8 = sext i32 %7 to i64
  %9 = add i64 %8, 1024
  %10 = trunc i64 %9 to i32
  %11 = load i32, i32* @M_PSTIOP, align 4
  %12 = load i32, i32* @M_NOWAIT, align 4
  %13 = load i32, i32* @M_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = call %struct.i2o_get_lct_reply* @contigmalloc(i32 %10, i32 %11, i32 %14, i32 65536, i32 -1, i32 %15, i32 0)
  store %struct.i2o_get_lct_reply* %16, %struct.i2o_get_lct_reply** %5, align 8
  %17 = icmp ne %struct.i2o_get_lct_reply* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %137

19:                                               ; preds = %1
  %20 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %21 = call i32 @iop_get_mfa(%struct.iop_softc* %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %23 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = inttoptr i64 %27 to %struct.i2o_exec_get_lct_message*
  store %struct.i2o_exec_get_lct_message* %28, %struct.i2o_exec_get_lct_message** %4, align 8
  %29 = load %struct.i2o_exec_get_lct_message*, %struct.i2o_exec_get_lct_message** %4, align 8
  %30 = call i32 @bzero(%struct.i2o_exec_get_lct_message* %29, i32 64)
  %31 = load %struct.i2o_exec_get_lct_message*, %struct.i2o_exec_get_lct_message** %4, align 8
  %32 = getelementptr inbounds %struct.i2o_exec_get_lct_message, %struct.i2o_exec_get_lct_message* %31, i32 0, i32 0
  store i32 97, i32* %32, align 8
  %33 = load %struct.i2o_exec_get_lct_message*, %struct.i2o_exec_get_lct_message** %4, align 8
  %34 = getelementptr inbounds %struct.i2o_exec_get_lct_message, %struct.i2o_exec_get_lct_message* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  %35 = load %struct.i2o_exec_get_lct_message*, %struct.i2o_exec_get_lct_message** %4, align 8
  %36 = getelementptr inbounds %struct.i2o_exec_get_lct_message, %struct.i2o_exec_get_lct_message* %35, i32 0, i32 2
  store i32 16, i32* %36, align 8
  %37 = load i32, i32* @I2O_TID_IOP, align 4
  %38 = load %struct.i2o_exec_get_lct_message*, %struct.i2o_exec_get_lct_message** %4, align 8
  %39 = getelementptr inbounds %struct.i2o_exec_get_lct_message, %struct.i2o_exec_get_lct_message* %38, i32 0, i32 8
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @I2O_TID_HOST, align 4
  %41 = load %struct.i2o_exec_get_lct_message*, %struct.i2o_exec_get_lct_message** %4, align 8
  %42 = getelementptr inbounds %struct.i2o_exec_get_lct_message, %struct.i2o_exec_get_lct_message* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @I2O_EXEC_LCT_NOTIFY, align 4
  %44 = load %struct.i2o_exec_get_lct_message*, %struct.i2o_exec_get_lct_message** %4, align 8
  %45 = getelementptr inbounds %struct.i2o_exec_get_lct_message, %struct.i2o_exec_get_lct_message* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @I2O_CLASS_MATCH_ANYCLASS, align 4
  %47 = load %struct.i2o_exec_get_lct_message*, %struct.i2o_exec_get_lct_message** %4, align 8
  %48 = getelementptr inbounds %struct.i2o_exec_get_lct_message, %struct.i2o_exec_get_lct_message* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  %49 = load %struct.i2o_exec_get_lct_message*, %struct.i2o_exec_get_lct_message** %4, align 8
  %50 = getelementptr inbounds %struct.i2o_exec_get_lct_message, %struct.i2o_exec_get_lct_message* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* @I2O_SGL_SIMPLE, align 4
  %52 = load i32, i32* @I2O_SGL_END, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @I2O_SGL_EOB, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.i2o_exec_get_lct_message*, %struct.i2o_exec_get_lct_message** %4, align 8
  %57 = getelementptr inbounds %struct.i2o_exec_get_lct_message, %struct.i2o_exec_get_lct_message* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, 1024
  %62 = trunc i64 %61 to i32
  %63 = load %struct.i2o_exec_get_lct_message*, %struct.i2o_exec_get_lct_message** %4, align 8
  %64 = getelementptr inbounds %struct.i2o_exec_get_lct_message, %struct.i2o_exec_get_lct_message* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  store i32 %62, i32* %65, align 8
  %66 = load %struct.i2o_get_lct_reply*, %struct.i2o_get_lct_reply** %5, align 8
  %67 = call i32 @vtophys(%struct.i2o_get_lct_reply* %66)
  %68 = load %struct.i2o_exec_get_lct_message*, %struct.i2o_exec_get_lct_message** %4, align 8
  %69 = getelementptr inbounds %struct.i2o_exec_get_lct_message, %struct.i2o_exec_get_lct_message* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 %67, i32* %72, align 4
  %73 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.i2o_exec_get_lct_message*, %struct.i2o_exec_get_lct_message** %4, align 8
  %76 = bitcast %struct.i2o_exec_get_lct_message* %75 to %struct.i2o_basic_message*
  %77 = call i64 @iop_queue_wait_msg(%struct.iop_softc* %73, i32 %74, %struct.i2o_basic_message* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %19
  %80 = load %struct.i2o_get_lct_reply*, %struct.i2o_get_lct_reply** %5, align 8
  %81 = load i32, i32* @PAGE_SIZE, align 4
  %82 = sext i32 %81 to i64
  %83 = add i64 %82, 1024
  %84 = trunc i64 %83 to i32
  %85 = load i32, i32* @M_PSTIOP, align 4
  %86 = call i32 @contigfree(%struct.i2o_get_lct_reply* %80, i32 %84, i32 %85)
  store i32 0, i32* %2, align 4
  br label %137

87:                                               ; preds = %19
  %88 = load %struct.i2o_get_lct_reply*, %struct.i2o_get_lct_reply** %5, align 8
  %89 = getelementptr inbounds %struct.i2o_get_lct_reply, %struct.i2o_get_lct_reply* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 4
  %93 = trunc i64 %92 to i32
  %94 = load i32, i32* @M_PSTIOP, align 4
  %95 = load i32, i32* @M_NOWAIT, align 4
  %96 = load i32, i32* @M_ZERO, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @malloc(i32 %93, i32 %94, i32 %97)
  %99 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %100 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = icmp ne i32 %98, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %87
  %103 = load %struct.i2o_get_lct_reply*, %struct.i2o_get_lct_reply** %5, align 8
  %104 = load i32, i32* @PAGE_SIZE, align 4
  %105 = sext i32 %104 to i64
  %106 = add i64 %105, 1024
  %107 = trunc i64 %106 to i32
  %108 = load i32, i32* @M_PSTIOP, align 4
  %109 = call i32 @contigfree(%struct.i2o_get_lct_reply* %103, i32 %107, i32 %108)
  store i32 0, i32* %2, align 4
  br label %137

110:                                              ; preds = %87
  %111 = load %struct.i2o_get_lct_reply*, %struct.i2o_get_lct_reply** %5, align 8
  %112 = getelementptr inbounds %struct.i2o_get_lct_reply, %struct.i2o_get_lct_reply* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %116 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.i2o_get_lct_reply*, %struct.i2o_get_lct_reply** %5, align 8
  %119 = getelementptr inbounds %struct.i2o_get_lct_reply, %struct.i2o_get_lct_reply* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = mul i64 %121, 4
  %123 = trunc i64 %122 to i32
  %124 = call i32 @bcopy(i32* %114, i32 %117, i32 %123)
  %125 = load %struct.i2o_get_lct_reply*, %struct.i2o_get_lct_reply** %5, align 8
  %126 = getelementptr inbounds %struct.i2o_get_lct_reply, %struct.i2o_get_lct_reply* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %129 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load %struct.i2o_get_lct_reply*, %struct.i2o_get_lct_reply** %5, align 8
  %131 = load i32, i32* @PAGE_SIZE, align 4
  %132 = sext i32 %131 to i64
  %133 = add i64 %132, 1024
  %134 = trunc i64 %133 to i32
  %135 = load i32, i32* @M_PSTIOP, align 4
  %136 = call i32 @contigfree(%struct.i2o_get_lct_reply* %130, i32 %134, i32 %135)
  store i32 1, i32* %2, align 4
  br label %137

137:                                              ; preds = %110, %102, %79, %18
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local %struct.i2o_get_lct_reply* @contigmalloc(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @iop_get_mfa(%struct.iop_softc*) #1

declare dso_local i32 @bzero(%struct.i2o_exec_get_lct_message*, i32) #1

declare dso_local i32 @vtophys(%struct.i2o_get_lct_reply*) #1

declare dso_local i64 @iop_queue_wait_msg(%struct.iop_softc*, i32, %struct.i2o_basic_message*) #1

declare dso_local i32 @contigfree(%struct.i2o_get_lct_reply*, i32, i32) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
