; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_carp.c_carp_mod_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_carp.c_carp_mod_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@carp_ioctl_p = common dso_local global i32* null, align 8
@carp_attach_p = common dso_local global i32* null, align 8
@carp_detach_p = common dso_local global i32* null, align 8
@carp_get_vhid_p = common dso_local global i32* null, align 8
@carp_linkstate_p = common dso_local global i32* null, align 8
@carp_forus_p = common dso_local global i32* null, align 8
@carp_output_p = common dso_local global i32* null, align 8
@carp_demote_adj_p = common dso_local global i32* null, align 8
@carp_master_p = common dso_local global i32* null, align 8
@carp_mtx = common dso_local global i32 0, align 4
@taskqueue_swi = common dso_local global i32 0, align 4
@carp_sendall_task = common dso_local global i32 0, align 4
@carp_sx = common dso_local global i32 0, align 4
@CARP_INET = common dso_local global i64 0, align 8
@CARP_INET6 = common dso_local global i64 0, align 8
@IPPROTO_CARP = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@carp_iamatch6_p = common dso_local global i32* null, align 8
@carp_iamatch_p = common dso_local global i32* null, align 8
@carp_macmatch6_p = common dso_local global i32* null, align 8
@proto_reg = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @carp_mod_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carp_mod_cleanup() #0 {
  store i32* null, i32** @carp_ioctl_p, align 8
  store i32* null, i32** @carp_attach_p, align 8
  store i32* null, i32** @carp_detach_p, align 8
  store i32* null, i32** @carp_get_vhid_p, align 8
  store i32* null, i32** @carp_linkstate_p, align 8
  store i32* null, i32** @carp_forus_p, align 8
  store i32* null, i32** @carp_output_p, align 8
  store i32* null, i32** @carp_demote_adj_p, align 8
  store i32* null, i32** @carp_master_p, align 8
  %1 = call i32 @mtx_unlock(i32* @carp_mtx)
  %2 = load i32, i32* @taskqueue_swi, align 4
  %3 = call i32 @taskqueue_drain(i32 %2, i32* @carp_sendall_task)
  %4 = call i32 @mtx_destroy(i32* @carp_mtx)
  %5 = call i32 @sx_destroy(i32* @carp_sx)
  ret void
}

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @sx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
