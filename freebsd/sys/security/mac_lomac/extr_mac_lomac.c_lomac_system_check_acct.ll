; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_system_check_acct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_system_check_acct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.label* }
%struct.vnode = type { i32 }
%struct.label = type { i32 }
%struct.mac_lomac = type { i32 }

@lomac_enabled = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.vnode*, %struct.label*)* @lomac_system_check_acct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lomac_system_check_acct(%struct.ucred* %0, %struct.vnode* %1, %struct.label* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.label*, align 8
  %8 = alloca %struct.mac_lomac*, align 8
  %9 = alloca %struct.mac_lomac*, align 8
  store %struct.ucred* %0, %struct.ucred** %5, align 8
  store %struct.vnode* %1, %struct.vnode** %6, align 8
  store %struct.label* %2, %struct.label** %7, align 8
  %10 = load i32, i32* @lomac_enabled, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %32

13:                                               ; preds = %3
  %14 = load %struct.ucred*, %struct.ucred** %5, align 8
  %15 = getelementptr inbounds %struct.ucred, %struct.ucred* %14, i32 0, i32 0
  %16 = load %struct.label*, %struct.label** %15, align 8
  %17 = call %struct.mac_lomac* @SLOT(%struct.label* %16)
  store %struct.mac_lomac* %17, %struct.mac_lomac** %8, align 8
  %18 = load %struct.label*, %struct.label** %7, align 8
  %19 = call %struct.mac_lomac* @SLOT(%struct.label* %18)
  store %struct.mac_lomac* %19, %struct.mac_lomac** %9, align 8
  %20 = load %struct.mac_lomac*, %struct.mac_lomac** %8, align 8
  %21 = call i64 @lomac_subject_privileged(%struct.mac_lomac* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* @EPERM, align 4
  store i32 %24, i32* %4, align 4
  br label %32

25:                                               ; preds = %13
  %26 = load %struct.mac_lomac*, %struct.mac_lomac** %9, align 8
  %27 = call i32 @lomac_high_single(%struct.mac_lomac* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @EACCES, align 4
  store i32 %30, i32* %4, align 4
  br label %32

31:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %29, %23, %12
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.mac_lomac* @SLOT(%struct.label*) #1

declare dso_local i64 @lomac_subject_privileged(%struct.mac_lomac*) #1

declare dso_local i32 @lomac_high_single(%struct.mac_lomac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
