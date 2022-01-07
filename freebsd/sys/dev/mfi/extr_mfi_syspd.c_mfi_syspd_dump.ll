; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_syspd.c_mfi_syspd_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_syspd.c_mfi_syspd_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_system_pd = type { i32, %struct.mfi_softc* }
%struct.mfi_softc = type { i32 }
%struct.disk = type { %struct.mfi_system_pd* }

@MFI_SECTOR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i64)* @mfi_syspd_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfi_syspd_dump(i8* %0, i8* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.mfi_system_pd*, align 8
  %13 = alloca %struct.mfi_softc*, align 8
  %14 = alloca %struct.disk*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.disk*
  store %struct.disk* %17, %struct.disk** %14, align 8
  %18 = load %struct.disk*, %struct.disk** %14, align 8
  %19 = getelementptr inbounds %struct.disk, %struct.disk* %18, i32 0, i32 0
  %20 = load %struct.mfi_system_pd*, %struct.mfi_system_pd** %19, align 8
  store %struct.mfi_system_pd* %20, %struct.mfi_system_pd** %12, align 8
  %21 = load %struct.mfi_system_pd*, %struct.mfi_system_pd** %12, align 8
  %22 = getelementptr inbounds %struct.mfi_system_pd, %struct.mfi_system_pd* %21, i32 0, i32 1
  %23 = load %struct.mfi_softc*, %struct.mfi_softc** %22, align 8
  store %struct.mfi_softc* %23, %struct.mfi_softc** %13, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp ugt i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %5
  %27 = load %struct.mfi_softc*, %struct.mfi_softc** %13, align 8
  %28 = load %struct.mfi_system_pd*, %struct.mfi_system_pd** %12, align 8
  %29 = getelementptr inbounds %struct.mfi_system_pd, %struct.mfi_system_pd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @MFI_SECTOR_LEN, align 4
  %33 = sdiv i32 %31, %32
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @mfi_dump_syspd_blocks(%struct.mfi_softc* %27, i32 %30, i32 %33, i8* %34, i64 %35)
  store i32 %36, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* %15, align 4
  store i32 %39, i32* %6, align 4
  br label %43

40:                                               ; preds = %26
  br label %42

41:                                               ; preds = %5
  br label %42

42:                                               ; preds = %41, %40
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %42, %38
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @mfi_dump_syspd_blocks(%struct.mfi_softc*, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
