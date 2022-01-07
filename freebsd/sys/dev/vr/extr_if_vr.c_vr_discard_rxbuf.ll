; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_discard_rxbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_discard_rxbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vr_rxdesc = type { %struct.vr_desc* }
%struct.vr_desc = type { i8*, i8* }

@VR_RXCTL = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@VR_RXSTAT_OWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vr_rxdesc*)* @vr_discard_rxbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vr_discard_rxbuf(%struct.vr_rxdesc* %0) #0 {
  %2 = alloca %struct.vr_rxdesc*, align 8
  %3 = alloca %struct.vr_desc*, align 8
  store %struct.vr_rxdesc* %0, %struct.vr_rxdesc** %2, align 8
  %4 = load %struct.vr_rxdesc*, %struct.vr_rxdesc** %2, align 8
  %5 = getelementptr inbounds %struct.vr_rxdesc, %struct.vr_rxdesc* %4, i32 0, i32 0
  %6 = load %struct.vr_desc*, %struct.vr_desc** %5, align 8
  store %struct.vr_desc* %6, %struct.vr_desc** %3, align 8
  %7 = load i32, i32* @VR_RXCTL, align 4
  %8 = sext i32 %7 to i64
  %9 = load i32, i32* @MCLBYTES, align 4
  %10 = sext i32 %9 to i64
  %11 = sub i64 %10, 4
  %12 = or i64 %8, %11
  %13 = trunc i64 %12 to i32
  %14 = call i8* @htole32(i32 %13)
  %15 = load %struct.vr_desc*, %struct.vr_desc** %3, align 8
  %16 = getelementptr inbounds %struct.vr_desc, %struct.vr_desc* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* @VR_RXSTAT_OWN, align 4
  %18 = call i8* @htole32(i32 %17)
  %19 = load %struct.vr_desc*, %struct.vr_desc** %3, align 8
  %20 = getelementptr inbounds %struct.vr_desc, %struct.vr_desc* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  ret void
}

declare dso_local i8* @htole32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
