; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_tx.c_r92c_tx_enable_ampdu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_tx.c_r92c_tx_enable_ampdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r92c_tx_desc = type { i32 }

@R92C_TXDW1_AGGEN = common dso_local global i32 0, align 4
@R92C_TXDW1_AGGBK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r92c_tx_enable_ampdu(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r92c_tx_desc*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.r92c_tx_desc*
  store %struct.r92c_tx_desc* %7, %struct.r92c_tx_desc** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i32, i32* @R92C_TXDW1_AGGEN, align 4
  %12 = call i32 @htole32(i32 %11)
  %13 = load %struct.r92c_tx_desc*, %struct.r92c_tx_desc** %5, align 8
  %14 = getelementptr inbounds %struct.r92c_tx_desc, %struct.r92c_tx_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  br label %24

17:                                               ; preds = %2
  %18 = load i32, i32* @R92C_TXDW1_AGGBK, align 4
  %19 = call i32 @htole32(i32 %18)
  %20 = load %struct.r92c_tx_desc*, %struct.r92c_tx_desc** %5, align 8
  %21 = getelementptr inbounds %struct.r92c_tx_desc, %struct.r92c_tx_desc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %17, %10
  ret void
}

declare dso_local i32 @htole32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
