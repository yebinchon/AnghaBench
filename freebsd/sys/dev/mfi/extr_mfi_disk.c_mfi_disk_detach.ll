; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_disk.c_mfi_disk_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_disk.c_mfi_disk_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_disk = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }
%struct.TYPE_4__ = type { i32 }

@DISKFLAG_OPEN = common dso_local global i32 0, align 4
@MFI_DISK_FLAGS_OPEN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ld_link = common dso_local global i32 0, align 4
@M_MFIBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mfi_disk_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfi_disk_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mfi_disk*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.mfi_disk* @device_get_softc(i32 %5)
  store %struct.mfi_disk* %6, %struct.mfi_disk** %4, align 8
  %7 = load %struct.mfi_disk*, %struct.mfi_disk** %4, align 8
  %8 = getelementptr inbounds %struct.mfi_disk, %struct.mfi_disk* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = call i32 @mtx_lock(i32* %10)
  %12 = load %struct.mfi_disk*, %struct.mfi_disk** %4, align 8
  %13 = getelementptr inbounds %struct.mfi_disk, %struct.mfi_disk* %12, i32 0, i32 3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DISKFLAG_OPEN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %1
  %21 = load %struct.mfi_disk*, %struct.mfi_disk** %4, align 8
  %22 = getelementptr inbounds %struct.mfi_disk, %struct.mfi_disk* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MFI_DISK_FLAGS_OPEN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %20, %1
  %28 = load %struct.mfi_disk*, %struct.mfi_disk** %4, align 8
  %29 = getelementptr inbounds %struct.mfi_disk, %struct.mfi_disk* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %27
  %35 = load %struct.mfi_disk*, %struct.mfi_disk** %4, align 8
  %36 = getelementptr inbounds %struct.mfi_disk, %struct.mfi_disk* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %34, %27
  %42 = load %struct.mfi_disk*, %struct.mfi_disk** %4, align 8
  %43 = getelementptr inbounds %struct.mfi_disk, %struct.mfi_disk* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @mtx_unlock(i32* %45)
  %47 = load i32, i32* @EBUSY, align 4
  store i32 %47, i32* %2, align 4
  br label %80

48:                                               ; preds = %34, %20
  %49 = load %struct.mfi_disk*, %struct.mfi_disk** %4, align 8
  %50 = getelementptr inbounds %struct.mfi_disk, %struct.mfi_disk* %49, i32 0, i32 2
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = call i32 @mtx_unlock(i32* %52)
  %54 = load %struct.mfi_disk*, %struct.mfi_disk** %4, align 8
  %55 = getelementptr inbounds %struct.mfi_disk, %struct.mfi_disk* %54, i32 0, i32 3
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = call i32 @disk_destroy(%struct.TYPE_4__* %56)
  %58 = load %struct.mfi_disk*, %struct.mfi_disk** %4, align 8
  %59 = getelementptr inbounds %struct.mfi_disk, %struct.mfi_disk* %58, i32 0, i32 2
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = call i32 @mtx_lock(i32* %61)
  %63 = load %struct.mfi_disk*, %struct.mfi_disk** %4, align 8
  %64 = getelementptr inbounds %struct.mfi_disk, %struct.mfi_disk* %63, i32 0, i32 2
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load %struct.mfi_disk*, %struct.mfi_disk** %4, align 8
  %68 = load i32, i32* @ld_link, align 4
  %69 = call i32 @TAILQ_REMOVE(i32* %66, %struct.mfi_disk* %67, i32 %68)
  %70 = load %struct.mfi_disk*, %struct.mfi_disk** %4, align 8
  %71 = getelementptr inbounds %struct.mfi_disk, %struct.mfi_disk* %70, i32 0, i32 2
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = call i32 @mtx_unlock(i32* %73)
  %75 = load %struct.mfi_disk*, %struct.mfi_disk** %4, align 8
  %76 = getelementptr inbounds %struct.mfi_disk, %struct.mfi_disk* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @M_MFIBUF, align 4
  %79 = call i32 @free(i32 %77, i32 %78)
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %48, %41
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.mfi_disk* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @disk_destroy(%struct.TYPE_4__*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.mfi_disk*, i32) #1

declare dso_local i32 @free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
