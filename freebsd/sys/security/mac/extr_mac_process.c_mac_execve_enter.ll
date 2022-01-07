; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_process.c_mac_execve_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_process.c_mac_execve_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_params = type { %struct.label* }
%struct.label = type { i32 }
%struct.mac = type { i32, i32 }

@mac_labeled = common dso_local global i32 0, align 4
@MPC_OBJECT_CRED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M_MACTEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_execve_enter(%struct.image_params* %0, %struct.mac* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.image_params*, align 8
  %5 = alloca %struct.mac*, align 8
  %6 = alloca %struct.label*, align 8
  %7 = alloca %struct.mac, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.image_params* %0, %struct.image_params** %4, align 8
  store %struct.mac* %1, %struct.mac** %5, align 8
  %10 = load %struct.mac*, %struct.mac** %5, align 8
  %11 = icmp eq %struct.mac* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

13:                                               ; preds = %2
  %14 = load i32, i32* @mac_labeled, align 4
  %15 = load i32, i32* @MPC_OBJECT_CRED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %70

20:                                               ; preds = %13
  %21 = load %struct.mac*, %struct.mac** %5, align 8
  %22 = call i32 @copyin(%struct.mac* %21, %struct.mac* %7, i32 8)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %3, align 4
  br label %70

27:                                               ; preds = %20
  %28 = call i32 @mac_check_structmac_consistent(%struct.mac* %7)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %3, align 4
  br label %70

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.mac, %struct.mac* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @M_MACTEMP, align 4
  %37 = load i32, i32* @M_WAITOK, align 4
  %38 = call i8* @malloc(i32 %35, i32 %36, i32 %37)
  store i8* %38, i8** %8, align 8
  %39 = getelementptr inbounds %struct.mac, %struct.mac* %7, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds %struct.mac, %struct.mac* %7, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @copyinstr(i32 %40, i8* %41, i32 %43, i32* null)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %33
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* @M_MACTEMP, align 4
  %50 = call i32 @free(i8* %48, i32 %49)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  br label %70

52:                                               ; preds = %33
  %53 = call %struct.label* (...) @mac_cred_label_alloc()
  store %struct.label* %53, %struct.label** %6, align 8
  %54 = load %struct.label*, %struct.label** %6, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @mac_cred_internalize_label(%struct.label* %54, i8* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* @M_MACTEMP, align 4
  %59 = call i32 @free(i8* %57, i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load %struct.label*, %struct.label** %6, align 8
  %64 = call i32 @mac_cred_label_free(%struct.label* %63)
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %3, align 4
  br label %70

66:                                               ; preds = %52
  %67 = load %struct.label*, %struct.label** %6, align 8
  %68 = load %struct.image_params*, %struct.image_params** %4, align 8
  %69 = getelementptr inbounds %struct.image_params, %struct.image_params* %68, i32 0, i32 0
  store %struct.label* %67, %struct.label** %69, align 8
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %62, %47, %31, %25, %18, %12
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @copyin(%struct.mac*, %struct.mac*, i32) #1

declare dso_local i32 @mac_check_structmac_consistent(%struct.mac*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyinstr(i32, i8*, i32, i32*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local %struct.label* @mac_cred_label_alloc(...) #1

declare dso_local i32 @mac_cred_internalize_label(%struct.label*, i8*) #1

declare dso_local i32 @mac_cred_label_free(%struct.label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
