; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rtalloc1_fib.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rtalloc1_fib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.rtentry = type { i32 }
%struct.sockaddr = type { i32 }
%struct.rib_head = type { i32, %struct.radix_node* (%struct.sockaddr*, i32*)* }
%struct.radix_node = type { i32 }
%struct.rt_addrinfo = type { %struct.sockaddr** }

@RIB_RLOCK_TRACKER = common dso_local global i32 0, align 4
@RTM_MISS = common dso_local global i32 0, align 4
@rt_numfibs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"rtalloc1_fib: bad fibnum\00", align 1
@RTF_RNH_LOCKED = common dso_local global i32 0, align 4
@RNF_ROOT = common dso_local global i32 0, align 4
@V_rtstat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RTAX_DST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rtentry* @rtalloc1_fib(%struct.sockaddr* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rtentry*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rib_head*, align 8
  %11 = alloca %struct.radix_node*, align 8
  %12 = alloca %struct.rtentry*, align 8
  %13 = alloca %struct.rt_addrinfo, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @RIB_RLOCK_TRACKER, align 4
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* @RTM_MISS, align 4
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @rt_numfibs, align 4
  %20 = icmp slt i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %25 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.rib_head* @rt_tables_get_rnh(i32 %23, i32 %26)
  store %struct.rib_head* %27, %struct.rib_head** %10, align 8
  store %struct.rtentry* null, %struct.rtentry** %12, align 8
  %28 = load %struct.rib_head*, %struct.rib_head** %10, align 8
  %29 = icmp eq %struct.rib_head* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  br label %82

31:                                               ; preds = %4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @RTF_RNH_LOCKED, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.rib_head*, %struct.rib_head** %10, align 8
  %38 = call i32 @RIB_RLOCK(%struct.rib_head* %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.rib_head*, %struct.rib_head** %10, align 8
  %41 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %40, i32 0, i32 1
  %42 = load %struct.radix_node* (%struct.sockaddr*, i32*)*, %struct.radix_node* (%struct.sockaddr*, i32*)** %41, align 8
  %43 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %44 = load %struct.rib_head*, %struct.rib_head** %10, align 8
  %45 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %44, i32 0, i32 0
  %46 = call %struct.radix_node* %42(%struct.sockaddr* %43, i32* %45)
  store %struct.radix_node* %46, %struct.radix_node** %11, align 8
  %47 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %48 = icmp ne %struct.radix_node* %47, null
  br i1 %48, label %49, label %72

49:                                               ; preds = %39
  %50 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %51 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @RNF_ROOT, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %49
  %57 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %58 = call %struct.rtentry* @RNTORT(%struct.radix_node* %57)
  store %struct.rtentry* %58, %struct.rtentry** %12, align 8
  %59 = load %struct.rtentry*, %struct.rtentry** %12, align 8
  %60 = call i32 @RT_LOCK(%struct.rtentry* %59)
  %61 = load %struct.rtentry*, %struct.rtentry** %12, align 8
  %62 = call i32 @RT_ADDREF(%struct.rtentry* %61)
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @RTF_RNH_LOCKED, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load %struct.rib_head*, %struct.rib_head** %10, align 8
  %69 = call i32 @RIB_RUNLOCK(%struct.rib_head* %68)
  br label %70

70:                                               ; preds = %67, %56
  %71 = load %struct.rtentry*, %struct.rtentry** %12, align 8
  store %struct.rtentry* %71, %struct.rtentry** %5, align 8
  br label %100

72:                                               ; preds = %49, %39
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @RTF_RNH_LOCKED, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.rib_head*, %struct.rib_head** %10, align 8
  %79 = call i32 @RIB_RUNLOCK(%struct.rib_head* %78)
  br label %80

80:                                               ; preds = %77, %72
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %81, %30
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_rtstat, i32 0, i32 0), align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_rtstat, i32 0, i32 0), align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %82
  %88 = call i32 @bzero(%struct.rt_addrinfo* %13, i32 8)
  %89 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %90 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %13, i32 0, i32 0
  %91 = load %struct.sockaddr**, %struct.sockaddr*** %90, align 8
  %92 = load i64, i64* @RTAX_DST, align 8
  %93 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %91, i64 %92
  store %struct.sockaddr* %89, %struct.sockaddr** %93, align 8
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @rt_missmsg_fib(i32 %94, %struct.rt_addrinfo* %13, i32 0, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %87, %82
  %99 = load %struct.rtentry*, %struct.rtentry** %12, align 8
  store %struct.rtentry* %99, %struct.rtentry** %5, align 8
  br label %100

100:                                              ; preds = %98, %70
  %101 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  ret %struct.rtentry* %101
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.rib_head* @rt_tables_get_rnh(i32, i32) #1

declare dso_local i32 @RIB_RLOCK(%struct.rib_head*) #1

declare dso_local %struct.rtentry* @RNTORT(%struct.radix_node*) #1

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @RT_ADDREF(%struct.rtentry*) #1

declare dso_local i32 @RIB_RUNLOCK(%struct.rib_head*) #1

declare dso_local i32 @bzero(%struct.rt_addrinfo*, i32) #1

declare dso_local i32 @rt_missmsg_fib(i32, %struct.rt_addrinfo*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
