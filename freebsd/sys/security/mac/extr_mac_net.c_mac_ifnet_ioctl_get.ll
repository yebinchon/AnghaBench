; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_net.c_mac_ifnet_ioctl_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_net.c_mac_ifnet_ioctl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.ifreq = type { i32 }
%struct.ifnet = type { i32 }
%struct.label = type { i32 }
%struct.mac = type { i32, i32 }

@mac_labeled = common dso_local global i32 0, align 4
@MPC_OBJECT_IFNET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M_MACTEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_ifnet_ioctl_get(%struct.ucred* %0, %struct.ifreq* %1, %struct.ifnet* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.label*, align 8
  %11 = alloca %struct.mac, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store %struct.ifnet* %2, %struct.ifnet** %7, align 8
  %14 = load i32, i32* @mac_labeled, align 4
  %15 = load i32, i32* @MPC_OBJECT_IFNET, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %99

20:                                               ; preds = %3
  %21 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %22 = call i32 @ifr_data_get_ptr(%struct.ifreq* %21)
  %23 = call i32 @copyin(i32 %22, %struct.mac* %11, i32 8)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %4, align 4
  br label %99

28:                                               ; preds = %20
  %29 = call i32 @mac_check_structmac_consistent(%struct.mac* %11)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %4, align 4
  br label %99

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.mac, %struct.mac* %11, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @M_MACTEMP, align 4
  %38 = load i32, i32* @M_WAITOK, align 4
  %39 = call i8* @malloc(i32 %36, i32 %37, i32 %38)
  store i8* %39, i8** %8, align 8
  %40 = getelementptr inbounds %struct.mac, %struct.mac* %11, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds %struct.mac, %struct.mac* %11, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @copyinstr(i32 %41, i8* %42, i32 %44, i32* null)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %34
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* @M_MACTEMP, align 4
  %51 = call i32 @free(i8* %49, i32 %50)
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %4, align 4
  br label %99

53:                                               ; preds = %34
  %54 = getelementptr inbounds %struct.mac, %struct.mac* %11, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @M_MACTEMP, align 4
  %57 = load i32, i32* @M_WAITOK, align 4
  %58 = load i32, i32* @M_ZERO, align 4
  %59 = or i32 %57, %58
  %60 = call i8* @malloc(i32 %55, i32 %56, i32 %59)
  store i8* %60, i8** %9, align 8
  %61 = call %struct.label* (...) @mac_ifnet_label_alloc()
  store %struct.label* %61, %struct.label** %10, align 8
  %62 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @MAC_IFNET_LOCK(%struct.ifnet* %62, i32 %63)
  %65 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %66 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.label*, %struct.label** %10, align 8
  %69 = call i32 @mac_ifnet_copy_label(i32 %67, %struct.label* %68)
  %70 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @MAC_IFNET_UNLOCK(%struct.ifnet* %70, i32 %71)
  %73 = load %struct.label*, %struct.label** %10, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds %struct.mac, %struct.mac* %11, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @mac_ifnet_externalize_label(%struct.label* %73, i8* %74, i8* %75, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load %struct.label*, %struct.label** %10, align 8
  %80 = call i32 @mac_ifnet_label_free(%struct.label* %79)
  %81 = load i32, i32* %12, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %53
  %84 = load i8*, i8** %9, align 8
  %85 = getelementptr inbounds %struct.mac, %struct.mac* %11, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i8*, i8** %9, align 8
  %88 = call i64 @strlen(i8* %87)
  %89 = add nsw i64 %88, 1
  %90 = call i32 @copyout(i8* %84, i32 %86, i64 %89)
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %83, %53
  %92 = load i8*, i8** %9, align 8
  %93 = load i32, i32* @M_MACTEMP, align 4
  %94 = call i32 @free(i8* %92, i32 %93)
  %95 = load i8*, i8** %8, align 8
  %96 = load i32, i32* @M_MACTEMP, align 4
  %97 = call i32 @free(i8* %95, i32 %96)
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %91, %48, %32, %26, %18
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @copyin(i32, %struct.mac*, i32) #1

declare dso_local i32 @ifr_data_get_ptr(%struct.ifreq*) #1

declare dso_local i32 @mac_check_structmac_consistent(%struct.mac*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyinstr(i32, i8*, i32, i32*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local %struct.label* @mac_ifnet_label_alloc(...) #1

declare dso_local i32 @MAC_IFNET_LOCK(%struct.ifnet*, i32) #1

declare dso_local i32 @mac_ifnet_copy_label(i32, %struct.label*) #1

declare dso_local i32 @MAC_IFNET_UNLOCK(%struct.ifnet*, i32) #1

declare dso_local i32 @mac_ifnet_externalize_label(%struct.label*, i8*, i8*, i32) #1

declare dso_local i32 @mac_ifnet_label_free(%struct.label*) #1

declare dso_local i32 @copyout(i8*, i32, i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
