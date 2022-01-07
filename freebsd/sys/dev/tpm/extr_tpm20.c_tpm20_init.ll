; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm20.c_tpm20_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm20.c_tpm20_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_sc = type { i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.make_dev_args = type { %struct.tpm_sc*, i32, i32, i32, i32* }

@TPM_BUFSIZE = common dso_local global i32 0, align 4
@M_TPM20 = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"TPM driver lock\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"TPM buffer cv\00", align 1
@tpm20_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@TPM_CDEV_PERM_FLAG = common dso_local global i32 0, align 4
@TPM_CDEV_NAME = common dso_local global i32 0, align 4
@TPM_HARVEST_INTERVAL = common dso_local global i32 0, align 4
@tick = common dso_local global i32 0, align 4
@tpm20_harvest = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm20_init(%struct.tpm_sc* %0) #0 {
  %2 = alloca %struct.tpm_sc*, align 8
  %3 = alloca %struct.make_dev_args, align 8
  %4 = alloca i32, align 4
  store %struct.tpm_sc* %0, %struct.tpm_sc** %2, align 8
  %5 = load i32, i32* @TPM_BUFSIZE, align 4
  %6 = load i32, i32* @M_TPM20, align 4
  %7 = load i32, i32* @M_WAITOK, align 4
  %8 = call i32 @malloc(i32 %5, i32 %6, i32 %7)
  %9 = load %struct.tpm_sc*, %struct.tpm_sc** %2, align 8
  %10 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %9, i32 0, i32 7
  store i32 %8, i32* %10, align 8
  %11 = load %struct.tpm_sc*, %struct.tpm_sc** %2, align 8
  %12 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %11, i32 0, i32 6
  %13 = call i32 @sx_init(i32* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.tpm_sc*, %struct.tpm_sc** %2, align 8
  %15 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %14, i32 0, i32 5
  %16 = call i32 @cv_init(i32* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.tpm_sc*, %struct.tpm_sc** %2, align 8
  %18 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %17, i32 0, i32 4
  %19 = call i32 @callout_init(i32* %18, i32 1)
  %20 = load %struct.tpm_sc*, %struct.tpm_sc** %2, align 8
  %21 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = call i32 @make_dev_args_init(%struct.make_dev_args* %3)
  %23 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %3, i32 0, i32 4
  store i32* @tpm20_cdevsw, i32** %23, align 8
  %24 = load i32, i32* @UID_ROOT, align 4
  %25 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %3, i32 0, i32 3
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* @GID_WHEEL, align 4
  %27 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %3, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @TPM_CDEV_PERM_FLAG, align 4
  %29 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %3, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  %30 = load %struct.tpm_sc*, %struct.tpm_sc** %2, align 8
  %31 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %3, i32 0, i32 0
  store %struct.tpm_sc* %30, %struct.tpm_sc** %31, align 8
  %32 = load %struct.tpm_sc*, %struct.tpm_sc** %2, align 8
  %33 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %32, i32 0, i32 1
  %34 = load i32, i32* @TPM_CDEV_NAME, align 4
  %35 = call i32 @make_dev_s(%struct.make_dev_args* %3, i32* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %1
  %39 = load %struct.tpm_sc*, %struct.tpm_sc** %2, align 8
  %40 = call i32 @tpm20_release(%struct.tpm_sc* %39)
  br label %41

41:                                               ; preds = %38, %1
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @make_dev_args_init(%struct.make_dev_args*) #1

declare dso_local i32 @make_dev_s(%struct.make_dev_args*, i32*, i32) #1

declare dso_local i32 @tpm20_release(%struct.tpm_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
