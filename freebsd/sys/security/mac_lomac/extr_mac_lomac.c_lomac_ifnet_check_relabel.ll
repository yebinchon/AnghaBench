; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_ifnet_check_relabel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_ifnet_check_relabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.label* }
%struct.ifnet = type { i32 }
%struct.label = type { i32 }
%struct.mac_lomac = type { i32 }

@MAC_LOMAC_FLAGS_BOTH = common dso_local global i32 0, align 4
@MAC_LOMAC_FLAG_SINGLE = common dso_local global i32 0, align 4
@MAC_LOMAC_FLAG_RANGE = common dso_local global i32 0, align 4
@PRIV_NET_SETIFMAC = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.ifnet*, %struct.label*, %struct.label*)* @lomac_ifnet_check_relabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lomac_ifnet_check_relabel(%struct.ucred* %0, %struct.ifnet* %1, %struct.label* %2, %struct.label* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.label*, align 8
  %9 = alloca %struct.label*, align 8
  %10 = alloca %struct.mac_lomac*, align 8
  %11 = alloca %struct.mac_lomac*, align 8
  %12 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %6, align 8
  store %struct.ifnet* %1, %struct.ifnet** %7, align 8
  store %struct.label* %2, %struct.label** %8, align 8
  store %struct.label* %3, %struct.label** %9, align 8
  %13 = load %struct.ucred*, %struct.ucred** %6, align 8
  %14 = getelementptr inbounds %struct.ucred, %struct.ucred* %13, i32 0, i32 0
  %15 = load %struct.label*, %struct.label** %14, align 8
  %16 = call %struct.mac_lomac* @SLOT(%struct.label* %15)
  store %struct.mac_lomac* %16, %struct.mac_lomac** %10, align 8
  %17 = load %struct.label*, %struct.label** %9, align 8
  %18 = call %struct.mac_lomac* @SLOT(%struct.label* %17)
  store %struct.mac_lomac* %18, %struct.mac_lomac** %11, align 8
  %19 = load %struct.mac_lomac*, %struct.mac_lomac** %11, align 8
  %20 = load i32, i32* @MAC_LOMAC_FLAGS_BOTH, align 4
  %21 = call i32 @lomac_atmostflags(%struct.mac_lomac* %19, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %5, align 4
  br label %72

26:                                               ; preds = %4
  %27 = load %struct.mac_lomac*, %struct.mac_lomac** %10, align 8
  %28 = call i32 @lomac_subject_privileged(%struct.mac_lomac* %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %5, align 4
  br label %72

33:                                               ; preds = %26
  %34 = load %struct.mac_lomac*, %struct.mac_lomac** %11, align 8
  %35 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MAC_LOMAC_FLAGS_BOTH, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %71

40:                                               ; preds = %33
  %41 = load %struct.mac_lomac*, %struct.mac_lomac** %11, align 8
  %42 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MAC_LOMAC_FLAG_SINGLE, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load %struct.mac_lomac*, %struct.mac_lomac** %10, align 8
  %49 = load %struct.mac_lomac*, %struct.mac_lomac** %11, align 8
  %50 = call i32 @lomac_copy_single(%struct.mac_lomac* %48, %struct.mac_lomac* %49)
  br label %51

51:                                               ; preds = %47, %40
  %52 = load %struct.mac_lomac*, %struct.mac_lomac** %11, align 8
  %53 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MAC_LOMAC_FLAG_RANGE, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.mac_lomac*, %struct.mac_lomac** %10, align 8
  %60 = load %struct.mac_lomac*, %struct.mac_lomac** %11, align 8
  %61 = call i32 @lomac_copy_range(%struct.mac_lomac* %59, %struct.mac_lomac* %60)
  br label %62

62:                                               ; preds = %58, %51
  %63 = load %struct.ucred*, %struct.ucred** %6, align 8
  %64 = load i32, i32* @PRIV_NET_SETIFMAC, align 4
  %65 = call i32 @priv_check_cred(%struct.ucred* %63, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @EPERM, align 4
  store i32 %69, i32* %5, align 4
  br label %72

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %33
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %68, %31, %24
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.mac_lomac* @SLOT(%struct.label*) #1

declare dso_local i32 @lomac_atmostflags(%struct.mac_lomac*, i32) #1

declare dso_local i32 @lomac_subject_privileged(%struct.mac_lomac*) #1

declare dso_local i32 @lomac_copy_single(%struct.mac_lomac*, %struct.mac_lomac*) #1

declare dso_local i32 @lomac_copy_range(%struct.mac_lomac*, %struct.mac_lomac*) #1

declare dso_local i32 @priv_check_cred(%struct.ucred*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
