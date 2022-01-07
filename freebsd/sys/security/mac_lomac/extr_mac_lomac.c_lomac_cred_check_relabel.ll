; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_cred_check_relabel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_cred_check_relabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.label* }
%struct.label = type { i32 }
%struct.mac_lomac = type { i32 }

@MAC_LOMAC_FLAGS_BOTH = common dso_local global i32 0, align 4
@MAC_LOMAC_FLAG_SINGLE = common dso_local global i32 0, align 4
@MAC_LOMAC_FLAG_RANGE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.label*)* @lomac_cred_check_relabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lomac_cred_check_relabel(%struct.ucred* %0, %struct.label* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca %struct.label*, align 8
  %6 = alloca %struct.mac_lomac*, align 8
  %7 = alloca %struct.mac_lomac*, align 8
  %8 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %4, align 8
  store %struct.label* %1, %struct.label** %5, align 8
  %9 = load %struct.ucred*, %struct.ucred** %4, align 8
  %10 = getelementptr inbounds %struct.ucred, %struct.ucred* %9, i32 0, i32 0
  %11 = load %struct.label*, %struct.label** %10, align 8
  %12 = call %struct.mac_lomac* @SLOT(%struct.label* %11)
  store %struct.mac_lomac* %12, %struct.mac_lomac** %6, align 8
  %13 = load %struct.label*, %struct.label** %5, align 8
  %14 = call %struct.mac_lomac* @SLOT(%struct.label* %13)
  store %struct.mac_lomac* %14, %struct.mac_lomac** %7, align 8
  %15 = load %struct.mac_lomac*, %struct.mac_lomac** %7, align 8
  %16 = load i32, i32* @MAC_LOMAC_FLAGS_BOTH, align 4
  %17 = call i32 @lomac_atmostflags(%struct.mac_lomac* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %79

22:                                               ; preds = %2
  %23 = load %struct.mac_lomac*, %struct.mac_lomac** %7, align 8
  %24 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MAC_LOMAC_FLAGS_BOTH, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %78

29:                                               ; preds = %22
  %30 = load %struct.mac_lomac*, %struct.mac_lomac** %7, align 8
  %31 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MAC_LOMAC_FLAG_SINGLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.mac_lomac*, %struct.mac_lomac** %6, align 8
  %38 = load %struct.mac_lomac*, %struct.mac_lomac** %7, align 8
  %39 = call i32 @lomac_copy_single(%struct.mac_lomac* %37, %struct.mac_lomac* %38)
  br label %40

40:                                               ; preds = %36, %29
  %41 = load %struct.mac_lomac*, %struct.mac_lomac** %7, align 8
  %42 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MAC_LOMAC_FLAG_RANGE, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load %struct.mac_lomac*, %struct.mac_lomac** %6, align 8
  %49 = load %struct.mac_lomac*, %struct.mac_lomac** %7, align 8
  %50 = call i32 @lomac_copy_range(%struct.mac_lomac* %48, %struct.mac_lomac* %49)
  br label %51

51:                                               ; preds = %47, %40
  %52 = load %struct.mac_lomac*, %struct.mac_lomac** %7, align 8
  %53 = load %struct.mac_lomac*, %struct.mac_lomac** %6, align 8
  %54 = call i32 @lomac_range_in_range(%struct.mac_lomac* %52, %struct.mac_lomac* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @EPERM, align 4
  store i32 %57, i32* %3, align 4
  br label %79

58:                                               ; preds = %51
  %59 = load %struct.mac_lomac*, %struct.mac_lomac** %7, align 8
  %60 = load %struct.mac_lomac*, %struct.mac_lomac** %7, align 8
  %61 = call i32 @lomac_single_in_range(%struct.mac_lomac* %59, %struct.mac_lomac* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @EPERM, align 4
  store i32 %64, i32* %3, align 4
  br label %79

65:                                               ; preds = %58
  %66 = load %struct.mac_lomac*, %struct.mac_lomac** %7, align 8
  %67 = call i64 @lomac_contains_equal(%struct.mac_lomac* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load %struct.mac_lomac*, %struct.mac_lomac** %6, align 8
  %71 = call i32 @lomac_subject_privileged(%struct.mac_lomac* %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %79

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %65
  br label %78

78:                                               ; preds = %77, %22
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %74, %63, %56, %20
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.mac_lomac* @SLOT(%struct.label*) #1

declare dso_local i32 @lomac_atmostflags(%struct.mac_lomac*, i32) #1

declare dso_local i32 @lomac_copy_single(%struct.mac_lomac*, %struct.mac_lomac*) #1

declare dso_local i32 @lomac_copy_range(%struct.mac_lomac*, %struct.mac_lomac*) #1

declare dso_local i32 @lomac_range_in_range(%struct.mac_lomac*, %struct.mac_lomac*) #1

declare dso_local i32 @lomac_single_in_range(%struct.mac_lomac*, %struct.mac_lomac*) #1

declare dso_local i64 @lomac_contains_equal(%struct.mac_lomac*) #1

declare dso_local i32 @lomac_subject_privileged(%struct.mac_lomac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
