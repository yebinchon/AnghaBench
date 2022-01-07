; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rt_unlinkrte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rt_unlinkrte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { i32, %struct.sockaddr* }
%struct.sockaddr = type { i32 }
%struct.rib_head = type { i32, %struct.radix_node* (%struct.sockaddr*, %struct.sockaddr*, i32*)*, i64 (%struct.sockaddr*, %struct.sockaddr*, i32*)* }
%struct.radix_node = type { i32 }
%struct.rt_addrinfo = type { i32, i64 (%struct.rtentry*, i32)*, %struct.sockaddr**, i32 }

@RTAX_DST = common dso_local global i64 0, align 8
@RTAX_NETMASK = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4
@RTF_PINNED = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@RTAX_GATEWAY = common dso_local global i64 0, align 8
@RNF_ACTIVE = common dso_local global i32 0, align 4
@RNF_ROOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"rtrequest delete\00", align 1
@RTF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rtentry* (%struct.rib_head*, %struct.rt_addrinfo*, i32*)* @rt_unlinkrte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rtentry* @rt_unlinkrte(%struct.rib_head* %0, %struct.rt_addrinfo* %1, i32* %2) #0 {
  %4 = alloca %struct.rtentry*, align 8
  %5 = alloca %struct.rib_head*, align 8
  %6 = alloca %struct.rt_addrinfo*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca %struct.rtentry*, align 8
  %11 = alloca %struct.radix_node*, align 8
  store %struct.rib_head* %0, %struct.rib_head** %5, align 8
  store %struct.rt_addrinfo* %1, %struct.rt_addrinfo** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %6, align 8
  %13 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %12, i32 0, i32 2
  %14 = load %struct.sockaddr**, %struct.sockaddr*** %13, align 8
  %15 = load i64, i64* @RTAX_DST, align 8
  %16 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %14, i64 %15
  %17 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  store %struct.sockaddr* %17, %struct.sockaddr** %8, align 8
  %18 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %6, align 8
  %19 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %18, i32 0, i32 2
  %20 = load %struct.sockaddr**, %struct.sockaddr*** %19, align 8
  %21 = load i64, i64* @RTAX_NETMASK, align 8
  %22 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %20, i64 %21
  %23 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  store %struct.sockaddr* %23, %struct.sockaddr** %9, align 8
  %24 = load %struct.rib_head*, %struct.rib_head** %5, align 8
  %25 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %24, i32 0, i32 2
  %26 = load i64 (%struct.sockaddr*, %struct.sockaddr*, i32*)*, i64 (%struct.sockaddr*, %struct.sockaddr*, i32*)** %25, align 8
  %27 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %28 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %29 = load %struct.rib_head*, %struct.rib_head** %5, align 8
  %30 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %29, i32 0, i32 0
  %31 = call i64 %26(%struct.sockaddr* %27, %struct.sockaddr* %28, i32* %30)
  %32 = inttoptr i64 %31 to %struct.rtentry*
  store %struct.rtentry* %32, %struct.rtentry** %10, align 8
  %33 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %34 = icmp eq %struct.rtentry* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %3
  %36 = load i32, i32* @ESRCH, align 4
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  store %struct.rtentry* null, %struct.rtentry** %4, align 8
  br label %123

38:                                               ; preds = %3
  %39 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %6, align 8
  %40 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @RTF_PINNED, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %38
  %46 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %47 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @RTF_PINNED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* @EADDRINUSE, align 4
  %54 = load i32*, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  store %struct.rtentry* null, %struct.rtentry** %4, align 8
  br label %123

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %38
  %57 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %6, align 8
  %58 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %57, i32 0, i32 1
  %59 = load i64 (%struct.rtentry*, i32)*, i64 (%struct.rtentry*, i32)** %58, align 8
  %60 = icmp ne i64 (%struct.rtentry*, i32)* %59, null
  br i1 %60, label %61, label %83

61:                                               ; preds = %56
  %62 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %6, align 8
  %63 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %62, i32 0, i32 1
  %64 = load i64 (%struct.rtentry*, i32)*, i64 (%struct.rtentry*, i32)** %63, align 8
  %65 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %66 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %6, align 8
  %67 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i64 %64(%struct.rtentry* %65, i32 %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load i32, i32* @ENOENT, align 4
  %73 = load i32*, i32** %7, align 8
  store i32 %72, i32* %73, align 4
  store %struct.rtentry* null, %struct.rtentry** %4, align 8
  br label %123

74:                                               ; preds = %61
  %75 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %76 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %75, i32 0, i32 1
  %77 = load %struct.sockaddr*, %struct.sockaddr** %76, align 8
  %78 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %6, align 8
  %79 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %78, i32 0, i32 2
  %80 = load %struct.sockaddr**, %struct.sockaddr*** %79, align 8
  %81 = load i64, i64* @RTAX_GATEWAY, align 8
  %82 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %80, i64 %81
  store %struct.sockaddr* %77, %struct.sockaddr** %82, align 8
  br label %83

83:                                               ; preds = %74, %56
  %84 = load i32, i32* @ESRCH, align 4
  %85 = load i32*, i32** %7, align 8
  store i32 %84, i32* %85, align 4
  %86 = load %struct.rib_head*, %struct.rib_head** %5, align 8
  %87 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %86, i32 0, i32 1
  %88 = load %struct.radix_node* (%struct.sockaddr*, %struct.sockaddr*, i32*)*, %struct.radix_node* (%struct.sockaddr*, %struct.sockaddr*, i32*)** %87, align 8
  %89 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %90 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %91 = load %struct.rib_head*, %struct.rib_head** %5, align 8
  %92 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %91, i32 0, i32 0
  %93 = call %struct.radix_node* %88(%struct.sockaddr* %89, %struct.sockaddr* %90, i32* %92)
  store %struct.radix_node* %93, %struct.radix_node** %11, align 8
  %94 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %95 = icmp eq %struct.radix_node* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %83
  store %struct.rtentry* null, %struct.rtentry** %4, align 8
  br label %123

97:                                               ; preds = %83
  %98 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %99 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @RNF_ACTIVE, align 4
  %102 = load i32, i32* @RNF_ROOT, align 4
  %103 = or i32 %101, %102
  %104 = and i32 %100, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %97
  %107 = call i32 @panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %97
  %109 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %110 = call %struct.rtentry* @RNTORT(%struct.radix_node* %109)
  store %struct.rtentry* %110, %struct.rtentry** %10, align 8
  %111 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %112 = call i32 @RT_LOCK(%struct.rtentry* %111)
  %113 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %114 = call i32 @RT_ADDREF(%struct.rtentry* %113)
  %115 = load i32, i32* @RTF_UP, align 4
  %116 = xor i32 %115, -1
  %117 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %118 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %119, %116
  store i32 %120, i32* %118, align 8
  %121 = load i32*, i32** %7, align 8
  store i32 0, i32* %121, align 4
  %122 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  store %struct.rtentry* %122, %struct.rtentry** %4, align 8
  br label %123

123:                                              ; preds = %108, %96, %71, %52, %35
  %124 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  ret %struct.rtentry* %124
}

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.rtentry* @RNTORT(%struct.radix_node*) #1

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @RT_ADDREF(%struct.rtentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
