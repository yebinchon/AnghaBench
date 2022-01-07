; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_sysvsem_check_semop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_sysvsem_check_semop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.label* }
%struct.semid_kernel = type { i32 }
%struct.label = type { i32 }
%struct.mac_biba = type { i32 }

@biba_enabled = common dso_local global i32 0, align 4
@SEM_R = common dso_local global i64 0, align 8
@EACCES = common dso_local global i32 0, align 4
@SEM_A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.semid_kernel*, %struct.label*, i64)* @biba_sysvsem_check_semop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @biba_sysvsem_check_semop(%struct.ucred* %0, %struct.semid_kernel* %1, %struct.label* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca %struct.semid_kernel*, align 8
  %8 = alloca %struct.label*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mac_biba*, align 8
  %11 = alloca %struct.mac_biba*, align 8
  store %struct.ucred* %0, %struct.ucred** %6, align 8
  store %struct.semid_kernel* %1, %struct.semid_kernel** %7, align 8
  store %struct.label* %2, %struct.label** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* @biba_enabled, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %48

15:                                               ; preds = %4
  %16 = load %struct.ucred*, %struct.ucred** %6, align 8
  %17 = getelementptr inbounds %struct.ucred, %struct.ucred* %16, i32 0, i32 0
  %18 = load %struct.label*, %struct.label** %17, align 8
  %19 = call %struct.mac_biba* @SLOT(%struct.label* %18)
  store %struct.mac_biba* %19, %struct.mac_biba** %10, align 8
  %20 = load %struct.label*, %struct.label** %8, align 8
  %21 = call %struct.mac_biba* @SLOT(%struct.label* %20)
  store %struct.mac_biba* %21, %struct.mac_biba** %11, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @SEM_R, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %15
  %27 = load %struct.mac_biba*, %struct.mac_biba** %11, align 8
  %28 = load %struct.mac_biba*, %struct.mac_biba** %10, align 8
  %29 = call i32 @biba_dominate_effective(%struct.mac_biba* %27, %struct.mac_biba* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @EACCES, align 4
  store i32 %32, i32* %5, align 4
  br label %48

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %15
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @SEM_A, align 8
  %37 = and i64 %35, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.mac_biba*, %struct.mac_biba** %10, align 8
  %41 = load %struct.mac_biba*, %struct.mac_biba** %11, align 8
  %42 = call i32 @biba_dominate_effective(%struct.mac_biba* %40, %struct.mac_biba* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @EACCES, align 4
  store i32 %45, i32* %5, align 4
  br label %48

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %34
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %44, %31, %14
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.mac_biba* @SLOT(%struct.label*) #1

declare dso_local i32 @biba_dominate_effective(%struct.mac_biba*, %struct.mac_biba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
