; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_add_mcast.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_add_mcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_dl = type { i32 }
%struct.ti_softc = type { i32, i32 }
%struct.ti_cmd_desc = type { i32 }

@TI_GCR_MAR0 = common dso_local global i32 0, align 4
@TI_GCR_MAR1 = common dso_local global i32 0, align 4
@TI_CMD_ADD_MCAST_ADDR = common dso_local global i32 0, align 4
@TI_CMD_EXT_ADD_MCAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"unknown hwrev\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr_dl*, i32)* @ti_add_mcast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_add_mcast(i8* %0, %struct.sockaddr_dl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr_dl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ti_softc*, align 8
  %9 = alloca %struct.ti_cmd_desc, align 4
  %10 = alloca i32*, align 8
  %11 = alloca [2 x i32], align 4
  store i8* %0, i8** %5, align 8
  store %struct.sockaddr_dl* %1, %struct.sockaddr_dl** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.ti_softc*
  store %struct.ti_softc* %13, %struct.ti_softc** %8, align 8
  %14 = bitcast [2 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  %15 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %6, align 8
  %16 = call i64 @LLADDR(%struct.sockaddr_dl* %15)
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %10, align 8
  %18 = load %struct.ti_softc*, %struct.ti_softc** %8, align 8
  %19 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %64 [
    i32 129, label %21
    i32 128, label %44
  ]

21:                                               ; preds = %3
  %22 = load %struct.ti_softc*, %struct.ti_softc** %8, align 8
  %23 = load i32, i32* @TI_GCR_MAR0, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @htons(i32 %26)
  %28 = call i32 @CSR_WRITE_4(%struct.ti_softc* %22, i32 %23, i32 %27)
  %29 = load %struct.ti_softc*, %struct.ti_softc** %8, align 8
  %30 = load i32, i32* @TI_GCR_MAR1, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @htons(i32 %33)
  %35 = shl i32 %34, 16
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @htons(i32 %38)
  %40 = or i32 %35, %39
  %41 = call i32 @CSR_WRITE_4(%struct.ti_softc* %29, i32 %30, i32 %40)
  %42 = load i32, i32* @TI_CMD_ADD_MCAST_ADDR, align 4
  %43 = call i32 @TI_DO_CMD(i32 %42, i32 0, i32 0)
  br label %69

44:                                               ; preds = %3
  %45 = load i32*, i32** %10, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @htons(i32 %47)
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %48, i32* %49, align 4
  %50 = load i32*, i32** %10, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @htons(i32 %52)
  %54 = shl i32 %53, 16
  %55 = load i32*, i32** %10, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @htons(i32 %57)
  %59 = or i32 %54, %58
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @TI_CMD_EXT_ADD_MCAST, align 4
  %62 = ptrtoint [2 x i32]* %11 to i32
  %63 = call i32 @TI_DO_CMD_EXT(i32 %61, i32 0, i32 0, i32 %62, i32 2)
  br label %69

64:                                               ; preds = %3
  %65 = load %struct.ti_softc*, %struct.ti_softc** %8, align 8
  %66 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %70

69:                                               ; preds = %44, %21
  store i32 1, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %64
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @LLADDR(%struct.sockaddr_dl*) #2

declare dso_local i32 @CSR_WRITE_4(%struct.ti_softc*, i32, i32) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @TI_DO_CMD(i32, i32, i32) #2

declare dso_local i32 @TI_DO_CMD_EXT(i32, i32, i32, i32, i32) #2

declare dso_local i32 @device_printf(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
