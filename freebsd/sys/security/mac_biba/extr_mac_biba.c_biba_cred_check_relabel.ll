; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_cred_check_relabel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_cred_check_relabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.label* }
%struct.label = type { i32 }
%struct.mac_biba = type { i32 }

@MAC_BIBA_FLAGS_BOTH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAC_BIBA_FLAG_EFFECTIVE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@MAC_BIBA_FLAG_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.label*)* @biba_cred_check_relabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @biba_cred_check_relabel(%struct.ucred* %0, %struct.label* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca %struct.label*, align 8
  %6 = alloca %struct.mac_biba*, align 8
  %7 = alloca %struct.mac_biba*, align 8
  %8 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %4, align 8
  store %struct.label* %1, %struct.label** %5, align 8
  %9 = load %struct.ucred*, %struct.ucred** %4, align 8
  %10 = getelementptr inbounds %struct.ucred, %struct.ucred* %9, i32 0, i32 0
  %11 = load %struct.label*, %struct.label** %10, align 8
  %12 = call %struct.mac_biba* @SLOT(%struct.label* %11)
  store %struct.mac_biba* %12, %struct.mac_biba** %6, align 8
  %13 = load %struct.label*, %struct.label** %5, align 8
  %14 = call %struct.mac_biba* @SLOT(%struct.label* %13)
  store %struct.mac_biba* %14, %struct.mac_biba** %7, align 8
  %15 = load %struct.mac_biba*, %struct.mac_biba** %7, align 8
  %16 = load i32, i32* @MAC_BIBA_FLAGS_BOTH, align 4
  %17 = call i32 @biba_atmostflags(%struct.mac_biba* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %86

22:                                               ; preds = %2
  %23 = load %struct.mac_biba*, %struct.mac_biba** %7, align 8
  %24 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MAC_BIBA_FLAGS_BOTH, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %85

29:                                               ; preds = %22
  %30 = load %struct.mac_biba*, %struct.mac_biba** %7, align 8
  %31 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MAC_BIBA_FLAGS_BOTH, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @MAC_BIBA_FLAGS_BOTH, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %29
  %38 = load %struct.mac_biba*, %struct.mac_biba** %7, align 8
  %39 = load %struct.mac_biba*, %struct.mac_biba** %7, align 8
  %40 = call i32 @biba_effective_in_range(%struct.mac_biba* %38, %struct.mac_biba* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %3, align 4
  br label %86

44:                                               ; preds = %37, %29
  %45 = load %struct.mac_biba*, %struct.mac_biba** %7, align 8
  %46 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MAC_BIBA_FLAG_EFFECTIVE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load %struct.mac_biba*, %struct.mac_biba** %7, align 8
  %53 = load %struct.mac_biba*, %struct.mac_biba** %6, align 8
  %54 = call i32 @biba_effective_in_range(%struct.mac_biba* %52, %struct.mac_biba* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @EPERM, align 4
  store i32 %57, i32* %3, align 4
  br label %86

58:                                               ; preds = %51, %44
  %59 = load %struct.mac_biba*, %struct.mac_biba** %7, align 8
  %60 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MAC_BIBA_FLAG_RANGE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load %struct.mac_biba*, %struct.mac_biba** %7, align 8
  %67 = load %struct.mac_biba*, %struct.mac_biba** %6, align 8
  %68 = call i32 @biba_range_in_range(%struct.mac_biba* %66, %struct.mac_biba* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @EPERM, align 4
  store i32 %71, i32* %3, align 4
  br label %86

72:                                               ; preds = %65, %58
  %73 = load %struct.mac_biba*, %struct.mac_biba** %7, align 8
  %74 = call i64 @biba_contains_equal(%struct.mac_biba* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = load %struct.mac_biba*, %struct.mac_biba** %6, align 8
  %78 = call i32 @biba_subject_privileged(%struct.mac_biba* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %86

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %72
  br label %85

85:                                               ; preds = %84, %22
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %81, %70, %56, %42, %20
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.mac_biba* @SLOT(%struct.label*) #1

declare dso_local i32 @biba_atmostflags(%struct.mac_biba*, i32) #1

declare dso_local i32 @biba_effective_in_range(%struct.mac_biba*, %struct.mac_biba*) #1

declare dso_local i32 @biba_range_in_range(%struct.mac_biba*, %struct.mac_biba*) #1

declare dso_local i64 @biba_contains_equal(%struct.mac_biba*) #1

declare dso_local i32 @biba_subject_privileged(%struct.mac_biba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
