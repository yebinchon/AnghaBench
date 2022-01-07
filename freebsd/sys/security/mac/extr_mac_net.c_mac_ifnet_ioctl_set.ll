; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_net.c_mac_ifnet_ioctl_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_net.c_mac_ifnet_ioctl_set.c"
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
@PRIV_NET_SETIFMAC = common dso_local global i32 0, align 4
@ifnet_check_relabel = common dso_local global i32 0, align 4
@ifnet_relabel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_ifnet_ioctl_set(%struct.ucred* %0, %struct.ifreq* %1, %struct.ifnet* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.label*, align 8
  %9 = alloca %struct.mac, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store %struct.ifnet* %2, %struct.ifnet** %7, align 8
  %13 = load i32, i32* @mac_labeled, align 4
  %14 = load i32, i32* @MPC_OBJECT_IFNET, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %111

19:                                               ; preds = %3
  %20 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %21 = call i32 @ifr_data_get_ptr(%struct.ifreq* %20)
  %22 = call i32 @copyin(i32 %21, %struct.mac* %9, i32 8)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %4, align 4
  br label %111

27:                                               ; preds = %19
  %28 = call i32 @mac_check_structmac_consistent(%struct.mac* %9)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %4, align 4
  br label %111

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.mac, %struct.mac* %9, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @M_MACTEMP, align 4
  %37 = load i32, i32* @M_WAITOK, align 4
  %38 = call i8* @malloc(i32 %35, i32 %36, i32 %37)
  store i8* %38, i8** %10, align 8
  %39 = getelementptr inbounds %struct.mac, %struct.mac* %9, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = getelementptr inbounds %struct.mac, %struct.mac* %9, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @copyinstr(i32 %40, i8* %41, i32 %43, i32* null)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %33
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* @M_MACTEMP, align 4
  %50 = call i32 @free(i8* %48, i32 %49)
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %4, align 4
  br label %111

52:                                               ; preds = %33
  %53 = call %struct.label* (...) @mac_ifnet_label_alloc()
  store %struct.label* %53, %struct.label** %8, align 8
  %54 = load %struct.label*, %struct.label** %8, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 @mac_ifnet_internalize_label(%struct.label* %54, i8* %55)
  store i32 %56, i32* %11, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* @M_MACTEMP, align 4
  %59 = call i32 @free(i8* %57, i32 %58)
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load %struct.label*, %struct.label** %8, align 8
  %64 = call i32 @mac_ifnet_label_free(%struct.label* %63)
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %4, align 4
  br label %111

66:                                               ; preds = %52
  %67 = load %struct.ucred*, %struct.ucred** %5, align 8
  %68 = load i32, i32* @PRIV_NET_SETIFMAC, align 4
  %69 = call i32 @priv_check_cred(%struct.ucred* %67, i32 %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.label*, %struct.label** %8, align 8
  %74 = call i32 @mac_ifnet_label_free(%struct.label* %73)
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %4, align 4
  br label %111

76:                                               ; preds = %66
  %77 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @MAC_IFNET_LOCK(%struct.ifnet* %77, i32 %78)
  %80 = load i32, i32* @ifnet_check_relabel, align 4
  %81 = load %struct.ucred*, %struct.ucred** %5, align 8
  %82 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %83 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %84 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.label*, %struct.label** %8, align 8
  %87 = call i32 @MAC_POLICY_CHECK_NOSLEEP(i32 %80, %struct.ucred* %81, %struct.ifnet* %82, i32 %85, %struct.label* %86)
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %76
  %91 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @MAC_IFNET_UNLOCK(%struct.ifnet* %91, i32 %92)
  %94 = load %struct.label*, %struct.label** %8, align 8
  %95 = call i32 @mac_ifnet_label_free(%struct.label* %94)
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %4, align 4
  br label %111

97:                                               ; preds = %76
  %98 = load i32, i32* @ifnet_relabel, align 4
  %99 = load %struct.ucred*, %struct.ucred** %5, align 8
  %100 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %101 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %102 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.label*, %struct.label** %8, align 8
  %105 = call i32 @MAC_POLICY_PERFORM_NOSLEEP(i32 %98, %struct.ucred* %99, %struct.ifnet* %100, i32 %103, %struct.label* %104)
  %106 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @MAC_IFNET_UNLOCK(%struct.ifnet* %106, i32 %107)
  %109 = load %struct.label*, %struct.label** %8, align 8
  %110 = call i32 @mac_ifnet_label_free(%struct.label* %109)
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %97, %90, %72, %62, %47, %31, %25, %17
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @copyin(i32, %struct.mac*, i32) #1

declare dso_local i32 @ifr_data_get_ptr(%struct.ifreq*) #1

declare dso_local i32 @mac_check_structmac_consistent(%struct.mac*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyinstr(i32, i8*, i32, i32*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local %struct.label* @mac_ifnet_label_alloc(...) #1

declare dso_local i32 @mac_ifnet_internalize_label(%struct.label*, i8*) #1

declare dso_local i32 @mac_ifnet_label_free(%struct.label*) #1

declare dso_local i32 @priv_check_cred(%struct.ucred*, i32) #1

declare dso_local i32 @MAC_IFNET_LOCK(%struct.ifnet*, i32) #1

declare dso_local i32 @MAC_POLICY_CHECK_NOSLEEP(i32, %struct.ucred*, %struct.ifnet*, i32, %struct.label*) #1

declare dso_local i32 @MAC_IFNET_UNLOCK(%struct.ifnet*, i32) #1

declare dso_local i32 @MAC_POLICY_PERFORM_NOSLEEP(i32, %struct.ucred*, %struct.ifnet*, i32, %struct.label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
