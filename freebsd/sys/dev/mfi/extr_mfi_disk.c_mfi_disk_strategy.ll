; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_disk.c_mfi_disk_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_disk.c_mfi_disk_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i8*, i8*, i8*, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mfi_disk* }
%struct.mfi_disk = type { i64, %struct.mfi_softc* }
%struct.mfi_softc = type { i64, i32, i64, i64 }

@EINVAL = common dso_local global i8* null, align 8
@BIO_ERROR = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i8* null, align 8
@MFI_LD_IO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @mfi_disk_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mfi_disk_strategy(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.mfi_disk*, align 8
  %4 = alloca %struct.mfi_softc*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 6
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.mfi_disk*, %struct.mfi_disk** %8, align 8
  store %struct.mfi_disk* %9, %struct.mfi_disk** %3, align 8
  %10 = load %struct.mfi_disk*, %struct.mfi_disk** %3, align 8
  %11 = icmp eq %struct.mfi_disk* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load i8*, i8** @EINVAL, align 8
  %14 = load %struct.bio*, %struct.bio** %2, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* @BIO_ERROR, align 4
  %17 = load %struct.bio*, %struct.bio** %2, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.bio*, %struct.bio** %2, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.bio*, %struct.bio** %2, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load %struct.bio*, %struct.bio** %2, align 8
  %27 = call i32 @biodone(%struct.bio* %26)
  br label %80

28:                                               ; preds = %1
  %29 = load %struct.mfi_disk*, %struct.mfi_disk** %3, align 8
  %30 = getelementptr inbounds %struct.mfi_disk, %struct.mfi_disk* %29, i32 0, i32 1
  %31 = load %struct.mfi_softc*, %struct.mfi_softc** %30, align 8
  store %struct.mfi_softc* %31, %struct.mfi_softc** %4, align 8
  %32 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %33 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i8*, i8** @EBUSY, align 8
  %38 = load %struct.bio*, %struct.bio** %2, align 8
  %39 = getelementptr inbounds %struct.bio, %struct.bio* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  br label %80

40:                                               ; preds = %28
  %41 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %42 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i8*, i8** @EBUSY, align 8
  %47 = load %struct.bio*, %struct.bio** %2, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  br label %80

49:                                               ; preds = %40
  %50 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %51 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i8*, i8** @EBUSY, align 8
  %56 = load %struct.bio*, %struct.bio** %2, align 8
  %57 = getelementptr inbounds %struct.bio, %struct.bio* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  br label %80

58:                                               ; preds = %49
  %59 = load %struct.mfi_disk*, %struct.mfi_disk** %3, align 8
  %60 = getelementptr inbounds %struct.mfi_disk, %struct.mfi_disk* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.bio*, %struct.bio** %2, align 8
  %64 = getelementptr inbounds %struct.bio, %struct.bio* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load i64, i64* @MFI_LD_IO, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.bio*, %struct.bio** %2, align 8
  %68 = getelementptr inbounds %struct.bio, %struct.bio* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  %69 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %70 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %69, i32 0, i32 1
  %71 = call i32 @mtx_lock(i32* %70)
  %72 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %73 = load %struct.bio*, %struct.bio** %2, align 8
  %74 = call i32 @mfi_enqueue_bio(%struct.mfi_softc* %72, %struct.bio* %73)
  %75 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %76 = call i32 @mfi_startio(%struct.mfi_softc* %75)
  %77 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %78 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %77, i32 0, i32 1
  %79 = call i32 @mtx_unlock(i32* %78)
  br label %80

80:                                               ; preds = %58, %54, %45, %36, %12
  ret void
}

declare dso_local i32 @biodone(%struct.bio*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mfi_enqueue_bio(%struct.mfi_softc*, %struct.bio*) #1

declare dso_local i32 @mfi_startio(%struct.mfi_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
