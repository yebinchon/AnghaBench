; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp.c_sDisInterrupts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp.c_sDisInterrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, i64 }

@RXINT_EN = common dso_local global i32 0, align 4
@SRCINT_EN = common dso_local global i32 0, align 4
@MCINT_EN = common dso_local global i32 0, align 4
@_INDX_ADDR = common dso_local global i32 0, align 4
@TXINT_EN = common dso_local global i32 0, align 4
@CHANINT_EN = common dso_local global i32 0, align 4
@_INT_MASK = common dso_local global i32 0, align 4
@rp_sBitMapClrTbl = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sDisInterrupts(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @RXINT_EN, align 4
  %8 = load i32, i32* @SRCINT_EN, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @MCINT_EN, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %6, %11
  %13 = xor i32 %12, -1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %13
  store i32 %19, i32* %17, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = load i32, i32* @_INDX_ADDR, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @le32dec(i32* %24)
  %26 = call i32 @rp_writech4(%struct.TYPE_6__* %20, i32 %21, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @TXINT_EN, align 4
  %29 = and i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %30
  store i32 %36, i32* %34, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = load i32, i32* @_INDX_ADDR, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @le32dec(i32* %41)
  %43 = call i32 @rp_writech4(%struct.TYPE_6__* %37, i32 %38, i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @CHANINT_EN, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %2
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = load i32, i32* @_INT_MASK, align 4
  %51 = call i32 @rp_readch1(%struct.TYPE_6__* %49, i32 %50)
  %52 = load i32*, i32** @rp_sBitMapClrTbl, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %51, %57
  store i32 %58, i32* %5, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = load i32, i32* @_INT_MASK, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @rp_writech1(%struct.TYPE_6__* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %48, %2
  ret void
}

declare dso_local i32 @rp_writech4(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @le32dec(i32*) #1

declare dso_local i32 @rp_readch1(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @rp_writech1(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
