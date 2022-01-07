; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_mac_veriexec.c_mac_veriexec_kld_check_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_mac_veriexec.c_mac_veriexec_kld_check_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.ucred = type { i32 }
%struct.vnode = type { i32 }
%struct.label = type { i32 }
%struct.vattr = type { i32, i32, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@mac_veriexec_state = common dso_local global i32 0, align 4
@VERIEXEC_STATE_ENFORCE = common dso_local global i32 0, align 4
@VERIEXEC_FILES_FIRST = common dso_local global i32 0, align 4
@EAUTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"fingerprint status is %d for dev %ju, file %ju.%ju\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.vnode*, %struct.label*)* @mac_veriexec_kld_check_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_veriexec_kld_check_load(%struct.ucred* %0, %struct.vnode* %1, %struct.label* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.label*, align 8
  %8 = alloca %struct.vattr, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %5, align 8
  store %struct.vnode* %1, %struct.vnode** %6, align 8
  store %struct.label* %2, %struct.label** %7, align 8
  %12 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %12, %struct.thread** %9, align 8
  %13 = load i32, i32* @mac_veriexec_state, align 4
  %14 = load i32, i32* @VERIEXEC_STATE_ENFORCE, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %60

18:                                               ; preds = %3
  %19 = load %struct.vnode*, %struct.vnode** %6, align 8
  %20 = load %struct.ucred*, %struct.ucred** %5, align 8
  %21 = call i32 @VOP_GETATTR(%struct.vnode* %19, %struct.vattr* %8, %struct.ucred* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %4, align 4
  br label %60

26:                                               ; preds = %18
  %27 = load %struct.vnode*, %struct.vnode** %6, align 8
  %28 = load %struct.thread*, %struct.thread** %9, align 8
  %29 = load i32, i32* @VERIEXEC_FILES_FIRST, align 4
  %30 = call i32 @mac_veriexec_metadata_fetch_fingerprint_status(%struct.vnode* %27, %struct.vattr* %8, %struct.thread* %28, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @EAUTH, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %4, align 4
  br label %60

39:                                               ; preds = %33, %26
  %40 = load %struct.vnode*, %struct.vnode** %6, align 8
  %41 = call i32 @mac_veriexec_get_fingerprint_status(%struct.vnode* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  switch i32 %42, label %49 [
    i32 130, label %43
    i32 128, label %43
    i32 129, label %43
  ]

43:                                               ; preds = %39, %39, %39
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %4, align 4
  br label %60

48:                                               ; preds = %43
  br label %59

49:                                               ; preds = %39
  %50 = load i32, i32* %10, align 4
  %51 = getelementptr inbounds %struct.vattr, %struct.vattr* %8, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.vattr, %struct.vattr* %8, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.vattr, %struct.vattr* %8, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @MAC_VERIEXEC_DBG(i32 2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %52, i32 %54, i32 %56)
  %58 = load i32, i32* @EAUTH, align 4
  store i32 %58, i32* %4, align 4
  br label %60

59:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %49, %46, %37, %24, %17
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, %struct.ucred*) #1

declare dso_local i32 @mac_veriexec_metadata_fetch_fingerprint_status(%struct.vnode*, %struct.vattr*, %struct.thread*, i32) #1

declare dso_local i32 @mac_veriexec_get_fingerprint_status(%struct.vnode*) #1

declare dso_local i32 @MAC_VERIEXEC_DBG(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
