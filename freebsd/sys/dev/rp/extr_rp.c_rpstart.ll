; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp.c_rpstart.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp.c_rpstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.rp_port = type { i32*, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }

@TXFIFO_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*)* @rpstart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpstart(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca %struct.rp_port*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %2, align 8
  %10 = load %struct.tty*, %struct.tty** %2, align 8
  %11 = call %struct.rp_port* @tty_softc(%struct.tty* %10)
  store %struct.rp_port* %11, %struct.rp_port** %3, align 8
  %12 = load %struct.rp_port*, %struct.rp_port** %3, align 8
  %13 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %12, i32 0, i32 2
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %4, align 8
  %14 = load %struct.rp_port*, %struct.rp_port** %3, align 8
  %15 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 3
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %5, align 1
  %20 = load %struct.rp_port*, %struct.rp_port** %3, align 8
  %21 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = call i32 @sEnTransmit(%struct.TYPE_7__* %25)
  %27 = load %struct.rp_port*, %struct.rp_port** %3, align 8
  %28 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %24, %1
  %30 = load i32, i32* @TXFIFO_SIZE, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = call i32 @sGetTxCnt(%struct.TYPE_7__* %31)
  %33 = sub nsw i32 %30, %32
  store i32 %33, i32* %6, align 4
  %34 = load %struct.tty*, %struct.tty** %2, align 8
  %35 = load %struct.rp_port*, %struct.rp_port** %3, align 8
  %36 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %35, i32 0, i32 0
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @ttydisc_getc(%struct.tty* %34, i32** %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %82

41:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = ashr i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %59, %41
  %45 = load i32, i32* %9, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %44
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = call i32 @sGetTxRxDataIO(%struct.TYPE_7__* %49)
  %51 = load %struct.rp_port*, %struct.rp_port** %3, align 8
  %52 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = call i32 @le16dec(i32* %56)
  %58 = call i32 @rp_writech2(%struct.TYPE_7__* %48, i32 %50, i32 %57)
  br label %59

59:                                               ; preds = %47
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 2
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %9, align 4
  br label %44

64:                                               ; preds = %44
  %65 = load i32, i32* %8, align 4
  %66 = and i32 %65, 1
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = call i32 @sGetTxRxDataIO(%struct.TYPE_7__* %70)
  %72 = load %struct.rp_port*, %struct.rp_port** %3, align 8
  %73 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @rp_writech1(%struct.TYPE_7__* %69, i32 %71, i32 %79)
  br label %81

81:                                               ; preds = %68, %64
  br label %82

82:                                               ; preds = %81, %29
  ret void
}

declare dso_local %struct.rp_port* @tty_softc(%struct.tty*) #1

declare dso_local i32 @sEnTransmit(%struct.TYPE_7__*) #1

declare dso_local i32 @sGetTxCnt(%struct.TYPE_7__*) #1

declare dso_local i32 @ttydisc_getc(%struct.tty*, i32**, i32) #1

declare dso_local i32 @rp_writech2(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @sGetTxRxDataIO(%struct.TYPE_7__*) #1

declare dso_local i32 @le16dec(i32*) #1

declare dso_local i32 @rp_writech1(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
