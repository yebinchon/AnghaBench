; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_socket_mc_add_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_socket_mc_add_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_socket = type { %struct.vxlan_socket_mc_info* }
%struct.vxlan_socket_mc_info = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%union.vxlan_sockaddr = type { i32 }

@VXLAN_SO_MC_MAX_GROUPS = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_socket*, %union.vxlan_sockaddr*, %union.vxlan_sockaddr*, i32, i32*)* @vxlan_socket_mc_add_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_socket_mc_add_group(%struct.vxlan_socket* %0, %union.vxlan_sockaddr* %1, %union.vxlan_sockaddr* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vxlan_socket*, align 8
  %8 = alloca %union.vxlan_sockaddr*, align 8
  %9 = alloca %union.vxlan_sockaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %union.vxlan_sockaddr, align 4
  %13 = alloca %struct.vxlan_socket_mc_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vxlan_socket* %0, %struct.vxlan_socket** %7, align 8
  store %union.vxlan_sockaddr* %1, %union.vxlan_sockaddr** %8, align 8
  store %union.vxlan_sockaddr* %2, %union.vxlan_sockaddr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load %struct.vxlan_socket*, %struct.vxlan_socket** %7, align 8
  %18 = call i32 @VXLAN_SO_WLOCK(%struct.vxlan_socket* %17)
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %19

19:                                               ; preds = %49, %5
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* @VXLAN_SO_MC_MAX_GROUPS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %52

23:                                               ; preds = %19
  %24 = load %struct.vxlan_socket*, %struct.vxlan_socket** %7, align 8
  %25 = getelementptr inbounds %struct.vxlan_socket, %struct.vxlan_socket* %24, i32 0, i32 0
  %26 = load %struct.vxlan_socket_mc_info*, %struct.vxlan_socket_mc_info** %25, align 8
  %27 = load i32, i32* %14, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.vxlan_socket_mc_info, %struct.vxlan_socket_mc_info* %26, i64 %28
  store %struct.vxlan_socket_mc_info* %29, %struct.vxlan_socket_mc_info** %13, align 8
  %30 = load %struct.vxlan_socket_mc_info*, %struct.vxlan_socket_mc_info** %13, align 8
  %31 = getelementptr inbounds %struct.vxlan_socket_mc_info, %struct.vxlan_socket_mc_info* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AF_UNSPEC, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %23
  %38 = load i32, i32* %15, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %15, align 4
  br label %49

40:                                               ; preds = %23
  %41 = load %struct.vxlan_socket_mc_info*, %struct.vxlan_socket_mc_info** %13, align 8
  %42 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %8, align 8
  %43 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i64 @vxlan_sockaddr_mc_info_match(%struct.vxlan_socket_mc_info* %41, %union.vxlan_sockaddr* %42, %union.vxlan_sockaddr* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %118

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %37
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %14, align 4
  br label %19

52:                                               ; preds = %19
  %53 = load %struct.vxlan_socket*, %struct.vxlan_socket** %7, align 8
  %54 = call i32 @VXLAN_SO_WUNLOCK(%struct.vxlan_socket* %53)
  %55 = load i32, i32* %15, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @ENOSPC, align 4
  store i32 %58, i32* %6, align 4
  br label %127

59:                                               ; preds = %52
  %60 = load %struct.vxlan_socket*, %struct.vxlan_socket** %7, align 8
  %61 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %8, align 8
  %62 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %9, align 8
  %63 = call i32 @vxlan_socket_mc_join_group(%struct.vxlan_socket* %60, %union.vxlan_sockaddr* %61, %union.vxlan_sockaddr* %62, i32* %10, %union.vxlan_sockaddr* %12)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* %16, align 4
  store i32 %67, i32* %6, align 4
  br label %127

68:                                               ; preds = %59
  %69 = load %struct.vxlan_socket*, %struct.vxlan_socket** %7, align 8
  %70 = call i32 @VXLAN_SO_WLOCK(%struct.vxlan_socket* %69)
  store i32 0, i32* %14, align 4
  br label %71

71:                                               ; preds = %103, %68
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @VXLAN_SO_MC_MAX_GROUPS, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %106

75:                                               ; preds = %71
  %76 = load %struct.vxlan_socket*, %struct.vxlan_socket** %7, align 8
  %77 = getelementptr inbounds %struct.vxlan_socket, %struct.vxlan_socket* %76, i32 0, i32 0
  %78 = load %struct.vxlan_socket_mc_info*, %struct.vxlan_socket_mc_info** %77, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.vxlan_socket_mc_info, %struct.vxlan_socket_mc_info* %78, i64 %80
  store %struct.vxlan_socket_mc_info* %81, %struct.vxlan_socket_mc_info** %13, align 8
  %82 = load %struct.vxlan_socket_mc_info*, %struct.vxlan_socket_mc_info** %13, align 8
  %83 = getelementptr inbounds %struct.vxlan_socket_mc_info, %struct.vxlan_socket_mc_info* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @AF_UNSPEC, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %75
  %90 = load %struct.vxlan_socket_mc_info*, %struct.vxlan_socket_mc_info** %13, align 8
  %91 = getelementptr inbounds %struct.vxlan_socket_mc_info, %struct.vxlan_socket_mc_info* %90, i32 0, i32 3
  %92 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %8, align 8
  %93 = bitcast %union.vxlan_sockaddr* %92 to i32*
  %94 = call i32 @vxlan_sockaddr_copy(%struct.TYPE_4__* %91, i32* %93)
  %95 = load %struct.vxlan_socket_mc_info*, %struct.vxlan_socket_mc_info** %13, align 8
  %96 = getelementptr inbounds %struct.vxlan_socket_mc_info, %struct.vxlan_socket_mc_info* %95, i32 0, i32 2
  %97 = bitcast %union.vxlan_sockaddr* %12 to i32*
  %98 = call i32 @vxlan_sockaddr_copy(%struct.TYPE_4__* %96, i32* %97)
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.vxlan_socket_mc_info*, %struct.vxlan_socket_mc_info** %13, align 8
  %101 = getelementptr inbounds %struct.vxlan_socket_mc_info, %struct.vxlan_socket_mc_info* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  br label %118

102:                                              ; preds = %75
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %14, align 4
  br label %71

106:                                              ; preds = %71
  %107 = load %struct.vxlan_socket*, %struct.vxlan_socket** %7, align 8
  %108 = call i32 @VXLAN_SO_WUNLOCK(%struct.vxlan_socket* %107)
  %109 = load %struct.vxlan_socket*, %struct.vxlan_socket** %7, align 8
  %110 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %8, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @vxlan_socket_mc_leave_group(%struct.vxlan_socket* %109, %union.vxlan_sockaddr* %110, %union.vxlan_sockaddr* %12, i32 %111)
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %16, align 4
  %114 = icmp eq i32 %113, 0
  %115 = zext i1 %114 to i32
  %116 = call i32 @MPASS(i32 %115)
  %117 = load i32, i32* @ENOSPC, align 4
  store i32 %117, i32* %6, align 4
  br label %127

118:                                              ; preds = %89, %47
  %119 = load %struct.vxlan_socket_mc_info*, %struct.vxlan_socket_mc_info** %13, align 8
  %120 = getelementptr inbounds %struct.vxlan_socket_mc_info, %struct.vxlan_socket_mc_info* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = load %struct.vxlan_socket*, %struct.vxlan_socket** %7, align 8
  %124 = call i32 @VXLAN_SO_WUNLOCK(%struct.vxlan_socket* %123)
  %125 = load i32, i32* %14, align 4
  %126 = load i32*, i32** %11, align 8
  store i32 %125, i32* %126, align 4
  store i32 0, i32* %6, align 4
  br label %127

127:                                              ; preds = %118, %106, %66, %57
  %128 = load i32, i32* %6, align 4
  ret i32 %128
}

declare dso_local i32 @VXLAN_SO_WLOCK(%struct.vxlan_socket*) #1

declare dso_local i64 @vxlan_sockaddr_mc_info_match(%struct.vxlan_socket_mc_info*, %union.vxlan_sockaddr*, %union.vxlan_sockaddr*, i32) #1

declare dso_local i32 @VXLAN_SO_WUNLOCK(%struct.vxlan_socket*) #1

declare dso_local i32 @vxlan_socket_mc_join_group(%struct.vxlan_socket*, %union.vxlan_sockaddr*, %union.vxlan_sockaddr*, i32*, %union.vxlan_sockaddr*) #1

declare dso_local i32 @vxlan_sockaddr_copy(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @vxlan_socket_mc_leave_group(%struct.vxlan_socket*, %union.vxlan_sockaddr*, %union.vxlan_sockaddr*, i32) #1

declare dso_local i32 @MPASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
