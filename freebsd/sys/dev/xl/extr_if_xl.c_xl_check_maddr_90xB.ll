; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_check_maddr_90xB.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_check_maddr_90xB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_dl = type { i32 }
%struct.xl_softc = type { i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@XL_COMMAND = common dso_local global i32 0, align 4
@XL_CMD_RX_SET_HASH = common dso_local global i32 0, align 4
@XL_HASH_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr_dl*, i32)* @xl_check_maddr_90xB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xl_check_maddr_90xB(i8* %0, %struct.sockaddr_dl* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr_dl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xl_softc*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sockaddr_dl* %1, %struct.sockaddr_dl** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.xl_softc*
  store %struct.xl_softc* %10, %struct.xl_softc** %7, align 8
  %11 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %12 = call i32 @LLADDR(%struct.sockaddr_dl* %11)
  %13 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %14 = call i32 @ether_crc32_be(i32 %12, i32 %13)
  %15 = and i32 %14, 255
  store i32 %15, i32* %8, align 4
  %16 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %17 = load i32, i32* @XL_COMMAND, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @XL_CMD_RX_SET_HASH, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @XL_HASH_SET, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @CSR_WRITE_2(%struct.xl_softc* %16, i32 %17, i32 %22)
  ret i32 1
}

declare dso_local i32 @ether_crc32_be(i32, i32) #1

declare dso_local i32 @LLADDR(%struct.sockaddr_dl*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.xl_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
