; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm20.c_tpm20_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm20.c_tpm20_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_sc = type { i32*, i32, i32, i32*, i32 }

@M_TPM20 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tpm20_release(%struct.tpm_sc* %0) #0 {
  %2 = alloca %struct.tpm_sc*, align 8
  store %struct.tpm_sc* %0, %struct.tpm_sc** %2, align 8
  %3 = load %struct.tpm_sc*, %struct.tpm_sc** %2, align 8
  %4 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %3, i32 0, i32 3
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.tpm_sc*, %struct.tpm_sc** %2, align 8
  %9 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* @M_TPM20, align 4
  %12 = call i32 @free(i32* %10, i32 %11)
  br label %13

13:                                               ; preds = %7, %1
  %14 = load %struct.tpm_sc*, %struct.tpm_sc** %2, align 8
  %15 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %14, i32 0, i32 2
  %16 = call i32 @sx_destroy(i32* %15)
  %17 = load %struct.tpm_sc*, %struct.tpm_sc** %2, align 8
  %18 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %17, i32 0, i32 1
  %19 = call i32 @cv_destroy(i32* %18)
  %20 = load %struct.tpm_sc*, %struct.tpm_sc** %2, align 8
  %21 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %13
  %25 = load %struct.tpm_sc*, %struct.tpm_sc** %2, align 8
  %26 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @destroy_dev(i32* %27)
  br label %29

29:                                               ; preds = %24, %13
  ret void
}

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @sx_destroy(i32*) #1

declare dso_local i32 @cv_destroy(i32*) #1

declare dso_local i32 @destroy_dev(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
