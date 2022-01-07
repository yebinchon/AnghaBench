; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_socketpeer_set_from_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_socketpeer_set_from_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.label = type { i32 }
%struct.mac_lomac = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket*, %struct.label*, %struct.socket*, %struct.label*)* @lomac_socketpeer_set_from_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lomac_socketpeer_set_from_socket(%struct.socket* %0, %struct.label* %1, %struct.socket* %2, %struct.label* %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.label*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.label*, align 8
  %9 = alloca %struct.mac_lomac, align 4
  %10 = alloca %struct.mac_lomac*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.label* %1, %struct.label** %6, align 8
  store %struct.socket* %2, %struct.socket** %7, align 8
  store %struct.label* %3, %struct.label** %8, align 8
  %11 = load %struct.socket*, %struct.socket** %5, align 8
  %12 = call i32 @SOCK_LOCK(%struct.socket* %11)
  %13 = load %struct.label*, %struct.label** %6, align 8
  %14 = call %struct.mac_lomac* @SLOT(%struct.label* %13)
  %15 = bitcast %struct.mac_lomac* %9 to i8*
  %16 = bitcast %struct.mac_lomac* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 4, i1 false)
  %17 = load %struct.socket*, %struct.socket** %5, align 8
  %18 = call i32 @SOCK_UNLOCK(%struct.socket* %17)
  %19 = load %struct.label*, %struct.label** %8, align 8
  %20 = call %struct.mac_lomac* @SLOT(%struct.label* %19)
  store %struct.mac_lomac* %20, %struct.mac_lomac** %10, align 8
  %21 = load %struct.socket*, %struct.socket** %7, align 8
  %22 = call i32 @SOCK_LOCK(%struct.socket* %21)
  %23 = load %struct.mac_lomac*, %struct.mac_lomac** %10, align 8
  %24 = call i32 @lomac_copy_single(%struct.mac_lomac* %9, %struct.mac_lomac* %23)
  %25 = load %struct.socket*, %struct.socket** %7, align 8
  %26 = call i32 @SOCK_UNLOCK(%struct.socket* %25)
  ret void
}

declare dso_local i32 @SOCK_LOCK(%struct.socket*) #1

declare dso_local %struct.mac_lomac* @SLOT(%struct.label*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SOCK_UNLOCK(%struct.socket*) #1

declare dso_local i32 @lomac_copy_single(%struct.mac_lomac*, %struct.mac_lomac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
