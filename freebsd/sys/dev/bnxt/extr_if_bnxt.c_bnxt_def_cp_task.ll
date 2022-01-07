; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_def_cp_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_def_cp_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32, %struct.bnxt_cp_ring }
%struct.bnxt_cp_ring = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.cmpl_base = type { i32 }

@CMPL_BASE_TYPE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unhandled completion type %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Unknown completion type %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bnxt_def_cp_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_def_cp_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bnxt_softc*, align 8
  %5 = alloca %struct.bnxt_cp_ring*, align 8
  %6 = alloca %struct.cmpl_base*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  store i8* %12, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call %struct.bnxt_softc* @iflib_get_softc(i8* %13)
  store %struct.bnxt_softc* %14, %struct.bnxt_softc** %4, align 8
  %15 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %16 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %15, i32 0, i32 1
  store %struct.bnxt_cp_ring* %16, %struct.bnxt_cp_ring** %5, align 8
  %17 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %5, align 8
  %18 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %5, align 8
  %21 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %67, %1
  %24 = load i64, i64* %7, align 8
  store i64 %24, i64* %10, align 8
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %5, align 8
  %27 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %26, i32 0, i32 2
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @NEXT_CP_CONS_V(%struct.TYPE_3__* %27, i64 %28, i32 %29)
  %31 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %5, align 8
  %32 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.cmpl_base*
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds %struct.cmpl_base, %struct.cmpl_base* %35, i64 %36
  store %struct.cmpl_base* %37, %struct.cmpl_base** %6, align 8
  %38 = load %struct.cmpl_base*, %struct.cmpl_base** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @CMP_VALID(%struct.cmpl_base* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %23
  br label %68

43:                                               ; preds = %23
  %44 = load %struct.cmpl_base*, %struct.cmpl_base** %6, align 8
  %45 = getelementptr inbounds %struct.cmpl_base, %struct.cmpl_base* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le16toh(i32 %46)
  %48 = load i32, i32* @CMPL_BASE_TYPE_MASK, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  switch i32 %50, label %61 [
    i32 139, label %51
    i32 128, label %55
    i32 133, label %55
    i32 134, label %55
    i32 131, label %55
    i32 132, label %55
    i32 129, label %55
    i32 138, label %55
    i32 137, label %55
    i32 136, label %55
    i32 142, label %55
    i32 130, label %55
    i32 141, label %55
    i32 135, label %55
    i32 140, label %55
  ]

51:                                               ; preds = %43
  %52 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %53 = load %struct.cmpl_base*, %struct.cmpl_base** %6, align 8
  %54 = call i32 @bnxt_handle_async_event(%struct.bnxt_softc* %52, %struct.cmpl_base* %53)
  br label %67

55:                                               ; preds = %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43
  %56 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %57 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @device_printf(i32 %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %67

61:                                               ; preds = %43
  %62 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %63 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @device_printf(i32 %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %61, %55, %51
  br label %23

68:                                               ; preds = %42
  %69 = load i64, i64* %10, align 8
  %70 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %5, align 8
  %71 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %5, align 8
  %74 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %5, align 8
  %76 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %75, i32 0, i32 2
  %77 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %5, align 8
  %78 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @BNXT_CP_IDX_ENABLE_DB(%struct.TYPE_3__* %76, i64 %79)
  ret void
}

declare dso_local %struct.bnxt_softc* @iflib_get_softc(i8*) #1

declare dso_local i32 @NEXT_CP_CONS_V(%struct.TYPE_3__*, i64, i32) #1

declare dso_local i32 @CMP_VALID(%struct.cmpl_base*, i32) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @bnxt_handle_async_event(%struct.bnxt_softc*, %struct.cmpl_base*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @BNXT_CP_IDX_ENABLE_DB(%struct.TYPE_3__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
