; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_mapping.c__mapping_get_enc_idx_from_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_mapping.c__mapping_get_enc_idx_from_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i64, %struct.enc_mapping_table* }
%struct.enc_mapping_table = type { i64, i32 }

@MPR_ENCTABLE_BAD_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mpr_softc*, i32, i32)* @_mapping_get_enc_idx_from_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_mapping_get_enc_idx_from_id(%struct.mpr_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mpr_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.enc_mapping_table*, align 8
  %9 = alloca i64, align 8
  store %struct.mpr_softc* %0, %struct.mpr_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %44, %3
  %11 = load i64, i64* %9, align 8
  %12 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %13 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %47

16:                                               ; preds = %10
  %17 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %18 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %17, i32 0, i32 1
  %19 = load %struct.enc_mapping_table*, %struct.enc_mapping_table** %18, align 8
  %20 = load i64, i64* %9, align 8
  %21 = getelementptr inbounds %struct.enc_mapping_table, %struct.enc_mapping_table* %19, i64 %20
  store %struct.enc_mapping_table* %21, %struct.enc_mapping_table** %8, align 8
  %22 = load %struct.enc_mapping_table*, %struct.enc_mapping_table** %8, align 8
  %23 = getelementptr inbounds %struct.enc_mapping_table, %struct.enc_mapping_table* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @le64toh(i32 %25)
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %16
  %29 = load %struct.enc_mapping_table*, %struct.enc_mapping_table** %8, align 8
  %30 = getelementptr inbounds %struct.enc_mapping_table, %struct.enc_mapping_table* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.enc_mapping_table*, %struct.enc_mapping_table** %8, align 8
  %35 = getelementptr inbounds %struct.enc_mapping_table, %struct.enc_mapping_table* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @le32toh(i32 %37)
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33, %28
  %42 = load i64, i64* %9, align 8
  store i64 %42, i64* %4, align 8
  br label %49

43:                                               ; preds = %33, %16
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %9, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %9, align 8
  br label %10

47:                                               ; preds = %10
  %48 = load i64, i64* @MPR_ENCTABLE_BAD_IDX, align 8
  store i64 %48, i64* %4, align 8
  br label %49

49:                                               ; preds = %47, %41
  %50 = load i64, i64* %4, align 8
  ret i64 %50
}

declare dso_local i64 @le64toh(i32) #1

declare dso_local i32 @le32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
