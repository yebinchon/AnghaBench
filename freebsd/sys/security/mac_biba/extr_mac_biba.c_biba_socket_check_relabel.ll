; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_socket_check_relabel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_socket_check_relabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.label* }
%struct.socket = type { i32 }
%struct.label = type { i32 }
%struct.mac_biba = type { i32 }

@MAC_BIBA_FLAG_EFFECTIVE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.socket*, %struct.label*, %struct.label*)* @biba_socket_check_relabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @biba_socket_check_relabel(%struct.ucred* %0, %struct.socket* %1, %struct.label* %2, %struct.label* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.label*, align 8
  %9 = alloca %struct.label*, align 8
  %10 = alloca %struct.mac_biba*, align 8
  %11 = alloca %struct.mac_biba*, align 8
  %12 = alloca %struct.mac_biba*, align 8
  %13 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store %struct.label* %2, %struct.label** %8, align 8
  store %struct.label* %3, %struct.label** %9, align 8
  %14 = load %struct.socket*, %struct.socket** %7, align 8
  %15 = call i32 @SOCK_LOCK_ASSERT(%struct.socket* %14)
  %16 = load %struct.label*, %struct.label** %9, align 8
  %17 = call %struct.mac_biba* @SLOT(%struct.label* %16)
  store %struct.mac_biba* %17, %struct.mac_biba** %12, align 8
  %18 = load %struct.ucred*, %struct.ucred** %6, align 8
  %19 = getelementptr inbounds %struct.ucred, %struct.ucred* %18, i32 0, i32 0
  %20 = load %struct.label*, %struct.label** %19, align 8
  %21 = call %struct.mac_biba* @SLOT(%struct.label* %20)
  store %struct.mac_biba* %21, %struct.mac_biba** %10, align 8
  %22 = load %struct.label*, %struct.label** %8, align 8
  %23 = call %struct.mac_biba* @SLOT(%struct.label* %22)
  store %struct.mac_biba* %23, %struct.mac_biba** %11, align 8
  %24 = load %struct.mac_biba*, %struct.mac_biba** %12, align 8
  %25 = load i32, i32* @MAC_BIBA_FLAG_EFFECTIVE, align 4
  %26 = call i32 @biba_atmostflags(%struct.mac_biba* %24, i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %5, align 4
  br label %66

31:                                               ; preds = %4
  %32 = load %struct.mac_biba*, %struct.mac_biba** %11, align 8
  %33 = load %struct.mac_biba*, %struct.mac_biba** %10, align 8
  %34 = call i32 @biba_effective_in_range(%struct.mac_biba* %32, %struct.mac_biba* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @EPERM, align 4
  store i32 %37, i32* %5, align 4
  br label %66

38:                                               ; preds = %31
  %39 = load %struct.mac_biba*, %struct.mac_biba** %12, align 8
  %40 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MAC_BIBA_FLAG_EFFECTIVE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %38
  %46 = load %struct.mac_biba*, %struct.mac_biba** %12, align 8
  %47 = load %struct.mac_biba*, %struct.mac_biba** %10, align 8
  %48 = call i32 @biba_effective_in_range(%struct.mac_biba* %46, %struct.mac_biba* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @EPERM, align 4
  store i32 %51, i32* %5, align 4
  br label %66

52:                                               ; preds = %45
  %53 = load %struct.mac_biba*, %struct.mac_biba** %12, align 8
  %54 = call i64 @biba_contains_equal(%struct.mac_biba* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load %struct.mac_biba*, %struct.mac_biba** %10, align 8
  %58 = call i32 @biba_subject_privileged(%struct.mac_biba* %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %5, align 4
  br label %66

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %52
  br label %65

65:                                               ; preds = %64, %38
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %61, %50, %36, %29
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @SOCK_LOCK_ASSERT(%struct.socket*) #1

declare dso_local %struct.mac_biba* @SLOT(%struct.label*) #1

declare dso_local i32 @biba_atmostflags(%struct.mac_biba*, i32) #1

declare dso_local i32 @biba_effective_in_range(%struct.mac_biba*, %struct.mac_biba*) #1

declare dso_local i64 @biba_contains_equal(%struct.mac_biba*) #1

declare dso_local i32 @biba_subject_privileged(%struct.mac_biba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
