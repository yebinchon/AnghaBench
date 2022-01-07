; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/exca/extr_exca.c_exca_do_mem_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/exca/extr_exca.c_exca_do_mem_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_map_index_st = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.exca_softc = type { %struct.pccard_mem_handle* }
%struct.pccard_mem_handle = type { i32, i32, i32, i32, i32 }

@mem_map_index = common dso_local global %struct.mem_map_index_st* null, align 8
@PCCARD_MEM_16BIT = common dso_local global i32 0, align 4
@EXCA_SYSMEM_ADDRX_START_MSB_DATASIZE_16BIT = common dso_local global i32 0, align 4
@PCCARD_MEM_ATTR = common dso_local global i32 0, align 4
@EXCA_CARDMEM_ADDRX_MSB_REGACTIVE_ATTR = common dso_local global i32 0, align 4
@EXCA_CARDMEM_ADDRX_SHIFT = common dso_local global i32 0, align 4
@EXCA_SYSMEM_ADDRX_SHIFT = common dso_local global i32 0, align 4
@EXCA_SYSMEM_ADDRX_START_MSB_ADDR_MASK = common dso_local global i32 0, align 4
@EXCA_SYSMEM_ADDRX_STOP_MSB_ADDR_MASK = common dso_local global i32 0, align 4
@EXCA_SYSMEM_ADDRX_STOP_MSB_WAIT2 = common dso_local global i32 0, align 4
@EXCA_MEMREG_WIN_SHIFT = common dso_local global i32 0, align 4
@EXCA_CARDMEM_ADDRX_MSB_ADDR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s %d-bit memory\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"attribute\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"common\00", align 1
@EXCA_ADDRWIN_ENABLE = common dso_local global i32 0, align 4
@EXCA_ADDRWIN_ENABLE_MEMCS16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exca_softc*, i32)* @exca_do_mem_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exca_do_mem_map(%struct.exca_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.exca_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mem_map_index_st*, align 8
  %6 = alloca %struct.pccard_mem_handle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.exca_softc* %0, %struct.exca_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.mem_map_index_st*, %struct.mem_map_index_st** @mem_map_index, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.mem_map_index_st, %struct.mem_map_index_st* %10, i64 %12
  store %struct.mem_map_index_st* %13, %struct.mem_map_index_st** %5, align 8
  %14 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %15 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %14, i32 0, i32 0
  %16 = load %struct.pccard_mem_handle*, %struct.pccard_mem_handle** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.pccard_mem_handle, %struct.pccard_mem_handle* %16, i64 %18
  store %struct.pccard_mem_handle* %19, %struct.pccard_mem_handle** %6, align 8
  %20 = load %struct.pccard_mem_handle*, %struct.pccard_mem_handle** %6, align 8
  %21 = getelementptr inbounds %struct.pccard_mem_handle, %struct.pccard_mem_handle* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PCCARD_MEM_16BIT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @EXCA_SYSMEM_ADDRX_START_MSB_DATASIZE_16BIT, align 4
  br label %29

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  store i32 %30, i32* %8, align 4
  %31 = load %struct.pccard_mem_handle*, %struct.pccard_mem_handle** %6, align 8
  %32 = getelementptr inbounds %struct.pccard_mem_handle, %struct.pccard_mem_handle* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PCCARD_MEM_ATTR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @EXCA_CARDMEM_ADDRX_MSB_REGACTIVE_ATTR, align 4
  br label %40

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 0, %39 ]
  store i32 %41, i32* %9, align 4
  %42 = load %struct.pccard_mem_handle*, %struct.pccard_mem_handle** %6, align 8
  %43 = getelementptr inbounds %struct.pccard_mem_handle, %struct.pccard_mem_handle* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @EXCA_CARDMEM_ADDRX_SHIFT, align 4
  %46 = ashr i32 %44, %45
  %47 = load %struct.pccard_mem_handle*, %struct.pccard_mem_handle** %6, align 8
  %48 = getelementptr inbounds %struct.pccard_mem_handle, %struct.pccard_mem_handle* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @EXCA_SYSMEM_ADDRX_SHIFT, align 4
  %51 = ashr i32 %49, %50
  %52 = sub nsw i32 %46, %51
  %53 = and i32 %52, 16383
  store i32 %53, i32* %7, align 4
  %54 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %55 = load %struct.mem_map_index_st*, %struct.mem_map_index_st** %5, align 8
  %56 = getelementptr inbounds %struct.mem_map_index_st, %struct.mem_map_index_st* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.pccard_mem_handle*, %struct.pccard_mem_handle** %6, align 8
  %59 = getelementptr inbounds %struct.pccard_mem_handle, %struct.pccard_mem_handle* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @EXCA_SYSMEM_ADDRX_SHIFT, align 4
  %62 = ashr i32 %60, %61
  %63 = call i32 @exca_putb(%struct.exca_softc* %54, i32 %57, i32 %62)
  %64 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %65 = load %struct.mem_map_index_st*, %struct.mem_map_index_st** %5, align 8
  %66 = getelementptr inbounds %struct.mem_map_index_st, %struct.mem_map_index_st* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.pccard_mem_handle*, %struct.pccard_mem_handle** %6, align 8
  %69 = getelementptr inbounds %struct.pccard_mem_handle, %struct.pccard_mem_handle* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @EXCA_SYSMEM_ADDRX_SHIFT, align 4
  %72 = add nsw i32 %71, 8
  %73 = ashr i32 %70, %72
  %74 = load i32, i32* @EXCA_SYSMEM_ADDRX_START_MSB_ADDR_MASK, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @exca_putb(%struct.exca_softc* %64, i32 %67, i32 %77)
  %79 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %80 = load %struct.mem_map_index_st*, %struct.mem_map_index_st** %5, align 8
  %81 = getelementptr inbounds %struct.mem_map_index_st, %struct.mem_map_index_st* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.pccard_mem_handle*, %struct.pccard_mem_handle** %6, align 8
  %84 = getelementptr inbounds %struct.pccard_mem_handle, %struct.pccard_mem_handle* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.pccard_mem_handle*, %struct.pccard_mem_handle** %6, align 8
  %87 = getelementptr inbounds %struct.pccard_mem_handle, %struct.pccard_mem_handle* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %85, %88
  %90 = sub nsw i32 %89, 1
  %91 = load i32, i32* @EXCA_SYSMEM_ADDRX_SHIFT, align 4
  %92 = ashr i32 %90, %91
  %93 = call i32 @exca_putb(%struct.exca_softc* %79, i32 %82, i32 %92)
  %94 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %95 = load %struct.mem_map_index_st*, %struct.mem_map_index_st** %5, align 8
  %96 = getelementptr inbounds %struct.mem_map_index_st, %struct.mem_map_index_st* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.pccard_mem_handle*, %struct.pccard_mem_handle** %6, align 8
  %99 = getelementptr inbounds %struct.pccard_mem_handle, %struct.pccard_mem_handle* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.pccard_mem_handle*, %struct.pccard_mem_handle** %6, align 8
  %102 = getelementptr inbounds %struct.pccard_mem_handle, %struct.pccard_mem_handle* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %100, %103
  %105 = sub nsw i32 %104, 1
  %106 = load i32, i32* @EXCA_SYSMEM_ADDRX_SHIFT, align 4
  %107 = add nsw i32 %106, 8
  %108 = ashr i32 %105, %107
  %109 = load i32, i32* @EXCA_SYSMEM_ADDRX_STOP_MSB_ADDR_MASK, align 4
  %110 = and i32 %108, %109
  %111 = load i32, i32* @EXCA_SYSMEM_ADDRX_STOP_MSB_WAIT2, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @exca_putb(%struct.exca_softc* %94, i32 %97, i32 %112)
  %114 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %115 = load %struct.mem_map_index_st*, %struct.mem_map_index_st** %5, align 8
  %116 = getelementptr inbounds %struct.mem_map_index_st, %struct.mem_map_index_st* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.pccard_mem_handle*, %struct.pccard_mem_handle** %6, align 8
  %119 = getelementptr inbounds %struct.pccard_mem_handle, %struct.pccard_mem_handle* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @EXCA_MEMREG_WIN_SHIFT, align 4
  %122 = ashr i32 %120, %121
  %123 = call i32 @exca_putb(%struct.exca_softc* %114, i32 %117, i32 %122)
  %124 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %125 = load %struct.mem_map_index_st*, %struct.mem_map_index_st** %5, align 8
  %126 = getelementptr inbounds %struct.mem_map_index_st, %struct.mem_map_index_st* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %7, align 4
  %129 = and i32 %128, 255
  %130 = call i32 @exca_putb(%struct.exca_softc* %124, i32 %127, i32 %129)
  %131 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %132 = load %struct.mem_map_index_st*, %struct.mem_map_index_st** %5, align 8
  %133 = getelementptr inbounds %struct.mem_map_index_st, %struct.mem_map_index_st* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %7, align 4
  %136 = ashr i32 %135, 8
  %137 = load i32, i32* @EXCA_CARDMEM_ADDRX_MSB_ADDR_MASK, align 4
  %138 = and i32 %136, %137
  %139 = load i32, i32* %9, align 4
  %140 = or i32 %138, %139
  %141 = call i32 @exca_putb(%struct.exca_softc* %131, i32 %134, i32 %140)
  %142 = load %struct.pccard_mem_handle*, %struct.pccard_mem_handle** %6, align 8
  %143 = getelementptr inbounds %struct.pccard_mem_handle, %struct.pccard_mem_handle* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @PCCARD_MEM_ATTR, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %150 = load %struct.pccard_mem_handle*, %struct.pccard_mem_handle** %6, align 8
  %151 = getelementptr inbounds %struct.pccard_mem_handle, %struct.pccard_mem_handle* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @PCCARD_MEM_16BIT, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 16, i32 8
  %158 = call i32 @DPRINTF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %149, i32 %157)
  %159 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %160 = load i32, i32* @EXCA_ADDRWIN_ENABLE, align 4
  %161 = load %struct.mem_map_index_st*, %struct.mem_map_index_st** %5, align 8
  %162 = getelementptr inbounds %struct.mem_map_index_st, %struct.mem_map_index_st* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @EXCA_ADDRWIN_ENABLE_MEMCS16, align 4
  %165 = or i32 %163, %164
  %166 = call i32 @exca_setb(%struct.exca_softc* %159, i32 %160, i32 %165)
  %167 = call i32 @DELAY(i32 100)
  ret void
}

declare dso_local i32 @exca_putb(%struct.exca_softc*, i32, i32) #1

declare dso_local i32 @DPRINTF(i8*, i8*, i32) #1

declare dso_local i32 @exca_setb(%struct.exca_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
