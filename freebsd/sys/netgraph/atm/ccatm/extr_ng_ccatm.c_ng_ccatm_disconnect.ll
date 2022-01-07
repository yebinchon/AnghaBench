; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/atm/ccatm/extr_ng_ccatm.c_ng_ccatm_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/atm/ccatm/extr_ng_ccatm.c_ng_ccatm_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccnode = type { i32, i32, i32*, i32* }
%struct.cchook = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { %struct.ccdata* }
%struct.ccdata = type { i32 }

@M_NG_CCATM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ng_ccatm_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_ccatm_disconnect(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccnode*, align 8
  %5 = alloca %struct.cchook*, align 8
  %6 = alloca %struct.ccdata*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @NG_HOOK_NODE(i32* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.ccnode* @NG_NODE_PRIVATE(i32 %9)
  store %struct.ccnode* %10, %struct.ccnode** %4, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call %struct.cchook* @NG_HOOK_PRIVATE(i32* %11)
  store %struct.cchook* %12, %struct.cchook** %5, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = load %struct.ccnode*, %struct.ccnode** %4, align 8
  %15 = getelementptr inbounds %struct.ccnode, %struct.ccnode* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.ccnode*, %struct.ccnode** %4, align 8
  %20 = getelementptr inbounds %struct.ccnode, %struct.ccnode* %19, i32 0, i32 3
  store i32* null, i32** %20, align 8
  br label %67

21:                                               ; preds = %1
  %22 = load i32*, i32** %2, align 8
  %23 = load %struct.ccnode*, %struct.ccnode** %4, align 8
  %24 = getelementptr inbounds %struct.ccnode, %struct.ccnode* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %22, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.ccnode*, %struct.ccnode** %4, align 8
  %29 = getelementptr inbounds %struct.ccnode, %struct.ccnode* %28, i32 0, i32 2
  store i32* null, i32** %29, align 8
  %30 = load %struct.ccnode*, %struct.ccnode** %4, align 8
  %31 = getelementptr inbounds %struct.ccnode, %struct.ccnode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @cc_unmanage(i32 %32)
  br label %66

34:                                               ; preds = %21
  %35 = load %struct.cchook*, %struct.cchook** %5, align 8
  %36 = getelementptr inbounds %struct.cchook, %struct.cchook* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.cchook*, %struct.cchook** %5, align 8
  %41 = getelementptr inbounds %struct.cchook, %struct.cchook* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @cc_port_destroy(i32 %42, i32 0)
  br label %49

44:                                               ; preds = %34
  %45 = load %struct.cchook*, %struct.cchook** %5, align 8
  %46 = getelementptr inbounds %struct.cchook, %struct.cchook* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @cc_user_destroy(i32 %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load %struct.cchook*, %struct.cchook** %5, align 8
  %51 = getelementptr inbounds %struct.cchook, %struct.cchook* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load %struct.ccdata*, %struct.ccdata** %53, align 8
  store %struct.ccdata* %54, %struct.ccdata** %6, align 8
  %55 = load %struct.cchook*, %struct.cchook** %5, align 8
  %56 = load i32, i32* @M_NG_CCATM, align 4
  %57 = call i32 @free(%struct.cchook* %55, i32 %56)
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @NG_HOOK_SET_PRIVATE(i32* %58, i32* null)
  %60 = load %struct.ccnode*, %struct.ccnode** %4, align 8
  %61 = getelementptr inbounds %struct.ccnode, %struct.ccnode* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %61, align 8
  %64 = load %struct.ccdata*, %struct.ccdata** %6, align 8
  %65 = call i32 @cc_work(%struct.ccdata* %64)
  br label %66

66:                                               ; preds = %49, %27
  br label %67

67:                                               ; preds = %66, %18
  %68 = load i32, i32* %3, align 4
  %69 = call i64 @NG_NODE_NUMHOOKS(i32 %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load i32, i32* %3, align 4
  %73 = call i64 @NG_NODE_IS_VALID(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @ng_rmnode_self(i32 %76)
  br label %78

78:                                               ; preds = %75, %71, %67
  ret i32 0
}

declare dso_local i32 @NG_HOOK_NODE(i32*) #1

declare dso_local %struct.ccnode* @NG_NODE_PRIVATE(i32) #1

declare dso_local %struct.cchook* @NG_HOOK_PRIVATE(i32*) #1

declare dso_local i32 @cc_unmanage(i32) #1

declare dso_local i32 @cc_port_destroy(i32, i32) #1

declare dso_local i32 @cc_user_destroy(i32) #1

declare dso_local i32 @free(%struct.cchook*, i32) #1

declare dso_local i32 @NG_HOOK_SET_PRIVATE(i32*, i32*) #1

declare dso_local i32 @cc_work(%struct.ccdata*) #1

declare dso_local i64 @NG_NODE_NUMHOOKS(i32) #1

declare dso_local i64 @NG_NODE_IS_VALID(i32) #1

declare dso_local i32 @ng_rmnode_self(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
