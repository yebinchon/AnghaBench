; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_set_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_set_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_dl = type { i32 }
%struct.bxe_set_addr_ctx = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ecore_vlan_mac_obj }
%struct.ecore_vlan_mac_obj = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@ECORE_UC_LIST_MAC = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@DBG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to schedule ADD operations (EEXIST)\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to schedule ADD operations (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr_dl*, i32)* @bxe_set_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_set_addr(i8* %0, %struct.sockaddr_dl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr_dl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bxe_set_addr_ctx*, align 8
  %9 = alloca %struct.ecore_vlan_mac_obj*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.sockaddr_dl* %1, %struct.sockaddr_dl** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.bxe_set_addr_ctx*
  store %struct.bxe_set_addr_ctx* %12, %struct.bxe_set_addr_ctx** %8, align 8
  %13 = load %struct.bxe_set_addr_ctx*, %struct.bxe_set_addr_ctx** %8, align 8
  %14 = getelementptr inbounds %struct.bxe_set_addr_ctx, %struct.bxe_set_addr_ctx* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store %struct.ecore_vlan_mac_obj* %18, %struct.ecore_vlan_mac_obj** %9, align 8
  %19 = load %struct.bxe_set_addr_ctx*, %struct.bxe_set_addr_ctx** %8, align 8
  %20 = getelementptr inbounds %struct.bxe_set_addr_ctx, %struct.bxe_set_addr_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %61

24:                                               ; preds = %3
  %25 = load %struct.bxe_set_addr_ctx*, %struct.bxe_set_addr_ctx** %8, align 8
  %26 = getelementptr inbounds %struct.bxe_set_addr_ctx, %struct.bxe_set_addr_ctx* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %6, align 8
  %29 = call i64 @LLADDR(%struct.sockaddr_dl* %28)
  %30 = inttoptr i64 %29 to i32*
  %31 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %9, align 8
  %32 = load i32, i32* @TRUE, align 4
  %33 = load i32, i32* @ECORE_UC_LIST_MAC, align 4
  %34 = load %struct.bxe_set_addr_ctx*, %struct.bxe_set_addr_ctx** %8, align 8
  %35 = getelementptr inbounds %struct.bxe_set_addr_ctx, %struct.bxe_set_addr_ctx* %34, i32 0, i32 2
  %36 = call i32 @bxe_set_mac_one(%struct.TYPE_6__* %27, i32* %30, %struct.ecore_vlan_mac_obj* %31, i32 %32, i32 %33, i32* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @EEXIST, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %24
  %42 = load %struct.bxe_set_addr_ctx*, %struct.bxe_set_addr_ctx** %8, align 8
  %43 = getelementptr inbounds %struct.bxe_set_addr_ctx, %struct.bxe_set_addr_ctx* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i32, i32* @DBG_SP, align 4
  %46 = call i32 @BLOGD(%struct.TYPE_6__* %44, i32 %45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %60

47:                                               ; preds = %24
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load %struct.bxe_set_addr_ctx*, %struct.bxe_set_addr_ctx** %8, align 8
  %52 = getelementptr inbounds %struct.bxe_set_addr_ctx, %struct.bxe_set_addr_ctx* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @BLOGE(%struct.TYPE_6__* %53, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.bxe_set_addr_ctx*, %struct.bxe_set_addr_ctx** %8, align 8
  %58 = getelementptr inbounds %struct.bxe_set_addr_ctx, %struct.bxe_set_addr_ctx* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %50, %47
  br label %60

60:                                               ; preds = %59, %41
  store i32 1, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %23
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @bxe_set_mac_one(%struct.TYPE_6__*, i32*, %struct.ecore_vlan_mac_obj*, i32, i32, i32*) #1

declare dso_local i64 @LLADDR(%struct.sockaddr_dl*) #1

declare dso_local i32 @BLOGD(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @BLOGE(%struct.TYPE_6__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
