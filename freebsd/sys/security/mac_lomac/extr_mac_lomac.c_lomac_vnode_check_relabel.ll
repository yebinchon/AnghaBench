; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_vnode_check_relabel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_vnode_check_relabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.label* }
%struct.vnode = type { i32 }
%struct.label = type { i32 }
%struct.mac_lomac = type { i32 }

@MAC_LOMAC_FLAG_SINGLE = common dso_local global i32 0, align 4
@MAC_LOMAC_FLAG_AUX = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.vnode*, %struct.label*, %struct.label*)* @lomac_vnode_check_relabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lomac_vnode_check_relabel(%struct.ucred* %0, %struct.vnode* %1, %struct.label* %2, %struct.label* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.label*, align 8
  %9 = alloca %struct.label*, align 8
  %10 = alloca %struct.mac_lomac*, align 8
  %11 = alloca %struct.mac_lomac*, align 8
  %12 = alloca %struct.mac_lomac*, align 8
  %13 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %6, align 8
  store %struct.vnode* %1, %struct.vnode** %7, align 8
  store %struct.label* %2, %struct.label** %8, align 8
  store %struct.label* %3, %struct.label** %9, align 8
  %14 = load %struct.label*, %struct.label** %8, align 8
  %15 = call %struct.mac_lomac* @SLOT(%struct.label* %14)
  store %struct.mac_lomac* %15, %struct.mac_lomac** %10, align 8
  %16 = load %struct.label*, %struct.label** %9, align 8
  %17 = call %struct.mac_lomac* @SLOT(%struct.label* %16)
  store %struct.mac_lomac* %17, %struct.mac_lomac** %11, align 8
  %18 = load %struct.ucred*, %struct.ucred** %6, align 8
  %19 = getelementptr inbounds %struct.ucred, %struct.ucred* %18, i32 0, i32 0
  %20 = load %struct.label*, %struct.label** %19, align 8
  %21 = call %struct.mac_lomac* @SLOT(%struct.label* %20)
  store %struct.mac_lomac* %21, %struct.mac_lomac** %12, align 8
  %22 = load %struct.mac_lomac*, %struct.mac_lomac** %11, align 8
  %23 = load i32, i32* @MAC_LOMAC_FLAG_SINGLE, align 4
  %24 = load i32, i32* @MAC_LOMAC_FLAG_AUX, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @lomac_atmostflags(%struct.mac_lomac* %22, i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %5, align 4
  br label %104

31:                                               ; preds = %4
  %32 = load %struct.mac_lomac*, %struct.mac_lomac** %10, align 8
  %33 = load %struct.mac_lomac*, %struct.mac_lomac** %12, align 8
  %34 = call i32 @lomac_single_in_range(%struct.mac_lomac* %32, %struct.mac_lomac* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @EPERM, align 4
  store i32 %37, i32* %5, align 4
  br label %104

38:                                               ; preds = %31
  %39 = load %struct.mac_lomac*, %struct.mac_lomac** %11, align 8
  %40 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MAC_LOMAC_FLAG_SINGLE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %38
  %46 = load %struct.mac_lomac*, %struct.mac_lomac** %11, align 8
  %47 = load %struct.mac_lomac*, %struct.mac_lomac** %12, align 8
  %48 = call i32 @lomac_single_in_range(%struct.mac_lomac* %46, %struct.mac_lomac* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @EPERM, align 4
  store i32 %51, i32* %5, align 4
  br label %104

52:                                               ; preds = %45
  %53 = load %struct.mac_lomac*, %struct.mac_lomac** %11, align 8
  %54 = call i64 @lomac_contains_equal(%struct.mac_lomac* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load %struct.mac_lomac*, %struct.mac_lomac** %12, align 8
  %58 = call i32 @lomac_subject_privileged(%struct.mac_lomac* %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %5, align 4
  br label %104

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %52
  br label %65

65:                                               ; preds = %64, %38
  %66 = load %struct.mac_lomac*, %struct.mac_lomac** %11, align 8
  %67 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @MAC_LOMAC_FLAG_AUX, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %103

72:                                               ; preds = %65
  %73 = load %struct.mac_lomac*, %struct.mac_lomac** %11, align 8
  %74 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @MAC_LOMAC_FLAG_SINGLE, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load %struct.mac_lomac*, %struct.mac_lomac** %12, align 8
  %81 = load %struct.mac_lomac*, %struct.mac_lomac** %11, align 8
  %82 = call i32 @lomac_copy_single(%struct.mac_lomac* %80, %struct.mac_lomac* %81)
  br label %83

83:                                               ; preds = %79, %72
  %84 = load %struct.mac_lomac*, %struct.mac_lomac** %11, align 8
  %85 = load %struct.mac_lomac*, %struct.mac_lomac** %12, align 8
  %86 = call i32 @lomac_auxsingle_in_range(%struct.mac_lomac* %84, %struct.mac_lomac* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* @EPERM, align 4
  store i32 %89, i32* %5, align 4
  br label %104

90:                                               ; preds = %83
  %91 = load %struct.mac_lomac*, %struct.mac_lomac** %11, align 8
  %92 = call i64 @lomac_contains_equal(%struct.mac_lomac* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = load %struct.mac_lomac*, %struct.mac_lomac** %12, align 8
  %96 = call i32 @lomac_subject_privileged(%struct.mac_lomac* %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %5, align 4
  br label %104

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %90
  br label %103

103:                                              ; preds = %102, %65
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %103, %99, %88, %61, %50, %36, %29
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local %struct.mac_lomac* @SLOT(%struct.label*) #1

declare dso_local i32 @lomac_atmostflags(%struct.mac_lomac*, i32) #1

declare dso_local i32 @lomac_single_in_range(%struct.mac_lomac*, %struct.mac_lomac*) #1

declare dso_local i64 @lomac_contains_equal(%struct.mac_lomac*) #1

declare dso_local i32 @lomac_subject_privileged(%struct.mac_lomac*) #1

declare dso_local i32 @lomac_copy_single(%struct.mac_lomac*, %struct.mac_lomac*) #1

declare dso_local i32 @lomac_auxsingle_in_range(%struct.mac_lomac*, %struct.mac_lomac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
