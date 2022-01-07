; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_mls/extr_mac_mls.c_mls_sysvshm_check_shmctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_mls/extr_mac_mls.c_mls_sysvshm_check_shmctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.label* }
%struct.shmid_kernel = type { i32 }
%struct.label = type { i32 }
%struct.mac_mls = type { i32 }

@mls_enabled = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.shmid_kernel*, %struct.label*, i32)* @mls_sysvshm_check_shmctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mls_sysvshm_check_shmctl(%struct.ucred* %0, %struct.shmid_kernel* %1, %struct.label* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca %struct.shmid_kernel*, align 8
  %8 = alloca %struct.label*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mac_mls*, align 8
  %11 = alloca %struct.mac_mls*, align 8
  store %struct.ucred* %0, %struct.ucred** %6, align 8
  store %struct.shmid_kernel* %1, %struct.shmid_kernel** %7, align 8
  store %struct.label* %2, %struct.label** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @mls_enabled, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %42

15:                                               ; preds = %4
  %16 = load %struct.ucred*, %struct.ucred** %6, align 8
  %17 = getelementptr inbounds %struct.ucred, %struct.ucred* %16, i32 0, i32 0
  %18 = load %struct.label*, %struct.label** %17, align 8
  %19 = call %struct.mac_mls* @SLOT(%struct.label* %18)
  store %struct.mac_mls* %19, %struct.mac_mls** %10, align 8
  %20 = load %struct.label*, %struct.label** %8, align 8
  %21 = call %struct.mac_mls* @SLOT(%struct.label* %20)
  store %struct.mac_mls* %21, %struct.mac_mls** %11, align 8
  %22 = load i32, i32* %9, align 4
  switch i32 %22, label %39 [
    i32 131, label %23
    i32 130, label %23
    i32 129, label %31
    i32 128, label %31
  ]

23:                                               ; preds = %15, %15
  %24 = load %struct.mac_mls*, %struct.mac_mls** %11, align 8
  %25 = load %struct.mac_mls*, %struct.mac_mls** %10, align 8
  %26 = call i32 @mls_dominate_effective(%struct.mac_mls* %24, %struct.mac_mls* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @EACCES, align 4
  store i32 %29, i32* %5, align 4
  br label %42

30:                                               ; preds = %23
  br label %41

31:                                               ; preds = %15, %15
  %32 = load %struct.mac_mls*, %struct.mac_mls** %10, align 8
  %33 = load %struct.mac_mls*, %struct.mac_mls** %11, align 8
  %34 = call i32 @mls_dominate_effective(%struct.mac_mls* %32, %struct.mac_mls* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @EACCES, align 4
  store i32 %37, i32* %5, align 4
  br label %42

38:                                               ; preds = %31
  br label %41

39:                                               ; preds = %15
  %40 = load i32, i32* @EACCES, align 4
  store i32 %40, i32* %5, align 4
  br label %42

41:                                               ; preds = %38, %30
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %39, %36, %28, %14
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.mac_mls* @SLOT(%struct.label*) #1

declare dso_local i32 @mls_dominate_effective(%struct.mac_mls*, %struct.mac_mls*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
