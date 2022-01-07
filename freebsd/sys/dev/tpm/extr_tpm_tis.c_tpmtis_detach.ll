; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm_tis.c_tpmtis_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm_tis.c_tpmtis_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_sc = type { i32*, i32, i32*, i32, i32* }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tpmtis_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpmtis_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpm_sc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.tpm_sc* @device_get_softc(i32 %4)
  store %struct.tpm_sc* %5, %struct.tpm_sc** %3, align 8
  %6 = load %struct.tpm_sc*, %struct.tpm_sc** %3, align 8
  %7 = call i32 @tpm20_release(%struct.tpm_sc* %6)
  %8 = load %struct.tpm_sc*, %struct.tpm_sc** %3, align 8
  %9 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %8, i32 0, i32 4
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = load %struct.tpm_sc*, %struct.tpm_sc** %3, align 8
  %15 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.tpm_sc*, %struct.tpm_sc** %3, align 8
  %18 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @bus_teardown_intr(i32 %13, i32* %16, i32* %19)
  br label %21

21:                                               ; preds = %12, %1
  %22 = load %struct.tpm_sc*, %struct.tpm_sc** %3, align 8
  %23 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @SYS_RES_IRQ, align 4
  %29 = load %struct.tpm_sc*, %struct.tpm_sc** %3, align 8
  %30 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.tpm_sc*, %struct.tpm_sc** %3, align 8
  %33 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @bus_release_resource(i32 %27, i32 %28, i32 %31, i32* %34)
  br label %36

36:                                               ; preds = %26, %21
  %37 = load %struct.tpm_sc*, %struct.tpm_sc** %3, align 8
  %38 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @SYS_RES_MEMORY, align 4
  %44 = load %struct.tpm_sc*, %struct.tpm_sc** %3, align 8
  %45 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.tpm_sc*, %struct.tpm_sc** %3, align 8
  %48 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @bus_release_resource(i32 %42, i32 %43, i32 %46, i32* %49)
  br label %51

51:                                               ; preds = %41, %36
  ret i32 0
}

declare dso_local %struct.tpm_sc* @device_get_softc(i32) #1

declare dso_local i32 @tpm20_release(%struct.tpm_sc*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
