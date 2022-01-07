; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_mls/extr_mac_mls.c_mls_pipe_check_relabel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_mls/extr_mac_mls.c_mls_pipe_check_relabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.label* }
%struct.pipepair = type { i32 }
%struct.label = type { i32 }
%struct.mac_mls = type { i32 }

@MAC_MLS_FLAG_EFFECTIVE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.pipepair*, %struct.label*, %struct.label*)* @mls_pipe_check_relabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mls_pipe_check_relabel(%struct.ucred* %0, %struct.pipepair* %1, %struct.label* %2, %struct.label* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca %struct.pipepair*, align 8
  %8 = alloca %struct.label*, align 8
  %9 = alloca %struct.label*, align 8
  %10 = alloca %struct.mac_mls*, align 8
  %11 = alloca %struct.mac_mls*, align 8
  %12 = alloca %struct.mac_mls*, align 8
  %13 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %6, align 8
  store %struct.pipepair* %1, %struct.pipepair** %7, align 8
  store %struct.label* %2, %struct.label** %8, align 8
  store %struct.label* %3, %struct.label** %9, align 8
  %14 = load %struct.label*, %struct.label** %9, align 8
  %15 = call %struct.mac_mls* @SLOT(%struct.label* %14)
  store %struct.mac_mls* %15, %struct.mac_mls** %12, align 8
  %16 = load %struct.ucred*, %struct.ucred** %6, align 8
  %17 = getelementptr inbounds %struct.ucred, %struct.ucred* %16, i32 0, i32 0
  %18 = load %struct.label*, %struct.label** %17, align 8
  %19 = call %struct.mac_mls* @SLOT(%struct.label* %18)
  store %struct.mac_mls* %19, %struct.mac_mls** %10, align 8
  %20 = load %struct.label*, %struct.label** %8, align 8
  %21 = call %struct.mac_mls* @SLOT(%struct.label* %20)
  store %struct.mac_mls* %21, %struct.mac_mls** %11, align 8
  %22 = load %struct.mac_mls*, %struct.mac_mls** %12, align 8
  %23 = load i32, i32* @MAC_MLS_FLAG_EFFECTIVE, align 4
  %24 = call i32 @mls_atmostflags(%struct.mac_mls* %22, i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %5, align 4
  br label %64

29:                                               ; preds = %4
  %30 = load %struct.mac_mls*, %struct.mac_mls** %11, align 8
  %31 = load %struct.mac_mls*, %struct.mac_mls** %10, align 8
  %32 = call i32 @mls_effective_in_range(%struct.mac_mls* %30, %struct.mac_mls* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @EPERM, align 4
  store i32 %35, i32* %5, align 4
  br label %64

36:                                               ; preds = %29
  %37 = load %struct.mac_mls*, %struct.mac_mls** %12, align 8
  %38 = getelementptr inbounds %struct.mac_mls, %struct.mac_mls* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MAC_MLS_FLAG_EFFECTIVE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %36
  %44 = load %struct.mac_mls*, %struct.mac_mls** %12, align 8
  %45 = load %struct.mac_mls*, %struct.mac_mls** %10, align 8
  %46 = call i32 @mls_effective_in_range(%struct.mac_mls* %44, %struct.mac_mls* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @EPERM, align 4
  store i32 %49, i32* %5, align 4
  br label %64

50:                                               ; preds = %43
  %51 = load %struct.mac_mls*, %struct.mac_mls** %12, align 8
  %52 = call i64 @mls_contains_equal(%struct.mac_mls* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load %struct.mac_mls*, %struct.mac_mls** %10, align 8
  %56 = call i32 @mls_subject_privileged(%struct.mac_mls* %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %5, align 4
  br label %64

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %50
  br label %63

63:                                               ; preds = %62, %36
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %59, %48, %34, %27
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local %struct.mac_mls* @SLOT(%struct.label*) #1

declare dso_local i32 @mls_atmostflags(%struct.mac_mls*, i32) #1

declare dso_local i32 @mls_effective_in_range(%struct.mac_mls*, %struct.mac_mls*) #1

declare dso_local i64 @mls_contains_equal(%struct.mac_mls*) #1

declare dso_local i32 @mls_subject_privileged(%struct.mac_mls*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
