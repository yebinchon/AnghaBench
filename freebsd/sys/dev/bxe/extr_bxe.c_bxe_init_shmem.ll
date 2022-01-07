; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_init_shmem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_init_shmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@MISC_REG_SHARED_MEM_ADDR = common dso_local global i32 0, align 4
@validity_map = common dso_local global i32* null, align 8
@SHR_MEM_VALIDITY_MB = common dso_local global i32 0, align 4
@MCP_TIMEOUT = common dso_local global i32 0, align 4
@MCP_ONE_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"BAD MCP validity signature\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_init_shmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_init_shmem(%struct.bxe_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %38, %1
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %8 = load i32, i32* @MISC_REG_SHARED_MEM_ADDR, align 4
  %9 = call i64 @REG_RD(%struct.bxe_softc* %7, i32 %8)
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %11 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i64 %9, i64* %12, align 8
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %14 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i64 %9, i64* %15, align 8
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %17 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %6
  %22 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %23 = load i32*, i32** @validity_map, align 8
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %25 = call i64 @SC_PORT(%struct.bxe_softc* %24)
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @SHMEM_RD(%struct.bxe_softc* %22, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SHR_MEM_VALIDITY_MB, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %48

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34, %6
  %36 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %37 = call i32 @bxe_mcp_wait_one(%struct.bxe_softc* %36)
  br label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* @MCP_TIMEOUT, align 4
  %42 = load i32, i32* @MCP_ONE_TIMEOUT, align 4
  %43 = sdiv i32 %41, %42
  %44 = icmp slt i32 %39, %43
  br i1 %44, label %6, label %45

45:                                               ; preds = %38
  %46 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %47 = call i32 @BLOGE(%struct.bxe_softc* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %33
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @SHMEM_RD(%struct.bxe_softc*, i32) #1

declare dso_local i64 @SC_PORT(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_mcp_wait_one(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
