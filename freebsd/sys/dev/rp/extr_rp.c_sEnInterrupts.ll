; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp.c_sEnInterrupts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp.c_sEnInterrupts.c"
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
@rp_sBitMapSetTbl = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sEnInterrupts(%struct.TYPE_6__* %0, i32 %1) #0 {
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
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %12
  store i32 %18, i32* %16, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = load i32, i32* @_INDX_ADDR, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @le32dec(i32* %23)
  %25 = call i32 @rp_writech4(%struct.TYPE_6__* %19, i32 %20, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @TXINT_EN, align 4
  %28 = and i32 %26, %27
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %28
  store i32 %34, i32* %32, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = load i32, i32* @_INDX_ADDR, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @le32dec(i32* %39)
  %41 = call i32 @rp_writech4(%struct.TYPE_6__* %35, i32 %36, i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @CHANINT_EN, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = load i32, i32* @_INT_MASK, align 4
  %49 = call i32 @rp_readch1(%struct.TYPE_6__* %47, i32 %48)
  %50 = load i32*, i32** @rp_sBitMapSetTbl, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %49, %55
  store i32 %56, i32* %5, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = load i32, i32* @_INT_MASK, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @rp_writech1(%struct.TYPE_6__* %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %46, %2
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
