; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_iface.c_ipfw_kifhandler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_iface.c_ipfw_kifhandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.ifnet = type { i32 }
%struct.ipfw_iface = type { i32 }
%struct.namedobj_instance = type { i32 }

@V_ipfw_vnet_ready = common dso_local global i64 0, align 8
@V_layer3_chain = common dso_local global %struct.ip_fw_chain zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ifnet*)* @ipfw_kifhandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipfw_kifhandler(i8* %0, %struct.ifnet* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca %struct.ipfw_iface*, align 8
  %7 = alloca %struct.namedobj_instance*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ifnet* %1, %struct.ifnet** %4, align 8
  %9 = load i64, i64* @V_ipfw_vnet_ready, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %53

12:                                               ; preds = %2
  store %struct.ip_fw_chain* @V_layer3_chain, %struct.ip_fw_chain** %5, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = ptrtoint i8* %13 to i64
  store i64 %14, i64* %8, align 8
  %15 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %16 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %15)
  %17 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %18 = call %struct.namedobj_instance* @CHAIN_TO_II(%struct.ip_fw_chain* %17)
  store %struct.namedobj_instance* %18, %struct.namedobj_instance** %7, align 8
  %19 = load %struct.namedobj_instance*, %struct.namedobj_instance** %7, align 8
  %20 = icmp eq %struct.namedobj_instance* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %23 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %22)
  br label %53

24:                                               ; preds = %12
  %25 = load %struct.namedobj_instance*, %struct.namedobj_instance** %7, align 8
  %26 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %27 = call i32 @if_name(%struct.ifnet* %26)
  %28 = call i64 @ipfw_objhash_lookup_name(%struct.namedobj_instance* %25, i32 0, i32 %27)
  %29 = inttoptr i64 %28 to %struct.ipfw_iface*
  store %struct.ipfw_iface* %29, %struct.ipfw_iface** %6, align 8
  %30 = load %struct.ipfw_iface*, %struct.ipfw_iface** %6, align 8
  %31 = icmp ne %struct.ipfw_iface* %30, null
  br i1 %31, label %32, label %50

32:                                               ; preds = %24
  %33 = load i64, i64* %8, align 8
  %34 = icmp eq i64 %33, 1
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %37 = load %struct.ipfw_iface*, %struct.ipfw_iface** %6, align 8
  %38 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @handle_ifattach(%struct.ip_fw_chain* %36, %struct.ipfw_iface* %37, i32 %40)
  br label %49

42:                                               ; preds = %32
  %43 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %44 = load %struct.ipfw_iface*, %struct.ipfw_iface** %6, align 8
  %45 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %46 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @handle_ifdetach(%struct.ip_fw_chain* %43, %struct.ipfw_iface* %44, i32 %47)
  br label %49

49:                                               ; preds = %42, %35
  br label %50

50:                                               ; preds = %49, %24
  %51 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %52 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %51)
  br label %53

53:                                               ; preds = %50, %21, %11
  ret void
}

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local %struct.namedobj_instance* @CHAIN_TO_II(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i64 @ipfw_objhash_lookup_name(%struct.namedobj_instance*, i32, i32) #1

declare dso_local i32 @if_name(%struct.ifnet*) #1

declare dso_local i32 @handle_ifattach(%struct.ip_fw_chain*, %struct.ipfw_iface*, i32) #1

declare dso_local i32 @handle_ifdetach(%struct.ip_fw_chain*, %struct.ipfw_iface*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
