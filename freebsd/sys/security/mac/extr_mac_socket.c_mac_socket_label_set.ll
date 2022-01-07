; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_socket.c_mac_socket_label_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_socket.c_mac_socket_label_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.socket = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.socket*)* }
%struct.label = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_socket_label_set(%struct.ucred* %0, %struct.socket* %1, %struct.label* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.label*, align 8
  %8 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store %struct.label* %2, %struct.label** %7, align 8
  %9 = load %struct.socket*, %struct.socket** %6, align 8
  %10 = call i32 @SOCK_LOCK(%struct.socket* %9)
  %11 = load %struct.ucred*, %struct.ucred** %5, align 8
  %12 = load %struct.socket*, %struct.socket** %6, align 8
  %13 = load %struct.label*, %struct.label** %7, align 8
  %14 = call i32 @mac_socket_check_relabel(%struct.ucred* %11, %struct.socket* %12, %struct.label* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.socket*, %struct.socket** %6, align 8
  %19 = call i32 @SOCK_UNLOCK(%struct.socket* %18)
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %47

21:                                               ; preds = %3
  %22 = load %struct.ucred*, %struct.ucred** %5, align 8
  %23 = load %struct.socket*, %struct.socket** %6, align 8
  %24 = load %struct.label*, %struct.label** %7, align 8
  %25 = call i32 @mac_socket_relabel(%struct.ucred* %22, %struct.socket* %23, %struct.label* %24)
  %26 = load %struct.socket*, %struct.socket** %6, align 8
  %27 = call i32 @SOCK_UNLOCK(%struct.socket* %26)
  %28 = load %struct.socket*, %struct.socket** %6, align 8
  %29 = getelementptr inbounds %struct.socket, %struct.socket* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (%struct.socket*)*, i32 (%struct.socket*)** %33, align 8
  %35 = icmp ne i32 (%struct.socket*)* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %21
  %37 = load %struct.socket*, %struct.socket** %6, align 8
  %38 = getelementptr inbounds %struct.socket, %struct.socket* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32 (%struct.socket*)*, i32 (%struct.socket*)** %42, align 8
  %44 = load %struct.socket*, %struct.socket** %6, align 8
  %45 = call i32 %43(%struct.socket* %44)
  br label %46

46:                                               ; preds = %36, %21
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %17
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @SOCK_LOCK(%struct.socket*) #1

declare dso_local i32 @mac_socket_check_relabel(%struct.ucred*, %struct.socket*, %struct.label*) #1

declare dso_local i32 @SOCK_UNLOCK(%struct.socket*) #1

declare dso_local i32 @mac_socket_relabel(%struct.ucred*, %struct.socket*, %struct.label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
