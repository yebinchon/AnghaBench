; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_carp.c_carp_mod_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_carp.c_carp_mod_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protosw = type { i32 }

@carp_mtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"carp_mtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@carp_sx = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"carp_sx\00", align 1
@carp_list = common dso_local global i32 0, align 4
@carp_get_vhid = common dso_local global i32 0, align 4
@carp_get_vhid_p = common dso_local global i32 0, align 4
@carp_forus = common dso_local global i32 0, align 4
@carp_forus_p = common dso_local global i32 0, align 4
@carp_output = common dso_local global i32 0, align 4
@carp_output_p = common dso_local global i32 0, align 4
@carp_linkstate = common dso_local global i32 0, align 4
@carp_linkstate_p = common dso_local global i32 0, align 4
@carp_ioctl = common dso_local global i32 0, align 4
@carp_ioctl_p = common dso_local global i32 0, align 4
@carp_attach = common dso_local global i32 0, align 4
@carp_attach_p = common dso_local global i32 0, align 4
@carp_detach = common dso_local global i32 0, align 4
@carp_detach_p = common dso_local global i32 0, align 4
@carp_demote_adj = common dso_local global i32 0, align 4
@carp_demote_adj_p = common dso_local global i32 0, align 4
@carp_master = common dso_local global i32 0, align 4
@carp_master_p = common dso_local global i32 0, align 4
@CARP_INET = common dso_local global i64 0, align 8
@CARP_INET6 = common dso_local global i64 0, align 8
@IPPROTO_CARP = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@carp_iamatch = common dso_local global i32 0, align 4
@carp_iamatch6 = common dso_local global i32 0, align 4
@carp_iamatch6_p = common dso_local global i32 0, align 4
@carp_iamatch_p = common dso_local global i32 0, align 4
@carp_macmatch6 = common dso_local global i32 0, align 4
@carp_macmatch6_p = common dso_local global i32 0, align 4
@in6_carp_protosw = common dso_local global i32 0, align 4
@in_carp_protosw = common dso_local global %struct.protosw zeroinitializer, align 4
@proto_reg = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @carp_mod_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carp_mod_load() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @MTX_DEF, align 4
  %3 = call i32 @mtx_init(i32* @carp_mtx, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null, i32 %2)
  %4 = call i32 @sx_init(i32* @carp_sx, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %5 = call i32 @LIST_INIT(i32* @carp_list)
  %6 = load i32, i32* @carp_get_vhid, align 4
  store i32 %6, i32* @carp_get_vhid_p, align 4
  %7 = load i32, i32* @carp_forus, align 4
  store i32 %7, i32* @carp_forus_p, align 4
  %8 = load i32, i32* @carp_output, align 4
  store i32 %8, i32* @carp_output_p, align 4
  %9 = load i32, i32* @carp_linkstate, align 4
  store i32 %9, i32* @carp_linkstate_p, align 4
  %10 = load i32, i32* @carp_ioctl, align 4
  store i32 %10, i32* @carp_ioctl_p, align 4
  %11 = load i32, i32* @carp_attach, align 4
  store i32 %11, i32* @carp_attach_p, align 4
  %12 = load i32, i32* @carp_detach, align 4
  store i32 %12, i32* @carp_detach_p, align 4
  %13 = load i32, i32* @carp_demote_adj, align 4
  store i32 %13, i32* @carp_demote_adj_p, align 4
  %14 = load i32, i32* @carp_master, align 4
  store i32 %14, i32* @carp_master_p, align 4
  ret i32 0
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
