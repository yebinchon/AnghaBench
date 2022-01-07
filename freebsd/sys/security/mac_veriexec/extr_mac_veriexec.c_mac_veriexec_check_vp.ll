; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_mac_veriexec.c_mac_veriexec_check_vp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_mac_veriexec.c_mac_veriexec_check_vp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.ucred = type { i32 }
%struct.vnode = type { i32 }
%struct.vattr = type { i32, i32, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@VERIEXEC_FILES_FIRST = common dso_local global i32 0, align 4
@EAUTH = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"attempted write to fingerprinted file for dev %ju, file %ju.%ju\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@VVERIFY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"fingerprint status is %d for dev %ju, file %ju.%ju\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.vnode*, i32)* @mac_veriexec_check_vp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_veriexec_check_vp(%struct.ucred* %0, %struct.vnode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vattr, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %5, align 8
  store %struct.vnode* %1, %struct.vnode** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %12, %struct.thread** %9, align 8
  %13 = load %struct.vnode*, %struct.vnode** %6, align 8
  %14 = load %struct.ucred*, %struct.ucred** %5, align 8
  %15 = call i32 @VOP_GETATTR(%struct.vnode* %13, %struct.vattr* %8, %struct.ucred* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %4, align 4
  br label %78

20:                                               ; preds = %3
  %21 = load %struct.vnode*, %struct.vnode** %6, align 8
  %22 = load %struct.thread*, %struct.thread** %9, align 8
  %23 = load i32, i32* @VERIEXEC_FILES_FIRST, align 4
  %24 = call i32 @mac_veriexec_metadata_fetch_fingerprint_status(%struct.vnode* %21, %struct.vattr* %8, %struct.thread* %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @EAUTH, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %4, align 4
  br label %78

33:                                               ; preds = %27, %20
  %34 = load %struct.vnode*, %struct.vnode** %6, align 8
  %35 = call i32 @mac_veriexec_get_fingerprint_status(%struct.vnode* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @VWRITE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %33
  %41 = load i32, i32* %10, align 4
  switch i32 %41, label %51 [
    i32 130, label %42
    i32 128, label %42
    i32 129, label %42
  ]

42:                                               ; preds = %40, %40, %40
  %43 = getelementptr inbounds %struct.vattr, %struct.vattr* %8, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.vattr, %struct.vattr* %8, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.vattr, %struct.vattr* %8, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, i32, i32, i32, ...) @MAC_VERIEXEC_DBG(i32 2, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %46, i32 %48)
  %50 = load i32, i32* @EPERM, align 4
  store i32 %50, i32* %4, align 4
  br label %78

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52, %33
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @VVERIFY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %53
  %59 = load i32, i32* %10, align 4
  switch i32 %59, label %66 [
    i32 130, label %60
    i32 128, label %60
    i32 129, label %60
  ]

60:                                               ; preds = %58, %58, %58
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %4, align 4
  br label %78

65:                                               ; preds = %60
  br label %76

66:                                               ; preds = %58
  %67 = load i32, i32* %10, align 4
  %68 = getelementptr inbounds %struct.vattr, %struct.vattr* %8, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.vattr, %struct.vattr* %8, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.vattr, %struct.vattr* %8, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i8*, i32, i32, i32, ...) @MAC_VERIEXEC_DBG(i32 2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %69, i32 %71, i32 %73)
  %75 = load i32, i32* @EAUTH, align 4
  store i32 %75, i32* %4, align 4
  br label %78

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76, %53
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %66, %63, %42, %31, %18
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, %struct.ucred*) #1

declare dso_local i32 @mac_veriexec_metadata_fetch_fingerprint_status(%struct.vnode*, %struct.vattr*, %struct.thread*, i32) #1

declare dso_local i32 @mac_veriexec_get_fingerprint_status(%struct.vnode*) #1

declare dso_local i32 @MAC_VERIEXEC_DBG(i32, i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
