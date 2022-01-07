; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_gre.c_in_gre_uninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_gre.c_in_gre_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gre_list = type { i32 }

@curvnet = common dso_local global i32 0, align 4
@ecookie = common dso_local global i32 0, align 4
@ipv4_srcaddrtab = common dso_local global i32 0, align 4
@V_ipv4_hashtbl = common dso_local global %struct.gre_list* null, align 8
@V_ipv4_srchashtbl = common dso_local global %struct.gre_list* null, align 8
@V_ipv4_sockets = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in_gre_uninit() #0 {
  %1 = load i32, i32* @curvnet, align 4
  %2 = call i64 @IS_DEFAULT_VNET(i32 %1)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load i32, i32* @ecookie, align 4
  %6 = call i32 @ip_encap_detach(i32 %5)
  %7 = load i32, i32* @ipv4_srcaddrtab, align 4
  %8 = call i32 @ip_encap_unregister_srcaddr(i32 %7)
  br label %9

9:                                                ; preds = %4, %0
  %10 = load %struct.gre_list*, %struct.gre_list** @V_ipv4_hashtbl, align 8
  %11 = icmp ne %struct.gre_list* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load %struct.gre_list*, %struct.gre_list** @V_ipv4_hashtbl, align 8
  %14 = call i32 @gre_hashdestroy(%struct.gre_list* %13)
  store %struct.gre_list* null, %struct.gre_list** @V_ipv4_hashtbl, align 8
  %15 = call i32 (...) @GRE_WAIT()
  %16 = load %struct.gre_list*, %struct.gre_list** @V_ipv4_srchashtbl, align 8
  %17 = call i32 @gre_hashdestroy(%struct.gre_list* %16)
  %18 = load i64, i64* @V_ipv4_sockets, align 8
  %19 = inttoptr i64 %18 to %struct.gre_list*
  %20 = call i32 @gre_hashdestroy(%struct.gre_list* %19)
  br label %21

21:                                               ; preds = %12, %9
  ret void
}

declare dso_local i64 @IS_DEFAULT_VNET(i32) #1

declare dso_local i32 @ip_encap_detach(i32) #1

declare dso_local i32 @ip_encap_unregister_srcaddr(i32) #1

declare dso_local i32 @gre_hashdestroy(%struct.gre_list*) #1

declare dso_local i32 @GRE_WAIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
