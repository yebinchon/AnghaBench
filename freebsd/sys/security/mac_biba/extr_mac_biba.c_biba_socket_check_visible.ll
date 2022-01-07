; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_socket_check_visible.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_socket_check_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.label* }
%struct.socket = type { i32 }
%struct.label = type { i32 }
%struct.mac_biba = type { i32 }

@biba_enabled = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.socket*, %struct.label*)* @biba_socket_check_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @biba_socket_check_visible(%struct.ucred* %0, %struct.socket* %1, %struct.label* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.label*, align 8
  %8 = alloca %struct.mac_biba*, align 8
  %9 = alloca %struct.mac_biba*, align 8
  store %struct.ucred* %0, %struct.ucred** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store %struct.label* %2, %struct.label** %7, align 8
  %10 = load i32, i32* @biba_enabled, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %33

13:                                               ; preds = %3
  %14 = load %struct.ucred*, %struct.ucred** %5, align 8
  %15 = getelementptr inbounds %struct.ucred, %struct.ucred* %14, i32 0, i32 0
  %16 = load %struct.label*, %struct.label** %15, align 8
  %17 = call %struct.mac_biba* @SLOT(%struct.label* %16)
  store %struct.mac_biba* %17, %struct.mac_biba** %8, align 8
  %18 = load %struct.label*, %struct.label** %7, align 8
  %19 = call %struct.mac_biba* @SLOT(%struct.label* %18)
  store %struct.mac_biba* %19, %struct.mac_biba** %9, align 8
  %20 = load %struct.socket*, %struct.socket** %6, align 8
  %21 = call i32 @SOCK_LOCK(%struct.socket* %20)
  %22 = load %struct.mac_biba*, %struct.mac_biba** %9, align 8
  %23 = load %struct.mac_biba*, %struct.mac_biba** %8, align 8
  %24 = call i32 @biba_dominate_effective(%struct.mac_biba* %22, %struct.mac_biba* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %13
  %27 = load %struct.socket*, %struct.socket** %6, align 8
  %28 = call i32 @SOCK_UNLOCK(%struct.socket* %27)
  %29 = load i32, i32* @ENOENT, align 4
  store i32 %29, i32* %4, align 4
  br label %33

30:                                               ; preds = %13
  %31 = load %struct.socket*, %struct.socket** %6, align 8
  %32 = call i32 @SOCK_UNLOCK(%struct.socket* %31)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %26, %12
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.mac_biba* @SLOT(%struct.label*) #1

declare dso_local i32 @SOCK_LOCK(%struct.socket*) #1

declare dso_local i32 @biba_dominate_effective(%struct.mac_biba*, %struct.mac_biba*) #1

declare dso_local i32 @SOCK_UNLOCK(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
