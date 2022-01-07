; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_posixshm_check_mmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_posixshm_check_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.label* }
%struct.shmfd = type { i32 }
%struct.label = type { i32 }
%struct.mac_biba = type { i32 }

@biba_enabled = common dso_local global i32 0, align 4
@revocation_enabled = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.shmfd*, %struct.label*, i32, i32)* @biba_posixshm_check_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @biba_posixshm_check_mmap(%struct.ucred* %0, %struct.shmfd* %1, %struct.label* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.shmfd*, align 8
  %9 = alloca %struct.label*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mac_biba*, align 8
  %13 = alloca %struct.mac_biba*, align 8
  store %struct.ucred* %0, %struct.ucred** %7, align 8
  store %struct.shmfd* %1, %struct.shmfd** %8, align 8
  store %struct.label* %2, %struct.label** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @biba_enabled, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i32, i32* @revocation_enabled, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %5
  store i32 0, i32* %6, align 4
  br label %60

20:                                               ; preds = %16
  %21 = load %struct.ucred*, %struct.ucred** %7, align 8
  %22 = getelementptr inbounds %struct.ucred, %struct.ucred* %21, i32 0, i32 0
  %23 = load %struct.label*, %struct.label** %22, align 8
  %24 = call %struct.mac_biba* @SLOT(%struct.label* %23)
  store %struct.mac_biba* %24, %struct.mac_biba** %12, align 8
  %25 = load %struct.label*, %struct.label** %9, align 8
  %26 = call %struct.mac_biba* @SLOT(%struct.label* %25)
  store %struct.mac_biba* %26, %struct.mac_biba** %13, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @VM_PROT_READ, align 4
  %29 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %20
  %34 = load %struct.mac_biba*, %struct.mac_biba** %13, align 8
  %35 = load %struct.mac_biba*, %struct.mac_biba** %12, align 8
  %36 = call i32 @biba_dominate_effective(%struct.mac_biba* %34, %struct.mac_biba* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @EACCES, align 4
  store i32 %39, i32* %6, align 4
  br label %60

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %20
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @VM_PROT_WRITE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @MAP_SHARED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.mac_biba*, %struct.mac_biba** %12, align 8
  %53 = load %struct.mac_biba*, %struct.mac_biba** %13, align 8
  %54 = call i32 @biba_dominate_effective(%struct.mac_biba* %52, %struct.mac_biba* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @EACCES, align 4
  store i32 %57, i32* %6, align 4
  br label %60

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %46, %41
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %59, %56, %38, %19
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.mac_biba* @SLOT(%struct.label*) #1

declare dso_local i32 @biba_dominate_effective(%struct.mac_biba*, %struct.mac_biba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
